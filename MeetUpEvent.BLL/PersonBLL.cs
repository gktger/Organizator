using MeetUpEvent.DAL;
using MeetUpEvent.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MeetUpEvent.BLL
{
    public class PersonBLL
    {
        DataContext data = new DataContext();
        public List<Person> GetAllPerson()
        {
            List<Person> persons= data.Person.Take(8).ToList();
            return persons;
        }

        public int AddPerson(Person person)
        {
            bool IsItEqual = false;

            foreach (Person item in data.Person)
            {
                if (person.Email == item.Email)
                {
                    IsItEqual = true;
                }
            }

            if (IsItEqual == false)
            {
                data.Person.Add(person);
            }
            int result = data.SaveChanges();
            return result;
        }
        
        public Person GetPerson(string mail)
        {
            return data.Person.FirstOrDefault(x=>x.Email == mail);
        }
    }
}
