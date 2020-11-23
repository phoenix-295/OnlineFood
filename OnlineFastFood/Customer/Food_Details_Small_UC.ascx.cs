using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;
using MySql.Data;
using System.Drawing;

namespace OnlineFastFood.Customer
{
    public partial class Food_Details_Small_UC : System.Web.UI.UserControl
    {
        string BtnArgument;
        int cnt,q1; 
        string currentuser;
        bool var1;
        string shocartid,qty,pric;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            currentuser = Session["cuser"].ToString();
            if (!IsPostBack)
            {
                var1 = false;
                filldl();
                CalTotal();
            }
        }

        protected void CalTotal()
        {
            string constr;
            constr = ConfigurationManager.ConnectionStrings["FoodDatabase"].ConnectionString;
            MySqlConnection conn1 = new MySqlConnection(constr);
            conn1.Open();
            MySqlCommand obj = new MySqlCommand("SELECT COUNT(*) FROM shop_cart where User_Name_1='" + currentuser + "'", conn1);
            cnt = Convert.ToInt32(obj.ExecuteScalar());
            lblq.Text = cnt.ToString();
            conn1.Close();
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
                s2 = "SELECT * From food_details where Cat_ID=1";
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

        protected void DataList1_UpdateCommand(object source, DataListCommandEventArgs e)
        {
            chkItem(source,e);
            Label itemname1 = (Label)DataList1.Items[e.Item.ItemIndex].FindControl("lbliname");
            Label nowprice = (Label)DataList1.Items[e.Item.ItemIndex].FindControl("lblwasp");
            LinkButton add = (LinkButton)DataList1.Items[e.Item.ItemIndex].FindControl("LinkButton1");
            Label owner_1 = (Label)DataList1.Items[e.Item.ItemIndex].FindControl("lbl_owner");
            BtnArgument = add.CommandArgument.ToString();

            string con;
            con = ConfigurationManager.ConnectionStrings["FoodDatabase"].ConnectionString;
            MySqlConnection conn1 = new MySqlConnection(con);
            conn1.Open();
            if (var1 == false)
            {
                MySqlCommand obj = new MySqlCommand("INSERT into shop_cart(Item_Code,Item_Name,Qty,Price,Tran_Date,Total,User_Name_1,Owner) values (@a,@b,@c,@d,@e,@f,@g,@h)", conn1);
                obj.Parameters.AddWithValue("@a", BtnArgument);
                obj.Parameters.AddWithValue("@b", itemname1.Text);
                obj.Parameters.AddWithValue("@c", 1);
                obj.Parameters.AddWithValue("@d", nowprice.Text);
                obj.Parameters.AddWithValue("@e", Convert.ToDateTime(DateTime.Now.ToShortDateString()));
                obj.Parameters.AddWithValue("@f", nowprice.Text);
                obj.Parameters.AddWithValue("@g", currentuser);
                obj.Parameters.AddWithValue("@h", owner_1.Text);
                obj.ExecuteNonQuery();
            }
            else
            {
                q1 = Convert.ToInt32(qty) + 1;
                MySqlCommand obj = new MySqlCommand("UPDATE shop_cart SET Qty=@Qty where Shop_Cart_ID=@a", conn1);               
                obj.Parameters.AddWithValue("@Qty", q1);
                obj.Parameters.AddWithValue("@a", shocartid);
                obj.ExecuteNonQuery();
            }
            conn1.Close();
            totalup();
            CalTotal();
        }

        protected void totalup()
        {
            string con;
            int tt;
            tt = Convert.ToInt32(pric) * q1;
            con = ConfigurationManager.ConnectionStrings["FoodDatabase"].ConnectionString;
            MySqlConnection conn1 = new MySqlConnection(con);
            conn1.Open();
            MySqlCommand obj = new MySqlCommand("UPDATE shop_cart SET Total=@b where Shop_Cart_ID=@a", conn1);
            obj.Parameters.AddWithValue("@b", tt);
            obj.Parameters.AddWithValue("@a", shocartid);
            obj.ExecuteNonQuery();
            conn1.Close();
        }

        protected void chkItem(object source, DataListCommandEventArgs e)
        {
            Label itemname1 = (Label)DataList1.Items[e.Item.ItemIndex].FindControl("Label1");

            Label nowprice = (Label)DataList1.Items[e.Item.ItemIndex].FindControl("Label3");
            LinkButton add = (LinkButton)DataList1.Items[e.Item.ItemIndex].FindControl("LinkButton1");
            BtnArgument = add.CommandArgument.ToString();
            string s1, s2;
            s1 = ConfigurationManager.ConnectionStrings["FoodDatabase"].ConnectionString;
            s2 = "Select * from shop_cart";
            MySqlConnection conn = new MySqlConnection(s1);
            conn.Open();
            MySqlDataAdapter da = new MySqlDataAdapter(s2, s1);
            DataSet ds1 = new DataSet();
            da.Fill(ds1, "t1");
            foreach (DataRow r1 in ds1.Tables["t1"].Rows)
            {
                if ((r1["Item_Code"].ToString() == BtnArgument) && (r1["User_Name_1"].ToString() == currentuser))
                {
                    shocartid = r1["Shop_Cart_ID"].ToString();
                    qty = r1["Qty"].ToString();
                    pric = r1["Price"].ToString();
                    var1 = true;
                    break;
                }
                else
                {
                    var1 = false;
                }
            }
            conn.Close();
        }
    }
}