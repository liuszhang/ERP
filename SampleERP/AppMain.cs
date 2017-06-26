using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using SampleERP.BasicS;
using SampleERP.PurS;
using SampleERP.SaleS;
using SampleERP.StoreM;
using SampleERP.ProductM;
using SampleERP.CustomerS;
using SampleERP.FinaS;
using SampleERP.SystemM;
using SampleERP.ReportS.FORM;

namespace SampleERP
{
    public partial class AppMain : Form
    {
        public AppMain()
        {
            InitializeComponent();
            this.ControlBox = false;
        }

        private void tileControl1_Click(object sender, EventArgs e)
        {

        }

        private void tileItem2_ItemClick(object sender, DevExpress.XtraEditors.TileItemEventArgs e)
        {//113
            FormBSCostType costType = new FormBSCostType();
            //costType.MdiParent = form;
            costType.StartPosition = FormStartPosition.CenterScreen;
            //costType.Tag = menuItem.Tag.ToString();
            costType.Show();            
        }

        private void windowsUIButtonPanel1_ButtonClick(object sender, DevExpress.XtraBars.Docking2010.ButtonEventArgs e)
        {
            if(e.Button== windowsUIButtonPanel1.Buttons[0])
            {
                this.Close();
                new AppMain().Show();
            }
        }

        private void AppMain_Load(object sender, EventArgs e)
        {

        }

        private void barButtonItem1_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Application.Exit();
        }

