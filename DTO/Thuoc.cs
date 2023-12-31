﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace pharmacy_management.DTO
{
    public class Thuoc
    {
        private int maThuoc;
        private string tenThuoc;
        private int maDoiTuong;
        private float giaThuoc;
        private string anhThuoc;
        private int trangThai;
        private int maXuatXu;
        private int soLuong;

        public Thuoc(int maThuoc, string tenThuoc, int maDoiTuong, float giaThuoc, string anhThuoc, int trangThai, int maXuatXu, int soLuong)
        {
            this.maThuoc = maThuoc;
            this.tenThuoc = tenThuoc;
            this.maDoiTuong = maDoiTuong;
            this.giaThuoc = giaThuoc;
            this.anhThuoc = anhThuoc;
            this.trangThai = trangThai;
            this.maXuatXu = maXuatXu;
            this.soLuong = soLuong;
        }

        public Thuoc(string tenThuoc, int maDoiTuong, float giaThuoc, string anhThuoc, int trangThai, int maXuatXu, int soLuong)
        {          
            this.tenThuoc = tenThuoc;
            this.maDoiTuong = maDoiTuong;
            this.giaThuoc = giaThuoc;
            this.anhThuoc = anhThuoc;
            this.trangThai = trangThai;
            this.maXuatXu = maXuatXu;
            this.soLuong = soLuong;
        }

        public int MaThuoc { get => maThuoc; set => maThuoc = value; }
        public string TenThuoc { get => tenThuoc; set => tenThuoc = value; }
        public int MaDoiTuong { get => maDoiTuong; set => maDoiTuong = value; }
        public float GiaThuoc { get => giaThuoc; set => giaThuoc = value; }
        public string AnhThuoc { get => anhThuoc; set => anhThuoc = value; }
        public int TrangThai { get => trangThai; set => trangThai = value; }
        public int MaXuatXu { get => maXuatXu; set => maXuatXu = value; }
        public int SoLuong { get => soLuong; set => soLuong = value; }
    }
}
