﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Forms;
using pharmacy_management.Database;
using pharmacy_management.DTO;

namespace pharmacy_management.DAO
{
    internal class DangNhapDAO
    {
        SqlConnection sqlcon;

        public DangNhapDAO()
        {
            KetNoiCSDL();
        }
        void KetNoiCSDL()
        {
            /*string conn = "Data Source=LAPTOP-LOJNVCRF\\SQLEXPRESS; Database=ql_nhathuoc;Integrated Security = True";
            sqlcon = new SqlConnection(conn);*/

            ConnectDB conn = new ConnectDB();

            sqlcon = conn.KetNoiCSDL();

        }
        //void KetNoiCSDL()
        //{
        //    string conn = "Data Source=MSI\\LAMDUC;Initial Catalog=ql_nhathuoc;Integrated Security=True";
        //    sqlcon = new SqlConnection(conn);
        //}

        public bool kiemtradangnhap(string username, string password)
        {
            try
            {
                sqlcon.Open();
                string query = "SELECT TenDangNhap, MatKhau FROM NhanVien WHERE TenDangNhap = @TenDangNhap AND MatKhau = @MatKhau AND Trangthai=1";
                SqlCommand cmd = new SqlCommand(query, sqlcon);
                cmd.Parameters.AddWithValue("@TenDangNhap", username); // assuming txtUser is the textbox for username
                cmd.Parameters.AddWithValue("@MatKhau", password); // assuming txtPass is the textbox for password

                SqlDataReader dr = cmd.ExecuteReader(); // execute the query and get the data reader
                if (dr.Read()) // check if the data reader has any rows
                {
                    // login successful, do something here
                    MessageBox.Show("Login successful");
                    sqlcon.Close();

                    return true;
                }
                else
                {
                    // login failed, do something here
                    MessageBox.Show("Invalid username or password");
                    sqlcon.Close();

                    return false;
                }

            }
            catch (Exception ex) { return false; }
        }

        public void DoiPass(string user, string pass)
        {
            ConnectDB conn = new ConnectDB();
            string query = string.Format("UPDATE nhanvien SET MatKhau = {0} WHERE TenDangNhap = '{1}'", pass, user);
            Console.WriteLine(query);

            conn.ExecuteNonQuery(query);

        }
        public void resetPass(NhanVien nv)
        {
            ConnectDB conn = new ConnectDB();
            string query = string.Format("UPDATE nhanvien SET MatKhau = '123456' WHERE Email = '{0}'", nv.Email);
            conn.ExecuteNonQuery(query);
        }
        public NhanVien taikhoandangnhap(NhanVien nv)
        {

            sqlcon.Open();
            ConnectDB conn = new ConnectDB();
            string query = "SELECT * FROM nhanvien where TenDangNhap = @username AND MatKhau = @password AND TrangThai =1";
            using (SqlCommand cmd = new SqlCommand(query, sqlcon))
            {
                cmd.Parameters.AddWithValue("@username", nv.TenDangNhap);
                cmd.Parameters.AddWithValue("@password", nv.MatKhau);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    // your logic here
                    while (reader.Read())
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
                        sqlcon.Close();
                        return nv;
                    }
                }

                sqlcon.Close();
                return null;
            }

        }

    }
}
