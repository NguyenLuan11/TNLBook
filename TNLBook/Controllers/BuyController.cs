using PagedList;
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
    public class BuyController : Controller
    {
        SaleBookEntities1 db = new SaleBookEntities1();
        // GET: Buy
        private List<SACH> Laysachmoi(int count)
        {
            // Sắp xếp theo ngày cập nhật, sau đó lấy top @count
            return db.SACHes.OrderByDescending(a => a.Ngaycapnhat).Take(count).ToList();
        }
        public ActionResult Index(int? page)
        {
            // tạo biến quy định trên mỗi trang
            int pageSize = 6;
            // tạo biến số trang
            int pageNum = (page ?? 1);

            var ds = Laysachmoi(18);
            return View(ds.ToPagedList(pageNum, pageSize));
        }

        [HttpGet]
        public ActionResult Detail(int id)
        {
            SACH sach = db.SACHes.Find(id);
            return View(sach);
        }

        [HttpPost]
        public ActionResult Detail(FormCollection f)
        {
            int masach = Int32.Parse(f.Get("Masach"));
            SACH sach = db.SACHes.Find(masach);
            sach.Tensach = f.Get("Tensach");
            sach.Giaban = Decimal.Parse(f.Get("Giaban"));
            sach.Mota = f.Get("Mota");
            sach.Anhbia = f.Get("Anhbia");
            sach.Ngaycapnhat = DateTime.Parse(f.Get("Ngaycapnhat"));
            sach.Soluongton = Int32.Parse(f.Get("Soluongton"));
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        public ActionResult Chude()
        {
            var chude = from CHUDE in db.CHUDEs select CHUDE;
            return PartialView(chude);
        }

        public ActionResult SPTheochude(int id)
        {
            var sachCD = from SACH in db.SACHes where SACH.MaCD == id select SACH;
            return PartialView(sachCD);
        }

        public ActionResult NXB()
        {
            var nxb = from NHAXUATBAN in db.NHAXUATBANs select NHAXUATBAN;
            return PartialView(nxb);
        }

        public ActionResult SPTheoNXB(int id)
        {
            var sachNXB = from SACH in db.SACHes where SACH.MaNXB == id select SACH;
            return PartialView(sachNXB);
        }

        public ActionResult SearchPartial()
        {
            return PartialView();
        }

        public ActionResult SearchBuy(FormCollection collection)
        {
            var search = collection["keyWord"].ToLower();
            var ds = from SACH in db.SACHes where SACH.Tensach.ToLower().Contains(search) select SACH;
            ViewBag.keyWordSearch = collection["keyWord"];
            return View(ds);
        }
    }
}