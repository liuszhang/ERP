﻿namespace SampleERP.ProductM
{
    partial class FormPRInStore
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FormPRInStore));
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.dgvPRInStoreInfo = new System.Windows.Forms.DataGridView();
            this.PRInCode = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.PRInDate = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.OperatorCode = new System.Windows.Forms.DataGridViewComboBoxColumn();
            this.PRProduceCode = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.StoreCode = new System.Windows.Forms.DataGridViewComboBoxColumn();
            this.InvenCode = new System.Windows.Forms.DataGridViewComboBoxColumn();
            this.PRQuantity = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.InQuantity = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.EmployeeCode = new System.Windows.Forms.DataGridViewComboBoxColumn();
            this.IsFlag = new System.Windows.Forms.DataGridViewComboBoxColumn();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.txtPRQuantity = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.btnChoice = new System.Windows.Forms.Button();
            this.txtPRProduceCode = new System.Windows.Forms.TextBox();
            this.cbxIsFlag = new System.Windows.Forms.ComboBox();
            this.cbxEmployeeCode = new System.Windows.Forms.ComboBox();
            this.label12 = new System.Windows.Forms.Label();
            this.label11 = new System.Windows.Forms.Label();
            this.label10 = new System.Windows.Forms.Label();
            this.txtInQuantity = new System.Windows.Forms.TextBox();
            this.cbxInvenCode = new System.Windows.Forms.ComboBox();
            this.label5 = new System.Windows.Forms.Label();
            this.cbxStoreCode = new System.Windows.Forms.ComboBox();
            this.label6 = new System.Windows.Forms.Label();
            this.cbxOperatorCode = new System.Windows.Forms.ComboBox();
            this.dtpPRInDate = new System.Windows.Forms.DateTimePicker();
            this.label3 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.txtPRInCode = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.toolStrip1 = new System.Windows.Forms.ToolStrip();
            this.toolSave = new System.Windows.Forms.ToolStripButton();
            this.toolCancel = new System.Windows.Forms.ToolStripButton();
            this.toolAdd = new System.Windows.Forms.ToolStripButton();
            this.toolAmend = new System.Windows.Forms.ToolStripButton();
            this.toolDelete = new System.Windows.Forms.ToolStripButton();
            this.toolCheck = new System.Windows.Forms.ToolStripButton();
            this.toolUnCheck = new System.Windows.Forms.ToolStripButton();
            this.toolStripSeparator1 = new System.Windows.Forms.ToolStripSeparator();
            this.labCondation = new System.Windows.Forms.ToolStripLabel();
            this.cbxCondition = new System.Windows.Forms.ToolStripComboBox();
            this.txtKeyWord = new System.Windows.Forms.ToolStripTextBox();
            this.toolStripSeparator2 = new System.Windows.Forms.ToolStripSeparator();
            this.txtOK = new System.Windows.Forms.ToolStripButton();
            this.toolExit = new System.Windows.Forms.ToolStripButton();
            this.groupBox2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvPRInStoreInfo)).BeginInit();
            this.groupBox1.SuspendLayout();
            this.toolStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.dgvPRInStoreInfo);
            this.groupBox2.Location = new System.Drawing.Point(8, 190);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(671, 217);
            this.groupBox2.TabIndex = 11;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "生产入库单记录";
            // 
            // dgvPRInStoreInfo
            // 
            this.dgvPRInStoreInfo.AllowUserToAddRows = false;
            this.dgvPRInStoreInfo.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvPRInStoreInfo.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.PRInCode,
            this.PRInDate,
            this.OperatorCode,
            this.PRProduceCode,
            this.StoreCode,
            this.InvenCode,
            this.PRQuantity,
            this.InQuantity,
            this.EmployeeCode,
            this.IsFlag});
            this.dgvPRInStoreInfo.Location = new System.Drawing.Point(8, 15);
            this.dgvPRInStoreInfo.Name = "dgvPRInStoreInfo";
            this.dgvPRInStoreInfo.RowTemplate.Height = 23;
            this.dgvPRInStoreInfo.Size = new System.Drawing.Size(655, 194);
            this.dgvPRInStoreInfo.TabIndex = 0;
            this.dgvPRInStoreInfo.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvPRInStoreInfo_CellClick);
            this.dgvPRInStoreInfo.DataError += new System.Windows.Forms.DataGridViewDataErrorEventHandler(this.dgvPRInStoreInfo_DataError);
            // 
            // PRInCode
            // 
            this.PRInCode.DataPropertyName = "PRInCode";
            this.PRInCode.HeaderText = "单据编号";
            this.PRInCode.Name = "PRInCode";
            this.PRInCode.ReadOnly = true;
            // 
            // PRInDate
            // 
            this.PRInDate.DataPropertyName = "PRInDate";
            this.PRInDate.HeaderText = "单据日期";
            this.PRInDate.Name = "PRInDate";
            this.PRInDate.ReadOnly = true;
            // 
            // OperatorCode
            // 
            this.OperatorCode.DataPropertyName = "OperatorCode";
            this.OperatorCode.HeaderText = "操作员";
            this.OperatorCode.Name = "OperatorCode";
            this.OperatorCode.ReadOnly = true;
            // 
            // PRProduceCode
            // 
            this.PRProduceCode.DataPropertyName = "PRProduceCode";
            this.PRProduceCode.HeaderText = "生产单号";
            this.PRProduceCode.Name = "PRProduceCode";
            this.PRProduceCode.ReadOnly = true;
            // 
            // StoreCode
            // 
            this.StoreCode.DataPropertyName = "StoreCode";
            this.StoreCode.HeaderText = "仓    库";
            this.StoreCode.Name = "StoreCode";
            this.StoreCode.ReadOnly = true;
            // 
            // InvenCode
            // 
            this.InvenCode.DataPropertyName = "InvenCode";
            this.InvenCode.HeaderText = "产品名称";
            this.InvenCode.Name = "InvenCode";
            this.InvenCode.ReadOnly = true;
            // 
            // PRQuantity
            // 
            this.PRQuantity.DataPropertyName = "PRQuantity";
            this.PRQuantity.HeaderText = "生产数量";
            this.PRQuantity.Name = "PRQuantity";
            this.PRQuantity.ReadOnly = true;
            // 
            // InQuantity
            // 
            this.InQuantity.DataPropertyName = "InQuantity";
            this.InQuantity.HeaderText = "入库数量";
            this.InQuantity.Name = "InQuantity";
            this.InQuantity.ReadOnly = true;
            // 
            // EmployeeCode
            // 
            this.EmployeeCode.DataPropertyName = "EmployeeCode";
            this.EmployeeCode.HeaderText = "库 管 员";
            this.EmployeeCode.Name = "EmployeeCode";
            this.EmployeeCode.ReadOnly = true;
            // 
            // IsFlag
            // 
            this.IsFlag.DataPropertyName = "IsFlag";
            this.IsFlag.HeaderText = "审核状态";
            this.IsFlag.Name = "IsFlag";
            this.IsFlag.ReadOnly = true;
            this.IsFlag.Resizable = System.Windows.Forms.DataGridViewTriState.True;
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.txtPRQuantity);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.btnChoice);
            this.groupBox1.Controls.Add(this.txtPRProduceCode);
            this.groupBox1.Controls.Add(this.cbxIsFlag);
            this.groupBox1.Controls.Add(this.cbxEmployeeCode);
            this.groupBox1.Controls.Add(this.label12);
            this.groupBox1.Controls.Add(this.label11);
            this.groupBox1.Controls.Add(this.label10);
            this.groupBox1.Controls.Add(this.txtInQuantity);
            this.groupBox1.Controls.Add(this.cbxInvenCode);
            this.groupBox1.Controls.Add(this.label5);
            this.groupBox1.Controls.Add(this.cbxStoreCode);
            this.groupBox1.Controls.Add(this.label6);
            this.groupBox1.Controls.Add(this.cbxOperatorCode);
            this.groupBox1.Controls.Add(this.dtpPRInDate);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.label7);
            this.groupBox1.Controls.Add(this.label9);
            this.groupBox1.Controls.Add(this.txtPRInCode);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Location = new System.Drawing.Point(8, 27);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(671, 160);
            this.groupBox1.TabIndex = 66;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "生产入库单信息";
            // 
            // txtPRQuantity
            // 
            this.txtPRQuantity.Location = new System.Drawing.Point(72, 95);
            this.txtPRQuantity.MaxLength = 9;
            this.txtPRQuantity.Name = "txtPRQuantity";
            this.txtPRQuantity.ReadOnly = true;
            this.txtPRQuantity.Size = new System.Drawing.Size(126, 21);
            this.txtPRQuantity.TabIndex = 108;
            this.txtPRQuantity.Text = "1";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(16, 99);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(53, 12);
            this.label4.TabIndex = 107;
            this.label4.Text = "生产数量";
            // 
            // btnChoice
            // 
            this.btnChoice.Enabled = false;
            this.btnChoice.Font = new System.Drawing.Font("宋体", 3.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.btnChoice.Location = new System.Drawing.Point(198, 54);
            this.btnChoice.Name = "btnChoice";
            this.btnChoice.Size = new System.Drawing.Size(20, 20);
            this.btnChoice.TabIndex = 106;
            this.btnChoice.Text = "...";
            this.btnChoice.UseVisualStyleBackColor = true;
            this.btnChoice.Click += new System.EventHandler(this.btnChoice_Click);
            // 
            // txtPRProduceCode
            // 
            this.txtPRProduceCode.Location = new System.Drawing.Point(72, 54);
            this.txtPRProduceCode.MaxLength = 10;
            this.txtPRProduceCode.Name = "txtPRProduceCode";
            this.txtPRProduceCode.ReadOnly = true;
            this.txtPRProduceCode.Size = new System.Drawing.Size(126, 21);
            this.txtPRProduceCode.TabIndex = 105;
            // 
            // cbxIsFlag
            // 
            this.cbxIsFlag.Enabled = false;
            this.cbxIsFlag.FormattingEnabled = true;
            this.cbxIsFlag.Location = new System.Drawing.Point(72, 131);
            this.cbxIsFlag.Name = "cbxIsFlag";
            this.cbxIsFlag.Size = new System.Drawing.Size(126, 20);
            this.cbxIsFlag.TabIndex = 104;
            // 
            // cbxEmployeeCode
            // 
            this.cbxEmployeeCode.Enabled = false;
            this.cbxEmployeeCode.FormattingEnabled = true;
            this.cbxEmployeeCode.Location = new System.Drawing.Point(530, 95);
            this.cbxEmployeeCode.Name = "cbxEmployeeCode";
            this.cbxEmployeeCode.Size = new System.Drawing.Size(126, 20);
            this.cbxEmployeeCode.TabIndex = 103;
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Location = new System.Drawing.Point(16, 135);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(53, 12);
            this.label12.TabIndex = 101;
            this.label12.Text = "审核状态";
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Location = new System.Drawing.Point(471, 99);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(53, 12);
            this.label11.TabIndex = 100;
            this.label11.Text = "库 管 员";
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(16, 58);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(53, 12);
            this.label10.TabIndex = 99;
            this.label10.Text = "生产单号";
            // 
            // txtInQuantity
            // 
            this.txtInQuantity.Location = new System.Drawing.Point(303, 95);
            this.txtInQuantity.MaxLength = 9;
            this.txtInQuantity.Name = "txtInQuantity";
            this.txtInQuantity.ReadOnly = true;
            this.txtInQuantity.Size = new System.Drawing.Size(126, 21);
            this.txtInQuantity.TabIndex = 97;
            this.txtInQuantity.Text = "1";
            this.txtInQuantity.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtInQuantity_KeyPress);
            // 
            // cbxInvenCode
            // 
            this.cbxInvenCode.Enabled = false;
            this.cbxInvenCode.FormattingEnabled = true;
            this.cbxInvenCode.Location = new System.Drawing.Point(530, 54);
            this.cbxInvenCode.Name = "cbxInvenCode";
            this.cbxInvenCode.Size = new System.Drawing.Size(126, 20);
            this.cbxInvenCode.TabIndex = 94;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(474, 58);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(53, 12);
            this.label5.TabIndex = 93;
            this.label5.Text = "产品名称";
            // 
            // cbxStoreCode
            // 
            this.cbxStoreCode.Enabled = false;
            this.cbxStoreCode.FormattingEnabled = true;
            this.cbxStoreCode.Location = new System.Drawing.Point(303, 54);
            this.cbxStoreCode.Name = "cbxStoreCode";
            this.cbxStoreCode.Size = new System.Drawing.Size(126, 20);
            this.cbxStoreCode.TabIndex = 91;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(244, 99);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(53, 12);
            this.label6.TabIndex = 90;
            this.label6.Text = "入库数量";
            // 
            // cbxOperatorCode
            // 
            this.cbxOperatorCode.Enabled = false;
            this.cbxOperatorCode.FormattingEnabled = true;
            this.cbxOperatorCode.Location = new System.Drawing.Point(530, 15);
            this.cbxOperatorCode.Name = "cbxOperatorCode";
            this.cbxOperatorCode.Size = new System.Drawing.Size(126, 20);
            this.cbxOperatorCode.TabIndex = 82;
            // 
            // dtpPRInDate
            // 
            this.dtpPRInDate.Enabled = false;
            this.dtpPRInDate.Location = new System.Drawing.Point(303, 15);
            this.dtpPRInDate.MinDate = new System.DateTime(1900, 1, 1, 0, 0, 0, 0);
            this.dtpPRInDate.Name = "dtpPRInDate";
            this.dtpPRInDate.Size = new System.Drawing.Size(126, 21);
            this.dtpPRInDate.TabIndex = 87;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(471, 19);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(53, 12);
            this.label3.TabIndex = 70;
            this.label3.Text = "操 作 员";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(244, 58);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(53, 12);
            this.label7.TabIndex = 74;
            this.label7.Text = "仓    库";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(244, 19);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(53, 12);
            this.label9.TabIndex = 77;
            this.label9.Text = "单据日期";
            // 
            // txtPRInCode
            // 
            this.txtPRInCode.Location = new System.Drawing.Point(72, 15);
            this.txtPRInCode.MaxLength = 10;
            this.txtPRInCode.Name = "txtPRInCode";
            this.txtPRInCode.ReadOnly = true;
            this.txtPRInCode.Size = new System.Drawing.Size(126, 21);
            this.txtPRInCode.TabIndex = 75;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(16, 19);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(53, 12);
            this.label1.TabIndex = 69;
            this.label1.Text = "单据编号";
            // 
            // toolStrip1
            // 
            this.toolStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.toolSave,
            this.toolCancel,
            this.toolAdd,
            this.toolAmend,
            this.toolDelete,
            this.toolCheck,
            this.toolUnCheck,
            this.toolStripSeparator1,
            this.labCondation,
            this.cbxCondition,
            this.txtKeyWord,
            this.toolStripSeparator2,
            this.txtOK,
            this.toolExit});
            this.toolStrip1.Location = new System.Drawing.Point(0, 0);
            this.toolStrip1.Name = "toolStrip1";
            this.toolStrip1.RenderMode = System.Windows.Forms.ToolStripRenderMode.System;
            this.toolStrip1.Size = new System.Drawing.Size(687, 25);
            this.toolStrip1.TabIndex = 67;
            this.toolStrip1.Text = "toolStrip1";
            // 
            // toolSave
            // 
            this.toolSave.Enabled = false;
            this.toolSave.ForeColor = System.Drawing.SystemColors.ControlText;
            this.toolSave.Image = ((System.Drawing.Image)(resources.GetObject("toolSave.Image")));
            this.toolSave.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.toolSave.Name = "toolSave";
            this.toolSave.Size = new System.Drawing.Size(52, 22);
            this.toolSave.Tag = "1";
            this.toolSave.Text = "保存";
            this.toolSave.Click += new System.EventHandler(this.toolSave_Click);
            // 
            // toolCancel
            // 
            this.toolCancel.Enabled = false;
            this.toolCancel.Image = ((System.Drawing.Image)(resources.GetObject("toolCancel.Image")));
            this.toolCancel.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.toolCancel.Name = "toolCancel";
            this.toolCancel.Size = new System.Drawing.Size(52, 22);
            this.toolCancel.Tag = "2";
            this.toolCancel.Text = "取消";
            this.toolCancel.Click += new System.EventHandler(this.toolCancel_Click);
            // 
            // toolAdd
            // 
            this.toolAdd.Enabled = false;
            this.toolAdd.Image = ((System.Drawing.Image)(resources.GetObject("toolAdd.Image")));
            this.toolAdd.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.toolAdd.Name = "toolAdd";
            this.toolAdd.Size = new System.Drawing.Size(52, 22);
            this.toolAdd.Tag = "3";
            this.toolAdd.Text = "添加";
            this.toolAdd.Click += new System.EventHandler(this.toolAdd_Click);
            // 
            // toolAmend
            // 
            this.toolAmend.Enabled = false;
            this.toolAmend.Image = ((System.Drawing.Image)(resources.GetObject("toolAmend.Image")));
            this.toolAmend.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.toolAmend.Name = "toolAmend";
            this.toolAmend.Size = new System.Drawing.Size(52, 22);
            this.toolAmend.Tag = "4";
            this.toolAmend.Text = "修改";
            this.toolAmend.Click += new System.EventHandler(this.toolAmend_Click);
            // 
            // toolDelete
            // 
            this.toolDelete.Enabled = false;
            this.toolDelete.Image = ((System.Drawing.Image)(resources.GetObject("toolDelete.Image")));
            this.toolDelete.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.toolDelete.Name = "toolDelete";
            this.toolDelete.Size = new System.Drawing.Size(52, 22);
            this.toolDelete.Tag = "5";
            this.toolDelete.Text = "删除";
            this.toolDelete.Click += new System.EventHandler(this.toolDelete_Click);
            // 
            // toolCheck
            // 
            this.toolCheck.Enabled = false;
            this.toolCheck.Image = ((System.Drawing.Image)(resources.GetObject("toolCheck.Image")));
            this.toolCheck.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.toolCheck.Name = "toolCheck";
            this.toolCheck.Size = new System.Drawing.Size(52, 22);
            this.toolCheck.Text = "审核";
            this.toolCheck.Click += new System.EventHandler(this.toolCheck_Click);
            // 
            // toolUnCheck
            // 
            this.toolUnCheck.Enabled = false;
            this.toolUnCheck.Image = ((System.Drawing.Image)(resources.GetObject("toolUnCheck.Image")));
            this.toolUnCheck.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.toolUnCheck.Name = "toolUnCheck";
            this.toolUnCheck.Size = new System.Drawing.Size(52, 22);
            this.toolUnCheck.Text = "弃审";
            this.toolUnCheck.Click += new System.EventHandler(this.toolUnCheck_Click);
            // 
            // toolStripSeparator1
            // 
            this.toolStripSeparator1.Name = "toolStripSeparator1";
            this.toolStripSeparator1.Size = new System.Drawing.Size(6, 25);
            // 
            // labCondation
            // 
            this.labCondation.Name = "labCondation";
            this.labCondation.Size = new System.Drawing.Size(59, 22);
            this.labCondation.Text = "查询条件:";
            // 
            // cbxCondition
            // 
            this.cbxCondition.DropDownWidth = 90;
            this.cbxCondition.Name = "cbxCondition";
            this.cbxCondition.Size = new System.Drawing.Size(75, 25);
            // 
            // txtKeyWord
            // 
            this.txtKeyWord.Name = "txtKeyWord";
            this.txtKeyWord.Size = new System.Drawing.Size(80, 25);
            // 
            // toolStripSeparator2
            // 
            this.toolStripSeparator2.Name = "toolStripSeparator2";
            this.toolStripSeparator2.Size = new System.Drawing.Size(6, 25);
            // 
            // txtOK
            // 
            this.txtOK.Image = ((System.Drawing.Image)(resources.GetObject("txtOK.Image")));
            this.txtOK.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.txtOK.Name = "txtOK";
            this.txtOK.Size = new System.Drawing.Size(52, 22);
            this.txtOK.Tag = "6";
            this.txtOK.Text = "查找";
            this.txtOK.Click += new System.EventHandler(this.txtOK_Click);
            // 
            // toolExit
            // 
            this.toolExit.Image = ((System.Drawing.Image)(resources.GetObject("toolExit.Image")));
            this.toolExit.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.toolExit.Name = "toolExit";
            this.toolExit.Size = new System.Drawing.Size(52, 21);
            this.toolExit.Tag = "7";
            this.toolExit.Text = "退出";
            this.toolExit.Click += new System.EventHandler(this.toolExit_Click);
            // 
            // FormPRInStore
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(687, 416);
            this.Controls.Add(this.toolStrip1);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.groupBox2);
            this.MaximizeBox = false;
            this.Name = "FormPRInStore";
            this.Tag = "540";
            this.Text = "生产入库单";
            this.Load += new System.EventHandler(this.FormPRInStore_Load);
            this.groupBox2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgvPRInStoreInfo)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.toolStrip1.ResumeLayout(false);
            this.toolStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button btnChoice;
        public System.Windows.Forms.TextBox txtPRProduceCode;
        private System.Windows.Forms.ComboBox cbxIsFlag;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.Label label10;
        public System.Windows.Forms.TextBox txtInQuantity;
        public System.Windows.Forms.ComboBox cbxInvenCode;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.ComboBox cbxOperatorCode;
        private System.Windows.Forms.DateTimePicker dtpPRInDate;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.TextBox txtPRInCode;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ToolStrip toolStrip1;
        private System.Windows.Forms.ToolStripButton toolSave;
        private System.Windows.Forms.ToolStripButton toolCancel;
        private System.Windows.Forms.ToolStripButton toolAdd;
        private System.Windows.Forms.ToolStripButton toolAmend;
        private System.Windows.Forms.ToolStripButton toolDelete;
        private System.Windows.Forms.ToolStripButton toolCheck;
        private System.Windows.Forms.ToolStripButton toolUnCheck;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator1;
        private System.Windows.Forms.ToolStripLabel labCondation;
        private System.Windows.Forms.ToolStripComboBox cbxCondition;
        private System.Windows.Forms.ToolStripTextBox txtKeyWord;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator2;
        private System.Windows.Forms.ToolStripButton txtOK;
        private System.Windows.Forms.ToolStripButton toolExit;
        public System.Windows.Forms.TextBox txtPRQuantity;
        private System.Windows.Forms.Label label4;
        public System.Windows.Forms.DataGridView dgvPRInStoreInfo;
        private System.Windows.Forms.DataGridViewTextBoxColumn PRInCode;
        private System.Windows.Forms.DataGridViewTextBoxColumn PRInDate;
        private System.Windows.Forms.DataGridViewComboBoxColumn OperatorCode;
        private System.Windows.Forms.DataGridViewTextBoxColumn PRProduceCode;
        private System.Windows.Forms.DataGridViewComboBoxColumn StoreCode;
        private System.Windows.Forms.DataGridViewComboBoxColumn InvenCode;
        private System.Windows.Forms.DataGridViewTextBoxColumn PRQuantity;
        private System.Windows.Forms.DataGridViewTextBoxColumn InQuantity;
        private System.Windows.Forms.DataGridViewComboBoxColumn EmployeeCode;
        private System.Windows.Forms.DataGridViewComboBoxColumn IsFlag;
        private System.Windows.Forms.ComboBox cbxStoreCode;
        private System.Windows.Forms.ComboBox cbxEmployeeCode;
    }
}