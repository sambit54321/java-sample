using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Principal;
using System.Web;
using e_auction.Models;

namespace e_auction.Security
{
    public class CustomPrincipal:IPrincipal
    {
        private UserMaster UserMaster;
        public CustomPrincipal(UserMaster userMaster)
        {
            try
            {
                this.UserMaster = userMaster;
                this.Identity = new GenericIdentity(userMaster.LoginId);
                this.UserMaster.LastLogin = DateTime.Now;
            }
            catch(Exception ex)
            {

            }
        }
        
        public IIdentity Identity
        {
            get;
            set;
        }

        public bool IsInRole(string role)
        {
            var roles = role.Split(new char[] { ',' });
            return roles.Any(r => this.UserMaster.RoleName.Contains(r));
        }
        
    }
}