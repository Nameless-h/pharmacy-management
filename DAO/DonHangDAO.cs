﻿using pharmacy_management.Database;
using pharmacy_management.DTO;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace pharmacy_management.DAO
{
    public class DonHangDAO
    {
        private ArrayList list;
        public DonHangDAO()
        {
            list = GetALl();
        }

        public ArrayList GetALl()
        {
            ArrayList arrayList = new ArrayList();

            ConnectDB conn = new ConnectDB();
            string query = "SELECT * FROM donhang";
            SqlDataReader reader = conn.Execute(query);
            try
            {
                while (reader.Read())
                {
                    DonHang tmp = new DonHang(
                        Int32.Parse(reader["MaDH"].ToString()),
                        Int32.Parse(reader["MaNV"].ToString()),
                        Int32.Parse(reader["MaKH"].ToString()),
                        DateTime.Parse(reader["TenDT"].ToString()),
                        Int32.Parse(reader["MaQuyDoi"].ToString()),
                        float.Parse(reader["TongGia"].ToString()),
                        float.Parse(reader["ThanhTien"].ToString())
                     );
                    arrayList.Add(tmp);
                }
            }
            catch (Exception ex)
            {
                reader.Close();

                Console.WriteLine("An error at DonHangDAO: " + ex.Message);
            }

            return arrayList;

        }
    }
}
