using System;
using System.Configuration;
using System.Data;
using MySql.Data.MySqlClient;

namespace OnlineFastFood.Admin
{
    public partial class Manage_Orders : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                fillgv();
            }
        }

        protected void fillgv()
        {
            string s1, s2;
            s1 = ConfigurationManager.ConnectionStrings["FoodDatabase"].ConnectionString;
            s2 = "Select order_id, DATE_FORMAT(Date_Created, \" %d/%m/%Y \") Date_Created, DATE_FORMAT(Date_Shipped, \" %d/%m/%Y \") Date_Shipped, Verified, Dilivery_Status, Payment_Dilevery_Status, Completed, Cancled, Comment, Coustmer_Name, Coustmer_Email, Shipping_Adress, Pin, User_Name from order1 order by order_id desc";
            MySqlConnection conn1 = new MySqlConnection(s1);
            conn1.Open();
            MySqlDataAdapter da1 = new MySqlDataAdapter(s2, s1);
            DataSet ds1 = new DataSet();
            da1.Fill(ds1, "x");

            GridView1.DataSource = ds1.Tables["x"].DefaultView;

            GridView1.DataBind();
            conn1.Close();
            ViewState["mydataset"] = ds1;
        }

        protected void fillgv1()
        {
            string s1;
            if (txtmr.Text != "")
            {
                string top = txtmr.Text;
                s1 = ConfigurationManager.ConnectionStrings["FoodDatabase"].ConnectionString;
                MySqlConnection conn1 = new MySqlConnection(s1);
                MySqlCommand cmd = new MySqlCommand("SELECT order_id, DATE_FORMAT(Date_Created, \" %d/%m/%Y \") Date_Created, DATE_FORMAT(Date_Shipped, \" %d/%m/%Y \") Date_Shipped, Verified, Dilivery_Status, Payment_Dilevery_Status, Completed, Cancled, Comment, Coustmer_Name, Coustmer_Email, Shipping_Adress, Pin, User_Name from order1 ORDER BY order_id desc LIMIT " + top + "", conn1);
                conn1.Open();
                MySqlDataAdapter da1 = new MySqlDataAdapter(cmd);
                DataSet ds1 = new DataSet();
                da1.Fill(ds1, "x");

                if (ds1.Tables[0].Rows.Count > 0)
                {
                    GridView1.DataSource = ds1.Tables["x"].DefaultView;
                    GridView1.DataBind();
                }

                else
                {
                    ds1.Tables[0].Rows.Add(ds1.Tables[0].NewRow());
                    GridView1.DataSource = ds1.Tables["x"].DefaultView;
                    GridView1.DataBind();
                }
                conn1.Close();
            }
            else
            {
                Response.Write("<script>alert('Text Box cant be empty')</script>");
            }
        }

        protected void btngo_Click(object sender, EventArgs e)
        {
            fillgv1();
        }

        protected void btng1_Click(object sender, EventArgs e)
        {
            string s1;

            s1 = ConfigurationManager.ConnectionStrings["FoodDatabase"].ConnectionString;
            MySqlConnection conn1 = new MySqlConnection(s1);

            MySqlCommand cmd = new MySqlCommand("Select order_id, DATE_FORMAT(Date_Created, \" %d/%m/%Y \") Date_Created, DATE_FORMAT(Date_Shipped, \" %d/%m/%Y \") Date_Shipped, Verified, Dilivery_Status, Payment_Dilevery_Status, Completed, Cancled, Comment, Coustmer_Name, Coustmer_Email, Shipping_Adress, Pin, User_Name from Order1 where Cancled=" + 1, conn1);

            conn1.Open();
            MySqlDataAdapter da1 = new MySqlDataAdapter(cmd);
            DataSet ds1 = new DataSet();
            da1.Fill(ds1, "x");
            if (ds1.Tables[0].Rows.Count > 0)
            {
                GridView1.DataSource = ds1.Tables["x"].DefaultView;
                GridView1.DataBind();
            }
            else
            {
                ds1.Tables[0].Rows.Add(ds1.Tables[0].NewRow());
                GridView1.DataSource = ds1.Tables["x"].DefaultView;
                GridView1.DataBind();
            }
            conn1.Close();
        }

        protected void brng2_Click(object sender, EventArgs e)
        {
            string s1 = ConfigurationManager.ConnectionStrings["FoodDatabase"].ConnectionString;
            MySqlConnection conn1 = new MySqlConnection(s1);
            MySqlCommand cmd = new MySqlCommand("Select order_id, DATE_FORMAT(Date_Created, \" %d/%m/%Y \") Date_Created, DATE_FORMAT(Date_Shipped, \" %d/%m/%Y \") Date_Shipped, Verified, Dilivery_Status, Payment_Dilevery_Status, Completed, Cancled, Comment, Coustmer_Name, Coustmer_Email, Shipping_Adress, Pin, User_Name from Order1 where Completed=" + 1, conn1);     
            conn1.Open();
            MySqlDataAdapter da1 = new MySqlDataAdapter(cmd);
            DataSet ds1 = new DataSet();
            da1.Fill(ds1, "x");
            if (ds1.Tables[0].Rows.Count > 0)
            {
                GridView1.DataSource = ds1.Tables["x"].DefaultView;
                GridView1.DataBind();
            }
            else
            {
                ds1.Tables[0].Rows.Add(ds1.Tables[0].NewRow());
                GridView1.DataSource = ds1.Tables["x"].DefaultView;
                GridView1.DataBind();
            }
            conn1.Close();
        }
    }
}