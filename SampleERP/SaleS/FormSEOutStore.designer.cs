﻿namespace SampleERP.SaleS
{
    partial class FormSEOutStore
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FormSEOutStore));
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
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.dgvSEOutStoreInfo = new System.Windows.Forms.DataGridView();
            this.SEOutCode = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.SEOutDate = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.OperatorCode = new System.Windows.Forms.DataGridViewComboBoxColumn();
            this.SEOrderCode = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.CustomerCode = new System.Windows.Forms.DataGridViewComboBoxColumn();
            this.StoreCode = new System.Windows.Forms.DataGridViewComboBoxColumn();
            this.InvenCode = new System.Windows.Forms.DataGridViewComboBoxColumn();
            this.UnitPrice = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.SellPrice = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Quantity = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.SEMoney = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.EmployeeCode = new System.Windows.Forms.DataGridViewComboBoxColumn();
            this.IsFlag = new System.Windows.Forms.DataGridViewComboBoxColumn();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.btnChoice = new System.Windows.Forms.Button();
            this.txtSEOrderCode = new System.Windows.Forms.TextBox();
            this.cbxIsFlag = new System.Windows.Forms.ComboBox();
            this.cbxEmployeeCode = new System.Windows.Forms.ComboBox();
            this.label12 = new System.Windows.Forms.Label();
            this.label11 = new System.Windows.Forms.Label();
            this.label10 = new System.Windows.Forms.Label();
            this.txtSEMoney = new System.Windows.Forms.TextBox();
            this.txtQuantity = new System.Windows.Forms.TextBox();
            this.txtSellPrice = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.cbxInvenCode = new System.Windows.Forms.ComboBox();
            this.label5 = new System.Windows.Forms.Label();
            this.cbxCustomerCode = new System.Windows.Forms.ComboBox();
            this.cbxStoreCode = new System.Windows.Forms.ComboBox();
            this.label6 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.cbxOperatorCode = new System.Windows.Forms.ComboBox();
            this.dtpSEOutDate = new System.Windows.Forms.DateTimePicker();
            this.label3 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.txtSEOutCode = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.toolStrip1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvSEOutStoreInfo)).BeginInit();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
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
            this.toolStrip1.TabIndex = 9;
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
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.dgvSEOutStoreInfo);
            this.groupBox2.Location = new System.Drawing.Point(8, 190);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(671, 217);
            this.groupBox2.TabIndex = 11;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "销售出库单记录";
            // 
            // dgvSEOutStoreInfo
            // 
            this.dgvSEOutStoreInfo.AllowUserToAddRows = false;
            this.dgvSEOutStoreInfo.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvSEOutStoreInfo.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.SEOutCode,
            this.SEOutDate,
            this.OperatorCode,
            this.SEOrderCode,
            this.CustomerCode,
            this.StoreCode,
            this.InvenCode,
            this.UnitPrice,
            this.SellPrice,
            this.Quantity,
            this.SEMoney,
            this.EmployeeCode,
            this.IsFlag});
            this.dgvSEOutStoreInfo.Location = new System.Drawing.Point(8, 15);
            this.dgvSEOutStoreInfo.Name = "dgvSEOutStoreInfo";
            this.dgvSEOutStoreInfo.RowTemplate.Height = 23;
            this.dgvSEOutStoreInfo.Size = new System.Drawing.Size(655, 194);
            this.dgvSEOutStoreInfo.TabIndex = 0;
            this.dgvSEOutStoreInfo.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvSEOutStoreInfo_CellClick);
            this.dgvSEOutStoreInfo.DataError += new System.Windows.Forms.DataGridViewDataErrorEventHandler(this.dgvSEOutStoreInfo_DataError);
            // 
            // SEOutCode
            // 
            this.SEOutCode.DataPropertyName = "SEOutCode";
            this.SEOutCode.HeaderText = "单据编号";
            this.SEOutCode.Name = "SEOutCode";
            this.SEOutCode.ReadOnly = true;
            // 
            // SEOutDate
            // 
            this.SEOutDate.DataPropertyName = "SEOutDate";
            this.SEOutDate.HeaderText = "单据日期";
            this.SEOutDate.Name = "SEOutDate";
            this.SEOutDate.ReadOnly = true;
            // 
            // OperatorCode
            // 
            this.OperatorCode.DataPropertyName = "OperatorCode";
            this.OperatorCode.HeaderText = "操作员";
            this.OperatorCode.Name = "OperatorCode";
            this.OperatorCode.ReadOnly = true;
            // 
            // SEOrderCode
            // 
            this.SEOrderCode.DataPropertyName = "SEOrderCode";
            this.SEOrderCode.HeaderText = "订单编号";
            this.SEOrderCode.Name = "SEOrderCode";
            this.SEOrderCode.ReadOnly = true;
            // 
            // CustomerCode
            // 
            this.CustomerCode.DataPropertyName = "CustomerCode";
            this.CustomerCode.HeaderText = "客    户";
            this.CustomerCode.Name = "CustomerCode";
            this.CustomerCode.ReadOnly = true;
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
            this.UnitPrice.HeaderText = "出库时的即时成本价";
            this.UnitPrice.Name = "UnitPrice";
            this.UnitPrice.ReadOnly = true;
            this.UnitPrice.Visible = false;
            // 
            // SellPrice
            // 
            this.SellPrice.DataPropertyName = "SellPrice";
            this.SellPrice.HeaderText = "销售单价";
            this.SellPrice.Name = "SellPrice";
            this.SellPrice.ReadOnly = true;
            // 
            // Quantity
            // 
            this.Quantity.DataPropertyName = "Quantity";
            this.Quantity.HeaderText = "销售数量";
            this.Quantity.Name = "Quantity";
            this.Quantity.ReadOnly = true;
            // 
            // SEMoney
            // 
            this.SEMoney.DataPropertyName = "SEMoney";
            this.SEMoney.HeaderText = "销售金额";
            this.SEMoney.Name = "SEMoney";
            this.SEMoney.ReadOnly = true;
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
            this.groupBox1.Controls.Add(this.btnChoice);
            this.groupBox1.Controls.Add(this.txtSEOrderCode);
            this.groupBox1.Controls.Add(this.cbxIsFlag);
            this.groupBox1.Controls.Add(this.cbxEmployeeCode);
            this.groupBox1.Controls.Add(this.label12);
            this.groupBox1.Controls.Add(this.label11);
            this.groupBox1.Controls.Add(this.label10);
            this.groupBox1.Controls.Add(this.txtSEMoney);
            this.groupBox1.Controls.Add(this.txtQuantity);
            this.groupBox1.Controls.Add(this.txtSellPrice);
            this.groupBox1.Controls.Add(this.label8);
            this.groupBox1.Controls.Add(this.cbxInvenCode);
            this.groupBox1.Controls.Add(this.label5);
            this.groupBox1.Controls.Add(this.cbxCustomerCode);
            this.groupBox1.Controls.Add(this.cbxStoreCode);
            this.groupBox1.Controls.Add(this.label6);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.cbxOperatorCode);
            this.groupBox1.Controls.Add(this.dtpSEOutDate);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.label7);
            this.groupBox1.Controls.Add(this.label9);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.txtSEOutCode);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Location = new System.Drawing.Point(8, 27);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(671, 160);
            this.groupBox1.TabIndex = 66;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "销售出库单信息";
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
            // txtSEOrderCode
            // 
            this.txtSEOrderCode.Location = new System.Drawing.Point(72, 54);
            this.txtSEOrderCode.MaxLength = 10;
            this.txtSEOrderCode.Name = "txtSEOrderCode";
            this.txtSEOrderCode.ReadOnly = true;
            this.txtSEOrderCode.Size = new System.Drawing.Size(126, 21);
            this.txtSEOrderCode.TabIndex = 105;
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
            // txtSEMoney
            // 
            this.txtSEMoney.Location = new System.Drawing.Point(72, 132);
            this.txtSEMoney.MaxLength = 9;
            this.txtSEMoney.Name = "txtSEMoney";
            this.txtSEMoney.ReadOnly = true;
            this.txtSEMoney.Size = new System.Drawing.Size(126, 21);
            this.txtSEMoney.TabIndex = 98;
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
            this.txtQuantity.TextChanged += new System.EventHandler(this.txtSellPrice_TextChanged);
            this.txtQuantity.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtQuantity_KeyPress);
            // 
            // txtSellPrice
            // 
            this.txtSellPrice.Location = new System.Drawing.Point(303, 93);
            this.txtSellPrice.MaxLength = 9;
            this.txtSellPrice.Name = "txtSellPrice";
            this.txtSellPrice.ReadOnly = true;
            this.txtSellPrice.Size = new System.Drawing.Size(126, 21);
            this.txtSellPrice.TabIndex = 96;
            this.txtSellPrice.TextChanged += new System.EventHandler(this.txtSellPrice_TextChanged);
            this.txtSellPrice.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtSellPrice_KeyPress);
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(16, 136);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(53, 12);
            this.label8.TabIndex = 95;
            this.label8.Text = "销售金额";
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
            // cbxCustomerCode
            // 
            this.cbxCustomerCode.Enabled = false;
            this.cbxCustomerCode.FormattingEnabled = true;
            this.cbxCustomerCode.Location = new System.Drawing.Point(303, 54);
            this.cbxCustomerCode.Name = "cbxCustomerCode";
            this.cbxCustomerCode.Size = new System.Drawing.Size(126, 20);
            this.cbxCustomerCode.TabIndex = 92;
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
            this.label6.Text = "销售数量";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(244, 97);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(53, 12);
            this.label2.TabIndex = 89;
            this.label2.Text = "销售单价";
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
            // dtpSEOutDate
            // 
            this.dtpSEOutDate.Enabled = false;
            this.dtpSEOutDate.Location = new System.Drawing.Point(303, 15);
            this.dtpSEOutDate.MinDate = new System.DateTime(1900, 1, 1, 0, 0, 0, 0);
            this.dtpSEOutDate.Name = "dtpSEOutDate";
            this.dtpSEOutDate.Size = new System.Drawing.Size(126, 21);
            this.dtpSEOutDate.TabIndex = 87;
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
            this.label4.Text = "客    户";
            // 
            // txtSEOutCode
            // 
            this.txtSEOutCode.Location = new System.Drawing.Point(72, 15);
            this.txtSEOutCode.MaxLength = 10;
            this.txtSEOutCode.Name = "txtSEOutCode";
            this.txtSEOutCode.ReadOnly = true;
            this.txtSEOutCode.Size = new System.Drawing.Size(126, 21);
            this.txtSEOutCode.TabIndex = 75;
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
            // FormSEOutStore
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(687, 416);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.toolStrip1);
            this.MaximizeBox = false;
            this.Name = "FormSEOutStore";
            this.Tag = "320";
            this.Text = "销售出库单";
            this.Load += new System.EventHandler(this.FormSEOutStore_Load);
            this.toolStrip1.ResumeLayout(false);
            this.toolStrip1.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgvSEOutStoreInfo)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

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
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.DataGridView dgvSEOutStoreInfo;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button btnChoice;
        public System.Windows.Forms.TextBox txtSEOrderCode;
        private System.Windows.Forms.ComboBox cbxIsFlag;
        public System.Windows.Forms.ComboBox cbxEmployeeCode;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.Label label10;
        public System.Windows.Forms.TextBox txtSEMoney;
        public System.Windows.Forms.TextBox txtQuantity;
        public System.Windows.Forms.TextBox txtSellPrice;
        private System.Windows.Forms.Label label8;
        public System.Windows.Forms.ComboBox cbxInvenCode;
        private System.Windows.Forms.Label label5;
        public System.Windows.Forms.ComboBox cbxCustomerCode;
        public System.Windows.Forms.ComboBox cbxStoreCode;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.ComboBox cbxOperatorCode;
        private System.Windows.Forms.DateTimePicker dtpSEOutDate;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txtSEOutCode;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.DataGridViewTextBoxColumn SEOutCode;
        private System.Windows.Forms.DataGridViewTextBoxColumn SEOutDate;
        private System.Windows.Forms.DataGridViewComboBoxColumn OperatorCode;
        private System.Windows.Forms.DataGridViewTextBoxColumn SEOrderCode;
        private System.Windows.Forms.DataGridViewComboBoxColumn CustomerCode;
        private System.Windows.Forms.DataGridViewComboBoxColumn StoreCode;
        private System.Windows.Forms.DataGridViewComboBoxColumn InvenCode;
        private System.Windows.Forms.DataGridViewTextBoxColumn UnitPrice;
        private System.Windows.Forms.DataGridViewTextBoxColumn SellPrice;
        private System.Windows.Forms.DataGridViewTextBoxColumn Quantity;
        private System.Windows.Forms.DataGridViewTextBoxColumn SEMoney;
        private System.Windows.Forms.DataGridViewComboBoxColumn EmployeeCode;
        private System.Windows.Forms.DataGridViewComboBoxColumn IsFlag;
    }
}