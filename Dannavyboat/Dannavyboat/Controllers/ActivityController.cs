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
            var activityModal = new ActivityViewModel();

            activityModal.ActivitiesList = _activity.GetAllActivities();

            return View("Activities", activityModal);
        }
        #endregion

        #region Privae Methods


        #endregion

    }
}
