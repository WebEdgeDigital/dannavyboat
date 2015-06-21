using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WebEdge.DataLayer.Model;

namespace WebEdge.BusinessLayer.Helpers
{
    public class ContextHelper
    {
        public static DanNavyBoatContainer DefaultContext(bool LazyLoad = false, bool ProxyCreationEnabled = false)
        {
            var c = new DanNavyBoatContainer();
            c.Configuration.LazyLoadingEnabled = LazyLoad;
            c.Configuration.ProxyCreationEnabled = ProxyCreationEnabled;
            return c;
        }
    }
}
