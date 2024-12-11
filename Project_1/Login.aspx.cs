using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Project_1
{
    public partial class Login : System.Web.UI.Page
    {
        Connectionclass cls = new Connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            string sel = "select count(reg_id) from login where username='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'";
            string cid = cls.fun_exescalar(sel);
            int cid1 = Convert.ToInt32(cid);
            if (cid1 == 1)
            {
                string str = "select reg_id from login where username='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'";
                string regid = cls.fun_exescalar(str);
                Session["user_id"] = regid;
                string str1 = "select log_type from login where username='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'";
                string logtype = cls.fun_exescalar(str1);
                if (logtype == "admin")
                {
                    Response.Redirect("Admin_dash.aspx");
                }
                else if(logtype=="user")
                {
                    Response.Redirect("home.aspx");
                }

               

            }
        }
    }
}