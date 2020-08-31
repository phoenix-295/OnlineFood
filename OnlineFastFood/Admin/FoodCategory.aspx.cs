using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Drawing;

namespace OnlineFastFood.Admin
{
    public partial class FoodCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillGv();
            }
        }

        protected void FillGv()
        {
            string strcon = ConfigurationManager.ConnectionStrings[""].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("select * from  FoodCat", con);
            DataSet ds1 = new DataSet();
            da.Fill(ds1, "FoodCategory");
            GridView1.DataSource = ds1.Tables["FoodCategory"];
            ViewState["vsFoodCategory"] = ds1;
            GridView1.DataBind();
            con.Close();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            FillGv();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            FillGv();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string pid = GridView1.DataKeys[e.RowIndex].Values["CatId"].ToString();

            TextBox incatname = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtnameedit");
            TextBox incatd = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtdescedit");

            string conn;
            conn = ConfigurationManager.ConnectionStrings["FoodDatabase"].ToString();
            SqlConnection ocon = new SqlConnection(conn);
            ocon.Open();

            SqlCommand cmd = new SqlCommand("Update FoodCat set CatName=@ctit,CatDesc=@cdesc where CatId=@uid", ocon);
            cmd.Parameters.AddWithValue("@ctit", incatname.Text);
            cmd.Parameters.AddWithValue("@cdesc", incatd.Text);
            cmd.Parameters.AddWithValue("@uid", pid);
            cmd.ExecuteNonQuery();

            ocon.Close();
            GridView1.EditIndex = -1;

            lblup.Text = "Updated Successfully";
            lblup.ForeColor = Color.White;
            lblup.BackColor = Color.Green;
            FillGv();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("AddNew"))
            {
                TextBox incatname = (TextBox)GridView1.FooterRow.FindControl("txtnameadd");
                TextBox incatd = (TextBox)GridView1.FooterRow.FindControl("txtdescadd");

                string conn;
                conn = ConfigurationManager.ConnectionStrings["FoodDatabase"].ToString(); ;
                SqlConnection ocon = new SqlConnection(conn);

                ocon.Open();
                SqlCommand cmd = new SqlCommand("Insert into FoodCat(CatName,CatDesc)values('" + incatname.Text + "','" + incatd.Text + "')", ocon);

                int res = cmd.ExecuteNonQuery();

                ocon.Close();

                if (res == 1)
                {
                    FillGv();
                    lblup.Text = "Added Successfully";
                    lblup.ForeColor = Color.White;
                    lblup.BackColor = Color.Green;
                }
            }
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            DataSet mydataset = (DataSet)ViewState["vsFoodCategory"];
            DataTable myydatatable = mydataset.Tables["FoodCategory"];
            GridView1.DataSource = myydatatable;
            GridView1.PageIndex = e.NewPageIndex;
            GridView1.DataBind();
            lblup.Text = "";
        }
    }
}