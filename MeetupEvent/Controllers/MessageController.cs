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
    public class MessageController : Controller
    {
        PersonBLL personBLL = new PersonBLL();
        MessageBLL messageBLL = new MessageBLL();

        [HttpPost]
        public ActionResult SendMessage(OrganizationMessageModel model)
        {
            Person fromPerson = Session["Person"] as Person;
            Message message = new Message
            {
                Date = DateTime.Now,
                FromID = fromPerson.PersonID,
                ToID = model.Organization.PersonID,
                MessageText = model.Message.MessageText
            };
            messageBLL.AddMessage(message);
            return View();
        }
    }
}