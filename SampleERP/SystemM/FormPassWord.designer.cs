namespace SampleERP.SystemM
{
    partial class FormPassWord
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
            this.btnQuit = new System.Windows.Forms.Button();
            this.label2 = new System.Windows.Forms.Label();
            this.txtAgainPassWord = new System.Windows.Forms.TextBox();
            this.btnOk = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.txtPassWord = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.txtOldPassWord = new System.Windows.Forms.TextBox();
            this.SuspendLayout();
            // 
            // btnQuit
            // 
            this.btnQuit.Location = new System.Drawing.Point(197, 141);
            this.btnQuit.Name = "btnQuit";
            this.btnQuit.Size = new System.Drawing.Size(75, 23);
            this.btnQuit.TabIndex = 11;
            this.btnQuit.Text = "退出";
            this.btnQuit.UseVisualStyleBackColor = true;
            this.btnQuit.Click += new System.EventHandler(this.btnQuit_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(63, 108);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(53, 12);
            this.label2.TabIndex = 10;
            this.label2.Text = "确认密码";
            // 
            // txtAgainPassWord
            // 
            this.txtAgainPassWord.AcceptsReturn = true;
            this.txtAgainPassWord.Location = new System.Drawing.Point(127, 103);
            this.txtAgainPassWord.MaxLength = 20;
            this.txtAgainPassWord.Name = "txtAgainPassWord";
            this.txtAgainPassWord.Size = new System.Drawing.Size(145, 21);
            this.txtAgainPassWord.TabIndex = 9;
            this.txtAgainPassWord.UseSystemPasswordChar = true;
            // 
            // btnOk
            // 
            this.btnOk.Location = new System.Drawing.Point(65, 141);
            this.btnOk.Name = "btnOk";
            this.btnOk.Size = new System.Drawing.Size(75, 23);
            this.btnOk.TabIndex = 8;
            this.btnOk.Text = "保存";
            this.btnOk.UseVisualStyleBackColor = true;
            this.btnOk.Click += new System.EventHandler(this.btnOk_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(63, 64);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(53, 12);
            this.label1.TabIndex = 7;
            this.label1.Text = "新 密 码";
            // 
            // txtPassWord
            // 
            this.txtPassWord.Location = new System.Drawing.Point(127, 59);
            this.txtPassWord.MaxLength = 20;
            this.txtPassWord.Name = "txtPassWord";
            this.txtPassWord.Size = new System.Drawing.Size(145, 21);
            this.txtPassWord.TabIndex = 12;
            this.txtPassWord.UseSystemPasswordChar = true;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(63, 22);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(53, 12);
            this.label3.TabIndex = 13;
            this.label3.Text = "原 密 码";
            // 
            // txtOldPassWord
            // 
            this.txtOldPassWord.AcceptsReturn = true;
            this.txtOldPassWord.Location = new System.Drawing.Point(127, 17);
            this.txtOldPassWord.MaxLength = 20;
            this.txtOldPassWord.Name = "txtOldPassWord";
            this.txtOldPassWord.Size = new System.Drawing.Size(145, 21);
            this.txtOldPassWord.TabIndex = 6;
            this.txtOldPassWord.UseSystemPasswordChar = true;
            // 
            // FormPassWord
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(335, 185);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.txtOldPassWord);
            this.Controls.Add(this.btnQuit);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.txtAgainPassWord);
            this.Controls.Add(this.btnOk);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.txtPassWord);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "FormPassWord";
            this.ShowIcon = false;
            this.ShowInTaskbar = false;
            this.Tag = "920";
            this.Text = "密码修改";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnQuit;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtAgainPassWord;
        private System.Windows.Forms.Button btnOk;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtPassWord;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txtOldPassWord;
    }
}