using FluentValidation;

namespace UniCore.Application.Feature.v1.ClassRoom.GetClassFriends
{
    public class GetClassInfosValidator : AbstractValidator<GetClassInfosRequestDTO>
    {
        public GetClassInfosValidator()
        {
            RuleFor(x => x.UserID)
                .NotEmpty()
                .WithMessage("Please specify a User ID");
            RuleFor(x => x.ClassID)
                .NotEmpty()
                .WithMessage("Please specify a Class ID");
            
        }  
    }
}
