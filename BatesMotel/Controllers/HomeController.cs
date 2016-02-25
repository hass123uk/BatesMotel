using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using BatesMotel.DAL_EF.Repository;
using BatesMotel.Models;
using System.Globalization;

namespace BatesMotel.Controllers
{
    public class HomeController : Controller
    {

        public ActionResult Index()
        {
          
            return View();
        }
   
    }
    }