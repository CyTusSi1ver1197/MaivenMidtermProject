using UniCore.Application.Contract.RequestHandlerHub;

namespace UniCore.Application.Feature.v1.ClassRoom.GetClassInfos
{
    public class GetCoursesStudentsRequestDTO : IRequest<IEnumerable<GetCoursesStudentsResponseDTO>>
    {
        public string UserID { get; set; }
    }
}
