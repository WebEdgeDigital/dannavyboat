using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WebEdge.BusinessLayer.Models;

namespace WebEdge.BusinessLayer.Interface
{
    public interface IActivity
    {
        List<ActivityDto> GetAllActivities();

        ActivityDto GetActivityById(int activityId);

    }
}
