﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace BatesMotel.DAL_EF.Repository
{
    public class BookingRepo : IBookingRepo
    {
        private BatesMotelContext db = null;

        public BookingRepo()
        {
            this.db = new BatesMotelContext();
        }

        public BookingRepo(BatesMotelContext databaseContext)
        {
            this.db = databaseContext;

        }
        public List<Booking> SelectAll()
        {
            return db.Bookings.ToList();
        }

        public List<Booking> SelectAllAvailable()
        { 

            return db.Bookings.ToList();       

       }   

        }
    }
