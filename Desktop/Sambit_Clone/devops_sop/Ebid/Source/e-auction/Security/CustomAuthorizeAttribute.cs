using e_auction.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace e_auction.Security
{
    public class CustomAuthorizeAttribute:AuthorizeAttribute
    {
        public override void OnAuthorization(AuthorizationContext filterContext)
        {
            if(string.IsNullOrEmpty(SessionPersister.LoginId))
            {
                
                filterContext.Result = new RedirectToRouteResult(new RouteValueDictionary(new {controller="Account",action="Index" }));
            }
            else
            {
                UserMasterModel um=new UserMasterModel();
                
                CustomPrincipal cm = new CustomPrincipal(um.find(SessionPersister.LoginId));
                if (!cm.IsInRole(Roles))
                    filterContext.Result = new RedirectToRouteResult(new RouteValueDictionary(new { controller = "AccessDenied", action = "Index" }));

                List<UserMaster> lstTemp = (List<UserMaster>)HttpContext.Current.Application["UserList"];
                lstTemp.Where(t => t.LoginId == SessionPersister.LoginId).FirstOrDefault().LastLogin = DateTime.Now;
                
            }
            
        }
    }
}