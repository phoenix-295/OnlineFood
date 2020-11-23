using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using MySql.Data.MySqlClient;
using System.Data;
using System.Drawing;

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

        protected void max()
        {
            string s1;
            s1 = ConfigurationManager.ConnectionStrings["FoodDatabase"].ConnectionString;
            MySqlConnection conn = new MySqlConnection(s1);
            conn.Open();
            MySqlCommand cmd = new MySqlCommand("Select MAX(order_id) from Order1 ", conn);
            try
            {
                a = Convert.ToInt32(cmd.ExecuteScalar());
            }
            catch
            {

            }
            if (a == null)
            {
                a = 1;
            }

            conn.Close();
        }

        protected void btns_Click(object sender, EventArgs e)
        {
            max();
            string s1;
            s1 = ConfigurationManager.ConnectionStrings["FoodDatabase"].ToString(); ;
            MySqlConnection conn = new MySqlConnection(s1);

            conn.Open();
            MySqlCommand cmd = new MySqlCommand("Insert into order1(Date_Created,Coustmer_Name,Coustmer_Email,Shipping_Adress,Pin,User_Name) values (@a,@b,@c,@d,@e,@f)", conn);
            cmd.Parameters.AddWithValue("@a", Convert.ToDateTime(DateTime.Now.ToShortDateString()));
            cmd.Parameters.AddWithValue("@b", fname.Text + ' ' + mname.Text + ' ' + lname.Text);
            cmd.Parameters.AddWithValue("@c", email.Text);
            cmd.Parameters.AddWithValue("@d", shippingad.Text);
            cmd.Parameters.AddWithValue("@e", pin.Text);
            cmd.Parameters.AddWithValue("@f", muser);
            cmd.ExecuteNonQuery();
            conn.Close();

            lblsuccess.Text = "Your Order Has Been Added Successfully and your order id is: " + a.ToString();
            lblsuccess.ForeColor = Color.White;
            lblsuccess.BackColor = Color.Green;
            trans();
            skdel();
            btns.Enabled = false;
        }

        protected void trans()
        {
            max();
            muser = User.Identity.Name.ToString();
            string s1, s2;
            s1 = ConfigurationManager.ConnectionStrings["FoodDatabase"].ConnectionString;
            s2 = "Select * From shop_cart where User_Name_1='" + muser + "'";
            MySqlConnection conn = new MySqlConnection(s1);
            conn.Open();

            MySqlDataAdapter da = new MySqlDataAdapter(s2, s1);
            DataSet ds = new DataSet();

            da.Fill(ds, "a");
            int cnt1 = ds.Tables["a"].Rows.Count;
            for (int i = 0; i <= cnt1 - 1; i++)
            {
                muser = ds.Tables["a"].Rows[i]["User_Name_1"].ToString();
                string itemc = ds.Tables["a"].Rows[i]["Item_Code"].ToString();
                string itemn = ds.Tables["a"].Rows[i]["Item_Name"].ToString();
                string qty = ds.Tables["a"].Rows[i]["Qty"].ToString();
                string price = ds.Tables["a"].Rows[i]["Price"].ToString();
                string trndate = ds.Tables["a"].Rows[i]["Tran_Date"].ToString();
                string tot = ds.Tables["a"].Rows[i]["Total"].ToString();
                string own = ds.Tables["a"].Rows[i]["Owner"].ToString();


                MySqlCommand cmd = new MySqlCommand("Insert into order_details (Order_Id,Item_Code,Item_Name,Qty,Price,Total,User_Name,Owner) values (@a,@b,@c,@d,@e,@f,@g,@h)", conn);

                cmd.Parameters.AddWithValue("@a", a);
                cmd.Parameters.AddWithValue("@b", itemc);
                cmd.Parameters.AddWithValue("@c", itemn);
                cmd.Parameters.AddWithValue("@d", Convert.ToInt32(qty.ToString()));
                cmd.Parameters.AddWithValue("@e", Convert.ToInt32(price.ToString()));
                cmd.Parameters.AddWithValue("@f", Convert.ToInt32(tot.ToString()));
                cmd.Parameters.AddWithValue("@g", muser);
                cmd.Parameters.AddWithValue("@h", own);
                cmd.ExecuteNonQuery();

            }
            conn.Close();
        }

        protected void skdel()
        {
            string s1;
            s1 = ConfigurationManager.ConnectionStrings["FoodDatabase"].ToString(); ;
            MySqlConnection conn = new MySqlConnection(s1);

            conn.Open();
            MySqlCommand cmd = new MySqlCommand("Delete FROM shop_cart where User_Name_1='" + muser + "'", conn);

            cmd.ExecuteNonQuery();
            conn.Close();
        }
    }
}