using Mapster;
using System;
using System.Collections.Generic;
using System.Text;
using UniCore.Application.Entity;
using UniCore.Application.Feature.v1.User.GetUserInfo;

namespace UniCore.Application.Feature.v1.ClassRoom.GetCoursesStudents
{
    public class UsersClassMappingConfig : IRegister
    {
        public void Register(TypeAdapterConfig config)
        {
            config.NewConfig<UserProfile, GetCoursesStudentsResponseDTO>()
                .Map(dest => dest.FriendName, src => src.FullName ?? string.Empty)
                .Map(dest => dest.FriendPhoneNum, src => src.PhoneNumber ?? string.Empty)
                .Map(dest => dest.FriendAvatarUrl, src => src.AvatarUrl ?? string.Empty);
        }
    }
}
