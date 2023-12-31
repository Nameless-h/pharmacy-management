﻿using pharmacy_management.DAO;
using pharmacy_management.DTO;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace pharmacy_management.BUS
{
    public class PhieuNhapBUS
    {
        private ArrayList list;
        private PhieuNhapDAO dao;

        public PhieuNhapBUS()
        {
            dao = new PhieuNhapDAO();
            loadList();
        }

        public ArrayList getList()
        {
            return list;
        }
        public void loadList()
        {
            list = dao.GetALl();
        }
        public void loadList(string dateStart, string dateEnd, string search)
        {
            list = dao.GetALl(dateStart, dateEnd, search);
        }
        public void loadListStatis(string dateStart, string dateEnd, string numeric)
        {
            list = dao.GetALlStatis(dateStart, dateEnd, numeric);
        }
        public void loadList_price_ascend(string dateStart, string dateEnd, string search)
        {
            list = dao.GetALlPriceAscend(dateStart, dateEnd, search);
        }

        public void load_invoice_id_descend(string dateStart, string dateEnd, string search)
        {
            list = dao.GetALlIdDescend(dateStart, dateEnd, search);
        }

        public void addNewInvoice(int maNV, string ngayLap, string tongTien)
        {
            dao.addNewInvoice(maNV, ngayLap, tongTien);
        }

        public PhieuNhap getItem()
        {
            return dao.getItem();
        }
    }
}
