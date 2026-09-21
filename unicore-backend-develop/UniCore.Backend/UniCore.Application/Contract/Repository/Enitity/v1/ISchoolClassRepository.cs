using UniCore.Application.Entity;

namespace UniCore.Application.Contract.Repository.Enitity.v1
{
    public interface ISchoolClassRepository : IRepository<SchoolClass>
    {
        Task<IEnumerable<SchoolClass>?> GetAllByListIdAsync(IEnumerable<string> classIds, CancellationToken ct = default);

    }
}
