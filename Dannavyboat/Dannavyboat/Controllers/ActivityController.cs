using Dannavyboat.Views.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebEdge.BusinessLayer.Interface;

namespace Dannavyboat.Controllers
{
    public class ActivityController : Controller
    {
        #region Properties
        public IActivity _activity;
        #endregion

        #region Constructor
        public ActivityController (IActivity activity)
        {
            this._activity = activity;
        }

        #endregion

        #region Public Methods
        [HttpGet]
        public ActionResult Activities()
        {
            //get contents of activity from db
            var activityModel = new ActivityViewModel();
            //should populate main activity by id ? or have url name 

            activityModel.ActivitiesList = _activity.GetAllActivities();
            //also needs to select 3 random activities

            return View("Activities", activityModel);
        }

        [HttpGet]
        public ActionResult GetActivityById(int activityId)
        {
            //get contents of activity from db
            var activityModel = new ActivityViewModel();

            activityModel.Activity = _activity.GetActivityById(activityId);
            //also needs to select 3 random activities

            return View("Activities", activityModel);
        }
        #endregion

        #region Private Methods


        #endregion

    }
}
