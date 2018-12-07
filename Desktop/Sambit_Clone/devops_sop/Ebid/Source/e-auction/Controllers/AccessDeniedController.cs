using e_auction.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace e_auction.Controllers
{
    public class AccessDeniedController : Controller
    {
        private Entities db = new Entities();
        public ActionResult Index()
        {
            ViewBag.Menu = db.get_role(Convert.ToInt32(Session["clientid"]));
            return View();
        }
	}
}