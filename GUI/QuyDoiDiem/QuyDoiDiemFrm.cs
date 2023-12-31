﻿using pharmacy_management.BUS;
using pharmacy_management.DTO;
using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace pharmacy_management.GUI.QuyDoiDiem
{
    public partial class QuyDoiDiemFrm : Form
    {
        QuyDoiDiemBUS qdBUS = new QuyDoiDiemBUS();
        KhachHangBUS khBUS = new KhachHangBUS();
        PhieuGiamGiaBUS pggBUS = new PhieuGiamGiaBUS();
        DiemKhachHangBUS dkhBUS = new DiemKhachHangBUS();
        int soLuongChonDiem = 4;
        public QuyDoiDiemFrm()
        {
            InitializeComponent();
            setup();
        }

        public void setVisible(Boolean flag)
        {
            label3.Visible = flag;
            lbl_DiemHienCo.Visible = flag;
            label4.Visible = flag;
            cb_ChonDiem.Visible = flag;
            label5.Visible = flag;
            label6.Visible = flag;
            label7.Visible = flag;
            lbl_Giam.Visible = flag;
        }
        public void setup()
        {
            dtp_start.MaxDate = DateTime.Now.AddYears(0);
            dtp_start.Value = DateTime.Parse("1990-01-01");
            dtp_end.MinDate = dtp_start.Value;
            dtp_end.MaxDate = DateTime.Now.AddYears(0);

            //Console.WriteLine(dropBtn_KH.SelectedIndex);
            khBUS.loadListActive();
            foreach (DTO.KhachHang kh in khBUS.getList())
            {
                Console.WriteLine(kh.MaKH.ToString() + kh.TenKH.ToString());
                if (kh.MaKH == 1) { continue; }
                string item_name = kh.MaKH.ToString() + "_" + kh.TenKH;
                dropBtn_KH.Items.Add(item_name);
            }

            for (int i = 1; i <= soLuongChonDiem; i++)
            {
                cb_ChonDiem.Items.Add(i * 100);
            }
            cb_ChonDiem.SelectedIndex = 0;

            load_data();
            setVisible(false);
        }

        public void load_data()
        {
            gv_QDD.Rows.Clear();

            DateTime dateStart = dtp_start.Value;
            string formattedDateStart = dateStart.ToString("yyyy-MM-dd");
            DateTime dateEnd = dtp_end.Value;
            string formattedDateEnd = dateEnd.ToString("yyyy-MM-dd");

            qdBUS.loadAll(formattedDateStart, formattedDateEnd, txt_searching.Text.Trim());
            foreach (DTO.QuyDoiDiem qd in qdBUS.getList())
            {
                string status = "";
                if (qd.DaSuDung == 0)
                {
                    status = "Chưa dùng";
                }
                else
                {
                    status = "Đã dùng";
                }
                string tenKH = qd.MaKH + "_" + khBUS.getKH(qd.MaKH).TenKH;

                PhieuGiamGia tmp = pggBUS.getItem(qd.MaQuyDoi);
                gv_QDD.Rows.Add(qd.MaQuyDoi, tenKH, qd.NgayQuyDoi, tmp.MoTaPG, tmp.SoDiemQuyDoi, tmp.PhanTramGiam, status);
            }
        }

        private void dtp_start_ValueChanged(object sender, EventArgs e)
        {
            dtp_end.MinDate = dtp_start.Value;
            load_data();
        }

        private void dropBtn_KH_SelectedIndexChanged(object sender, EventArgs e)
        {
            setVisible(true);
            string selectedText = dropBtn_KH.SelectedItem.ToString();
            string[] arr = selectedText.Split('_');
            string maKH = arr[0];

            DiemKhachHang tmp = dkhBUS.GetItem(maKH);

            string formattedNumber = tmp.DiemTichLuy.ToString("#,##0");
            lbl_DiemHienCo.Text = formattedNumber;
        }

        private void btn_filter_Click(object sender, EventArgs e)
        {
            load_data();
        }

        private void btn_ThemQDD_Click(object sender, EventArgs e)
        {
            if (dropBtn_KH.SelectedIndex < 0)
            {
                MessageBox.Show("Hãy chọn khách hàng trước khi quy đổi điểm");
                return;
            }


            string selectedText = dropBtn_KH.SelectedItem.ToString();
            string[] arr = selectedText.Split('_');
            string maKH = arr[0];

            int diemKH = Int32.Parse(lbl_DiemHienCo.Text.Replace(",", ""));
            int diemYeuCau = Int32.Parse(cb_ChonDiem.Text);

            if (diemKH < diemYeuCau || diemKH == 0)
            {
                MessageBox.Show("Không đủ điểm để quy đổi");
                return;
            }

            string currentDate = DateTime.Now.ToString("yyyy-MM-dd");

            DialogResult result = MessageBox.Show("Bạn có chắc muốn quy đổi?", "Quy đổi điểm", MessageBoxButtons.OKCancel);

            if (result != DialogResult.OK)
            {
                return;
            }

            qdBUS.insertItem(maKH, currentDate);

            DTO.QuyDoiDiem tmp = qdBUS.getItem();

            pggBUS.insertItem("Phiếu giảm " + lbl_Giam.Text, cb_ChonDiem.Text, lbl_Giam.Text.Replace(" %", ""), tmp.MaQuyDoi.ToString());

            diemKH -= diemYeuCau;
            string formattedNumber = diemKH.ToString("#,##0");
            lbl_DiemHienCo.Text = formattedNumber;

            dkhBUS.updateDiemKHSauQD(diemKH.ToString(), maKH);
            load_data();
            MessageBox.Show("Quy đổi thành công");

        }

        private void txt_searching_TextChanged(object sender, EventArgs e)
        {
            load_data();
        }

        private void cb_ChonDiem_SelectedIndexChanged(object sender, EventArgs e)
        {

            int giam = (Int32.Parse(cb_ChonDiem.Text) / 100) * 5;
            lbl_Giam.Text = giam + " %";
        }

        private void dtp_end_ValueChanged(object sender, EventArgs e)
        {
            load_data();
        }

        private void btn_refresh_Click(object sender, EventArgs e)
        {
            setup();
        }

        private void btn_export_excel_Click(object sender, EventArgs e)
        {
            try
            {
                // Create a new instance of Excel application
                Microsoft.Office.Interop.Excel.Application xlApp = new Microsoft.Office.Interop.Excel.Application();
                xlApp.Visible = true;

                // Create a new workbook
                Microsoft.Office.Interop.Excel.Workbook xlWorkbook = xlApp.Workbooks.Add(Type.Missing);

                // Get the active sheet
                Microsoft.Office.Interop.Excel.Worksheet xlWorksheet = (Microsoft.Office.Interop.Excel.Worksheet)xlWorkbook.ActiveSheet;

                // Column headers
                string[] headers = { "MaQuyDoi", "KhachHang", "NgayDoi", "MoTa", "DiemQuyDoi", "PhanTram", "TrangThai" };

                // Add column headers
                for (int j = 0; j < headers.Length; j++)
                {
                    xlWorksheet.Cells[1, j + 1] = headers[j];
                    xlWorksheet.Columns[j + 1].ColumnWidth = gv_QDD.Columns[headers[j]].Width / 5; // Adjust column width based on DataGridView column width
                    xlWorksheet.Columns[j + 1].HorizontalAlignment = Microsoft.Office.Interop.Excel.XlHAlign.xlHAlignCenter; // Center align the column
                }

                // Loop through each row in the DataGridView
                for (int i = 0; i < gv_QDD.Rows.Count; i++)
                {
                    // Loop through each column in the DataGridView
                    for (int j = 0; j < headers.Length; j++)
                    {
                        // Populate Excel cells with data from the DataGridView
                        object value = gv_QDD.Rows[i].Cells[headers[j]].Value;

                        // Format cells based on data types
                        if (value != null)
                        {
                            //if (headers[j] == "SDT") // Assuming SDT is the column name for phone number
                            //xlWorksheet.Cells[i + 2, j + 1] = "'" + value.ToString(); // Prepend with a single quote to treat it as text
                            if (headers[j] == "TrangThai" || headers[j] == "MaQuyDoi" || headers[j] == "DiemQuyDoi" || headers[j] == "PhanTram") // Assuming MaNV and MaQuyen are columns with integer values
                                xlWorksheet.Cells[i + 2, j + 1] = value.ToString();
                            else
                                xlWorksheet.Cells[i + 2, j + 1] = value;

                            xlWorksheet.Cells[i + 2, j + 1].HorizontalAlignment = Microsoft.Office.Interop.Excel.XlHAlign.xlHAlignCenter; // Center align the cell
                        }
                    }
                }

                // Auto-fit all columns to the content
                xlWorksheet.Columns.AutoFit();
            }
            catch (Exception ex)
            {
                MessageBox.Show("An error occurred: " + ex.Message);
            }
        }

        private void txt_searching_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsControl(e.KeyChar) && !char.IsDigit(e.KeyChar) && (e.KeyChar != '.'))
            {
                e.Handled = true;
            }

            // only allow one decimal point
            if ((e.KeyChar == '.') && ((sender as RichTextBox).Text.IndexOf('.') > -1))
            {
                e.Handled = true;
            }
        }
    }
}
