namespace SampleERP.BasicS
{
    partial class FormBSBomInput
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
            this.txtSpecsModel2 = new System.Windows.Forms.TextBox();
            this.txtSpecsModel1 = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.cbxMatInvenCode = new System.Windows.Forms.ComboBox();
            this.label3 = new System.Windows.Forms.Label();
            this.txtQuantity = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.cbxProInvenCode = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.btnQuit = new System.Windows.Forms.Button();
            this.btnSave = new System.Windows.Forms.Button();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // txtSpecsModel2
            // 
            this.txtSpecsModel2.Location = new System.Drawing.Point(278, 66);
            this.txtSpecsModel2.Name = "txtSpecsModel2";
            this.txtSpecsModel2.ReadOnly = true;
            this.txtSpecsModel2.Size = new System.Drawing.Size(121, 21);
            this.txtSpecsModel2.TabIndex = 22;
            // 
            // txtSpecsModel1
            // 
            this.txtSpecsModel1.Location = new System.Drawing.Point(278, 24);
            this.txtSpecsModel1.Name = "txtSpecsModel1";
            this.txtSpecsModel1.ReadOnly = true;
            this.txtSpecsModel1.Size = new System.Drawing.Size(121, 21);
            this.txtSpecsModel1.TabIndex = 21;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(222, 28);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(53, 12);
            this.label5.TabIndex = 20;
            this.label5.Text = "母件型号";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(222, 69);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(53, 12);
            this.label4.TabIndex = 19;
            this.label4.Text = "子件型号";
            // 
            // cbxMatInvenCode
            // 
            this.cbxMatInvenCode.FormattingEnabled = true;
            this.cbxMatInvenCode.Location = new System.Drawing.Point(76, 66);
            this.cbxMatInvenCode.Name = "cbxMatInvenCode";
            this.cbxMatInvenCode.Size = new System.Drawing.Size(121, 20);
            this.cbxMatInvenCode.TabIndex = 18;
            this.cbxMatInvenCode.SelectedIndexChanged += new System.EventHandler(this.cbxMatInvenCode_SelectedIndexChanged);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(17, 112);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(53, 12);
            this.label3.TabIndex = 17;
            this.label3.Text = "组成数量";
            // 
            // txtQuantity
            // 
            this.txtQuantity.Location = new System.Drawing.Point(76, 107);
            this.txtQuantity.MaxLength = 9;
            this.txtQuantity.Name = "txtQuantity";
            this.txtQuantity.Size = new System.Drawing.Size(121, 21);
            this.txtQuantity.TabIndex = 16;
            this.txtQuantity.Text = "1";
            this.txtQuantity.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtQuantity_KeyPress);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(18, 69);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(53, 12);
            this.label2.TabIndex = 15;
            this.label2.Text = "选择子件";
            // 
            // cbxProInvenCode
            // 
            this.cbxProInvenCode.FormattingEnabled = true;
            this.cbxProInvenCode.Location = new System.Drawing.Point(76, 24);
            this.cbxProInvenCode.Name = "cbxProInvenCode";
            this.cbxProInvenCode.Size = new System.Drawing.Size(121, 20);
            this.cbxProInvenCode.TabIndex = 14;
            this.cbxProInvenCode.SelectedIndexChanged += new System.EventHandler(this.cbxProInvenCode_SelectedIndexChanged);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(18, 28);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(53, 12);
            this.label1.TabIndex = 13;
            this.label1.Text = "选择母件";
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.btnQuit);
            this.groupBox1.Controls.Add(this.btnSave);
            this.groupBox1.Location = new System.Drawing.Point(6, 1);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(402, 182);
            this.groupBox1.TabIndex = 23;
            this.groupBox1.TabStop = false;
            // 
            // btnQuit
            // 
            this.btnQuit.Location = new System.Drawing.Point(272, 143);
            this.btnQuit.Name = "btnQuit";
            this.btnQuit.Size = new System.Drawing.Size(75, 23);
            this.btnQuit.TabIndex = 11;
            this.btnQuit.Text = "退出";
            this.btnQuit.UseVisualStyleBackColor = true;
            this.btnQuit.Click += new System.EventHandler(this.btnQuit_Click);
            // 
            // btnSave
            // 
            this.btnSave.Location = new System.Drawing.Point(70, 143);
            this.btnSave.Name = "btnSave";
            this.btnSave.Size = new System.Drawing.Size(75, 23);
            this.btnSave.TabIndex = 10;
            this.btnSave.Text = "保存";
            this.btnSave.UseVisualStyleBackColor = true;
            this.btnSave.Click += new System.EventHandler(this.btnSave_Click);
            // 
            // FormBSBomInput
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(415, 185);
            this.Controls.Add(this.txtSpecsModel2);
            this.Controls.Add(this.txtSpecsModel1);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.cbxMatInvenCode);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.txtQuantity);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.cbxProInvenCode);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.groupBox1);
            this.Name = "FormBSBomInput";
            this.Text = "物料清单（BOM）编辑";
            this.Load += new System.EventHandler(this.FormBomInput_Load);
            this.groupBox1.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox txtSpecsModel2;
        private System.Windows.Forms.TextBox txtSpecsModel1;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.ComboBox cbxMatInvenCode;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txtQuantity;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.ComboBox cbxProInvenCode;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button btnQuit;
        private System.Windows.Forms.Button btnSave;
    }
}