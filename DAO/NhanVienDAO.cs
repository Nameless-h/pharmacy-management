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
    public class NhanVienDAO
    {
        private ArrayList list;
        public NhanVienDAO()
        {
            //list = GetALl();
        }

        public ArrayList GetALl()
        {
            ArrayList arrayList = new ArrayList();

            ConnectDB conn = new ConnectDB();
            string query = "SELECT * FROM nhanvien";
            SqlDataReader reader = conn.Execute(query);
            try
            {
                while (reader.Read())
                {
                    NhanVien tmp = new NhanVien(
                        Int32.Parse(reader["MaNV"].ToString()),
                        reader["TenNV"].ToString(),
                        reader["SDT"].ToString(),
                        reader["DiaChi"].ToString(),
                        reader["Email"].ToString(),
                        Int32.Parse(reader["TrangThai"].ToString()),
                        reader["TenDangNhap"].ToString(),
                        reader["MatKhau"].ToString(),
                        Int32.Parse(reader["MaQuyen"].ToString())

                    );
                    arrayList.Add(tmp);
                }
            }
            catch (Exception ex)
            {
                reader.Close();

                Console.WriteLine("An error at NhanVienDAO: " + ex.Message);
            }

            return arrayList;

        }

        public NhanVien getNhanVien(int ma)
        {
            NhanVien nv = new NhanVien();

            ConnectDB conn = new ConnectDB();
            string query = "SELECT * FROM nhanvien WHERE MaNV = '" + ma + "'";
            SqlDataReader reader = conn.Execute(query);
            try
            {
                if (reader.Read())
                {
                    nv = new NhanVien(
                        Int32.Parse(reader["MaNV"].ToString()),
                        reader["TenNV"].ToString(),
                        reader["SDT"].ToString(),
                        reader["DiaChi"].ToString(),
                        reader["Email"].ToString(),
                        Int32.Parse(reader["TrangThai"].ToString()),
                        reader["TenDangNhap"].ToString(),
                        reader["MatKhau"].ToString(),
                        Int32.Parse(reader["MaQuyen"].ToString())

                    );
                }
            }
            catch (Exception ex)
            {
                reader.Close();

                Console.WriteLine("An error at NhanVienDAO: " + ex.Message);
            }

            return nv;


        }

        public void add(NhanVien DTO)
        {
            ConnectDB conn = new ConnectDB();
            string query = string.Format("INSERT INTO NHANVIEN (TenNV, SDT, DiaChi, Email, TrangThai, TenDangNhap, MatKhau, MaQuyen) VALUES (N'{0}', '{1}', '{2}', '{3}', {4}, '{5}', '{6}', {7})", DTO.TenNV, DTO.SDT, DTO.DiaChi, DTO.Email, 1, DTO.TenDangNhap, DTO.MatKhau, DTO.MaQuyen);
            Console.WriteLine(query);
            conn.ExecuteNonQuery(query);
        }

        public void delete(int ma)
        {
            ConnectDB conn = new ConnectDB();
            string query = "UPDATE NHANVIEN SET TrangThai = 0 WHERE MaNV = " + ma;
            Console.WriteLine(query);
            conn.ExecuteNonQuery(query);
        }

        public void update(NhanVien DTO, int ma)
        {
            ConnectDB conn = new ConnectDB();
            string query = string.Format("UPDATE NHANVIEN SET TenNV = N'{0}', SDT = '{1}', DiaChi = '{2}', Email = '{3}', TrangThai = {4}, TenDangNhap = '{5}', MatKhau = '{6}', MaQuyen = {7} WHERE MaNV = {8}", DTO.TenNV, DTO.SDT, DTO.DiaChi, DTO.Email, DTO.TrangThai, DTO.TenDangNhap, DTO.MatKhau, DTO.MaQuyen, ma);
            Console.WriteLine(query);
            conn.ExecuteNonQuery(query);
        }
    }
}
