using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.AspNet.SignalR;
using Microsoft.Owin;
using System.Threading.Tasks;

[assembly: OwinStartup(typeof(e_auction.Startup))]
namespace e_auction.Hubs
{
    public class GetLeadBid : Hub
    {
        
        public void Hello()
        {
            Clients.All.hello("Hello");
        }
        public void Send(string name, string message)
        {
            // Call the addNewMessageToPage method to update clients.
            Clients.All.addNewMessageToPage(name, message);
            
        }
        public void GetLeading()
        {
            
        }
        public override Task OnConnected()
        {
            SendMonitoringData("Connected", Context.ConnectionId);
            return base.OnConnected();
        }

        public override Task OnDisconnected(bool stopCalled)
        {
            SendMonitoringData("Disconnected", Context.ConnectionId);
            return base.OnDisconnected(stopCalled);
        }

        public override Task OnReconnected()
        {
            SendMonitoringData("Reconnected", Context.ConnectionId);
            return base.OnReconnected();
        }

        private void SendMonitoringData(string eventType, string connectionId)
        {
            var context = GlobalHost.ConnectionManager.GetHubContext<GetLeadBid>();
            context.Clients.All.newEvent(eventType, connectionId);
        }
    }
}