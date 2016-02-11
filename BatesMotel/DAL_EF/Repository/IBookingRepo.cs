using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BatesMotel.DAL_EF.Repository
{
    public interface IBookingRepo
    {
        List<Booking> SelectAll();
    }
}
