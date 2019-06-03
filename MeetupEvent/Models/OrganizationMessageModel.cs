using MeetUpEvent.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MeetupEvent.Models
{
    public class OrganizationMessageModel
    {
        public Organization Organization { get; set; }

        public Message Message { get; set; }
    }
}