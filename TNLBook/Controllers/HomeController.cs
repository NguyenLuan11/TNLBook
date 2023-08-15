using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TNLBook.Models;

using PagedList;
using PagedList.Mvc;

namespace TNLBook.Controllers
{
    public class HomeController : Controller
    {
        SaleBookEntities1 db = new SaleBookEntities1();
        private List<SACH> Laysachmoi(int count)
        {
            // Sắp xếp theo ngày cập nhật, sau đó lấy top @count
            return db.SACHes.OrderByDescending(a => a.Ngaycapnhat).Take(count).ToList();
        }

        public ActionResult Index(int ? page)
        {
            // tạo biến quy định trên mỗi trang
            int pageSize = 4;
            // tạo biến số trang
            int pageNum = (page ?? 1);

            var ds = Laysachmoi(18);
            return View(ds.ToPagedList(pageNum, pageSize));
        }

        public ActionResult Search(FormCollection collection)
        {
            var search = collection["search"].ToLower();
            var ds = from SACH in db.SACHes where SACH.Tensach.ToLower().Contains(search) select SACH;
            ViewBag.keyWord = collection["search"];
            return View(ds);
        }

        public ActionResult VendorSach()
        {
            var ds = from SACH in db.SACHes select SACH;
            return PartialView(ds);
        }
    }
}