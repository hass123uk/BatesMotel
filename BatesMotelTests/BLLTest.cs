using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using NUnit.Framework;
using BatesMotel.DAL_EF.Repository;
using BatesMotel;
namespace BatesMotelTests
{
    [TestFixture]
    public class BLLTest
    {
        List<Booking> bookings;
        List<Room> rooms;

        [SetUp]
        public void setup()
        {
            bookings = new List<Booking>();
            rooms = new List<Room>();

            bookings.Add(new Booking { ID = 1, CheckIn_Date = new DateTime(2002, 01, 1), CheckOut_Date = new DateTime(2005, 01, 5), RoomID = 1 });
            bookings.Add(new Booking { ID = 2, CheckIn_Date = new DateTime(2002, 01, 5), CheckOut_Date = new DateTime(2002, 01, 10), RoomID = 2 });
            bookings.Add(new Booking { ID = 3, CheckIn_Date = new DateTime(2002, 01, 10), CheckOut_Date = new DateTime(2002, 01, 15), RoomID = 3 });
            bookings.Add(new Booking { ID = 4, CheckIn_Date = new DateTime(2002, 01, 15), CheckOut_Date = new DateTime(2002, 01, 20), RoomID = 4 });
            bookings.Add(new Booking { ID = 5, CheckIn_Date = new DateTime(2002, 01, 5), CheckOut_Date = new DateTime(2002, 01, 15), RoomID = 5 });

            rooms.Add(new Room { ID = 1, Room_no = 1 });
            rooms.Add(new Room { ID = 2, Room_no = 2 });
            rooms.Add(new Room { ID = 3, Room_no = 3 });
            rooms.Add(new Room { ID = 4, Room_no = 4 });
            rooms.Add(new Room { ID = 5, Room_no = 5 });


        }
        [Test]
        public void getRoomsForBooking()
        {

          int i =  bookings.Count();

          Assert.AreEqual(5,i);
           




        }




    }
}
