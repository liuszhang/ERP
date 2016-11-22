using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;
using SampleERP.DataClass;
using SampleERP.ComClass;

namespace SampleERP
{
    public partial class Login : Form
    {
        private readonly DataBase db = new DataBase();
        private SqlDataReader sdr;

        public Login()
        {
            InitializeComponent();
        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {

        }

        private void windowsUIButtonPanel1_MouseClick(object sender, MouseEventArgs e)
        {

        }

        private void windowsUIButtonPanel1_ButtonClick(object sender, DevExpress.XtraBars.Docking2010.ButtonEventArgs e)
        {
            if (e.Button == windowsUIButtonPanel1.Buttons[0])
            {
                Login_Click(sender, e);
            }

            else if(e.Button == windowsUIButtonPanel1.Buttons[1])
            {
                textBox1.Text = "";
                textBox2.Text = "";
            }
            else if(e.Button == windowsUIButtonPanel1.Buttons[2])
            {
                Close();                
            }
        }

        private void textBox1_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
                textBox2.Focus();
        }

        private void textBox2_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                Login_Click(sender, e);
            }
        }

        private void Login_Click(object sender, EventArgs e)
        {
            errInfo.Clear();

            if (String.IsNullOrEmpty(textBox1.Text.Trim()))
            {
                try
                {
                    errInfo.SetError(textBox1, "用户编码不能为空！");
                    return;
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "软件提示");
                    throw ex;
                }
                finally
                {
                }
            }

            if (String.IsNullOrEmpty(textBox2.Text.Trim()))
            {
                try
                {
                    errInfo.SetError(textBox2, "用户密码不能为空！");
                    return;
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "软件提示");
                    throw ex;
                }
                finally
                {
                }
            }

            string strSql = "select * from SYOperator where OperatorCode = '" + textBox1.Text.Trim() +
                            "' and PassWord = '" + textBox2.Text.Trim() + "'";

            try
            {
                sdr = db.GetDataReader(strSql);
                sdr.Read();
                if (sdr.HasRows)
                {
                    AppMain AppForm = new AppMain();
                    Hide();
                    PropertyClass.OperatorCode = sdr["OperatorCode"].ToString();
                    PropertyClass.OperatorName = sdr["OperatorName"].ToString();
                    PropertyClass.PassWord = sdr["PassWord"].ToString();
                    PropertyClass.IsAdmin = sdr["IsAdmin"].ToString();
                    AppForm.Show();
                }
                else
                {
                    MessageBox.Show("用户编码或用户密码不正确！", "软件提示");
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "软件提示");
                throw ex;
            }
            finally
            {
                sdr.Close();
            }
        }

        private void Login_Load(object sender, EventArgs e)
        {

        }

        private void windowsUIButtonPanel1_Click(object sender, EventArgs e)
        {

        }
    }
}
