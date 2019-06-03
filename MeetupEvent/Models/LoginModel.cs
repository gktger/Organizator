using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace MeetupEvent.Models
{
    public class LoginModel
    {
        [Required,StringLength(100,ErrorMessage ="Fazla Karakter Sayısı")]
        public string Email { get; set; }
        [Required,StringLength(50,ErrorMessage ="Fazla Karakter Sayısı")]
        public string Password { get; set; }
    }
}