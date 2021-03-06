﻿using System;
using System.Windows.Forms;
using SampleERP.ComClass;
using SampleERP.DataClass;
using System.Data.SqlClient;
using SampleERP.ReportS.RPT;
using System.Data;

namespace SampleERP.ReportS.FORM
{
    public partial class FormSelReport : Form
    {
        
        private readonly CommonUse commUse = new CommonUse();
        private DataBase db = new DataBase();

        public FormSelReport()
        {
            InitializeComponent();
        }

        private void FormSelReport_Load(object sender, EventArgs e)
        {
            //权限
            commUse.CortrolButtonEnabled(btnQuery, this);
            //ComboBox绑定到数据源
            commUse.BindComboBox(cbxCustomerCode, "CustomerCode", "CustomerName",
                                 "select CustomerCode,CustomerName from BSCustomer", "BSCustomer");
            commUse.BindComboBox(cbxInvenCode, "InvenCode", "InvenName", "select InvenCode,InvenName from BSInven",
                                 "BSInven");
            //
            cbxCustomerCode.SelectedIndex = -1;
            cbxInvenCode.SelectedIndex = -1;
            //this.reportViewer1.RefreshReport();
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void btnQuery_Click(object sender, EventArgs e)
        {
            string strCondition = null;

            if (dtpStartDate.Value.Date > dtpEndDate.Value.Date)
            {
                MessageBox.Show("开始日期不许大于结束日期", "软件提示");
                return;
            }

            strCondition = "Select * From SEOutStore ";
            strCondition += " left join BSCustomer on SEOutStore.CustomerCode=BSCustomer.CustomerCode ";
            strCondition += " left join BSInven on SEOutStore.InvenCode=BSInven.InvenCode  Where IsFlag = '1' ";

            //起始日期
            if (dtpStartDate.ShowCheckBox)
            {
                if (dtpStartDate.Checked)
                {
                    strCondition += " and SEOutDate >= '" + dtpStartDate.Value.ToString("yyyy-MM-dd") + "' ";
                }
            }

            //截止日期
            if (dtpEndDate.ShowCheckBox)
            {
                if (dtpEndDate.Checked)
                {
                    strCondition += " and SEOutDate <= '" + dtpEndDate.Value.ToString("yyyy-MM-dd") + "' ";
                }
            }

            //客户
            if (cbxCustomerCode.SelectedValue != null)
            {
                strCondition += " and CustomerName = '" + cbxCustomerCode.Text + "' ";
            }

            //产品
            if (cbxInvenCode.SelectedValue != null)
            {
                strCondition += " and InvenName = '" + cbxInvenCode.Text + "' ";
            }

            //crySelReport.ReportSource = commUse.CrystalReports("CrySelReport.rpt", strCondition, "SEOutStore");
            SqlCommand cmd = new SqlCommand();
            DataBase db = new DataBase();
            DataSet ds = db.GetDataSet(strCondition, "SEOutStore");
            DevSelReport xr = new DevSelReport(ds);
            devSelReport.DocumentSource = xr;
            xr.CreateDocument();
        }
    }
}