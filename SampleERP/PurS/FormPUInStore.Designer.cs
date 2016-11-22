﻿namespace SampleERP.PurS
{
    partial class FormPUInStore
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FormPUInStore));
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.btnChoice = new System.Windows.Forms.Button();
            this.txtPUOrderCode = new System.Windows.Forms.TextBox();
            this.cbxIsFlag = new System.Windows.Forms.ComboBox();
            this.cbxEmployeeCode = new System.Windows.Forms.ComboBox();
            this.label12 = new System.Windows.Forms.Label();
            this.label11 = new System.Windows.Forms.Label();
            this.label10 = new System.Windows.Forms.Label();
            this.txtPUMoney = new System.Windows.Forms.TextBox();
            this.txtQuantity = new System.Windows.Forms.TextBox();
            this.txtUnitPrice = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.cbxInvenCode = new System.Windows.Forms.ComboBox();
            this.label5 = new System.Windows.Forms.Label();
            this.cbxSupplierCode = new System.Windows.Forms.ComboBox();
            this.cbxStoreCode = new System.Windows.Forms.ComboBox();
            this.label6 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.cbxOperatorCode = new System.Windows.Forms.ComboBox();
            this.dtpPUInDate = new System.Windows.Forms.DateTimePicker();
            this.label3 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.txtPUInCode = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.dgvPUInStoreInfo = new System.Windows.Forms.DataGridView();
            this.PUInCode = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.PUInDate = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.OperatorCode = new System.Windows.Forms.DataGridViewComboBoxColumn();
            this.SupplierCode = new System.Windows.Forms.DataGridViewComboBoxColumn();
            this.StoreCode = new System.Windows.Forms.DataGridViewComboBoxColumn();
            this.InvenCode = new System.Windows.Forms.DataGridViewComboBoxColumn();
            this.UnitPrice = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Quantity = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.PUMoney = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.PUOrderCode = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.EmployeeCode = new System.Windows.Forms.DataGridViewComboBoxColumn();
            this.IsFlag = new System.Windows.Forms.DataGridViewComboBoxColumn();
            this.toolStrip1 = new System.Windows.Forms.ToolStrip();
            this.toolStripSeparator1 = new System.Windows.Forms.ToolStripSeparator();
            this.labCondation = new System.Windows.Forms.ToolStripLabel();
            this.cbxCondition = new System.Windows.Forms.ToolStripComboBox();
            this.txtKeyWord = new System.Windows.Forms.ToolStripTextBox();
            this.toolStripSeparator2 = new System.Windows.Forms.ToolStripSeparator();
            this.toolSave = new System.Windows.Forms.ToolStripButton();
            this.toolCancel = new System.Windows.Forms.ToolStripButton();
            this.toolAdd = new System.Windows.Forms.ToolStripButton();
            this.toolAmend = new System.Windows.Forms.ToolStripButton();
            this.toolDelete = new System.Windows.Forms.ToolStripButton();
            this.toolCheck = new System.Windows.Forms.ToolStripButton();
            this.toolUnCheck = new System.Windows.Forms.ToolStripButton();
            this.txtOK = new System.Windows.Forms.ToolStripButton();
            this.toolExit = new System.Windows.Forms.ToolStripButton();
            this.groupBox1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvPUInStoreInfo)).BeginInit();
            this.toolStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.btnChoice);
            this.groupBox1.Controls.Add(this.txtPUOrderCode);
            this.groupBox1.Controls.Add(this.cbxIsFlag);
            this.groupBox1.Controls.Add(this.cbxEmployeeCode);
            this.groupBox1.Controls.Add(this.label12);
            this.groupBox1.Controls.Add(this.label11);
            this.groupBox1.Controls.Add(this.label10);
            this.groupBox1.Controls.Add(this.txtPUMoney);
            this.groupBox1.Controls.Add(this.txtQuantity);
            this.groupBox1.Controls.Add(this.txtUnitPrice);
            this.groupBox1.Controls.Add(this.label8);
            this.groupBox1.Controls.Add(this.cbxInvenCode);
            this.groupBox1.Controls.Add(this.label5);
            this.groupBox1.Controls.Add(this.cbxSupplierCode);
            this.groupBox1.Controls.Add(this.cbxStoreCode);
            this.groupBox1.Controls.Add(this.label6);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.cbxOperatorCode);
            this.groupBox1.Controls.Add(this.dtpPUInDate);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.label7);
            this.groupBox1.Controls.Add(this.label9);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.txtPUInCode);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Location = new System.Drawing.Point(8, 32);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(671, 160);
            this.groupBox1.TabIndex = 68;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "采购入库单信息";
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
            // txtPUOrderCode
            // 
            this.txtPUOrderCode.Location = new System.Drawing.Point(72, 54);
            this.txtPUOrderCode.MaxLength = 10;
            this.txtPUOrderCode.Name = "txtPUOrderCode";
            this.txtPUOrderCode.ReadOnly = true;
            this.txtPUOrderCode.Size = new System.Drawing.Size(126, 21);
            this.txtPUOrderCode.TabIndex = 105;
            // 
            // cbxIsFlag
            // 
            this.cbxIsFlag.Enabled = false;
            this.cbxIsFlag.FormattingEnabled = true;
            this.cbxIsFlag.Location = new System.Drawing.Point(530, 133);
            this.cbxIsFlag.Name = "cbxIsFlag";
            this.cbxIsFlag.Size = new System.Drawing.Size(126, 20);
            this.cbxIsFlag.TabIndex = 104;
            // 
            // cbxEmployeeCode
            // 
            this.cbxEmployeeCode.Enabled = false;
            this.cbxEmployeeCode.FormattingEnabled = true;
            this.cbxEmployeeCode.Location = new System.Drawing.Point(303, 133);
            this.cbxEmployeeCode.Name = "cbxEmployeeCode";
            this.cbxEmployeeCode.Size = new System.Drawing.Size(126, 20);
            this.cbxEmployeeCode.TabIndex = 103;
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Location = new System.Drawing.Point(471, 137);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(53, 12);
            this.label12.TabIndex = 101;
            this.label12.Text = "审核状态";
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Location = new System.Drawing.Point(244, 137);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(53, 12);
            this.label11.TabIndex = 100;
            this.label11.Text = "库 管 员";
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(16, 57);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(53, 12);
            this.label10.TabIndex = 99;
            this.label10.Text = "订单编号";
            // 
            // txtPUMoney
            // 
            this.txtPUMoney.Location = new System.Drawing.Point(72, 132);
            this.txtPUMoney.MaxLength = 9;
            this.txtPUMoney.Name = "txtPUMoney";
            this.txtPUMoney.ReadOnly = true;
            this.txtPUMoney.Size = new System.Drawing.Size(126, 21);
            this.txtPUMoney.TabIndex = 98;
            // 
            // txtQuantity
            // 
            this.txtQuantity.Location = new System.Drawing.Point(530, 93);
            this.txtQuantity.MaxLength = 9;
            this.txtQuantity.Name = "txtQuantity";
            this.txtQuantity.ReadOnly = true;
            this.txtQuantity.Size = new System.Drawing.Size(126, 21);
            this.txtQuantity.TabIndex = 97;
            this.txtQuantity.Text = "1";
            this.txtQuantity.TextChanged += new System.EventHandler(this.txtUnitPrice_TextChanged);
            this.txtQuantity.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtQuantity_KeyPress);
            // 
            // txtUnitPrice
            // 
            this.txtUnitPrice.Location = new System.Drawing.Point(303, 93);
            this.txtUnitPrice.MaxLength = 9;
            this.txtUnitPrice.Name = "txtUnitPrice";
            this.txtUnitPrice.ReadOnly = true;
            this.txtUnitPrice.Size = new System.Drawing.Size(126, 21);
            this.txtUnitPrice.TabIndex = 96;
            this.txtUnitPrice.TextChanged += new System.EventHandler(this.txtUnitPrice_TextChanged);
            this.txtUnitPrice.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtUnitPrice_KeyPress);
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(16, 136);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(53, 12);
            this.label8.TabIndex = 95;
            this.label8.Text = "采购金额";
            // 
            // cbxInvenCode
            // 
            this.cbxInvenCode.Enabled = false;
            this.cbxInvenCode.FormattingEnabled = true;
            this.cbxInvenCode.Location = new System.Drawing.Point(72, 93);
            this.cbxInvenCode.Name = "cbxInvenCode";
            this.cbxInvenCode.Size = new System.Drawing.Size(126, 20);
            this.cbxInvenCode.TabIndex = 94;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(16, 97);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(53, 12);
            this.label5.TabIndex = 93;
            this.label5.Text = "存货名称";
            // 
            // cbxSupplierCode
            // 
            this.cbxSupplierCode.Enabled = false;
            this.cbxSupplierCode.FormattingEnabled = true;
            this.cbxSupplierCode.Location = new System.Drawing.Point(303, 54);
            this.cbxSupplierCode.Name = "cbxSupplierCode";
            this.cbxSupplierCode.Size = new System.Drawing.Size(126, 20);
            this.cbxSupplierCode.TabIndex = 92;
            // 
            // cbxStoreCode
            // 
            this.cbxStoreCode.Enabled = false;
            this.cbxStoreCode.FormattingEnabled = true;
            this.cbxStoreCode.Location = new System.Drawing.Point(530, 54);
            this.cbxStoreCode.Name = "cbxStoreCode";
            this.cbxStoreCode.Size = new System.Drawing.Size(126, 20);
            this.cbxStoreCode.TabIndex = 91;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(471, 97);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(53, 12);
            this.label6.TabIndex = 90;
            this.label6.Text = "采购数量";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(244, 97);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(53, 12);
            this.label2.TabIndex = 89;
            this.label2.Text = "采购单价";
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
            // dtpPUInDate
            // 
            this.dtpPUInDate.Enabled = false;
            this.dtpPUInDate.Location = new System.Drawing.Point(303, 15);
            this.dtpPUInDate.MinDate = new System.DateTime(1900, 1, 1, 0, 0, 0, 0);
            this.dtpPUInDate.Name = "dtpPUInDate";
            this.dtpPUInDate.Size = new System.Drawing.Size(126, 21);
            this.dtpPUInDate.TabIndex = 87;
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
            this.label7.Location = new System.Drawing.Point(471, 57);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(53, 12);
            this.label7.TabIndex = 74;
            this.label7.Text = "订货仓库";
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
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(244, 57);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(53, 12);
            this.label4.TabIndex = 71;
            this.label4.Text = "供 应 商";
            // 
            // txtPUInCode
            // 
            this.txtPUInCode.Location = new System.Drawing.Point(72, 15);
            this.txtPUInCode.MaxLength = 10;
            this.txtPUInCode.Name = "txtPUInCode";
            this.txtPUInCode.ReadOnly = true;
            this.txtPUInCode.Size = new System.Drawing.Size(126, 21);
            this.txtPUInCode.TabIndex = 75;
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
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.dgvPUInStoreInfo);
            this.groupBox2.Location = new System.Drawing.Point(8, 195);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(671, 217);
            this.groupBox2.TabIndex = 67;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "采购入库单记录";
            // 
            // dgvPUInStoreInfo
            // 
            this.dgvPUInStoreInfo.AllowUserToAddRows = false;
            this.dgvPUInStoreInfo.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvPUInStoreInfo.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.PUInCode,
            this.PUInDate,
            this.OperatorCode,
            this.SupplierCode,
            this.StoreCode,
            this.InvenCode,
            this.UnitPrice,
            this.Quantity,
            this.PUMoney,
            this.PUOrderCode,
            this.EmployeeCode,
            this.IsFlag});
            this.dgvPUInStoreInfo.Location = new System.Drawing.Point(8, 15);
            this.dgvPUInStoreInfo.Name = "dgvPUInStoreInfo";
            this.dgvPUInStoreInfo.RowTemplate.Height = 23;
            this.dgvPUInStoreInfo.Size = new System.Drawing.Size(655, 194);
            this.dgvPUInStoreInfo.TabIndex = 0;
            this.dgvPUInStoreInfo.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvPUInStoreInfo_CellClick);
            this.dgvPUInStoreInfo.DataError += new System.Windows.Forms.DataGridViewDataErrorEventHandler(this.dgvPUInStoreInfo_DataError);
            // 
            // PUInCode
            // 
            this.PUInCode.DataPropertyName = "PUInCode";
            this.PUInCode.HeaderText = "单据编号";
            this.PUInCode.Name = "PUInCode";
            this.PUInCode.ReadOnly = true;
            // 
            // PUInDate
            // 
            this.PUInDate.DataPropertyName = "PUInDate";
            this.PUInDate.HeaderText = "单据日期";
            this.PUInDate.Name = "PUInDate";
            this.PUInDate.ReadOnly = true;
            // 
            // OperatorCode
            // 
            this.OperatorCode.DataPropertyName = "OperatorCode";
            this.OperatorCode.HeaderText = "操作员";
            this.OperatorCode.Name = "OperatorCode";
            this.OperatorCode.ReadOnly = true;
            // 
            // SupplierCode
            // 
            this.SupplierCode.DataPropertyName = "SupplierCode";
            this.SupplierCode.HeaderText = "供 应 商";
            this.SupplierCode.Name = "SupplierCode";
            this.SupplierCode.ReadOnly = true;
            // 
            // StoreCode
            // 
            this.StoreCode.DataPropertyName = "StoreCode";
            this.StoreCode.HeaderText = "订货仓库";
            this.StoreCode.Name = "StoreCode";
            this.StoreCode.ReadOnly = true;
            // 
            // InvenCode
            // 
            this.InvenCode.DataPropertyName = "InvenCode";
            this.InvenCode.HeaderText = "存货名称";
            this.InvenCode.Name = "InvenCode";
            this.InvenCode.ReadOnly = true;
            // 
            // UnitPrice
            // 
            this.UnitPrice.DataPropertyName = "UnitPrice";
            this.UnitPrice.HeaderText = "采购单价";
            this.UnitPrice.Name = "UnitPrice";
            this.UnitPrice.ReadOnly = true;
            // 
            // Quantity
            // 
            this.Quantity.DataPropertyName = "Quantity";
            this.Quantity.HeaderText = "采购数量";
            this.Quantity.Name = "Quantity";
            this.Quantity.ReadOnly = true;
            // 
            // PUMoney
            // 
            this.PUMoney.DataPropertyName = "PUMoney";
            this.PUMoney.HeaderText = "采购金额";
            this.PUMoney.Name = "PUMoney";
            this.PUMoney.ReadOnly = true;
            // 
            // PUOrderCode
            // 
            this.PUOrderCode.DataPropertyName = "PUOrderCode";
            this.PUOrderCode.HeaderText = "订单编号";
            this.PUOrderCode.Name = "PUOrderCode";
            this.PUOrderCode.ReadOnly = true;
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
            this.toolStrip1.TabIndex = 66;
            this.toolStrip1.Text = "toolStrip1";
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
            // FormPUInStore
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(687, 416);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.toolStrip1);
            this.MaximizeBox = false;
            this.Name = "FormPUInStore";
            this.Tag = "220";
            this.Text = "采购入库单";
            this.Load += new System.EventHandler(this.FormPUInStore_Load);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgvPUInStoreInfo)).EndInit();
            this.toolStrip1.ResumeLayout(false);
            this.toolStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button btnChoice;
        public System.Windows.Forms.TextBox txtPUOrderCode;
        private System.Windows.Forms.ComboBox cbxIsFlag;
        private System.Windows.Forms.ComboBox cbxEmployeeCode;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.Label label10;
        public System.Windows.Forms.TextBox txtPUMoney;
        public System.Windows.Forms.TextBox txtQuantity;
        public System.Windows.Forms.TextBox txtUnitPrice;
        private System.Windows.Forms.Label label8;
        public System.Windows.Forms.ComboBox cbxInvenCode;
        private System.Windows.Forms.Label label5;
        public System.Windows.Forms.ComboBox cbxSupplierCode;
        public System.Windows.Forms.ComboBox cbxStoreCode;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.ComboBox cbxOperatorCode;
        private System.Windows.Forms.DateTimePicker dtpPUInDate;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txtPUInCode;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.DataGridView dgvPUInStoreInfo;
        private System.Windows.Forms.DataGridViewTextBoxColumn PUInCode;
        private System.Windows.Forms.DataGridViewTextBoxColumn PUInDate;
        private System.Windows.Forms.DataGridViewComboBoxColumn OperatorCode;
        private System.Windows.Forms.DataGridViewComboBoxColumn SupplierCode;
        private System.Windows.Forms.DataGridViewComboBoxColumn StoreCode;
        private System.Windows.Forms.DataGridViewComboBoxColumn InvenCode;
        private System.Windows.Forms.DataGridViewTextBoxColumn UnitPrice;
        private System.Windows.Forms.DataGridViewTextBoxColumn Quantity;
        private System.Windows.Forms.DataGridViewTextBoxColumn PUMoney;
        private System.Windows.Forms.DataGridViewTextBoxColumn PUOrderCode;
        private System.Windows.Forms.DataGridViewComboBoxColumn EmployeeCode;
        private System.Windows.Forms.DataGridViewComboBoxColumn IsFlag;
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
    }
}