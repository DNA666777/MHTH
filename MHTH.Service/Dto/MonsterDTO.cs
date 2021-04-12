namespace MHTH.Service.Dto
{
    using MHTH.Database.Database;
    using MHTH.Service.Dto.Infrastructure;
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.Linq;
    using System.Linq.Expressions;


#pragma warning disable CS1591 // Missing XML Comment
#pragma warning disable SA1600 // Elements must be documented
#pragma warning disable SA1402 // File may only contain one single class
    public class MonsterDTO
    {
        ////BCC/ BEGIN CUSTOM CODE SECTION
        ////ECC/ END CUSTOM CODE SECTION
        public int Id { get; set; }
        public string Name { get; set; }
        public decimal CR { get; set; }
        public Nullable<int> BaseMonsterId { get; set; }
    }

    public class MonsterMapper : MapperBase<Monster, MonsterDTO>
    {
        ////BCC/ BEGIN CUSTOM CODE SECTION
        ////ECC/ END CUSTOM CODE SECTION

        public override Expression<Func<Monster, MonsterDTO>> SelectorExpression
        {
            get
            {
                return (Expression<Func<Monster, MonsterDTO>>)(p => new MonsterDTO()
                {
                    ////BCC/ BEGIN CUSTOM CODE SECTION
                    ////ECC/ END CUSTOM CODE SECTION
                    Id = p.Id,
                    Name = p.Name,
                    CR = p.CR,
                    BaseMonsterId = p.BaseMonsterId
                });
            }
        }

        public override void MapToModel(MonsterDTO dto, Monster model)
        {
            ////BCC/ BEGIN CUSTOM CODE SECTION
            ////ECC/ END CUSTOM CODE SECTION
            model.Id = dto.Id;
            model.Name = dto.Name;
            model.CR = dto.CR;
            model.BaseMonsterId = dto.BaseMonsterId;
        }
    }
#pragma warning restore CS1591 // Missing XML Comment
#pragma warning restore SA1600 // Elements must be documented
#pragma warning restore SA1402 // File may only contain one single class
}