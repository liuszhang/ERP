using System;
using System.Windows.Forms;
using SampleERP.ComClass;
using SampleERP.DataClass;
using SampleERP.ReportS.RPT;
using System.Data.SqlClient;
using System.Data;

namespace SampleERP.ReportS.FORM
{
    public partial class FormPurReport : Form
    {
        private readonly CommonUse commUse = new CommonUse();
        private DataBase db = new DataBase();

        public FormPurReport()
        {
            InitializeComponent();
        }

        private void FormPurReport_Load(object sender, EventArgs e)
        {
            //权限
            commUse.CortrolButtonEnabled(btnQuery, this);
            //ComboBox绑定到数据源
            commUse.BindComboBox(cbxSupplierCode, "SupplierCode", "SupplierName",
                                 "select SupplierCode,SupplierName from BSSupplier", "BSSupplier");
            commUse.BindComboBox(cbxInvenCode, "InvenCode", "InvenName", "select InvenCode,InvenName from BSInven",
                                 "BSInven");
            cbxSupplierCode.SelectedIndex = -1;
            cbxInvenCode.SelectedIndex = -1;
        }

        private void btnQuery_Click(object sender, EventArgs e)
        {
            string strCondition = null;
            //MessageBox.Show("34");
            if (dtpStartDate.Value.Date > dtpEndDate.Value.Date)
            {
                MessageBox.Show("开始日期不许大于结束日期", "软件提示");
                return;
            }
            //MessageBox.Show("12");
            strCondition = "Select * From PUInStore ";
            strCondition += " left join BSSupplier on PUInStore.SupplierCode=BSSupplier.SupplierCode ";
            strCondition += " left join BSInven on PUInStore.InvenCode=BSInven.InvenCode  Where IsFlag = '1' ";

            //起始日期
            if (dtpStartDate.ShowCheckBox)
            {
                if (dtpStartDate.Checked)
                {
                    strCondition += " and PUInDate >= '" + dtpStartDate.Value.ToString("yyyy-MM-dd") + "' ";
                }
            }

            //截止日期
            if (dtpEndDate.ShowCheckBox)
            {
                if (dtpEndDate.Checked)
                {
                    strCondition += " and PUInDate <= '" + dtpEndDate.Value.ToString("yyyy-MM-dd") + "' ";
                }
            }

            //供应商
            if (cbxSupplierCode.SelectedValue != null)
            {
                strCondition += " and SupplierName = '" + cbxSupplierCode.Text + "' ";
            }

            //原材料
            if (cbxInvenCode.SelectedValue != null)
            {
                strCondition += " and InvenName = '" + cbxInvenCode.Text + "' ";
            }
            
            SqlCommand cmd = new SqlCommand();
            DataBase db = new DataBase();
            DataSet ds = db.GetDataSet(strCondition, "PUInStore");            
            DevPurReport xr = new DevPurReport(ds);
            devPurReport.DocumentSource =xr;
            xr.CreateDocument();
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            Close();
        }

    }
}