using MeetUpEvent.DAL;
using MeetUpEvent.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MeetUpEvent.BLL
{
    public class OrganizationBLL
    {
        DataContext data = new DataContext();

        public List<Organization> GetOrganizations()
        {
            List<Organization> organizations = data.Organization.ToList();

            return organizations;
        }

        public List<Organization> GetLastOrganizations()
        {
            IQueryable<Organization> organizations = data.Organization.OrderByDescending(x => x.CreateDate).Take(3);
            return organizations.ToList();
        }

        public Organization GetOrganization(int id)
        {
            return data.Organization.FirstOrDefault(x => x.OrganizationID == id);
        }
    }

}
