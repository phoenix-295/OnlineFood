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
    public partial class Check_Out : System.Web.UI.Page
    {
        string muser;
        double cnt;
        int a;
        protected void Page_Load(object sender, EventArgs e)
        {
            muser = User.Identity.Name.ToString();
            cnt = Convert.ToDouble(Session["abc"]);
            if (!IsPostBack)
            {
                filltl();
                //cancling();
            }
        }

        protected void filltl()
        {
            string s1, s2;
            s1 = ConfigurationManager.ConnectionStrings["FoodDatabase"].ConnectionString;
            
            s2 = "Select * from cust_registration";

            MySqlConnection conn = new MySqlConnection(s1);
            conn.Open();
            MySqlDataAdapter da = new MySqlDataAdapter(s2, s1);
            DataSet ds1 = new DataSet();
            da.Fill(ds1, "t1");

            foreach (DataRow r1 in ds1.Tables["t1"].Rows)
            {
                if ((r1["user_name"].ToString() == muser))
                {
                    fname.Text = r1["f_name"].ToString();
                    mname.Text = r1["m_name"].ToString();
                    lname.Text = r1["l_name"].ToString();
                    cntno.Text = r1["contact_no"].ToString();
                    address.Text = r1["adress"].ToString();
                    loc.Text = r1["state"].ToString();
                    city.Text = r1["city"].ToString();
                    email.Text = r1["email_id"].ToString();
                    pin.Text = r1["pin_code"].ToString();

                }
            }
            conn.Close();
            lblamt.Text = cnt.ToString();
        }
    }
}