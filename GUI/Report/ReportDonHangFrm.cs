﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace pharmacy_management.GUI.Report
{
    public partial class ReportDonHangFrm : Form
    {
        public ReportDonHangFrm()
        {
            InitializeComponent();
        }

        private void ReportDonHangFrm_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'ql_nhathuocDataSet.donhang' table. You can move, or remove it, as needed.
            this.donhangTableAdapter.Fill(this.ql_nhathuocDataSet.donhang);
            // TODO: This line of code loads data into the 'ql_nhathuocDataSet.donhang' table. You can move, or remove it, as needed.
            // TODO: This line of code loads data into the 'ql_nhathuocDataSet1.donhang' table. You can move, or remove it, as needed.

            this.reportViewer1.RefreshReport();
        }
    }
}
