using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CaptchaMvc.HtmlHelpers;
using e_auction.Models;
using System.Data.Sql;
using System.IO;
using e_auction.Security;

namespace e_auction.Controllers
{
    public class AccountController : Controller
    {
        
        private Entities db = new Entities();
        //
        // GET: /Account/
        public ActionResult Index()
        {
            return View();
        }

        // GET: /Account/Register
        [HttpGet]
        public ActionResult Register()
        {
            
            ViewBag.CategoryListbag = new SelectList(db.CategoryMasters.ToList(), "CategoryID", "CategoryName");
            ViewBag.StateListbag = new SelectList(db.StateMasters.ToList(), "stateId", "StateName");
            return View();
        }
        

        // POST: /Account/Register
        [HttpPost]
        public ActionResult Register(RegisterMaster registermaster, string address)
        {
            if(ModelState.IsValid)
            { 
            // Code for validating the CAPTCHA  
            if (this.IsCaptchaValid("Captcha is not valid"))
            {
                db.Register(registermaster.CategoryId, "1", registermaster.CompanyName, registermaster.RegAddress, registermaster.City, registermaster.StateId, registermaster.pincode, registermaster.PanNo, registermaster.ContactPerson, registermaster.Email, registermaster.Mobile, registermaster.Telephone, registermaster.Tin);
                return Content("<script language='javascript' type='text/javascript'>alert('Registered Successfully.');window.location = '../Account/Login';</script>");
                
            }
            else 
            { 
            ViewBag.ErrMessage = "Error: captcha is not valid.";
            return RedirectToAction("Register");
            }
            
            }
            ViewBag.CategoryListbag = new SelectList(db.CategoryMasters.ToList(), "CategoryID", "CategoryName");
            ViewBag.StateListbag = new SelectList(db.StateMasters.ToList(), "stateId", "StateName");
            return View();
        }

        [HttpGet]
        public ActionResult login()
        {
            
            return View();
        }

        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public ActionResult Login(LoginMaster lc,string clientpass)
        {
         if(ModelState.IsValid)
         {
             var client = Convert.ToInt32(lc.ClientId);
             string ipaddress = Request.UserHostAddress;
             var valid = db.checklogin(client, clientpass).ToList();

             if (valid[0] == 1)
             {
                 var defaultcheck = db.checkdefault(client).ToList();
                 Session["clientid"] = lc.ClientId;
                 if(defaultcheck[0]==1)
                 {
                     return RedirectToAction("ChangePassword", "Home");
                 }
                 var role = db.get_role1(Convert.ToInt32(Session["clientid"])).ToList().FirstOrDefault().rolename;
                 UserMasterModel umm = new UserMasterModel();
                 UserMasterModel.listUserMaster = new List<UserMaster>();
                 UserMasterModel.listUserMaster.Add(new UserMaster { LoginId = client.ToString(), UserName = client.ToString(), RoleName = role,LastLogin=DateTime.Now });
                 List<UserMaster> lstTemp = (List<UserMaster>)HttpContext.Application["UserList"];
                 int i=lstTemp.Where(x => x.LoginId == client.ToString()).Count();
                 if(i==0)
                 {
                     lstTemp.Add(new UserMaster { LoginId = client.ToString(), UserName = client.ToString(), RoleName = role, LastLogin = DateTime.Now });
                     HttpContext.Application["UserList"] = lstTemp;

                 }
                 SessionPersister.LoginId = client.ToString();
                 SessionPersister.UserName = client.ToString();
                 UserMasterModel.listUserMaster = null; UserMasterModel.listUserMaster = lstTemp;
                 if(role=="Admin")
                 {
                     var pendingcount = db.get_live_auction(Convert.ToInt32(Session["clientid"]), "NotApproved").ToList().Count;
                     if(pendingcount>0)
                     {
                         return RedirectToAction("PendingApproval", "Tender");
                     }
                 }
                 return RedirectToAction("Index", "Home");
             }
             else
                 ModelState.AddModelError("","Invalid Client ID or Password");
             return Content("<script language='javascript' type='text/javascript'>alert('Invalid ClientID or Password');window.location = '../Account/Login';</script>");

         }
            return View();
        }
        [HttpGet]
        public ActionResult ForgetPassword()
        {
            return View();
        }
        
        
        
        [HttpPost]
        public ActionResult ForgetPassword(string clientid,string email)
        {
            try
            {
                var emailcheck = db.getemail(Convert.ToInt32(clientid)).ToList().First().Email.ToString();
                if(email==emailcheck)
                {
                    var check = db.ChangePassword(Convert.ToInt32(clientid), null, 1);
                    return Content("<script language='javascript' type='text/javascript'>alert('Password Send to your email.');window.location = '../Account/Login';</script>");
                }
                else
                {
                    return Content("<script language='javascript' type='text/javascript'>alert('Wrong Client ID & Password');window.location = '../Account/forgetpassword';</script>");

                }
            }
            catch(Exception ex)
            {
                return View();
            }
        }
	}

}