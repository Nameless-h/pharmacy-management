﻿namespace pharmacy_management.GUI.QuyDoiDiem
{
    partial class QuyDoiDiemFrm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle5 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle6 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle7 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle8 = new System.Windows.Forms.DataGridViewCellStyle();
            this.kryptonPanel1 = new Krypton.Toolkit.KryptonPanel();
            this.btn_refresh = new Krypton.Toolkit.KryptonButton();
            this.cb_ChonDiem = new Krypton.Toolkit.KryptonComboBox();
            this.lbl_Giam = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.lbl_DiemHienCo = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.dropBtn_KH = new Krypton.Toolkit.KryptonComboBox();
            this.btn_ThemQDD = new Krypton.Toolkit.KryptonButton();
            this.txt_searching = new Krypton.Toolkit.KryptonRichTextBox();
            this.dtp_end = new System.Windows.Forms.DateTimePicker();
            this.dtp_start = new System.Windows.Forms.DateTimePicker();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.gv_QDD = new System.Windows.Forms.DataGridView();
            this.toolTip_rpt = new System.Windows.Forms.ToolTip(this.components);
            this.btn_export_excel = new Krypton.Toolkit.KryptonButton();
            this.MaQuyDoi = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.KhachHang = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.NgayDoi = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.MoTa = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.DiemQuyDoi = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.PhanTram = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.TrangThai = new System.Windows.Forms.DataGridViewTextBoxColumn();
            ((System.ComponentModel.ISupportInitialize)(this.kryptonPanel1)).BeginInit();
            this.kryptonPanel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.cb_ChonDiem)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dropBtn_KH)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gv_QDD)).BeginInit();
            this.SuspendLayout();
            // 
            // kryptonPanel1
            // 
            this.kryptonPanel1.Controls.Add(this.btn_export_excel);
            this.kryptonPanel1.Controls.Add(this.btn_refresh);
            this.kryptonPanel1.Controls.Add(this.cb_ChonDiem);
            this.kryptonPanel1.Controls.Add(this.lbl_Giam);
            this.kryptonPanel1.Controls.Add(this.label7);
            this.kryptonPanel1.Controls.Add(this.label6);
            this.kryptonPanel1.Controls.Add(this.label5);
            this.kryptonPanel1.Controls.Add(this.label4);
            this.kryptonPanel1.Controls.Add(this.lbl_DiemHienCo);
            this.kryptonPanel1.Controls.Add(this.label3);
            this.kryptonPanel1.Controls.Add(this.dropBtn_KH);
            this.kryptonPanel1.Controls.Add(this.btn_ThemQDD);
            this.kryptonPanel1.Controls.Add(this.txt_searching);
            this.kryptonPanel1.Controls.Add(this.dtp_end);
            this.kryptonPanel1.Controls.Add(this.dtp_start);
            this.kryptonPanel1.Controls.Add(this.label2);
            this.kryptonPanel1.Controls.Add(this.label1);
            this.kryptonPanel1.Controls.Add(this.gv_QDD);
            this.kryptonPanel1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.kryptonPanel1.Location = new System.Drawing.Point(0, 0);
            this.kryptonPanel1.Margin = new System.Windows.Forms.Padding(4);
            this.kryptonPanel1.Name = "kryptonPanel1";
            this.kryptonPanel1.Size = new System.Drawing.Size(950, 650);
            this.kryptonPanel1.StateCommon.Color1 = System.Drawing.Color.White;
            this.kryptonPanel1.StateCommon.Color2 = System.Drawing.Color.White;
            this.kryptonPanel1.StateCommon.ColorAngle = 60F;
            this.kryptonPanel1.StateCommon.ColorStyle = Krypton.Toolkit.PaletteColorStyle.Sigma;
            this.kryptonPanel1.TabIndex = 2;
            // 
            // btn_refresh
            // 
            this.btn_refresh.CornerRoundingRadius = 50F;
            this.btn_refresh.Location = new System.Drawing.Point(625, 12);
            this.btn_refresh.Name = "btn_refresh";
            this.btn_refresh.OverrideDefault.Back.Color1 = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(46)))), ((int)(((byte)(191)))));
            this.btn_refresh.OverrideDefault.Back.Color2 = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(46)))), ((int)(((byte)(191)))));
            this.btn_refresh.OverrideDefault.Back.Image = global::pharmacy_management.Properties.Resources.icons8_refresh_24;
            this.btn_refresh.OverrideDefault.Back.ImageStyle = Krypton.Toolkit.PaletteImageStyle.CenterMiddle;
            this.btn_refresh.OverrideDefault.Border.Color1 = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(46)))), ((int)(((byte)(191)))));
            this.btn_refresh.OverrideDefault.Border.Color2 = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(46)))), ((int)(((byte)(191)))));
            this.btn_refresh.OverrideDefault.Border.DrawBorders = ((Krypton.Toolkit.PaletteDrawBorders)((((Krypton.Toolkit.PaletteDrawBorders.Top | Krypton.Toolkit.PaletteDrawBorders.Bottom) 
            | Krypton.Toolkit.PaletteDrawBorders.Left) 
            | Krypton.Toolkit.PaletteDrawBorders.Right)));
            this.btn_refresh.OverrideDefault.Border.Rounding = 50F;
            this.btn_refresh.OverrideDefault.Border.Width = 5;
            this.btn_refresh.Size = new System.Drawing.Size(40, 40);
            this.btn_refresh.StateCommon.Back.Color1 = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(46)))), ((int)(((byte)(191)))));
            this.btn_refresh.StateCommon.Back.Color2 = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(46)))), ((int)(((byte)(191)))));
            this.btn_refresh.StateCommon.Border.Color1 = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(46)))), ((int)(((byte)(191)))));
            this.btn_refresh.StateCommon.Border.Color2 = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(46)))), ((int)(((byte)(191)))));
            this.btn_refresh.StateCommon.Border.DrawBorders = ((Krypton.Toolkit.PaletteDrawBorders)((((Krypton.Toolkit.PaletteDrawBorders.Top | Krypton.Toolkit.PaletteDrawBorders.Bottom) 
            | Krypton.Toolkit.PaletteDrawBorders.Left) 
            | Krypton.Toolkit.PaletteDrawBorders.Right)));
            this.btn_refresh.StateCommon.Border.Rounding = 50F;
            this.btn_refresh.StateCommon.Border.Width = 5;
            this.btn_refresh.StateNormal.Back.Image = global::pharmacy_management.Properties.Resources.icons8_refresh_24;
            this.btn_refresh.StateNormal.Back.ImageStyle = Krypton.Toolkit.PaletteImageStyle.CenterMiddle;
            this.btn_refresh.StateTracking.Back.Color1 = System.Drawing.Color.Blue;
            this.btn_refresh.StateTracking.Back.Color2 = System.Drawing.Color.Blue;
            this.btn_refresh.StateTracking.Back.Image = global::pharmacy_management.Properties.Resources.icons8_refresh_24;
            this.btn_refresh.StateTracking.Back.ImageStyle = Krypton.Toolkit.PaletteImageStyle.CenterMiddle;
            this.btn_refresh.StateTracking.Border.Color1 = System.Drawing.Color.Blue;
            this.btn_refresh.StateTracking.Border.Color2 = System.Drawing.Color.Blue;
            this.btn_refresh.StateTracking.Border.DrawBorders = ((Krypton.Toolkit.PaletteDrawBorders)((((Krypton.Toolkit.PaletteDrawBorders.Top | Krypton.Toolkit.PaletteDrawBorders.Bottom) 
            | Krypton.Toolkit.PaletteDrawBorders.Left) 
            | Krypton.Toolkit.PaletteDrawBorders.Right)));
            this.btn_refresh.StateTracking.Border.Rounding = 50F;
            this.btn_refresh.StateTracking.Border.Width = 5;
            this.btn_refresh.TabIndex = 64;
            this.btn_refresh.Values.Text = "";
            this.btn_refresh.Click += new System.EventHandler(this.btn_refresh_Click);
            // 
            // cb_ChonDiem
            // 
            this.cb_ChonDiem.CornerRoundingRadius = 5F;
            this.cb_ChonDiem.DropDownWidth = 121;
            this.cb_ChonDiem.IntegralHeight = false;
            this.cb_ChonDiem.Location = new System.Drawing.Point(412, 544);
            this.cb_ChonDiem.Name = "cb_ChonDiem";
            this.cb_ChonDiem.Size = new System.Drawing.Size(150, 29);
            this.cb_ChonDiem.StateCommon.ComboBox.Border.DrawBorders = ((Krypton.Toolkit.PaletteDrawBorders)((((Krypton.Toolkit.PaletteDrawBorders.Top | Krypton.Toolkit.PaletteDrawBorders.Bottom) 
            | Krypton.Toolkit.PaletteDrawBorders.Left) 
            | Krypton.Toolkit.PaletteDrawBorders.Right)));
            this.cb_ChonDiem.StateCommon.ComboBox.Border.Rounding = 5F;
            this.cb_ChonDiem.StateCommon.ComboBox.Content.TextH = Krypton.Toolkit.PaletteRelativeAlign.Center;
            this.cb_ChonDiem.TabIndex = 51;
            this.cb_ChonDiem.Text = "100";
            this.cb_ChonDiem.SelectedIndexChanged += new System.EventHandler(this.cb_ChonDiem_SelectedIndexChanged);
            // 
            // lbl_Giam
            // 
            this.lbl_Giam.AutoSize = true;
            this.lbl_Giam.BackColor = System.Drawing.Color.White;
            this.lbl_Giam.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.lbl_Giam.Location = new System.Drawing.Point(680, 541);
            this.lbl_Giam.Name = "lbl_Giam";
            this.lbl_Giam.Size = new System.Drawing.Size(54, 29);
            this.lbl_Giam.TabIndex = 50;
            this.lbl_Giam.Text = "5 %";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.BackColor = System.Drawing.Color.White;
            this.label7.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.label7.Location = new System.Drawing.Point(596, 544);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(69, 25);
            this.label7.TabIndex = 49;
            this.label7.Text = "Giảm:";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.BackColor = System.Drawing.Color.White;
            this.label6.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.label6.Location = new System.Drawing.Point(270, 619);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(570, 22);
            this.label6.TabIndex = 48;
            this.label6.Text = "-  Mỗi 100 điểm, khách hàng quy đổi được 05 % phiếu giảm tương ứng.";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.BackColor = System.Drawing.Color.White;
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.label5.Location = new System.Drawing.Point(270, 591);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(585, 22);
            this.label5.TabIndex = 47;
            this.label5.Text = "-  Hóa đơn từ 10.000 đồng, khách hàng tích lũy được 01 điểm tương ứng.";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.BackColor = System.Drawing.Color.White;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.label4.Location = new System.Drawing.Point(269, 544);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(123, 25);
            this.label4.TabIndex = 45;
            this.label4.Text = "Chọn điểm:";
            // 
            // lbl_DiemHienCo
            // 
            this.lbl_DiemHienCo.AutoSize = true;
            this.lbl_DiemHienCo.BackColor = System.Drawing.Color.White;
            this.lbl_DiemHienCo.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.lbl_DiemHienCo.Location = new System.Drawing.Point(16, 613);
            this.lbl_DiemHienCo.Name = "lbl_DiemHienCo";
            this.lbl_DiemHienCo.Size = new System.Drawing.Size(71, 29);
            this.lbl_DiemHienCo.TabIndex = 44;
            this.lbl_DiemHienCo.Text = "3,345";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.BackColor = System.Drawing.Color.White;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.label3.Location = new System.Drawing.Point(12, 588);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(144, 25);
            this.label3.TabIndex = 43;
            this.label3.Text = "Điểm hiện có:";
            // 
            // dropBtn_KH
            // 
            this.dropBtn_KH.CornerRoundingRadius = 5F;
            this.dropBtn_KH.DropDownWidth = 121;
            this.dropBtn_KH.IntegralHeight = false;
            this.dropBtn_KH.Location = new System.Drawing.Point(12, 540);
            this.dropBtn_KH.Name = "dropBtn_KH";
            this.dropBtn_KH.Size = new System.Drawing.Size(208, 29);
            this.dropBtn_KH.StateCommon.ComboBox.Border.DrawBorders = ((Krypton.Toolkit.PaletteDrawBorders)((((Krypton.Toolkit.PaletteDrawBorders.Top | Krypton.Toolkit.PaletteDrawBorders.Bottom) 
            | Krypton.Toolkit.PaletteDrawBorders.Left) 
            | Krypton.Toolkit.PaletteDrawBorders.Right)));
            this.dropBtn_KH.StateCommon.ComboBox.Border.Rounding = 5F;
            this.dropBtn_KH.StateCommon.ComboBox.Content.TextH = Krypton.Toolkit.PaletteRelativeAlign.Near;
            this.dropBtn_KH.TabIndex = 40;
            this.dropBtn_KH.Text = "Chọn khách hàng";
            this.dropBtn_KH.SelectedIndexChanged += new System.EventHandler(this.dropBtn_KH_SelectedIndexChanged);
            // 
            // btn_ThemQDD
            // 
            this.btn_ThemQDD.CornerRoundingRadius = 5F;
            this.btn_ThemQDD.Location = new System.Drawing.Point(832, 540);
            this.btn_ThemQDD.Name = "btn_ThemQDD";
            this.btn_ThemQDD.OverrideDefault.Back.Color1 = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(46)))), ((int)(((byte)(191)))));
            this.btn_ThemQDD.OverrideDefault.Back.Color2 = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(46)))), ((int)(((byte)(191)))));
            this.btn_ThemQDD.OverrideDefault.Back.Image = global::pharmacy_management.Properties.Resources.icons8_plus_24;
            this.btn_ThemQDD.OverrideDefault.Back.ImageStyle = Krypton.Toolkit.PaletteImageStyle.CenterMiddle;
            this.btn_ThemQDD.OverrideDefault.Border.Color1 = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(46)))), ((int)(((byte)(191)))));
            this.btn_ThemQDD.OverrideDefault.Border.Color2 = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(46)))), ((int)(((byte)(191)))));
            this.btn_ThemQDD.OverrideDefault.Border.DrawBorders = ((Krypton.Toolkit.PaletteDrawBorders)((((Krypton.Toolkit.PaletteDrawBorders.Top | Krypton.Toolkit.PaletteDrawBorders.Bottom) 
            | Krypton.Toolkit.PaletteDrawBorders.Left) 
            | Krypton.Toolkit.PaletteDrawBorders.Right)));
            this.btn_ThemQDD.OverrideDefault.Border.Rounding = 5F;
            this.btn_ThemQDD.OverrideDefault.Border.Width = 5;
            this.btn_ThemQDD.Size = new System.Drawing.Size(100, 40);
            this.btn_ThemQDD.StateCommon.Back.Color1 = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(46)))), ((int)(((byte)(191)))));
            this.btn_ThemQDD.StateCommon.Back.Color2 = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(46)))), ((int)(((byte)(191)))));
            this.btn_ThemQDD.StateCommon.Back.Image = global::pharmacy_management.Properties.Resources.icons8_plus_24;
            this.btn_ThemQDD.StateCommon.Back.ImageStyle = Krypton.Toolkit.PaletteImageStyle.CenterMiddle;
            this.btn_ThemQDD.StateCommon.Border.Color1 = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(46)))), ((int)(((byte)(191)))));
            this.btn_ThemQDD.StateCommon.Border.Color2 = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(46)))), ((int)(((byte)(191)))));
            this.btn_ThemQDD.StateCommon.Border.DrawBorders = ((Krypton.Toolkit.PaletteDrawBorders)((((Krypton.Toolkit.PaletteDrawBorders.Top | Krypton.Toolkit.PaletteDrawBorders.Bottom) 
            | Krypton.Toolkit.PaletteDrawBorders.Left) 
            | Krypton.Toolkit.PaletteDrawBorders.Right)));
            this.btn_ThemQDD.StateCommon.Border.Rounding = 5F;
            this.btn_ThemQDD.StateCommon.Border.Width = 5;
            this.btn_ThemQDD.StateDisabled.Back.Color1 = System.Drawing.Color.Gray;
            this.btn_ThemQDD.StateDisabled.Back.Color2 = System.Drawing.Color.Gray;
            this.btn_ThemQDD.StateDisabled.Border.Color1 = System.Drawing.Color.Gray;
            this.btn_ThemQDD.StateDisabled.Border.Color2 = System.Drawing.Color.Gray;
            this.btn_ThemQDD.StateDisabled.Border.DrawBorders = ((Krypton.Toolkit.PaletteDrawBorders)((((Krypton.Toolkit.PaletteDrawBorders.Top | Krypton.Toolkit.PaletteDrawBorders.Bottom) 
            | Krypton.Toolkit.PaletteDrawBorders.Left) 
            | Krypton.Toolkit.PaletteDrawBorders.Right)));
            this.btn_ThemQDD.StateTracking.Back.Color1 = System.Drawing.Color.Blue;
            this.btn_ThemQDD.StateTracking.Back.Color2 = System.Drawing.Color.Blue;
            this.btn_ThemQDD.StateTracking.Back.Image = global::pharmacy_management.Properties.Resources.icons8_plus_24;
            this.btn_ThemQDD.StateTracking.Back.ImageStyle = Krypton.Toolkit.PaletteImageStyle.CenterMiddle;
            this.btn_ThemQDD.StateTracking.Border.Color1 = System.Drawing.Color.Blue;
            this.btn_ThemQDD.StateTracking.Border.Color2 = System.Drawing.Color.Blue;
            this.btn_ThemQDD.StateTracking.Border.DrawBorders = ((Krypton.Toolkit.PaletteDrawBorders)((((Krypton.Toolkit.PaletteDrawBorders.Top | Krypton.Toolkit.PaletteDrawBorders.Bottom) 
            | Krypton.Toolkit.PaletteDrawBorders.Left) 
            | Krypton.Toolkit.PaletteDrawBorders.Right)));
            this.btn_ThemQDD.StateTracking.Border.Rounding = 5F;
            this.btn_ThemQDD.StateTracking.Border.Width = 5;
            this.btn_ThemQDD.TabIndex = 37;
            this.toolTip_rpt.SetToolTip(this.btn_ThemQDD, "Quy đổi điểm");
            this.btn_ThemQDD.Values.Text = "";
            this.btn_ThemQDD.Click += new System.EventHandler(this.btn_ThemQDD_Click);
            // 
            // txt_searching
            // 
            this.txt_searching.Location = new System.Drawing.Point(424, 12);
            this.txt_searching.Multiline = false;
            this.txt_searching.Name = "txt_searching";
            this.txt_searching.Size = new System.Drawing.Size(177, 40);
            this.txt_searching.StateCommon.Border.DrawBorders = ((Krypton.Toolkit.PaletteDrawBorders)((((Krypton.Toolkit.PaletteDrawBorders.Top | Krypton.Toolkit.PaletteDrawBorders.Bottom) 
            | Krypton.Toolkit.PaletteDrawBorders.Left) 
            | Krypton.Toolkit.PaletteDrawBorders.Right)));
            this.txt_searching.StateCommon.Border.Rounding = 5F;
            this.txt_searching.StateCommon.Content.Padding = new System.Windows.Forms.Padding(5, 5, 10, -1);
            this.txt_searching.TabIndex = 28;
            this.txt_searching.Text = "";
            this.txt_searching.TextChanged += new System.EventHandler(this.txt_searching_TextChanged);
            this.txt_searching.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txt_searching_KeyPress);
            // 
            // dtp_end
            // 
            this.dtp_end.CalendarFont = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.dtp_end.CalendarTitleBackColor = System.Drawing.Color.Blue;
            this.dtp_end.CalendarTrailingForeColor = System.Drawing.Color.Blue;
            this.dtp_end.CustomFormat = "yyyy-MM-dd";
            this.dtp_end.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.dtp_end.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.dtp_end.Location = new System.Drawing.Point(260, 16);
            this.dtp_end.Name = "dtp_end";
            this.dtp_end.Size = new System.Drawing.Size(140, 27);
            this.dtp_end.TabIndex = 33;
            this.dtp_end.ValueChanged += new System.EventHandler(this.dtp_end_ValueChanged);
            // 
            // dtp_start
            // 
            this.dtp_start.CalendarFont = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.dtp_start.CalendarTitleBackColor = System.Drawing.Color.Blue;
            this.dtp_start.CustomFormat = "yyyy-MM-dd";
            this.dtp_start.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.dtp_start.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.dtp_start.Location = new System.Drawing.Point(63, 16);
            this.dtp_start.Name = "dtp_start";
            this.dtp_start.Size = new System.Drawing.Size(140, 27);
            this.dtp_start.TabIndex = 32;
            this.dtp_start.ValueChanged += new System.EventHandler(this.dtp_start_ValueChanged);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.BackColor = System.Drawing.Color.White;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.label2.Location = new System.Drawing.Point(209, 16);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(45, 25);
            this.label2.TabIndex = 30;
            this.label2.Text = "đến";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.BackColor = System.Drawing.Color.White;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.label1.Location = new System.Drawing.Point(16, 16);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(41, 25);
            this.label1.TabIndex = 29;
            this.label1.Text = "Từ ";
            // 
            // gv_QDD
            // 
            this.gv_QDD.AllowUserToAddRows = false;
            this.gv_QDD.AllowUserToDeleteRows = false;
            this.gv_QDD.AllowUserToOrderColumns = true;
            this.gv_QDD.AllowUserToResizeRows = false;
            this.gv_QDD.BackgroundColor = System.Drawing.Color.WhiteSmoke;
            this.gv_QDD.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.gv_QDD.ColumnHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.Single;
            dataGridViewCellStyle5.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            dataGridViewCellStyle5.BackColor = System.Drawing.Color.DodgerBlue;
            dataGridViewCellStyle5.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            dataGridViewCellStyle5.ForeColor = System.Drawing.Color.White;
            dataGridViewCellStyle5.SelectionBackColor = System.Drawing.Color.LightSkyBlue;
            dataGridViewCellStyle5.SelectionForeColor = System.Drawing.Color.AliceBlue;
            dataGridViewCellStyle5.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.gv_QDD.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle5;
            this.gv_QDD.ColumnHeadersHeight = 30;
            this.gv_QDD.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.DisableResizing;
            this.gv_QDD.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.MaQuyDoi,
            this.KhachHang,
            this.NgayDoi,
            this.MoTa,
            this.DiemQuyDoi,
            this.PhanTram,
            this.TrangThai});
            dataGridViewCellStyle6.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle6.BackColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle6.Font = new System.Drawing.Font("Microsoft Sans Serif", 7.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            dataGridViewCellStyle6.ForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle6.SelectionBackColor = System.Drawing.Color.LightCyan;
            dataGridViewCellStyle6.SelectionForeColor = System.Drawing.Color.Black;
            dataGridViewCellStyle6.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.gv_QDD.DefaultCellStyle = dataGridViewCellStyle6;
            this.gv_QDD.EnableHeadersVisualStyles = false;
            this.gv_QDD.GridColor = System.Drawing.Color.Black;
            this.gv_QDD.Location = new System.Drawing.Point(12, 76);
            this.gv_QDD.Name = "gv_QDD";
            this.gv_QDD.ReadOnly = true;
            dataGridViewCellStyle7.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle7.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle7.Font = new System.Drawing.Font("Microsoft Sans Serif", 7.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            dataGridViewCellStyle7.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle7.SelectionBackColor = System.Drawing.Color.DodgerBlue;
            dataGridViewCellStyle7.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle7.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.gv_QDD.RowHeadersDefaultCellStyle = dataGridViewCellStyle7;
            this.gv_QDD.RowHeadersVisible = false;
            this.gv_QDD.RowHeadersWidth = 51;
            dataGridViewCellStyle8.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.gv_QDD.RowsDefaultCellStyle = dataGridViewCellStyle8;
            this.gv_QDD.RowTemplate.Height = 24;
            this.gv_QDD.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.gv_QDD.Size = new System.Drawing.Size(926, 448);
            this.gv_QDD.TabIndex = 27;
            // 
            // btn_export_excel
            // 
            this.btn_export_excel.CornerRoundingRadius = 5F;
            this.btn_export_excel.Location = new System.Drawing.Point(832, 12);
            this.btn_export_excel.Name = "btn_export_excel";
            this.btn_export_excel.OverrideDefault.Back.Color1 = System.Drawing.Color.Green;
            this.btn_export_excel.OverrideDefault.Back.Color2 = System.Drawing.Color.Green;
            this.btn_export_excel.OverrideDefault.Back.Image = global::pharmacy_management.Properties.Resources.icons8_microsoft_excel_24;
            this.btn_export_excel.OverrideDefault.Back.ImageStyle = Krypton.Toolkit.PaletteImageStyle.CenterMiddle;
            this.btn_export_excel.OverrideDefault.Border.Color1 = System.Drawing.Color.Green;
            this.btn_export_excel.OverrideDefault.Border.Color2 = System.Drawing.Color.Green;
            this.btn_export_excel.OverrideDefault.Border.DrawBorders = ((Krypton.Toolkit.PaletteDrawBorders)((((Krypton.Toolkit.PaletteDrawBorders.Top | Krypton.Toolkit.PaletteDrawBorders.Bottom) 
            | Krypton.Toolkit.PaletteDrawBorders.Left) 
            | Krypton.Toolkit.PaletteDrawBorders.Right)));
            this.btn_export_excel.OverrideDefault.Border.Rounding = 5F;
            this.btn_export_excel.OverrideDefault.Border.Width = 5;
            this.btn_export_excel.Size = new System.Drawing.Size(100, 40);
            this.btn_export_excel.StateCommon.Back.Color1 = System.Drawing.Color.Green;
            this.btn_export_excel.StateCommon.Back.Color2 = System.Drawing.Color.Green;
            this.btn_export_excel.StateCommon.Border.Color1 = System.Drawing.Color.Green;
            this.btn_export_excel.StateCommon.Border.Color2 = System.Drawing.Color.Green;
            this.btn_export_excel.StateCommon.Border.DrawBorders = ((Krypton.Toolkit.PaletteDrawBorders)((((Krypton.Toolkit.PaletteDrawBorders.Top | Krypton.Toolkit.PaletteDrawBorders.Bottom) 
            | Krypton.Toolkit.PaletteDrawBorders.Left) 
            | Krypton.Toolkit.PaletteDrawBorders.Right)));
            this.btn_export_excel.StateCommon.Border.Rounding = 5F;
            this.btn_export_excel.StateCommon.Border.Width = 5;
            this.btn_export_excel.StateNormal.Back.Image = global::pharmacy_management.Properties.Resources.icons8_microsoft_excel_24;
            this.btn_export_excel.StateNormal.Back.ImageStyle = Krypton.Toolkit.PaletteImageStyle.CenterMiddle;
            this.btn_export_excel.StateTracking.Back.Color1 = System.Drawing.Color.DarkGreen;
            this.btn_export_excel.StateTracking.Back.Color2 = System.Drawing.Color.DarkGreen;
            this.btn_export_excel.StateTracking.Back.Image = global::pharmacy_management.Properties.Resources.icons8_microsoft_excel_24;
            this.btn_export_excel.StateTracking.Back.ImageStyle = Krypton.Toolkit.PaletteImageStyle.CenterMiddle;
            this.btn_export_excel.StateTracking.Border.Color1 = System.Drawing.Color.DarkGreen;
            this.btn_export_excel.StateTracking.Border.Color2 = System.Drawing.Color.DarkGreen;
            this.btn_export_excel.StateTracking.Border.DrawBorders = ((Krypton.Toolkit.PaletteDrawBorders)((((Krypton.Toolkit.PaletteDrawBorders.Top | Krypton.Toolkit.PaletteDrawBorders.Bottom) 
            | Krypton.Toolkit.PaletteDrawBorders.Left) 
            | Krypton.Toolkit.PaletteDrawBorders.Right)));
            this.btn_export_excel.StateTracking.Border.Rounding = 5F;
            this.btn_export_excel.StateTracking.Border.Width = 5;
            this.btn_export_excel.TabIndex = 65;
            this.toolTip_rpt.SetToolTip(this.btn_export_excel, "Xuất excel");
            this.btn_export_excel.Values.Text = "";
            this.btn_export_excel.Click += new System.EventHandler(this.btn_export_excel_Click);
            // 
            // MaQuyDoi
            // 
            this.MaQuyDoi.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.AllCellsExceptHeader;
            this.MaQuyDoi.HeaderText = "Mã";
            this.MaQuyDoi.MinimumWidth = 80;
            this.MaQuyDoi.Name = "MaQuyDoi";
            this.MaQuyDoi.ReadOnly = true;
            this.MaQuyDoi.Width = 80;
            // 
            // KhachHang
            // 
            this.KhachHang.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.AllCells;
            this.KhachHang.HeaderText = "Mã KH";
            this.KhachHang.MinimumWidth = 6;
            this.KhachHang.Name = "KhachHang";
            this.KhachHang.ReadOnly = true;
            this.KhachHang.Width = 97;
            // 
            // NgayDoi
            // 
            this.NgayDoi.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.NgayDoi.HeaderText = "Ngày đổi";
            this.NgayDoi.MinimumWidth = 6;
            this.NgayDoi.Name = "NgayDoi";
            this.NgayDoi.ReadOnly = true;
            // 
            // MoTa
            // 
            this.MoTa.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.MoTa.HeaderText = "Mô tả";
            this.MoTa.MinimumWidth = 6;
            this.MoTa.Name = "MoTa";
            this.MoTa.ReadOnly = true;
            // 
            // DiemQuyDoi
            // 
            this.DiemQuyDoi.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.AllCells;
            this.DiemQuyDoi.HeaderText = "Điểm";
            this.DiemQuyDoi.MinimumWidth = 6;
            this.DiemQuyDoi.Name = "DiemQuyDoi";
            this.DiemQuyDoi.ReadOnly = true;
            this.DiemQuyDoi.Width = 83;
            // 
            // PhanTram
            // 
            this.PhanTram.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.AllCellsExceptHeader;
            this.PhanTram.HeaderText = "%";
            this.PhanTram.MinimumWidth = 6;
            this.PhanTram.Name = "PhanTram";
            this.PhanTram.ReadOnly = true;
            this.PhanTram.Width = 6;
            // 
            // TrangThai
            // 
            this.TrangThai.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.TrangThai.HeaderText = "Trạng thái";
            this.TrangThai.MinimumWidth = 6;
            this.TrangThai.Name = "TrangThai";
            this.TrangThai.ReadOnly = true;
            // 
            // QuyDoiDiemFrm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(950, 650);
            this.Controls.Add(this.kryptonPanel1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "QuyDoiDiemFrm";
            this.Text = "QuyDoiDiemFrm";
            ((System.ComponentModel.ISupportInitialize)(this.kryptonPanel1)).EndInit();
            this.kryptonPanel1.ResumeLayout(false);
            this.kryptonPanel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.cb_ChonDiem)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dropBtn_KH)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gv_QDD)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private Krypton.Toolkit.KryptonPanel kryptonPanel1;
        private System.Windows.Forms.DataGridView gv_QDD;
        private Krypton.Toolkit.KryptonRichTextBox txt_searching;
        private System.Windows.Forms.DateTimePicker dtp_end;
        private System.Windows.Forms.DateTimePicker dtp_start;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ToolTip toolTip_rpt;
        private Krypton.Toolkit.KryptonButton btn_ThemQDD;
        private Krypton.Toolkit.KryptonComboBox dropBtn_KH;
        private System.Windows.Forms.Label lbl_DiemHienCo;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label lbl_Giam;
        private System.Windows.Forms.Label label7;
        private Krypton.Toolkit.KryptonComboBox cb_ChonDiem;
        private Krypton.Toolkit.KryptonButton btn_refresh;
        private Krypton.Toolkit.KryptonButton btn_export_excel;
        private System.Windows.Forms.DataGridViewTextBoxColumn MaQuyDoi;
        private System.Windows.Forms.DataGridViewTextBoxColumn KhachHang;
        private System.Windows.Forms.DataGridViewTextBoxColumn NgayDoi;
        private System.Windows.Forms.DataGridViewTextBoxColumn MoTa;
        private System.Windows.Forms.DataGridViewTextBoxColumn DiemQuyDoi;
        private System.Windows.Forms.DataGridViewTextBoxColumn PhanTram;
        private System.Windows.Forms.DataGridViewTextBoxColumn TrangThai;
    }
}