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
    public partial class Food_Details_Large_UC : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            filldl();
        }

        protected void filldl()
        {
            try
            {
                string itm = Request.QueryString["Item_Code"];
                if (itm != null)
                {
                    string s1, s2;
                    s1 = ConfigurationManager.ConnectionStrings["FoodDatabase"].ToString();
                    s2 = "SELECT * From food_details where Item_Code =" + itm;
                    MySqlConnection conn1 = new MySqlConnection(s1);
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
                    s2 = "SELECT * From food_details where Item_Code=1";
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
            catch (Exception x)
            {
                Response.Write(x);
            }
        }
    }
}