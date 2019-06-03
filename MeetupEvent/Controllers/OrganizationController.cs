using MeetupEvent.Models;
using MeetUpEvent.BLL;
using MeetUpEvent.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MeetupEvent.Controllers
{
    public class OrganizationController : Controller
    {
        OrganizationBLL organizationBLL = new OrganizationBLL();
        // GET: Organization
        public ActionResult organizationpage()
        {
            

            List<Organization> organization = organizationBLL.GetOrganizations();

            return View(organization);
        }

        public ActionResult OrganizationDetail(int id)
        {
            OrganizationMessageModel model = new OrganizationMessageModel();
            model.Organization = organizationBLL.GetOrganization(id);
            return View(model);
        }

    }
}