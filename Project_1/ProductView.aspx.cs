using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace Project_1
{
    public partial class ProductView : System.Web.UI.Page
    {
        Connectionclass cls = new Connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["cid"] != null)
                {
                    string psel = "select * from products where cat_id='" + Session["cid"] + "'";
                    DataSet ds = cls.fun_exeadapter(psel);
                    DataList1.DataSource = ds;
                    DataList1.DataBind();
                }
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton clickbut = (ImageButton)sender;
            string pid = clickbut.CommandArgument;
            if (!string.IsNullOrEmpty(pid) && int.TryParse(pid, out int productid))
            {
                Session["pid"] = productid;
                Response.Redirect("Product.aspx");
            }
        }
    }
}