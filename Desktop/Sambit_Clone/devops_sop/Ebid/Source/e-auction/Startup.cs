
using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(e_auction.Startup))]

namespace e_auction
{
    public class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            app.MapSignalR();
        }
    }
}
