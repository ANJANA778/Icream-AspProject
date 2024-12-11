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
    public partial class Admin_dash : System.Web.UI.Page
    {
        Connectionclass cls = new Connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bind_grid();
                dropdown_bind();
                grid_bind();
                
            }
        }
        public void grid_bind()
        {
            string bind = "select * from products";
            DataSet ds = cls.fun_exeadapter(bind);
            GridView2.DataSource = ds;
            GridView2.DataBind();
        }
        public void dropdown_bind()
        {
            string str = "select cate_id,cate_name from categories";
            DataSet ds = cls.fun_exeadapter(str);
            DropDownList1.DataSource = ds;
            DropDownList1.DataTextField = "cate_name";
            DropDownList1.DataValueField = "cate_id";
            DropDownList1.DataBind();
        }
        public void bind_grid()
        {
            string bind = "select * from categories";
            DataSet ds = cls.fun_exeadapter(bind);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
            Panel1.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string img = "~/catimg/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(img));
            string ins = "insert into categories values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + img + "')";
            int i = cls.fun_exenonquery(ins);
            if (i == 1)
            {
                Label5.Text = "Added successfully!!";
            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int i = e.RowIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[i].Value);
            string del="delete from categories where cate_id="+getid+"";
            cls.fun_exenonquery(del);
            bind_grid();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            bind_grid();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            bind_grid();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

            int i = e.RowIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[i].Value);
            TextBox txtcatname = (TextBox)GridView1.Rows[i].Cells[2].Controls[0];
            TextBox txtcatdesc = (TextBox)GridView1.Rows[i].Cells[3].Controls[0]; 
            FileUpload catim = GridView1.Rows[i].FindControl("FileUpload2") as FileUpload;
            string strup = "";
            if(catim!=null&&catim.HasFile)
            {
                string folder = Server.MapPath("~/catimg/");
                string filePath = System.IO.Path.Combine(folder, catim.FileName);
                catim.SaveAs(filePath);
                string a = "~/catimg/" + catim.FileName;
                strup = "update categories set cate_name='" + txtcatname.Text + "' ,cate_desc='" + txtcatdesc.Text + "',cate_photo='" + a + "' where cate_id=" + getid + "";
            }
            else
            {
                strup = "update categories set cate_name='" + txtcatname.Text + "' ,cate_desc='" + txtcatdesc.Text + "' where cate_id=" + getid + "";
            }
            cls.fun_exenonquery(strup);
            GridView1.EditIndex = -1;
            bind_grid();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string b = "~/proimg/" + FileUpload3.FileName;
            FileUpload3.SaveAs(MapPath(b));

            string ins1 = "insert into products values(" + DropDownList1.SelectedItem.Value + ",'" + TextBox3.Text + "','" + TextBox4.Text + "'," + TextBox5.Text + ",'" + b + "','available','" + TextBox6.Text + "')";
            int j = cls.fun_exenonquery(ins1);
            if (j == 1)
            {
                Label13.Text = "Product added succesfully!!";
            }
            dropdown_bind();
            grid_bind();
        }

        protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int i = e.RowIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[i].Value);
            string del = "delete from products where cate_id=" + getid + "";
            cls.fun_exenonquery(del);
            grid_bind();
        }

        protected void GridView2_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView2.EditIndex = e.NewEditIndex;
            grid_bind();
        }

        protected void GridView2_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView2.EditIndex = -1;
            grid_bind();
        }

        protected void GridView2_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int j = e.RowIndex;
            int getid1 = Convert.ToInt32(GridView2.DataKeys[j].Value);
            TextBox txtpname = (TextBox)GridView2.Rows[j].Cells[2].Controls[0];
            TextBox txtpdetails = (TextBox)GridView2.Rows[j].Cells[3].Controls[0];
            TextBox txtprice = (TextBox)GridView2.Rows[j].Cells[4].Controls[0];
            FileUpload proim = (FileUpload)GridView2.Rows[j].FindControl("FileUpload4");
            TextBox txtpstock = (TextBox)GridView2.Rows[j].Cells[7].Controls[0];

            string strup;
            string b = string.Empty;

            if (proim != null && proim.HasFile)
            {
                string folder = Server.MapPath("~/proimg/");
                string filePath = System.IO.Path.Combine(folder, proim.FileName);
                proim.SaveAs(filePath);
                b = "~/proimg/" + proim.FileName;

                strup = "update products set p_name='" + txtpname.Text + "', p_details='" + txtpdetails.Text + "', p_price=" + txtprice.Text + ", p_photo='" + b + "', p_stock=" + txtpstock.Text + " where p_id=" + getid1;
            }
            else
            {
                strup = "update products set p_name='" + txtpname.Text + "', p_details='" + txtpdetails.Text + "', p_price=" + txtprice.Text + ", p_stock=" + txtpstock.Text + " where p_id=" + getid1;
            }

            cls.fun_exenonquery(strup);
            GridView2.EditIndex = -1;
            grid_bind();
        }
    }
}