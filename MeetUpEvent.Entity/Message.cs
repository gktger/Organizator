namespace MeetUpEvent.Entity
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Message")]
    public partial class Message
    {
        public int MessageID { get; set; }

        public int FromID { get; set; }

        public int ToID { get; set; }

        [Required]
        [StringLength(400)]
        public string MessageText { get; set; }

        [Column(TypeName = "date")]
        public DateTime Date { get; set; }

        public virtual Person Person { get; set; }

        public virtual Person Person1 { get; set; }
    }
}
