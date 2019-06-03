namespace MeetUpEvent.Entity
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Organization")]
    public partial class Organization
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Organization()
        {
            OrganizationAndPerson = new HashSet<OrganizationAndPerson>();
        }

        public int OrganizationID { get; set; }

        [Required]
        [StringLength(250)]
        public string OrganizationTitle { get; set; }

        [Column(TypeName = "date")]
        public DateTime CreateDate { get; set; }

        [Column(TypeName = "date")]
        public DateTime ApplicationDate { get; set; }

        public int Quota { get; set; }

        [Required]
        public string Image { get; set; }

        public int CategoryID { get; set; }

        public int PersonID { get; set; }

        [StringLength(10)]
        public string City { get; set; }

        [Required]
        public string Explanation { get; set; }

        public virtual Category Category { get; set; }

        public virtual Person Person { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<OrganizationAndPerson> OrganizationAndPerson { get; set; }
    }
}
