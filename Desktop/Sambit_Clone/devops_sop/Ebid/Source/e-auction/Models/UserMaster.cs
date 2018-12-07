using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace e_auction.Models
{
    public class UserMaster
    {
        public string LoginId { get; set; }
        public string UserName { get; set; }
        public string RoleName { get; set; }
        public DateTime LastLogin { get; set; }
    }
}