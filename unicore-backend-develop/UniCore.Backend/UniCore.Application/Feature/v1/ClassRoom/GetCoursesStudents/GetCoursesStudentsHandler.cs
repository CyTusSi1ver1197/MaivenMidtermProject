using FluentValidation;
using FluentValidation.Results;
using Mapster;
using UniCore.Application.Contract.Repository.Enitity.v1;
using UniCore.Application.Contract.RequestHandlerHub;

namespace UniCore.Application.Feature.v1.ClassRoom.GetCoursesStudents
{
    public class GetCoursesStudentsHandler : IRequestHandler<GetCoursesStudentsRequestDTO, IEnumerable<GetCoursesStudentsResponseDTO>
    {
        private readonly IStudentClassRepository _studentClassRepo;
        private readonly ISchoolClassRepository _schoolClassRepo;
        private readonly IValidator<GetCoursesStudentsRequestDTO> _validator;

        public GetCoursesStudentsHandler(
            IStudentClassRepository studentClassRepo,
            ISchoolClassRepository schoolClassRepo,
            IValidator<GetCoursesStudentsRequestDTO> validator
            )
        {
            _studentClassRepo = studentClassRepo;
            _validator = validator;
            _schoolClassRepo = schoolClassRepo;
        }

        public async Task<IEnumerable<GetCoursesStudentsResponseDTO>> HandleAsync(GetCoursesStudentsRequestDTO request, CancellationToken ct)
        {
            ValidationResult results = await _validator.ValidateAsync(request, ct);

            if (!results.IsValid)
            {
                throw new ValidationException(results.Errors);
            }

            var classIds = await _studentClassRepo.GetClassIdsAsync(request.UserID, ct);

            if (classIds is null)
            {
                throw new NullReferenceException(nameof(classIds));
            }

            var classInfos = await _schoolClassRepo.GetAllByListIdAsync(classIds, ct);

            if (classInfos is null)
            {
                throw new NullReferenceException(nameof(classInfos));
            }

            return classInfos.Adapt<IEnumerable<GetCoursesStudentsResponseDTO>>();

        }

    }
}
