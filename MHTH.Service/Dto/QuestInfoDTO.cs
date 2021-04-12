using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MHTH.Service.Dto
{
    using MHTH.Service.Common;

    public class QuestInfoDTO
    {
        public string QuestTitle { get; set; }
        public string Where { get; set; }
        public string When { get; set; }
        public int MoneyReward { get; set; }
        public string QuestLore { get; set; }
        public string QuestGoalPrimary { get; set; }
        public string QuestGoalOptional { get; set; }

        public QuestType TypeOfHunt { get; set; }

        private int PrimaryTargetId { get; set; }
    }
}
