using System.Web;
using System.Web.Mvc;

namespace Monster_Hunter_Tabletop_Helper
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}
