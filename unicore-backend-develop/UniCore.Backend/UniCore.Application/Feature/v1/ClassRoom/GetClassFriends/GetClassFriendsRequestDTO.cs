using UniCore.Application.Contract.RequestHandlerHub;

namespace UniCore.Application.Feature.v1.ClassRoom.GetClassFriends
{
    public class GetClassInfosRequestDTO : IRequest<IEnumerable<GetClassInfosResponseDTO>>
    {
        public string UserID { get; set; }
        public string ClassID { get; set; }
    }
}
