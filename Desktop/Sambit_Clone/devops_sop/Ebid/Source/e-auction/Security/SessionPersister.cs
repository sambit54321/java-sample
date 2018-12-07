using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace e_auction.Security
{
    public class SessionPersister
    {
        public static string loginidSessionvar = "loginid";
        public static string usernameSessionVar = "username";

        public static string LoginId
        {
            get
            {
                if (HttpContext.Current == null)
                    return string.Empty;
                var sessionVar = HttpContext.Current.Session[loginidSessionvar];   
                if(sessionVar!=null)
                    return sessionVar as string;
                return null;
            }
            set
            {
                HttpContext.Current.Session[loginidSessionvar] = value;
            }
        }

        public static string UserName
        {
            get
            {
                if (HttpContext.Current == null)
                    return string.Empty;
                var sessionVar = HttpContext.Current.Session[usernameSessionVar];
                if (sessionVar != null)
                    return sessionVar as string;
                return null;
            }
            set
            {
                HttpContext.Current.Session[usernameSessionVar] = value;
            }
        }

    }
}