        private void barButtonItem3_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (MessageBox.Show("确定要退出吗？", "软件提示", MessageBoxButtons.YesNo, MessageBoxIcon.Information) ==
                DialogResult.Yes)
            {
                Application.Exit();
            }
            else
            {
                //e.Cancel = true;
            }
            //Application.Exit();
        }

        private void barButtonItem2_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            barNowTime.Caption = "当前时间：" + System.DateTime.Now.ToString();
        }

        private void tileItem1_ItemClick(object sender, DevExpress.XtraEditors.TileItemEventArgs e)
        {//111
            FormBSInvenType invenType = new FormBSInvenType();
            //invenType.MdiParent = form;
            invenType.StartPosition = FormStartPosition.CenterScreen;
            //invenType.Tag = menuItem.Tag.ToString();
            invenType.Show();
        }

        private void tileItem9_ItemClick(object sender, DevExpress.XtraEditors.TileItemEventArgs e)
        {//112
            FormBSDepartment department = new FormBSDepartment();
            //department.MdiParent = form;
            department.StartPosition = FormStartPosition.CenterScreen;
            //department.Tag = menuItem.Tag.ToString();
            department.Show();
        }

        private void tileItem10_ItemClick(object sender, DevExpress.XtraEditors.TileItemEventArgs e)
        {//121
            FormBSInven inven = new FormBSInven();
            //inven.MdiParent = form;
            inven.StartPosition = FormStartPosition.CenterScreen;
            //inven.Tag = menuItem.Tag.ToString();
            inven.Show();
        }

        private void tileItem8_ItemClick(object sender, DevExpress.XtraEditors.TileItemEventArgs e)
        {//122
            FormBSSupplier supplier = new FormBSSupplier();
            //supplier.MdiParent = form;
            supplier.StartPosition = FormStartPosition.CenterScreen;
            //supplier.Tag = menuItem.Tag.ToString();
            supplier.Show();
        }

        private void barButtonItem4_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.WindowState = FormWindowState.Minimized;
        }

        private void tileItem44_ItemClick(object sender, DevExpress.XtraEditors.TileItemEventArgs e)
        {//870
            FormStockWarnReport formStockWarnReport = new FormStockWarnReport();
            formStockWarnReport.StartPosition = FormStartPosition.CenterScreen;
            formStockWarnReport.Show();
        }

        private void tileItem12_ItemClick(object sender, DevExpress.XtraEditors.TileItemEventArgs e)
        {//130
            FormBSAccount account = new FormBSAccount();
            account.StartPosition = FormStartPosition.CenterScreen;
            account.Show();
        }

        private void tileItem5_ItemClick(object sender, DevExpress.XtraEditors.TileItemEventArgs e)
        {//123
            FormBSCustomer customer = new FormBSCustomer();
            //customer.MdiParent = form;
            customer.StartPosition = FormStartPosition.CenterScreen;
            //customer.Tag = menuItem.Tag.ToString();
            customer.Show();
        }

        private void tileItem7_ItemClick(object sender, DevExpress.XtraEditors.TileItemEventArgs e)
        {//124
            FormBSCost cost = new FormBSCost();
            cost.StartPosition = FormStartPosition.CenterScreen;
            cost.Show();
        }

        private void tileItem6_ItemClick(object sender, DevExpress.XtraEditors.TileItemEventArgs e)
        {//125
            FormBSStore store = new FormBSStore();
            store.StartPosition = FormStartPosition.CenterScreen;
            store.Show();
        }

        private void tileItem4_ItemClick(object sender, DevExpress.XtraEditors.TileItemEventArgs e)
        {//126
            FormBSEmployee employee = new FormBSEmployee();
            employee.StartPosition = FormStartPosition.CenterScreen;
            employee.Show();
        }

        private void tileItem11_ItemClick(object sender, DevExpress.XtraEditors.TileItemEventArgs e)
        {//140
            FormBSBom bom = new FormBSBom();
            bom.StartPosition = FormStartPosition.CenterScreen;
            bom.Show();
        }

        private void tileItem13_ItemClick(object sender, DevExpress.XtraEditors.TileItemEventArgs e)
        {//150
            FormInitStock initStock = new FormInitStock();
            initStock.StartPosition = FormStartPosition.CenterScreen;
            initStock.Show();
        }

        private void tileItem3_ItemClick(object sender, DevExpress.XtraEditors.TileItemEventArgs e)
        {//210
            FormPUOrder puOrder = new FormPUOrder();
            puOrder.StartPosition = FormStartPosition.CenterScreen;
            puOrder.Show();
        }

        private void tileItem14_ItemClick(object sender, DevExpress.XtraEditors.TileItemEventArgs e)
        {//220
            FormPUInStore puInStore = new FormPUInStore();
            puInStore.StartPosition = FormStartPosition.CenterScreen;
            puInStore.Show();
        }

        private void tileItem15_ItemClick(object sender, DevExpress.XtraEditors.TileItemEventArgs e)
        {//230
            FormPUPay formPUPay = new FormPUPay();
            formPUPay.StartPosition = FormStartPosition.CenterScreen;
            formPUPay.Show();
        }

        private void tileItem16_ItemClick(object sender, DevExpress.XtraEditors.TileItemEventArgs e)
        {//310
            FormSEOrder formSEOrder = new FormSEOrder();
            formSEOrder.StartPosition = FormStartPosition.CenterScreen;
            formSEOrder.Show();
        }

        private void tileItem17_ItemClick(object sender, DevExpress.XtraEditors.TileItemEventArgs e)
        {//320
            FormSEOutStore formSEOutStore = new FormSEOutStore();
            formSEOutStore.StartPosition = FormStartPosition.CenterScreen;
            formSEOutStore.Show();
        }

        private void tileItem18_ItemClick(object sender, DevExpress.XtraEditors.TileItemEventArgs e)
        {//330
            FormSEGather formSEGather = new FormSEGather();
            formSEGather.StartPosition = FormStartPosition.CenterScreen;
            formSEGather.Show();
        }

        private void tileItem19_ItemClick(object sender, DevExpress.XtraEditors.TileItemEventArgs e)
        {//410
            FormSTGetMaterial formSTGetMaterial = new FormSTGetMaterial();
            formSTGetMaterial.StartPosition = FormStartPosition.CenterScreen;
            formSTGetMaterial.Show();
        }

        private void tileItem20_ItemClick(object sender, DevExpress.XtraEditors.TileItemEventArgs e)
        {//420
            FormSTReturnMaterial formSTReturnMaterial = new FormSTReturnMaterial();
            formSTReturnMaterial.StartPosition = FormStartPosition.CenterScreen;
            formSTReturnMaterial.Show();
        }

        private void tileItem21_ItemClick(object sender, DevExpress.XtraEditors.TileItemEventArgs e)
        {//430
            FormSTLoss formSTLoss = new FormSTLoss();
            formSTLoss.StartPosition = FormStartPosition.CenterScreen;
            formSTLoss.Show();
        }

        private void tileItem23_ItemClick(object sender, DevExpress.XtraEditors.TileItemEventArgs e)
        {//440
            FormSTCheck formSTCheck = new FormSTCheck();
            formSTCheck.StartPosition = FormStartPosition.CenterScreen;
            formSTCheck.Show();
        }

        private void tileItem22_ItemClick(object sender, DevExpress.XtraEditors.TileItemEventArgs e)
        {//450
            FormStockQuery formStockQuery = new FormStockQuery();
            formStockQuery.StartPosition = FormStartPosition.CenterScreen;
            formStockQuery.Show();
        }

        private void tileItem24_ItemClick(object sender, DevExpress.XtraEditors.TileItemEventArgs e)
        {//510
            FormPRPlan formPRPlan = new FormPRPlan();
            formPRPlan.StartPosition = FormStartPosition.CenterScreen;
            formPRPlan.Show();
        }

        private void tileItem25_ItemClick(object sender, DevExpress.XtraEditors.TileItemEventArgs e)
        {//520
            FormPRProduce formPRProduce = new FormPRProduce();
            formPRProduce.StartPosition = FormStartPosition.CenterScreen;
            formPRProduce.Show();
        }

        private void tileItem26_ItemClick(object sender, DevExpress.XtraEditors.TileItemEventArgs e)
        {//530
            FormProduceComplete formProduceComplete = new FormProduceComplete();
            formProduceComplete.StartPosition = FormStartPosition.CenterScreen;
            formProduceComplete.Show();
        }

        private void tileItem27_ItemClick(object sender, DevExpress.XtraEditors.TileItemEventArgs e)
        {//540
            FormPRInStore formPRInStore = new FormPRInStore();
            formPRInStore.StartPosition = FormStartPosition.CenterScreen;
            formPRInStore.Show();
        }

        private void tileItem28_ItemClick(object sender, DevExpress.XtraEditors.TileItemEventArgs e)
        {//610
            FormCustomerCourse formCustomerCourse = new FormCustomerCourse();
            formCustomerCourse.StartPosition = FormStartPosition.CenterScreen;
            formCustomerCourse.Show();
        }

        private void tileItem29_ItemClick(object sender, DevExpress.XtraEditors.TileItemEventArgs e)
        {//620
            FormBaseType formBaseType = new FormBaseType();
            formBaseType.StartPosition = FormStartPosition.CenterScreen;
            formBaseType.Show();
        }

        private void tileItem30_ItemClick(object sender, DevExpress.XtraEditors.TileItemEventArgs e)
        {//630
            FormCustomerAnalyse formCustomerAnalyse = new FormCustomerAnalyse();
            formCustomerAnalyse.StartPosition = FormStartPosition.CenterScreen;
            formCustomerAnalyse.Show();
        }

        private void tileItem31_ItemClick(object sender, DevExpress.XtraEditors.TileItemEventArgs e)
        {//710
            FormFIDeposit formFIDeposit = new FormFIDeposit();
            formFIDeposit.StartPosition = FormStartPosition.CenterScreen;
            formFIDeposit.Show();
        }

        private void tileItem32_ItemClick(object sender, DevExpress.XtraEditors.TileItemEventArgs e)
        {//720
            FormFIPurCost formFIPurCost = new FormFIPurCost();
            formFIPurCost.StartPosition = FormStartPosition.CenterScreen;
            formFIPurCost.Show();
        }

        private void tileItem33_ItemClick(object sender, DevExpress.XtraEditors.TileItemEventArgs e)
        {//730
            FormFISelCost formFISelCost = new FormFISelCost();
            formFISelCost.StartPosition = FormStartPosition.CenterScreen;
            formFISelCost.Show();
        }

        private void tileItem41_ItemClick(object sender, DevExpress.XtraEditors.TileItemEventArgs e)
        {//910
            FormSYOperator formSYOperator = new FormSYOperator();
            formSYOperator.StartPosition = FormStartPosition.CenterScreen;
            formSYOperator.Show();
        }

        private void tileItem42_ItemClick(object sender, DevExpress.XtraEditors.TileItemEventArgs e)
        {//920
            FormPassWord formPassWord = new FormPassWord();
            formPassWord.StartPosition = FormStartPosition.CenterScreen;
            formPassWord.Show();
        }

        private void tileItem43_ItemClick(object sender, DevExpress.XtraEditors.TileItemEventArgs e)
        {//930
            FormAssignRight formAssignRight = new FormAssignRight();
            formAssignRight.StartPosition = FormStartPosition.CenterScreen;
            formAssignRight.Show();
        }

        private void tileItem34_ItemClick(object sender, DevExpress.XtraEditors.TileItemEventArgs e)
        {//810
            FormPurReport formPurReport = new FormPurReport();
            formPurReport.StartPosition = FormStartPosition.CenterScreen;
            formPurReport.Show();
        }

        private void imageSlider1_Click(object sender, EventArgs e)
        {

        }

        private void tileItem35_ItemClick(object sender, DevExpress.XtraEditors.TileItemEventArgs e)
        {//820
            FormPurCollectReport formPurCollectReport = new FormPurCollectReport();
            formPurCollectReport.StartPosition = FormStartPosition.CenterScreen;
            formPurCollectReport.Show();
        }

        private void tileItem36_ItemClick(object sender, DevExpress.XtraEditors.TileItemEventArgs e)
        {//830
            FormSelReport formSelReport = new FormSelReport();
            formSelReport.StartPosition = FormStartPosition.CenterScreen;
            formSelReport.Show();
        }

        private void tileItem37_ItemClick(object sender, DevExpress.XtraEditors.TileItemEventArgs e)
        {//840
            FormSelCollectReport formSelCollectReport = new FormSelCollectReport();
            formSelCollectReport.StartPosition = FormStartPosition.CenterScreen;
            formSelCollectReport.Show();
        }

        private void tileItem38_ItemClick(object sender, DevExpress.XtraEditors.TileItemEventArgs e)
        {//850
            FormSelProfitReport formSelProfitReport = new FormSelProfitReport();
            formSelProfitReport.StartPosition = FormStartPosition.CenterScreen;
            formSelProfitReport.Show();
        }

        private void tileItem39_ItemClick(object sender, DevExpress.XtraEditors.TileItemEventArgs e)
        {//860
            FormSelProfitCollectReport formSelProfitCollectReport = new FormSelProfitCollectReport();
            formSelProfitCollectReport.StartPosition = FormStartPosition.CenterScreen;
            formSelProfitCollectReport.Show();
        }

        private void barStaticItem2_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {

        }
    }
}
