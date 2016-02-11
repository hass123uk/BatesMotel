namespace BatesMotel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Room
    {
        public Room()
        {
            Bookings = new HashSet<Booking>();
        }

        public int ID { get; set; }

        public int Room_no { get; set; }

        public virtual ICollection<Booking> Bookings { get; set; }
    }
}
