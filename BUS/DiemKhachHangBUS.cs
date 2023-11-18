﻿using pharmacy_management.DAO;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace pharmacy_management.BUS
{
    public class DiemKhachHangBUS
    {
        private ArrayList list;
        private DiemKhachHangDAO dao;

        public DiemKhachHangBUS()
        {
            dao = new DiemKhachHangDAO();
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

        public void updateDiemKH(string diem, string ma)
        {
            dao.updateDiemKH(diem, ma);
        }
    }
}
