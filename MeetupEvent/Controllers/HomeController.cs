using MeetUpEvent.BLL;
using MeetUpEvent.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MeetupEvent.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        public ActionResult homepage()
        {
            OrganizationBLL organizationBLL = new OrganizationBLL();
            List<Organization> organizations = organizationBLL.GetLastOrganizations();

            return View(organizations);
        }
    }
}