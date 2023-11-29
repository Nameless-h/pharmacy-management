﻿using OfficeOpenXml;
using OfficeOpenXml.Table;
using pharmacy_management.BUS;
using pharmacy_management.DAO;
using pharmacy_management.Database;
using pharmacy_management.DTO;
using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace pharmacy_management.GUI.NhapHang
{
    public partial class NhapHangFrm : Form
    {
        private ArrayList listthuoc;
        ThuocDAO thuocdao = new ThuocDAO();
        private int current_page_value;
        private SPNhaphang spGUI;
        ThuocBUS thuoc_list;
        List<DTO.Thuoc> thuoc_cart = new List<DTO.Thuoc>();
        Label lbl_not_found = new Label();
        LoHangFrm lh;
        public NhapHangFrm()
        {
            InitializeComponent();
            setup();
            pagination();

        }
        public void setup()
        {
            DoiTuongBUS dt_list = new DoiTuongBUS();
            cb_DoiTuong.Items.Add("Tất cả");
            cb_DoiTuong.SelectedIndex = 0;
            foreach (DoiTuong dt in dt_list.getList())
            {
                cb_DoiTuong.Items.Add(dt.TenDT);
            }
            this.cb_DoiTuong.SelectedIndexChanged += new System.EventHandler(this.cb_DoiTuong_SelectedIndexChanged);

            XuatXuBUS xx_list = new XuatXuBUS();
            cb_XuatXu.Items.Add("Tất cả");
            cb_XuatXu.SelectedIndex = 0;
            foreach (XuatXu xx in xx_list.getList())
            {
                cb_XuatXu.Items.Add(xx.TenXuatXu);
            }
            this.cb_XuatXu.SelectedIndexChanged += new System.EventHandler(this.cb_XuatXu_SelectedIndexChanged);

            lbl_not_found.Text = "Không tìm thấy sản phẩm";
            lbl_not_found.Font = new Font(lbl_not_found.Font.FontFamily, 18);
            lbl_not_found.ForeColor = Color.DimGray;
            lbl_not_found.Anchor = AnchorStyles.None;
            lbl_not_found.AutoSize = true;
            lbl_not_found.TextAlign = ContentAlignment.MiddleCenter;
            lbl_not_found.BringToFront();
            lbl_not_found.Padding = new Padding(200, 200, 0, 0);
            container.Controls.Add(lbl_not_found);
        }
        private void NhapHang_Load(object sender, EventArgs e)
        {

        }
        public void setEmpty()
        {
            container.Controls.Clear();
        }

        public void pagination()
        {
            // total pages
            thuoc_list = new ThuocBUS();
            decimal perPages = 16;
            decimal count;
            decimal pages = 0;

            if (txt_searching.Text == "" && cb_DoiTuong.SelectedIndex == 0 && cb_XuatXu.SelectedIndex == 0)
            {
                count = thuoc_list.getSizeList("", 0, 0);
                Console.WriteLine("at pagination getSizeList: " + count);
                pages = Math.Ceiling(count / perPages);
            }
            else
            {
                count = thuoc_list.getSizeList(txt_searching.Text, cb_DoiTuong.SelectedIndex, cb_XuatXu.SelectedIndex);
                Console.WriteLine("at pagination getSizeList: " + count);
                pages = Math.Ceiling(count / perPages);
            }

            if (pages == 0)
            {
                pages += 1;
                container.Controls.Add(lbl_not_found);
                lbl_not_found.Visible = true;
            }
            else
            {
                lbl_not_found.Visible = false;
            }
            lbl_total_pages.Text = pages.ToString();

            string txt_search;
            txt_search = txt_searching.Text;

            int numDT = cb_DoiTuong.SelectedIndex;
            int numXX = cb_XuatXu.SelectedIndex;

            int current_page_value = Int32.Parse(lbl_current_page.Text);
            thuoc_list = new ThuocBUS(txt_search, numDT, numXX, current_page_value, Int32.Parse(perPages.ToString()));

            load_prodcut();
        }

        public void load_prodcut()
        {
            int count = 0;

            foreach (DTO.Thuoc t in thuoc_list.getList())
            {
                Console.WriteLine(t.MaThuoc);

                spGUI = new SPNhaphang(this);
                spGUI.AddNewContent(t);
                this.container.Controls.Add(spGUI);
                count++;
            }
            Console.WriteLine("at load_prodcut: " + count);
        }

        private void txt_searching_TextChanged(object sender, EventArgs e)
        {
            setEmpty();
            lbl_current_page.Text = "1";
            pagination();
        }

        private void btn_search_page_Click(object sender, EventArgs e)
        {
            int total = Int32.Parse(lbl_total_pages.Text);
            if (!int.TryParse(txt_page_value.Text, out int pageNumber) || txt_page_value.Text.Equals(""))
            {
                MessageBox.Show("Vui lòng nhập số !");
            }
            else if (Int32.Parse(txt_page_value.Text) > total || Int32.Parse(txt_page_value.Text) <= 0)
            {
                MessageBox.Show("Vui lòng nhập số nàm trong phạm vi tổng số trang \n" +
                    "(VD: Từ 1 đến " + total + ") !");
            }
            else
            {
                //MessageBox.Show("Tim trang !");
                setEmpty();
                lbl_current_page.Text = txt_page_value.Text;
                txt_page_value.Text = "";
                pagination();
            }
        }

        private void btn_previous_Click(object sender, EventArgs e)
        {
            if (Int32.Parse(lbl_current_page.Text) == 1)
            {
                MessageBox.Show("Bạn đang ở trang đầu tiên !");
                return;
            }
            else
            {
                setEmpty();
                lbl_current_page.Text = (Int32.Parse(lbl_current_page.Text) - 1).ToString();
                pagination();
            }
        }

        private void btn_next_Click(object sender, EventArgs e)
        {
            if (Int32.Parse(lbl_current_page.Text) == Int32.Parse(lbl_total_pages.Text))
            {
                MessageBox.Show("Bạn đang ở trang cuối cùng !");
                return;
            }
            else
            {
                setEmpty();
                lbl_current_page.Text = (Int32.Parse(lbl_current_page.Text) + 1).ToString();
                pagination();
            }
        }

        private void cb_DoiTuong_SelectedIndexChanged(object sender, EventArgs e)
        {
            Console.WriteLine("at cb_DoiTuong_SelectedIndexChanged: " + cb_DoiTuong.SelectedIndex);
            setEmpty();
            lbl_current_page.Text = "1";
            pagination();
        }

        private void cb_XuatXu_SelectedIndexChanged(object sender, EventArgs e)
        {
            Console.WriteLine("at cb_XuatXu_SelectedIndexChanged: " + cb_XuatXu.SelectedIndex);
            setEmpty();
            lbl_current_page.Text = "1";
            pagination();
        }

        bool ContainsSubform()
        {
            foreach (Form form in Application.OpenForms)
            {
                if (form.Name == "LoHangFrm")
                {
                    return true;
                }
            }
            return false;
        }

        public void check_cart_show()
        {
            if (ContainsSubform())
            {
                MessageBox.Show("Lô hàng đang được hiển thị");
            }
            else
            {
                lh = new LoHangFrm(this);
                lh.setCart(thuoc_cart);
                lh.Show();
            }
        }

        private void btn_show_cart_Click(object sender, EventArgs e)
        {
            check_cart_show();
        }

        public void AddToCart(int ma, string ten, float gia, string anh)
        {

            int flag = 0;

            foreach (DTO.Thuoc item in thuoc_cart)
            {
                if (item.MaThuoc == ma)
                {
                    item.SoLuong += 1;
                    flag = 1;
                    break;
                }
            }

            if (flag == 0)
            {
                DTO.Thuoc tmp = new DTO.Thuoc(ma, ten, 0, gia, anh, 1, 0, 1);
                thuoc_cart.Add(tmp);
                thuoc_cart.Reverse();
            }
            Console.WriteLine(lh);
            if (lh == null || !ContainsSubform())
            {
                check_cart_show();
                //Console.WriteLine(lh);
            }
            else
            {
                //Console.WriteLine(gh);
                lh.setCart(thuoc_cart);
                //gh.Show();
            }
        }

        private void btn_refresh_Click(object sender, EventArgs e)
        {
            this.cb_DoiTuong.SelectedIndexChanged -= new System.EventHandler(this.cb_DoiTuong_SelectedIndexChanged);
            cb_DoiTuong.SelectedIndex = 0;
            this.cb_XuatXu.SelectedIndexChanged -= new System.EventHandler(this.cb_XuatXu_SelectedIndexChanged);
            cb_XuatXu.SelectedIndex = 0;
            this.txt_searching.TextChanged -= new System.EventHandler(this.txt_searching_TextChanged);
            txt_searching.Text = "";
            setEmpty();
            lbl_current_page.Text = "1";
            pagination();

            this.txt_searching.TextChanged += new System.EventHandler(this.txt_searching_TextChanged);
            this.cb_DoiTuong.SelectedIndexChanged += new System.EventHandler(this.cb_DoiTuong_SelectedIndexChanged);
            this.cb_XuatXu.SelectedIndexChanged += new System.EventHandler(this.cb_XuatXu_SelectedIndexChanged);


        }

        private void btnNhap_Click(object sender, EventArgs e)
        {
            ConnectDB connectDB = new ConnectDB();
            OpenFileDialog openFileDialog = new OpenFileDialog();
            openFileDialog.Filter = "Excel files (*.xlsx)|*.xlsx| All files(*.*)|*.*";
            DialogResult result = openFileDialog.ShowDialog();
            if (result == DialogResult.OK)
            {
                thuoc_list.createTemp();
                string filepath = openFileDialog.FileName;
                string excelConnectionString = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source="+ filepath +";Extended Properties=Excel 12.0;Persist Security Info=False";
           
                using (ExcelPackage package = new ExcelPackage(new FileInfo(filepath)))
                {
                    ExcelPackage.LicenseContext = OfficeOpenXml.LicenseContext.NonCommercial;
                    var worksheet = package.Workbook.Worksheets[0];
                    DataTable excelTable = new DataTable();
                    foreach (var firstRowCell in worksheet.Cells[1, 1, 1, worksheet.Dimension.End.Column])
                    {
                        excelTable.Columns.Add(firstRowCell.Text);
                    }

                    // Add the data from the Excel sheet to the data table
                    for (int rowNumber = 2; rowNumber <= worksheet.Dimension.End.Row; rowNumber++)
                    {
                        var row = worksheet.Cells[rowNumber, 1, rowNumber, worksheet.Dimension.End.Column];
                        var newRow = excelTable.NewRow();
                        foreach (var cell in row)
                        {
                            newRow[cell.Start.Column - 1] = cell.Text;
                        }
                        excelTable.Rows.Add(newRow);
                    }
                   
                    SqlConnection sqlcon = connectDB.KetNoiCSDL();
                    try
                    {
                        using (SqlBulkCopy sqlBulkCopy = new SqlBulkCopy(sqlcon))
                        {
                            sqlcon.Open();
                            // Set the destination table name
                            sqlBulkCopy.DestinationTableName = "TempTable";

                            // Map the columns from the Excel sheet to the SQL table
                            sqlBulkCopy.ColumnMappings.Add("MaThuoc", "MaThuoc");
                            sqlBulkCopy.ColumnMappings.Add("TenThuoc", "TenThuoc");
                            sqlBulkCopy.ColumnMappings.Add("MaDoiTuong", "MaDoiTuong");
                            sqlBulkCopy.ColumnMappings.Add("GiaThuoc", "GiaThuoc");
                            sqlBulkCopy.ColumnMappings.Add("AnhThuoc", "AnhThuoc");
                            sqlBulkCopy.ColumnMappings.Add("TrangThai", "TrangThai");
                            sqlBulkCopy.ColumnMappings.Add("MaXuatXu", "MaXuatXu");
                            sqlBulkCopy.ColumnMappings.Add("SoLuong", "SoLuong");

                            // Write the data to the SQL table
                            sqlBulkCopy.WriteToServer(excelTable);
                        }
                    }
                    catch(Exception ex)
                    {
                        Console.WriteLine(ex.ToString());
                        MessageBox.Show("Format file không đúng, đã có lỗi xảy ra");
                        return;

                    }
                        try
                        {
                            thuoc_list.Merge();
                            MessageBox.Show("Nhập thành công");
                            thuoc_list.dropTempTable();
                        }catch(Exception ex) {
                        Console.WriteLine(ex.Message);
                                return; } 

                    }
                }
            }
        }
    }

