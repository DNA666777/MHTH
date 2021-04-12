using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Monster_Hunter_Tabletop_Helper.Controllers
{
    using MHTH.Service.Dto;
    using MHTH.Service.Service;

    public class QuestGeneratorController : Controller
    {
        private QuestService QS = new QuestService();
        // GET: QuestGenerator
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult GenerateByAverage(int numberPlayer,int averageLevel)
        {
            return Json("");
        }
        public JsonResult GenerateByCR(decimal CR)
        {
            QuestInfoDTO questInfoDTO = this.QS.GenerateQuestByCR(CR);

            return Json(questInfoDTO,JsonRequestBehavior.AllowGet);
        }
    }
}