using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebEdge.BusinessLayer.Models;

namespace Dannavyboat.Views.ViewModel
{
    public class ActivityModel
    {
        #region Properties
        //public int ActivityId { get; set; }
        //public string ActivityTitle { get; set; }
        //public string ActivityDescription { get; set; }
        //public string ActivitySummary { get; set; }
        //public string ActivityImagePath { get; set; }
        //public int ActivityType { get; set; }
        public List<Activity> ActivitiesList { get; set; }
        #endregion
    }
}