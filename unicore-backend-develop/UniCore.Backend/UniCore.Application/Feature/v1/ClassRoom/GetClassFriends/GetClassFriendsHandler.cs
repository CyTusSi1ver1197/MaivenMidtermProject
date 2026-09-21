using FluentValidation;
using FluentValidation.Results;
using Mapster;
using System;
using System.Collections.Generic;
using System.Text;
using UniCore.Application.Contract.Repository.Enitity.v1;
using UniCore.Application.Contract.RequestHandlerHub;

namespace UniCore.Application.Feature.v1.ClassRoom.GetClassFriends
{
    public class GetClassInfosHandler : IRequestHandler<GetClassInfosRequestDTO, IEnumerable<GetClassInfosResponseDTO>
    {
        private readonly IStudentClassRepository _studentClassRepo;
        private readonly IUserProfileRepository _profileRepository;
        private readonly IValidator<GetClassInfosRequestDTO> _validator;

        public GetClassInfosHandler(
            IStudentClassRepository studentClassRepo,
            IUserProfileRepository profileRepository,
            IValidator<GetClassInfosRequestDTO> validator
            )
        {
            _studentClassRepo = studentClassRepo;
            _validator = validator;
            _profileRepository = profileRepository;
        }

        public async Task<IEnumerable<GetClassInfosResponseDTO>> HandleAsync(GetClassInfosRequestDTO request, CancellationToken ct)
        {
            ValidationResult results = await _validator.ValidateAsync(request, ct);

            if (!results.IsValid)
            {
                throw new ValidationException(results.Errors);
            }

            var classmateId = await _studentClassRepo.GetUserIdsByStudentClassIdAsync(request.ClassID, request.UserID, ct);

            if (classmateId == null)
            {
                throw new NullReferenceException(nameof(classmateId));
            }

            var userInfos = await _profileRepository.GetAllByListIdAsync(classmateId, ct);

            if (userInfos is null)
            {
                throw new NullReferenceException(nameof(userInfos));
            }

            return userInfos.Adapt<IEnumerable<GetClassInfosResponseDTO>>();

        }

    }
}
