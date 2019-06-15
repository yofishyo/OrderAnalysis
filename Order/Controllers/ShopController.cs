﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

using Order.Models;

namespace Order.Controllers
{
    // todo: CheckOut頁面修改數量後ShopCart同步更新

    public class ShopController : Controller
    {
        SMIT09Entities db = new SMIT09Entities();
        ShopCart sc = new ShopCart();
        // GET: Menu
        public ActionResult Menu()
        {
            int mID = sc.GetMemberID(Session["who"].ToString());
            TempData["ShopCart"] = sc.GetCartItem(mID);
            ViewBag.sumPrice = sc.SumTotal(mID);
            ViewBag.itemAmt = sc.GetCartItem(mID).Count();
            return View();
        }

        // GET: Product
        public ActionResult Product()
        {
            int mID = sc.GetMemberID(Session["who"].ToString());
            var product = db.Products.ToList();

            // 取得購物車清單以及產品圖片路徑
            TempData["ShopCart"] = sc.GetCartItem(mID);

            // 取得購物車總額
            ViewBag.sumPrice = sc.SumTotal(mID);
            ViewBag.itemAmt = sc.GetCartItem(mID).Count();
            return View(product);
        }

        // GET: AddCart
        public ActionResult addCart(int pID, int? amt)
        {
            if (Session["who"].ToString()=="guest")
            {
                return RedirectToRoute(new { controller = "Member", action = "Login" });
            }
            // 取得會員ID
            int mID = sc.GetMemberID(Session["who"].ToString());

            sc.AddProduct(mID, pID, amt);

            return RedirectToAction("Product");
        }

        // GET: DelCart
        public ActionResult DelCart(int pID)
        {
            if (Session["who"].ToString() == "guest")
            {
                return RedirectToRoute(new { controller = "Member", action = "Login" });
            }
            int mID = sc.GetMemberID(Session["who"].ToString());
            sc.DelItem(pID, mID);
            return RedirectToAction("Product");
        }

        // GET: CheckOut
        public ActionResult CheckOut()
        {
            if (Session["who"].ToString() == "guest")
            {
                return RedirectToRoute(new { controller = "Member", action = "Login" });
            }
            int mID = sc.GetMemberID(Session["who"].ToString());
            TempData["ShopCart"] = sc.GetCartItem(mID);
            ViewBag.itemAmt = sc.GetCartItem(mID).Count();
            ViewBag.sumPrice = sc.SumTotal(mID);
            return View();
        }

        [HttpPost]
        public ActionResult Confirm(int totalPrice, string ReceiverName, string ReceiverPhone, string ReceiverAddress)
        {
            int mID = sc.GetMemberID(Session["who"].ToString());
            sc.ConfirmOrder(mID, totalPrice, ReceiverName, ReceiverPhone, ReceiverAddress);

            return RedirectToAction("Product");
        }
    }
}