using MeetUpEvent.DAL;
using MeetUpEvent.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MeetUpEvent.BLL
{
    public class MessageBLL
    {
        DataContext data = new DataContext();

        public void AddMessage(Message message)
        {
            data.Message.Add(message);
            data.SaveChanges();
        }
    }
}
