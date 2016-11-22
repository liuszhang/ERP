namespace SampleERP.BasicS
{
    partial class FormBSDepartment
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
            System.Windows.Forms.TreeNode treeNode5 = new System.Windows.Forms.TreeNode("节点1");
            System.Windows.Forms.TreeNode treeNode6 = new System.Windows.Forms.TreeNode("节点2");
            System.Windows.Forms.TreeNode treeNode7 = new System.Windows.Forms.TreeNode("节点3");
            System.Windows.Forms.TreeNode treeNode8 = new System.Windows.Forms.TreeNode("节点0", new System.Windows.Forms.TreeNode[] {
            treeNode5,
            treeNode6,
            treeNode7});
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FormBSDepartment));
            this.tvDepartment = new System.Windows.Forms.TreeView();
            this.btnQuit = new DevExpress.XtraEditors.SimpleButton();
            this.btnDelete = new DevExpress.XtraEditors.SimpleButton();
            this.btnAmend = new DevExpress.XtraEditors.SimpleButton();
            this.btnAdd = new DevExpress.XtraEditors.SimpleButton();
            this.imageList1 = new System.Windows.Forms.ImageList(this.components);
            this.SuspendLayout();
            // 
            // tvDepartment
            // 
            this.tvDepartment.Location = new System.Drawing.Point(0, 0);
            this.tvDepartment.Name = "tvDepartment";
            treeNode5.Name = "节点1";
            treeNode5.Text = "节点1";
            treeNode6.Name = "节点2";
            treeNode6.Text = "节点2";
            treeNode7.Name = "节点3";
            treeNode7.Text = "节点3";
            treeNode8.Name = "节点0";
            treeNode8.Text = "节点0";
            this.tvDepartment.Nodes.AddRange(new System.Windows.Forms.TreeNode[] {
            treeNode8});
            this.tvDepartment.Size = new System.Drawing.Size(182, 407);
            this.tvDepartment.TabIndex = 10;
            // 
            // btnQuit
            // 
            this.btnQuit.Location = new System.Drawing.Point(215, 302);
            this.btnQuit.Name = "btnQuit";
            this.btnQuit.Size = new System.Drawing.Size(109, 53);
            this.btnQuit.TabIndex = 9;
            this.btnQuit.Text = "退出";
            this.btnQuit.Click += new System.EventHandler(this.btnQuit_Click);
            // 
            // btnDelete
            // 
            this.btnDelete.Location = new System.Drawing.Point(215, 226);
            this.btnDelete.Name = "btnDelete";
            this.btnDelete.Size = new System.Drawing.Size(109, 53);
            this.btnDelete.TabIndex = 8;
            this.btnDelete.Text = "删除";
            this.btnDelete.Click += new System.EventHandler(this.btnDelete_Click);
            // 
            // btnAmend
            // 
            this.btnAmend.Location = new System.Drawing.Point(215, 141);
            this.btnAmend.Name = "btnAmend";
            this.btnAmend.Size = new System.Drawing.Size(109, 53);
            this.btnAmend.TabIndex = 7;
            this.btnAmend.Text = "修改";
            this.btnAmend.Click += new System.EventHandler(this.btnAmend_Click);
            // 
            // btnAdd
            // 
            this.btnAdd.Location = new System.Drawing.Point(215, 64);
            this.btnAdd.Name = "btnAdd";
            this.btnAdd.Size = new System.Drawing.Size(109, 51);
            this.btnAdd.TabIndex = 6;
            this.btnAdd.Text = "添加";
            this.btnAdd.Click += new System.EventHandler(this.btnAdd_Click);
            // 
            // imageList1
            // 
            this.imageList1.ImageStream = ((System.Windows.Forms.ImageListStreamer)(resources.GetObject("imageList1.ImageStream")));
            this.imageList1.TransparentColor = System.Drawing.Color.Transparent;
            this.imageList1.Images.SetKeyName(0, "Open.ico");
            this.imageList1.Images.SetKeyName(1, "Close.ico");
            // 
            // FormBSDepartment
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(358, 407);
            this.Controls.Add(this.tvDepartment);
            this.Controls.Add(this.btnQuit);
            this.Controls.Add(this.btnDelete);
            this.Controls.Add(this.btnAmend);
            this.Controls.Add(this.btnAdd);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "FormBSDepartment";
            this.Tag = "112";
            this.Text = "部门分类";
            this.Load += new System.EventHandler(this.FormBSDepartment_Load);
            this.ResumeLayout(false);

        }

        #endregion

        public System.Windows.Forms.TreeView tvDepartment;
        private DevExpress.XtraEditors.SimpleButton btnQuit;
        private DevExpress.XtraEditors.SimpleButton btnDelete;
        private DevExpress.XtraEditors.SimpleButton btnAmend;
        public DevExpress.XtraEditors.SimpleButton btnAdd;
        public System.Windows.Forms.ImageList imageList1;
    }
}