using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WebEdge.BusinessLayer.Models
{
   public class ActivityDto
    {
        #region Properties
        public int ActivityId { get; set; }
        public string ActivityTitle { get; set; }
        public string ActivityDescription { get; set; }
        public string ActivitySummary { get; set; }
        public string ActivityImagePath { get; set; }
        public int ActivityType { get; set; }
        #endregion

    }
}
