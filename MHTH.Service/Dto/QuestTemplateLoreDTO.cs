namespace MHTH.Service.Dto
{

    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.Linq;
    using System.Linq.Expressions;

    using MHTH.Database.Database;
    using MHTH.Service.Dto.Infrastructure;

#pragma warning disable CS1591 // Missing XML Comment
#pragma warning disable SA1600 // Elements must be documented
#pragma warning disable SA1402 // File may only contain one single class
    public class QuestTemplateLoreDTO
    {
        ////BCC/ BEGIN CUSTOM CODE SECTION
        ////ECC/ END CUSTOM CODE SECTION
        public int Id { get; set; }
        public string EN { get; set; }
        public string FR { get; set; }
    }

    public class QuestTemplateLoreMapper : MapperBase<QuestTemplateLore, QuestTemplateLoreDTO>
    {
        ////BCC/ BEGIN CUSTOM CODE SECTION
        ////ECC/ END CUSTOM CODE SECTION
        public override Expression<Func<QuestTemplateLore, QuestTemplateLoreDTO>> SelectorExpression
        {
            get
            {
                return (Expression<Func<QuestTemplateLore, QuestTemplateLoreDTO>>)(p => new QuestTemplateLoreDTO()
                {
                    ////BCC/ BEGIN CUSTOM CODE SECTION
                    ////ECC/ END CUSTOM CODE SECTION
                    Id = p.Id,
                    EN = p.EN,
                    FR = p.FR
                });
            }
        }

        public override void MapToModel(QuestTemplateLoreDTO dto, QuestTemplateLore model)
        {
            ////BCC/ BEGIN CUSTOM CODE SECTION
            ////ECC/ END CUSTOM CODE SECTION
            model.Id = dto.Id;
            model.EN = dto.EN;
            model.FR = dto.FR;
        }
    }
#pragma warning restore CS1591 // Missing XML Comment
#pragma warning restore SA1600 // Elements must be documented
#pragma warning restore SA1402 // File may only contain one single class
}