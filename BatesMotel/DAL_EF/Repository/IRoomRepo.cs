using System;
using System.Collections.Generic;
namespace BatesMotel.DAL_EF.Repository
{
    interface IRoomRepo
    {
        public List<Room> SelectAll();
    }
}
