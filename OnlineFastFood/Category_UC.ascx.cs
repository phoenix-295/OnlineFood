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
    public partial class Category_UC : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                filldl();
            }
        }

        protected void filldl()
        {
            try
            {
                string s1, s2;
                s1 = ConfigurationManager.ConnectionStrings["FoodDatabase"].ConnectionString;
                s2 = "SELECT * From food_category";
                MySqlConnection conn1 = new MySqlConnection(s1);
                conn1.Open();
                MySqlDataAdapter da1 = new MySqlDataAdapter(s2, s1);
                DataSet ds1 = new DataSet();
                da1.Fill(ds1, "a");
                DataList1.DataSource = ds1.Tables["a"].DefaultView;
                DataList1.DataBind();
                conn1.Close();
            }
            catch (Exception x)
            {
                Response.Write(x);
            }
        }
    }
}