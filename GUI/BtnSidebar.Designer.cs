
﻿namespace pharmacy_management.GUI
{
    partial class BtnSidebar
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

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.btnSell = new Krypton.Toolkit.KryptonButton();
            this.SuspendLayout();
            // 
            // btnSell
            // 
            this.btnSell.Location = new System.Drawing.Point(0, 3);
            this.btnSell.Name = "btnSell";
            this.btnSell.Size = new System.Drawing.Size(240, 56);
            this.btnSell.StateCommon.Back.Color1 = System.Drawing.Color.White;
            this.btnSell.StateCommon.Back.Color2 = System.Drawing.Color.White;
            this.btnSell.StateCommon.Border.DrawBorders = ((Krypton.Toolkit.PaletteDrawBorders)((((Krypton.Toolkit.PaletteDrawBorders.Top | Krypton.Toolkit.PaletteDrawBorders.Bottom) 
            | Krypton.Toolkit.PaletteDrawBorders.Left) 
            | Krypton.Toolkit.PaletteDrawBorders.Right)));
            this.btnSell.StateCommon.Border.Rounding = 5;
            this.btnSell.StateNormal.Back.Image = pharmacy_management.Properties.Resources.Sell;
            this.btnSell.StateNormal.Back.ImageAlign = Krypton.Toolkit.PaletteRectangleAlign.Local;
            this.btnSell.StateNormal.Back.ImageStyle = Krypton.Toolkit.PaletteImageStyle.CenterLeft;
            this.btnSell.TabIndex = 5;
            this.btnSell.Values.Text = "Bán hàng";
            // 
            // BtnSidebar
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.btnSell);
            this.Name = "BtnSidebar";
            this.Size = new System.Drawing.Size(242, 64);
            this.ResumeLayout(false);

        }

        #endregion

        private Krypton.Toolkit.KryptonButton btnSell;
    }
}
