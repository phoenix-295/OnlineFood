using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Drawing;
using MySql.Data.MySqlClient;
using System.Configuration;

namespace OnlineFastFood.SuperAdmin
{
    public partial class Food_Category : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                FillGv();
            }
        }

        protected void FillGv()
        {
            string strcon = ConfigurationManager.ConnectionStrings["FoodDatabase"].ConnectionString;

            string s2 = "SELECT * FROM food_category";

            MySqlConnection conn = new MySqlConnection(strcon);

            conn.Open();

            MySqlDataAdapter da1 = new MySqlDataAdapter(s2, strcon);

            DataSet ds = new DataSet();

            da1.Fill(ds, "food_cat");

            GridView1.DataSource = ds.Tables["food_cat"].DefaultView;

            GridView1.DataBind();

            ViewState["vsFoodCategory"] = ds;

            conn.Close();
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
            string cid = GridView1.DataKeys[e.RowIndex].Values["Cat_ID"].ToString();
            TextBox incatname = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtnameedit");
            TextBox incatd = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtdescedit");
            string conn;
            conn = ConfigurationManager.ConnectionStrings["FoodDatabase"].ToString();
            MySqlConnection ocon = new MySqlConnection(conn);
            ocon.Open();
            MySqlCommand cmd = new MySqlCommand("UPDATE food_category SET Cat_Title=@ctit,Cat_Desc=@cdesc where Cat_ID=@cid", ocon);
            cmd.Parameters.AddWithValue("@ctit", incatname.Text);
            cmd.Parameters.AddWithValue("@cdesc", incatd.Text);
            cmd.Parameters.AddWithValue("@cid", cid);
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

                conn = ConfigurationManager.ConnectionStrings["FoodDatabase"].ToString();

                MySqlConnection ocon = new MySqlConnection(conn);

                ocon.Open();

                MySqlCommand cmd = new MySqlCommand("INSERT into food_category(Cat_Title,Cat_Desc)values('" + incatname.Text + "','" + incatd.Text + "')", ocon);

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

            DataTable myydatatable = mydataset.Tables["food_cat"];

            GridView1.DataSource = myydatatable;

            GridView1.PageIndex = e.NewPageIndex;

            GridView1.DataBind();

            lblup.Text = "";
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string cid = GridView1.DataKeys[e.RowIndex].Values["Cat_ID"].ToString();


            string conn;
            conn = ConfigurationManager.ConnectionStrings["FoodDatabase"].ToString(); ;
            MySqlConnection ocon = new MySqlConnection(conn);

            ocon.Open();

            MySqlCommand cmd = new MySqlCommand("DELETE from food_category where Cat_ID=" + cid, ocon);
            int res = cmd.ExecuteNonQuery();

            cmd.ExecuteNonQuery();

            ocon.Close();
            if (res == 1)
            {
                lblup.Text = "Deleted Successfully";
                lblup.ForeColor = Color.White;
                lblup.BackColor = Color.Green;
                FillGv();
            }
        }
    }
}