using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MHTH.Service.Service
{
    using MHTH.Database.Database;
    using MHTH.Service.Dto;
    using MHTH.Service.Dto.Infrastructure;

    using QuestType = MHTH.Service.Common.QuestType;

    public class QuestService
    {
        private MonsterService MS = new MonsterService();
        private UnitOfWork unitOfWork = new UnitOfWork();
        private QuestTemplateMapper mapper = new QuestTemplateMapper();

        private List<QuestTemplateDTO> GetQuestsByMonsterId(int monsterId)
        {
            var result = this.unitOfWork.QuestRepository.Get(t => t.MonsterId == monsterId).AsQueryable();
            return result.ToListDTO<QuestTemplate, QuestTemplateDTO>(this.mapper.SelectorExpression).ToList();
        }

        private int calculateMoneyRewards(decimal CR)
        {
            Random RND = new Random();
            int numberOfDice = 0;
            int resultInGP = 0;
            if (CR >= 0 && CR <= 0)
            {
                numberOfDice = 2;
                for (int i = 0; i < numberOfDice; i++)
                {
                    resultInGP += RND.Next(1, 6) * 10;
                }
            }
            else if (CR >= 5 && CR <= 10)
            {
                numberOfDice = 6;
                for (int i = 0; i < numberOfDice; i++)
                {
                    resultInGP += RND.Next(1, 6) * 100;
                }
            }
            else if (CR >= 11 && CR <= 16)
            {
                numberOfDice = 4;
                for (int i = 0; i < numberOfDice; i++)
                {
                    resultInGP += RND.Next(1, 6) * 1000;
                }
            }
            else if (CR >= 17)
            {
                numberOfDice = (int)(12 + (CR - (decimal)17.0));
                for (int i = 0; i < numberOfDice; i++)
                {
                    resultInGP += RND.Next(1, 6) * 1000;
                }
            }

            return resultInGP;

        }
        public QuestInfoDTO GenerateQuestByCR(decimal CR)
        {
            QuestInfoDTO QIDTO = new QuestInfoDTO();

            var possibleMonster = this.MS.GetByCR(CR);
            //Remove impossible monster
            Dictionary<MonsterDTO, List<QuestTemplateDTO>> dictionaryMonsterQuest =
                new Dictionary<MonsterDTO, List<QuestTemplateDTO>>();

            foreach (var monsterDto in possibleMonster)
            {
               var listQuest = GetQuestsByMonsterId(monsterDto.Id);
               if (listQuest.Count > 0)
               {
                   dictionaryMonsterQuest.Add(monsterDto,listQuest);
               }
            }

            if (dictionaryMonsterQuest.Keys.Count > 0)
            {
                Random RND = new Random();
                var monsterSelected = dictionaryMonsterQuest
                    .ElementAt(RND.Next(0, dictionaryMonsterQuest.Keys.Count)).Key;
                var randomQuestSelected = dictionaryMonsterQuest[monsterSelected]
                    .ElementAt(RND.Next(0, dictionaryMonsterQuest[monsterSelected].Count));

                
                QIDTO.QuestTitle = randomQuestSelected.QuestTemplateName.EN;
                QIDTO.When = "Asap";
                QIDTO.QuestLore = randomQuestSelected.QuestTemplateLore.EN;
                QIDTO.Where = "Training Ground";
                if (randomQuestSelected.QuestTypeId == Database.Database.QuestType.Hunting)
                {
                    QIDTO.TypeOfHunt = QuestType.Hunting;
                    QIDTO.QuestGoalPrimary = "Slay a " + monsterSelected.Name;
                }
                else if (randomQuestSelected.QuestTypeId == Database.Database.QuestType.Capture)
                {
                    QIDTO.TypeOfHunt = QuestType.Capture;
                    QIDTO.QuestGoalPrimary = "Capture a " + monsterSelected.Name;
                }
                QIDTO.MoneyReward = calculateMoneyRewards(monsterSelected.CR);
                
            }

            return QIDTO;
        }
    }
}
