using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using System.Configuration;

namespace OnlineFastFood
{
    public partial class Food_Details_Small_UC : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
                filldl();
            
        }

        protected void filldl()
        {
            string cid = Request.QueryString["Cat_ID"];
            if (cid != null)
            {
                string s1, s2;
                s1 = ConfigurationManager.ConnectionStrings["FoodDatabase"].ToString();
                s2 = "SELECT * From food_details where Cat_ID=" + cid;
                MySqlConnection conn1;
                conn1 = new MySqlConnection(s1);
                conn1.Open();
                MySqlDataAdapter da1 = new MySqlDataAdapter(s2, s1);
                DataSet ds1 = new DataSet();
                da1.Fill(ds1, "a");

                DataList1.DataSource = ds1.Tables["a"].DefaultView;

                DataList1.DataBind();

                conn1.Close();
            }
            else
            {
                string s1, s2;
                s1 = ConfigurationManager.ConnectionStrings["FoodDatabase"].ToString();
                s2 = "Select * From food_details where Cat_ID=1";
                MySqlConnection conn1 = new MySqlConnection(s1);               
                conn1.Open();
                MySqlDataAdapter da1 = new MySqlDataAdapter(s2, s1);
                DataSet ds1 = new DataSet();
                da1.Fill(ds1, "a");
                DataList1.DataSource = ds1.Tables["a"].DefaultView;        
                DataList1.DataBind();

                conn1.Close();
            }
        }
    }
}