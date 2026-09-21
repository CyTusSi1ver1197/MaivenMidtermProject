using FluentValidation;
using FluentValidation.Results;
using Mapster;
using UniCore.Application.Contract.Repository.Enitity.v1;
using UniCore.Application.Contract.RequestHandlerHub;


namespace UniCore.Application.Feature.v1.User.GetUserInfo
{
    public class GetUserInfoHandler : IRequestHandler<GetUserInfoRequestDTO, GetUserInfoResponseDTO>
    {
        private readonly IUserProfileRepository _profileRepository;
        private readonly IValidator<GetUserInfoRequestDTO> _validator;

        public GetUserInfoHandler(
            IUserProfileRepository profileRepository,
            IValidator<GetUserInfoRequestDTO> validator
            )
        {
            _profileRepository = profileRepository;
            _validator = validator;
        }

        public async Task<GetUserInfoResponseDTO> HandleAsync(GetUserInfoRequestDTO request, CancellationToken ct) 
        {
            ValidationResult results = await _validator.ValidateAsync(request, ct);

            if (!results.IsValid)
            {
                throw new ValidationException(results.Errors);
            }

            var userProfile = await _profileRepository.GetByUserIDAsync(request.UserID, ct);

            if (userProfile == null) 
            {
                throw new NullReferenceException(nameof(userProfile));
            }

            return userProfile.Adapt<GetUserInfoResponseDTO>();

        }

    }
}
