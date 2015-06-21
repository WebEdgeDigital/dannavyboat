using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Dannavyboat.Controllers
{
    public class ActivityController : Controller
    {
        //
        // GET: /Activity/

        [HttpGet]

        public ActionResult Activities()
        {

            return View();
        }

    }
}
