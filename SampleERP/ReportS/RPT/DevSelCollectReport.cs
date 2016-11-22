using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using System.Data;
using DevExpress.XtraReports.UI;
using SampleERP.DataClass;

namespace SampleERP.ReportS.RPT
{
    public partial class DevSelCollectReport : DevExpress.XtraReports.UI.XtraReport
    {
        public DevSelCollectReport()
        {
            InitializeComponent();            

        }
        public DevSelCollectReport(DataSet ds)
        {
            InitializeComponent();
            this.DataSource = ds;
            //this.SEOutCode.DataBindings.Clear();
            //this.SEOutCode.DataBindings.Add("Text", ds, "PUInCode");
            //this.SEOutDate.DataBindings.Add("Text", ds, "PUInDate");
            //this.CustomerName.DataBindings.Add("Text", ds, "SupplierName");
            //this.BSInven.DataBindings.Add("Text", ds, "InvenName");
            //this.Quantity.DataBindings.Add("Text", ds, "Quantity");
            //this.SellPrice.DataBindings.Add("Text", ds, "UnitPrice");
            //this.SEMoney.DataBindings.Add("Text", ds, "PUMoney");
            //this.BSSupplier.DataBindings.Add("Text", null, "BSSupplier.SupplierName");
            //this.BSInven.DataBindings.Add("Text", null, "BSInven.InvenName");

        }
        
    }
}
