namespace BatesMotel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Booking
    {
        public int ID { get; set; }

        [Column(TypeName = "date")]
        public DateTime CheckIn_Date { get; set; }

        [Column(TypeName = "date")]
        public DateTime CheckOut_Date { get; set; }

        public int RoomID { get; set; }

        public virtual Room Room { get; set; }
    }
}
