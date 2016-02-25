using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BatesMotel.DAL_EF.Repository
{
    public class RoomRepo : IRoomRepo{

    
  private BatesMotelContext db = null;

        public RoomRepo()
        {
            this.db = new BatesMotelContext();
        }

        public RoomRepo(BatesMotelContext databaseContext)
        {
            this.db = databaseContext;

        }
        public List<Room> SelectAll()
        {
            return db.Rooms.ToList();
        }

        public List<Room> SelectAllAvailable()
        { 

            return db.Rooms.ToList();       

       }   

        }
    }
