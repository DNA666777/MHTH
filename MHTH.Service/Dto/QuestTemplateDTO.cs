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
    public class QuestTemplateDTO
    {
        ////BCC/ BEGIN CUSTOM CODE SECTION
        ////ECC/ END CUSTOM CODE SECTION
        public int Id { get; set; }
        public QuestType QuestTypeId { get; set; }

        public int? QuestTemplateNameId
        {
            get { return QuestTemplateName?.Id; }
            set { QuestTemplateName = (value == null) ? null : new QuestTemplateNameDTO() { Id = value.Value }; }
        }

        public QuestTemplateNameDTO QuestTemplateName { get; set; }

        public int? QuestTemplateLoreId
        {
            get { return QuestTemplateLore?.Id; }
            set { QuestTemplateLore = (value == null) ? null : new QuestTemplateLoreDTO() { Id = value.Value }; }
        }

        public QuestTemplateLoreDTO QuestTemplateLore { get; set; }

        public int? QuestTemplateClientId
        {
            get { return QuestTemplateClient?.Id; }
            set { QuestTemplateClient = (value == null) ? null : new QuestTemplateClientDTO() { Id = value.Value }; }
        }

        public QuestTemplateClientDTO QuestTemplateClient { get; set; }

        public int? MonsterId
        {
            get { return Monster?.Id; }
            set { Monster = (value == null) ? null : new MonsterDTO() { Id = value.Value }; }
        }

        public MonsterDTO Monster { get; set; }
    }

    public class QuestTemplateMapper : MapperBase<QuestTemplate, QuestTemplateDTO>
    {
        ////BCC/ BEGIN CUSTOM CODE SECTION
        ////ECC/ END CUSTOM CODE SECTION
        public override Expression<Func<QuestTemplate, QuestTemplateDTO>> SelectorExpression
        {
            get
            {
                return (Expression<Func<QuestTemplate, QuestTemplateDTO>>)(p => new QuestTemplateDTO()
                {
                    ////BCC/ BEGIN CUSTOM CODE SECTION
                    ////ECC/ END CUSTOM CODE SECTION
                    Id = p.Id,
                    QuestTemplateNameId = p.QuestTemplateNameId,
                    QuestTemplateLoreId = p.QuestTemplateLoreId,
                    QuestTemplateClientId = p.QuestTemplateClientId,
                    QuestTypeId = p.QuestTypeId,
                    MonsterId = p.MonsterId,
                    QuestTemplateName = (p.QuestTemplateName == null) ? null : new QuestTemplateNameDTO() { Id = p.QuestTemplateName.Id, EN = p.QuestTemplateName.EN, FR = p.QuestTemplateName.FR },
                    QuestTemplateLore = (p.QuestTemplateLore == null) ? null : new QuestTemplateLoreDTO() { Id = p.QuestTemplateLore.Id, EN = p.QuestTemplateLore.EN, FR = p.QuestTemplateLore.FR },
                    QuestTemplateClient = (p.QuestTemplateClient == null) ? null : new QuestTemplateClientDTO() { Id = p.QuestTemplateClient.Id, EN = p.QuestTemplateClient.EN, FR = p.QuestTemplateClient.FR },
                    Monster = (p.Monster == null) ? null : new MonsterDTO() { Id = p.Monster.Id, Name = p.Monster.Name, CR = p.Monster.CR }

                });
            }
        }

        public override void MapToModel(QuestTemplateDTO dto, QuestTemplate model)
        {
            ////BCC/ BEGIN CUSTOM CODE SECTION
            ////ECC/ END CUSTOM CODE SECTION
            model.Id = dto.Id;
            model.QuestTemplateNameId = (int)dto.QuestTemplateNameId;
            model.QuestTemplateLoreId = (int)dto.QuestTemplateLoreId;
            model.QuestTemplateClientId = (int)dto.QuestTemplateClientId;
            model.QuestTypeId = dto.QuestTypeId;
            model.MonsterId = dto.MonsterId;
            model.QuestTemplateName = (dto.QuestTemplateName == null) ? null : new QuestTemplateName() { Id = dto.QuestTemplateName.Id, EN = dto.QuestTemplateName.EN, FR = dto.QuestTemplateName.FR };
            model.QuestTemplateLore = (dto.QuestTemplateLore == null) ? null : new QuestTemplateLore() { Id = dto.QuestTemplateLore.Id, EN = dto.QuestTemplateLore.EN, FR = dto.QuestTemplateLore.FR };
            model.QuestTemplateClient = (dto.QuestTemplateClient == null) ? null : new QuestTemplateClient() { Id = dto.QuestTemplateClient.Id, EN = dto.QuestTemplateClient.EN, FR = dto.QuestTemplateClient.FR };
            model.Monster = (dto.Monster == null) ? null : new Monster() { Id = dto.Monster.Id, Name = dto.Monster.Name, CR = dto.Monster.CR };
        }
    }
#pragma warning restore CS1591 // Missing XML Comment
#pragma warning restore SA1600 // Elements must be documented
#pragma warning restore SA1402 // File may only contain one single class
}