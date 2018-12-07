using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.AspNet.SignalR;

namespace e_auction.Hubs
{
    public class GetTenderInfo : Hub
    {
        public void TenderData()
        {
            IHubContext context = GlobalHost.ConnectionManager.GetHubContext<GetTenderInfo>();
            context.Clients.All.displayTenderDetail();
        }
        public void Hello()
        {
            Clients.All.hello();
        }
        
    }
}