namespace SampleERP.BasicS
{
    partial class FormBSInvenType
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
            this.components = new System.ComponentModel.Container();
            System.Windows.Forms.TreeNode treeNode9 = new System.Windows.Forms.TreeNode("节点1");
            System.Windows.Forms.TreeNode treeNode10 = new System.Windows.Forms.TreeNode("节点2");
            System.Windows.Forms.TreeNode treeNode11 = new System.Windows.Forms.TreeNode("节点3");
            System.Windows.Forms.TreeNode treeNode12 = new System.Windows.Forms.TreeNode("节点0", new System.Windows.Forms.TreeNode[] {
            treeNode9,
            treeNode10,
            treeNode11});
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FormBSInvenType));
            this.btnAdd = new DevExpress.XtraEditors.SimpleButton();
            this.btnAmend = new DevExpress.XtraEditors.SimpleButton();
            this.btnDelete = new DevExpress.XtraEditors.SimpleButton();
            this.btnQuit = new DevExpress.XtraEditors.SimpleButton();
            this.tvInvenType = new System.Windows.Forms.TreeView();
            this.imageList1 = new System.Windows.Forms.ImageList(this.components);
            this.SuspendLayout();
            // 
            // btnAdd
            // 
            this.btnAdd.Location = new System.Drawing.Point(216, 64);
            this.btnAdd.Name = "btnAdd";
            this.btnAdd.Size = new System.Drawing.Size(109, 51);
            this.btnAdd.TabIndex = 1;
            this.btnAdd.Text = "添加";
            this.btnAdd.Click += new System.EventHandler(this.btnAdd_Click_1);
            // 
            // btnAmend
            // 
            this.btnAmend.Location = new System.Drawing.Point(216, 141);
            this.btnAmend.Name = "btnAmend";
            this.btnAmend.Size = new System.Drawing.Size(109, 53);
            this.btnAmend.TabIndex = 2;
            this.btnAmend.Text = "修改";
            this.btnAmend.Click += new System.EventHandler(this.btnAmend_Click);
            // 
            // btnDelete
            // 
            this.btnDelete.Location = new System.Drawing.Point(216, 226);
            this.btnDelete.Name = "btnDelete";
            this.btnDelete.Size = new System.Drawing.Size(109, 53);
            this.btnDelete.TabIndex = 3;
            this.btnDelete.Text = "删除";
            this.btnDelete.Click += new System.EventHandler(this.btnDelete_Click_1);
            // 
            // btnQuit
            // 
            this.btnQuit.Location = new System.Drawing.Point(216, 302);
            this.btnQuit.Name = "btnQuit";
            this.btnQuit.Size = new System.Drawing.Size(109, 53);
            this.btnQuit.TabIndex = 4;
            this.btnQuit.Text = "退出";
            this.btnQuit.Click += new System.EventHandler(this.btnQuit_Click_1);
            // 
            // tvInvenType
            // 
            this.tvInvenType.Location = new System.Drawing.Point(1, 0);
            this.tvInvenType.Name = "tvInvenType";
            treeNode9.Name = "节点1";
            treeNode9.Text = "节点1";
            treeNode10.Name = "节点2";
            treeNode10.Text = "节点2";
            treeNode11.Name = "节点3";
            treeNode11.Text = "节点3";
            treeNode12.Name = "节点0";
            treeNode12.Text = "节点0";
            this.tvInvenType.Nodes.AddRange(new System.Windows.Forms.TreeNode[] {
            treeNode12});
            this.tvInvenType.Size = new System.Drawing.Size(182, 407);
            this.tvInvenType.TabIndex = 5;
            // 
            // imageList1
            // 
            this.imageList1.ImageStream = ((System.Windows.Forms.ImageListStreamer)(resources.GetObject("imageList1.ImageStream")));
            this.imageList1.TransparentColor = System.Drawing.Color.Transparent;
            this.imageList1.Images.SetKeyName(0, "Open1.ico");
            this.imageList1.Images.SetKeyName(1, "close1.ico");
            // 
            // FormBSInvenType
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(358, 407);
            this.Controls.Add(this.tvInvenType);
            this.Controls.Add(this.btnQuit);
            this.Controls.Add(this.btnDelete);
            this.Controls.Add(this.btnAmend);
            this.Controls.Add(this.btnAdd);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "FormBSInvenType";
            this.Tag = "111";
            this.Text = "存货类别";
            this.Load += new System.EventHandler(this.FormBSInvenType_Load);
            this.ResumeLayout(false);

        }

        #endregion
        private DevExpress.XtraEditors.SimpleButton btnAdd;
        private DevExpress.XtraEditors.SimpleButton btnAmend;
        private DevExpress.XtraEditors.SimpleButton btnDelete;
        private DevExpress.XtraEditors.SimpleButton btnQuit;
        public System.Windows.Forms.TreeView tvInvenType;
        public System.Windows.Forms.ImageList imageList1;
    }
}