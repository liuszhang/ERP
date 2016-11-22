using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using System.Data;
using DevExpress.XtraReports.UI;
using SampleERP.DataClass;

namespace SampleERP.ReportS.RPT
{
    public partial class DevPurCollectReport : DevExpress.XtraReports.UI.XtraReport
    {
        public DevPurCollectReport()
        {
            InitializeComponent(); 
        }
        public DevPurCollectReport(DataSet ds)
        {
            InitializeComponent();
            //this.SetDataSource(ds);
            this.DataSource = ds;
            this.InvenCode.DataBindings.Add("Text", ds, "PUInCode");
            this.InvenName.DataBindings.Add("Text", ds, "InvenName");
            this.SpecsModel.DataBindings.Add("Text", ds, "SpecsModel");
            this.MeaUnit.DataBindings.Add("Text", ds, "MeaUnit");
            this.Quantity.DataBindings.Add("Text", ds, "Quantity");
            this.PUMoney.DataBindings.Add("Text", ds, "PUMoney");
        }

        private void xrTableCell6_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //xrTableCell6.Text = SummaryRunning.Group;
        }
        public DevPurCollectReport(DataTable dt)
        {
            InitializeComponent();
            this.SetDataSource(dt.DefaultView);//.DataSource = dt.DefaultView;
            

            ////this.PUInCode.DataBindings.Clear();
            //this.InvenCode.DataBindings.Add("Text", dt, "PUInCode");
            ////this.PUInDate.DataBindings.Add("Text", dt, "PUInDate");
            //this.InvenName.DataBindings.Add("Text", dt, "SupplierName");
            //this.SpecsModel.DataBindings.Add("Text", dt, "InvenName");
            //this.MeaUnit.DataBindings.Add("Text", dt, "Quantity");
            //this.Quantity.DataBindings.Add("Text", dt, "UnitPrice");
            //this.PUMoney.DataBindings.Add("Text", dt, "PUMoney");

        }

    }
}
