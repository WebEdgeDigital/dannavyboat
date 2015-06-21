using AutoMapper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WebEdge.BusinessLayer.Helpers;
using WebEdge.BusinessLayer.Interface;
using DataLayer = WebEdge.DataLayer.Model;

namespace WebEdge.BusinessLayer.Impl
{
    public class Activity : IActivity
    {
        #region Constructor
        public Activity ()
        {

        }

        #endregion

        #region Methods 

        public List<Activity> GetAllActivities()
        {
            List<Activity> activitiesList = new List<Activity>();
            using (var c = ContextHelper.DefaultContext())
            {
                var dbItem = c.Activities;
                Mapper.CreateMap<DataLayer.Model.Activity, Activity>();
                Mapper.Map(dbItem, activitiesList);

            }
            return activitiesList;
        }

        #endregion
    }
}
