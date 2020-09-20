using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using MySql.Data.MySqlClient;
using System.Data;

namespace OnlineFastFood.Customer
{
    public partial class Shop_Cart : System.Web.UI.Page
    {
        string currentuser1;
        double cnt;

        protected void Page_Load(object sender, EventArgs e)
        {
            currentuser1 = User.Identity.Name.ToString();
            if (!IsPostBack)
            {
                fillgv();
                updategv();
            }
        }

        protected void gv1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gv1.EditIndex = e.NewEditIndex;
            fillgv();
        }

        protected void fillgv()
        {
            string s1, s2;
            s1 = ConfigurationManager.ConnectionStrings["FoodDatabase"].ToString();
            s2 = "Select * From shop_cart where User_Name_1='" + currentuser1 + "'";
            MySqlConnection conn = new MySqlConnection(s1);
            conn.Open();
            MySqlDataAdapter da1 = new MySqlDataAdapter(s2, s1);
            DataSet ds1 = new DataSet();
            da1.Fill(ds1, "a");
            gv1.DataSource = ds1.Tables["a"].DefaultView;
            gv1.DataBind();
            ViewState["mydataset"] = ds1;
            conn.Close();
        }

        protected void gv1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gv1.EditIndex = -1;
            fillgv();
        }

        protected void gv1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            DataSet mydataset = (DataSet)ViewState["mydataset"];
            DataTable myydatatable = mydataset.Tables["a"];
            gv1.DataSource = myydatatable;
            gv1.PageIndex = e.NewPageIndex;
            gv1.DataBind();
        }

        protected void gv1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string sid = gv1.DataKeys[e.RowIndex].Values["Shop_Cart_ID"].ToString();
            TextBox inqty = (TextBox)gv1.Rows[e.RowIndex].FindControl("txtqty");
            Label np = (Label)gv1.Rows[e.RowIndex].FindControl("lblprice");
            string conn;
            conn = ConfigurationManager.ConnectionStrings["FoodDatabase"].ToString(); ;
            MySqlConnection ocon = new MySqlConnection(conn);
            ocon.Open();
            MySqlCommand cmd = new MySqlCommand("UPDATE shop_cart set Qty=@a, Total=@b where Shop_Cart_ID=@c", ocon);
            cmd.Parameters.AddWithValue("@a", inqty.Text);
            cmd.Parameters.AddWithValue("@b", Convert.ToInt32(inqty.Text) * Convert.ToInt32(np.Text));
            cmd.Parameters.AddWithValue("@c", sid);
            cmd.ExecuteNonQuery();
            ocon.Close();
            gv1.EditIndex = -1;
            fillgv();
            updategv();
        }

        protected void updategv()
        {
            string s1;
            s1 = ConfigurationManager.ConnectionStrings["FoodDatabase"].ConnectionString;
            MySqlConnection conn = new MySqlConnection(s1);
            conn.Open();
            MySqlCommand cmd = new MySqlCommand("SELECT  SUM(Total) from shop_cart where User_Name_1='" + currentuser1 + "'", conn);
            cnt = Convert.ToDouble(cmd.ExecuteScalar());
            lbltot.Text = cnt.ToString();
            conn.Close();
            Session["abc"] = cnt.ToString();
        }
    }
}