using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MVC_CRUD1.Models;
using MVC_CRUD1.Service;

namespace MVC_CRUD1.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            UserService us = new UserService();
            List<User> userList = us.getAllUserList();

            return View(userList);
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        public ActionResult ResiterUser(User user)
        {
            UserService us = new UserService();
            int status = us.insertUserService(user);
            if (status > 0)
            {
                return RedirectToAction("Index");
            }
            else
            {
            }
            return null;
        }


        public ActionResult editpage(string edit)
        {
            UserService us = new UserService();
            List<User> editList = us.getUserbyId(edit);

            return View(editList);
        }

        public ActionResult updateInfo(User user)
        {
            UserService us = new UserService();
            int status = us.updateUserService(user);
            if (status > 0)
            {
                return RedirectToAction("Index","Home");
            }
            else
            {
            }
            return null;
        }

        public ActionResult deletpage(string delete)
        {
            UserService us = new UserService();
            int status = us.sofrDelete(delete);
            if (status > 0)
            {
                return RedirectToAction("Index", "Home");
            }
            else
            {
            }
            return null;

        }
    }


}