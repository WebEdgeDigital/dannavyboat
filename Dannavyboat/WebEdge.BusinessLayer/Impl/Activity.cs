using AutoMapper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WebEdge.BusinessLayer.Helpers;
using WebEdge.BusinessLayer.Interface;
using WebEdge.BusinessLayer.Models;
using DataLayer = WebEdge.DataLayer.Model;

namespace WebEdge.BusinessLayer.Impl
{
    public class Activity : IActivity
    {
        #region Methods 

        public List<ActivityDto> GetAllActivities()
        {
            List<ActivityDto> activitiesList = new List<ActivityDto>();
            using (var c = ContextHelper.DefaultContext())
            {
                var dbItem = c.Activities;
                Mapper.CreateMap<DataLayer.Model.Activity, ActivityDto>();
                Mapper.Map(dbItem, activitiesList);

            }
            return activitiesList;
        }

        public ActivityDto GetActivityById(int activityId)
        {
            ActivityDto activity = new ActivityDto();
            using (var c = ContextHelper.DefaultContext())
            {
                var dbItem = c.Activities.FirstOrDefault(a =>a.ActivityId == activityId);
                Mapper.CreateMap<DataLayer.Model.Activity, ActivityDto>();
                Mapper.Map(dbItem, activity);

            }
            return activity;
        }
        

        #endregion
    }
}
