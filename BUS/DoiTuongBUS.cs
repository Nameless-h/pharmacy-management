﻿using pharmacy_management.DAO;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace pharmacy_management.BUS
{
    public class DoiTuongBUS
    {
        private ArrayList list;
        private DoiTuongDAO dao;

        public DoiTuongBUS()
        {
            dao = new DoiTuongDAO();
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

        public string GetNameBUS(int ma)
        {
            return dao.GetNameDAO(ma);
        }
    }
}
