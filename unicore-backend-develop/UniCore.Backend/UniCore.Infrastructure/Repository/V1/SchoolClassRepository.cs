using MapsterMapper;
using Microsoft.EntityFrameworkCore;
using UniCore.Application.Contract.Repository.Enitity.v1;
using UniCore.Application.Entity;
using UniCore.Infrastructure.Database;
using UniCore.Infrastructure.Repository.Base;

namespace UniCore.Infrastructure.Repository.V1
{
    public class SchoolClassRepository : RepositoryEFCoreBase<SchoolClass>, ISchoolClassRepository
    {
        public SchoolClassRepository(UniCoreDbContext dbContext, IMapper mapper) : base(dbContext, mapper)
        {
        }

        public async Task<IEnumerable<SchoolClass>?> GetAllByListIdAsync(
            IEnumerable<string> classIds,
            CancellationToken ct = default
            )
        {
            var results = await _dbSet
                .Where(s => classIds.Contains(s.Id))
                .AsNoTracking()
                .ToListAsync(ct);

            return results;
        }
    }
}
