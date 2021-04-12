using System.Text;
using System.Threading.Tasks;

namespace MHTH.Service.Service
{
    using System.Collections.Generic;
    using System.Linq;

    using MHTH.Database.Database;
    using MHTH.Service.Dto;
    using MHTH.Service.Dto.Infrastructure;

    class MonsterService
    {

        private UnitOfWork unitOfWork = new UnitOfWork();
        private MonsterMapper mapper = new MonsterMapper();

        public void Add(MonsterDTO item)
        {
            Monster itemToInsert = new Monster();
            mapper.MapToModel(item,itemToInsert);
            this.unitOfWork.MonsterRepository.Insert(itemToInsert);
            this.unitOfWork.Save();
        }

        public List<MonsterDTO> GetByCR(decimal CR)
        {
            var result =this.unitOfWork.MonsterRepository.Get(t => t.CR == CR).AsQueryable();
            return result.ToListDTO<Monster,MonsterDTO>(this.mapper.SelectorExpression).ToList();
        }
        
    }
    
}
