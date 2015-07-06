using Dannavyboat.Views.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebEdge.BusinessLayer.Interface;

namespace Dannavyboat.Controllers
{
    public class HomeController : Controller
    {

        #region Properties
        public IActivity _activity;
        #endregion

        #region Constructor
        public HomeController(IActivity activity)
        {
            this._activity = activity;
        }

        #endregion
        public ActionResult Index()
        {
            //get contents of activity from db
            var homeViewModel = new HomeViewModel();

            homeViewModel.ActivitiesList = _activity.GetAllActivities();
            //also needs to select 3 random activities

            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your app description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}
