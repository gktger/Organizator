using MeetUpEvent.DAL;
using MeetUpEvent.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MeetUpEvent.BLL
{
    public static class AccessBLL
    {
        public static Person LoginUser(string email, string password)
        {
            if (string.IsNullOrEmpty(email) || string.IsNullOrEmpty(password))
            {
                throw new MissingFieldException("kullanıcı adı yada şifreyi boş gönderemezsiniz");
            }

            DataContext data = new DataContext();
            var person = data.Person.FirstOrDefault(e => e.Email == email && e.Password == password);
            return person;
        }

        

       
    }
}
