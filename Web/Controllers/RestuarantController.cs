using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Web.Models;
using Web.ServiceBridge;
using Web.ServiceBridge.Interfaces;

namespace Web.Controllers
{
    public class RestuarantController : Controller
    {
        //
        // GET: /Restuarant/

        IItemServiceManagement servicebridge = new ItemServiceManagement();
        public ActionResult Index()
        {
            Session["OrderList"] = null;
            var list = servicebridge.GetAllItems();
      
            //Store the items to a session

            Session["sessionItemsList"] = list;
            return View(list); 
        }

        public ActionResult GetAllItemsRest()
        {

            var list = servicebridge.GetAllItemsRest();
            return View("Index", list);
        }
        public JsonResult AddToKitcken(Items items)
        {
            var list = items;
            return Json("success", JsonRequestBehavior.AllowGet);
        }

        public JsonResult AddToList(int id)
        {
           

            //To get what you have stored to a session

            var sessionItemsList = Session["sessionItemsList"] as IList<Items>;
            var item = sessionItemsList.Where(i => i.Id == id).FirstOrDefault();

            //Store the items to a session

            var orderList = (Session["OrderList"] as IList<Items>) ?? new List<Items>();

            var matchingvalues = orderList.Where(o => o.Id==id).FirstOrDefault();
            if (matchingvalues==null)
            {
                orderList.Add(item);
            }
            else
            {
                orderList.Remove(matchingvalues);
                matchingvalues.Qty = (matchingvalues.Qty )+1;
                orderList.Add(matchingvalues);
                item = matchingvalues;
            }

            
            Session["OrderList"] = orderList;

            
            //to clear the session value

          //  Session["products"] = null;

            return Json(item, JsonRequestBehavior.AllowGet);
        }
        public ActionResult Foods()
        {
            var list = servicebridge.GetAllItems(); 

            var foods= list.Where(f=>f.Category=="Food").ToList();

            IList<Items> menuitems = new List<Items>();
            foreach (var item in foods)
            {
                Items itm = new Items();
                itm.Id = item.Id;
                itm.ItemName = item.ItemName;
                itm.Price = (float)item.Price;
                itm.Description = item.Description;
                itm.Category = item.Category;
                menuitems.Add(itm);

            }
                 
            return PartialView("~Views/Restuarant/Partial/FoodsList",menuitems);
        }

        public ActionResult Beverages()
        {
            var list = servicebridge.GetAllItems();

            var foods = list.Where(f => f.Category == "Beverage").ToList();

            IList<Items> menuitems = new List<Items>();
            foreach (var item in foods)
            {
                Items itm = new Items();
                itm.Id = item.Id;
                itm.ItemName = item.ItemName;
                itm.Price = (float)item.Price;
                itm.Description = item.Description;
                itm.Category = item.Category;
                menuitems.Add(itm);

            }

            return View("BeverageList", menuitems);
        }
	}
}