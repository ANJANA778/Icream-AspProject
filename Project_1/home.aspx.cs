﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Project_1
{
    public partial class home : System.Web.UI.Page
    {
        Connectionclass cls = new Connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string s = "select * from categories";
                DataSet ds = cls.fun_exeadapter(s);
                DataList1.DataSource = ds;
                DataList1.DataBind();

            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton clickbut = (ImageButton)sender;
            string catid = clickbut.CommandArgument;
            if(!string.IsNullOrEmpty(catid)&&int.TryParse(catid,out int categoryid))
            {
                Session["cid"] = categoryid;
                Response.Redirect("ProductView.aspx");
            }
        }
    }
}