using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace e_auction.Models
{
    public class UserMasterModel
    {
        public static List<UserMaster> listUserMaster = new List<UserMaster>();
        public UserMaster find(string loginid)
        {
            
            return listUserMaster.Where(acc => acc.LoginId.Equals(loginid)).FirstOrDefault();
        }
    }
}