using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_1
{
    public partial class UserRegistration : System.Web.UI.Page
    {
        Connectionclass cls = new Connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string sel = "select max(reg_id) from login";
            string maxregid = cls.fun_exescalar(sel);
            int reg_id = 0;
            if (maxregid == "")
            {
                reg_id = 1;
            }
            else
            {
                int newregid = Convert.ToInt32(maxregid);
                reg_id = newregid + 1;
            }
            string ins = "insert into user_tab values(" + reg_id + ",'" + TextBox1.Text + "'," + TextBox2.Text + ",'" + TextBox3.Text + "','" + TextBox4.Text + "','" + RadioButtonList1.SelectedItem.Text + "'," + TextBox5.Text + ",'active')";
            int i = cls.fun_exenonquery(ins);
            if (i == 1)
            {
                string login = "insert into login values(" + reg_id + ",'" + TextBox6.Text + "','" + TextBox7.Text + "','user')";
                int j = cls.fun_exenonquery(login);
                if (j == 1)
                {
                    Label1.Visible = true;
                    Label1.Text = "Registered Successfully!";
                }
            }
        }
    }
}
