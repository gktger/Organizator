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
    public class AccessController : Controller
    {

        public ActionResult loginpage()
        {
            return View();
        }

        [HttpPost]
        public ActionResult loginpage(LoginModel model)
        {

            if (ModelState.IsValid)
            {
                var person = AccessBLL.LoginUser(model.Email, model.Password);

                if (person == null)
                {
                    ModelState.AddModelError("", "Böyle Bir Kullanıcı Yok");


                    ViewBag.Result = "Mail Adresi Kayıtlı Değil.";
                    ViewBag.Status = "danger";
                    return View();
                }
                else
                {
                    Session["Person"] = person;
                    return RedirectToAction("homepage", "Home");
                }
            }

            return View();

        }

        public ActionResult logoutpage()
        {
            Session["Person"] = null;
            return RedirectToAction("homepage", "Home");

        }

        public ActionResult registerpage()
        {
            return View();
        }

        [HttpPost]
        public ActionResult registerpage(Person person)
        {
            PersonBLL personBLL = new PersonBLL();
            int result = personBLL.AddPerson(person);

            if (result > 0)
            {
                ViewBag.Result = "Tebrikler.Kaydınız Başarıyla Gerçekleşti.";
                ViewBag.Status = "success";

            }
            else
            {
                ViewBag.Result = "Bu mail adresi kullanılıyor.";
                ViewBag.Status = "danger";


            }

            return View();

        }









    }
}