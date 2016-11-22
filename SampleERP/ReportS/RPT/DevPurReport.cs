using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using System.Data;
using DevExpress.XtraReports.UI;
using SampleERP.DataClass;

namespace SampleERP.ReportS.RPT
{
    public partial class DevPurReport : DevExpress.XtraReports.UI.XtraReport
    {
        public DevPurReport()
        {
            InitializeComponent();            

        }
        public DevPurReport(DataSet ds)
        {
            InitializeComponent();
            this.DataSource = ds;
            this.PUInCode.DataBindings.Clear();
            this.PUInCode.DataBindings.Add("Text", ds, "PUInCode");
            this.PUInDate.DataBindings.Add("Text", ds, "PUInDate");
            this.BSSupplier.DataBindings.Add("Text", ds, "SupplierName");
            this.BSInven.DataBindings.Add("Text", ds, "InvenName");
            this.Quantity.DataBindings.Add("Text", ds, "Quantity");
            this.UnitPrice.DataBindings.Add("Text", ds, "UnitPrice");
            this.PUMoney.DataBindings.Add("Text", ds, "PUMoney");
            //this.BSSupplier.DataBindings.Add("Text", null, "BSSupplier.SupplierName");
            //this.BSInven.DataBindings.Add("Text", null, "BSInven.InvenName");

        }
        
    }
}
