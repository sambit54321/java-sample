using e_auction.App_Start;
using e_auction.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace e_auction
{
    public class Global : System.Web.HttpApplication
    {

        
        protected void Application_Start(object sender, EventArgs e)
        {
            AreaRegistration.RegisterAllAreas();
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            List<UserMaster> lst = new List<UserMaster>();
            Application["UserList"] = lst;
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            
            
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {
            
        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {
            List<UserMaster> lstTemp = (List<UserMaster>)Application["UserList"];
            var item = lstTemp.Single(x => x.LoginId == Session["Clientid"].ToString());
            if(item.LoginId.Count()>0)
            {
                lstTemp.Remove(item);
            }
        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}