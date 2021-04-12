using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MHTH.Service.Common
{
    public class StringBase
    {
        private StringBase(string value) => Value = value;

        public string Value { get; set; }

        public static StringBase HuntGoal => new StringBase("Slay a %NAME%");
        public static StringBase HuntCaptureGoal => new StringBase("Capture a %NAME%");
        public static StringBase GatheringGoal => new StringBase("Deliver %NUMBER% %ITEM%");
    }
}
