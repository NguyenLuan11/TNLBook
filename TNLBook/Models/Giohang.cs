using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TNLBook.Models
{
    public class Giohang
    {
        SaleBookEntities1 data = new SaleBookEntities1();
        public int iMasach { get; set; }
        public string sTensach { get; set; }
        public string sAnhbia { get; set; }
        public Double dDongia { get; set; }
        public int iSoluong { get; set; }

        public Double dThanhtien
        {
            get { return dDongia * iSoluong; }
        }

        //Khởi tạo giỏ hàng với mã sách được truyền vào với Soluong mặc định là 1
        public Giohang(int Masach)
        {
            this.iMasach = Masach;
            SACH sach = data.SACHes.Single(n => n.Masach == iMasach);
            sTensach = sach.Tensach;
            sAnhbia = sach.Anhbia;
            dDongia = double.Parse(sach.Giaban.ToString());
            iSoluong = 1;
        }
    }
}