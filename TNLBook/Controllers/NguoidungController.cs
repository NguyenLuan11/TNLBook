using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TNLBook.Models;

namespace TNLBook.Controllers
{
    public class NguoidungController : Controller
    {
        SaleBookEntities1 db = new SaleBookEntities1();
        // GET: Nguoidung
        public ActionResult Index()
        {
            return View();
        }

        [HttpGet]
        public ActionResult Dangky()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Dangky(FormCollection collection, KHACHHANG khach)
        {
            var hoten = collection["HotenKH"];
            var tendn = collection["TenDN"];
            var mk = collection["MatKhau"];
            var xnmk = collection["XNMatKhau"];
            var email = collection["Email"];
            var diachi = collection["DiaChi"];
            var dt = collection["DienThoai"];
            var ngaysinh = string.Format("{0:MM/dd/yyyy}", collection["NgaySinh"]);

            if (String.IsNullOrEmpty(hoten))
            {
                ViewData["Loi1"] = "Họ tên khách hàng không được để trống!";
            }
            else if (String.IsNullOrEmpty(tendn))
            {
                ViewData["Loi2"] = "Phải nhập tên đăng nhập!";
            }
            else if (String.IsNullOrEmpty(mk))
            {
                ViewData["Loi3"] = "Phải nhập mật khẩu!";
            }
            else if (String.IsNullOrEmpty(xnmk))
            {
                ViewData["Loi4"] = "Phải nhập lại mật khẩu!";
            }
            else if (String.IsNullOrEmpty(email))
            {
                ViewData["Loi5"] = "Phải nhập Email!";
            }
            else if (String.IsNullOrEmpty(dt))
            {
                ViewData["Loi6"] = "Phải nhập số điện thoại!";
            }
            else
            {
                khach.HoTen = hoten;
                khach.Taikhoan = tendn;
                khach.Matkhau = mk;
                khach.DiachiKH = diachi;
                khach.Email = email;
                khach.DienthoaiKH = dt;
                khach.Ngaysinh = DateTime.Parse(ngaysinh);
                db.KHACHHANGs.Add(khach);
                db.SaveChanges();
                return RedirectToAction("Dangnhap");
            }
            return this.Dangky();
        }

        [HttpGet]
        public ActionResult Dangnhap()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Dangnhap(FormCollection collection)
        {
            // gán các giá trị người dùng nhập liệu cho các biến
            var tendn = collection["TenDN"];
            var mk = collection["MatKhau"];
            if (String.IsNullOrEmpty(tendn))
            {
                ViewData["Loi1"] = "Phải nhập tên đăng nhập!";
            }
            else if (String.IsNullOrEmpty(mk))
            {
                ViewData["Loi2"] = "Phải nhập mật khẩu!";
            }
            else
            {
                // gán giá trị cho đối tượng được tạo mới (kh)
                KHACHHANG kh = db.KHACHHANGs.SingleOrDefault(n => n.Taikhoan == tendn && n.Matkhau == mk);
                if (kh != null)
                {
                    ViewBag.Thongbao = "Chúc mừng đăng nhập thành công!";
                    Session["Taikhoan"] = kh;
                    Session["User"] = kh.Taikhoan;
                    return RedirectToAction("Index", "Home");
                }
                else
                    ViewBag.Thongbao = "Tên đăng nhập hoặc mật khẩu không đúng!";
            }
            return View();
        }

        public ActionResult Dangxuat()
        {
            Session["Taikhoan"] = null;
            return RedirectToAction("Index", "Home");
        }

    }
}