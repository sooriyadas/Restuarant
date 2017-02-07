using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace Data
{
   public class ItemManagement:IItemManagement
    {
       public IList<MenuItem> GetAllItems()
       {
           //IList<MenuItem> menuitems = new List<MenuItem>();
           //RestuarantEntities tstDb = new RestuarantEntities();
           //var list = from k in tstDb.Items select k;
           //foreach (var item in list)
           //{
           //    MenuItem itm = new MenuItem();
           //    itm.Id = item.Id;
           //    itm.ItemName = item.ItemName;
           //    itm.Price = item.Price;
           //    itm.Description = item.Description;
           //    itm.Category = item.Category;
           //    menuitems.Add(itm);

           //}
           //return menuitems;
           using (RestuarantEntities res = new RestuarantEntities())
           {
               return res.Items.Select(r => new MenuItem
               {
                   Id = r.Id,
                   ItemName = r.ItemName,
                   Price = r.Price,
                   Description = r.Description,
                   Category = r.Category

               }).ToList();
           }
       }
         

    }
}
