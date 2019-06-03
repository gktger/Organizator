namespace MeetUpEvent.Entity
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("OrganizationAndPerson")]
    public partial class OrganizationAndPerson
    {
        public int OrganizationID { get; set; }

        public int PersonID { get; set; }

        public int ID { get; set; }

        public int NumberofPerson { get; set; }

        public virtual Organization Organization { get; set; }

        public virtual Person Person { get; set; }
    }
}
