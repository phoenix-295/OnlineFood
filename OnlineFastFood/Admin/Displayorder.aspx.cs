using System;
using System.Configuration;
using MySql.Data.MySqlClient;
using System.Data;
using System.Drawing;

namespace OnlineFastFood.Admin
{
    public partial class Displayorder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                disable();
                filltable();

            }
        }

        protected void filltable()
        {
            string s1, s2;
            s1 = ConfigurationManager.ConnectionStrings["FoodDatabase"].ConnectionString;

            string oid = Request.QueryString["order_id"];
            s2 = "Select order_id, DATE_FORMAT(Date_Created, \" %d/%m/%Y \") Date_Created, DATE_FORMAT(Date_Shipped, \" %d/%m/%Y \") Date_Shipped, Verified, Dilivery_Status, Payment_Dilevery_Status, Completed, Cancled, Comment, Coustmer_Name, Coustmer_Email, Shipping_Adress, Pin, User_Name from order1 where order_id=" + oid;
            MySqlConnection con = new MySqlConnection(s1);
            con.Open();
            MySqlDataAdapter da = new MySqlDataAdapter(s2, s1);
            DataSet ds = new DataSet();
            da.Fill(ds, "a");

            foreach (DataRow r1 in ds.Tables["a"].Rows)
            {
                if ((r1["order_id"].ToString() == oid))
                {
                    TextBox1.Text = r1["Date_Created"].ToString();
                    txrds.Text = r1["Date_Created"].ToString();
                    if (r1["Verified"].ToString() == "1")
                    {
                        chkv.Checked = true;
                        btnv.Enabled = false;
                        btnds.Enabled = true;
                        btnps.Enabled = false;
                        btncs.Enabled = false;
                        btncns.Enabled = false;
                    }
                    else
                    {
                        chkv.Checked = false;
                        btnv.Enabled = true;
                        btnds.Enabled = false;
                        btnps.Enabled = false;
                        btncs.Enabled = false;
                        btncns.Enabled = false;
                    }

                    if (r1["Dilivery_Status"].ToString() == "1")
                    {
                        chkdel.Checked = true;
                        btnv.Enabled = false;
                        btnds.Enabled = false;
                        btnps.Enabled = true;
                        btncs.Enabled = false;
                        btncns.Enabled = true;
                    }
                    else
                    {
                        chkdel.Checked = false;
                        btncs.Enabled = false;
                    }

                    if (r1["Payment_Dilevery_Status"].ToString() == "1")
                    {
                        chkprs.Checked = true;
                        btnv.Enabled = false;
                        btnds.Enabled = false;
                        btnps.Enabled = false;
                        btncs.Enabled = true;
                        btncns.Enabled = false;
                    }
                    else
                    {
                        chkprs.Checked = false;
                    }

                    if (r1["Completed"].ToString() == "1")
                    {
                        chkcom.Checked = true;
                        btnv.Enabled = false;
                        btnds.Enabled = false;
                        btnps.Enabled = false;
                        btncs.Enabled = false;
                    }
                    else
                    {
                        chkcom.Checked = false;
                    }

                    if (r1["Cancled"].ToString() == "1")
                    {
                        chkcan.Checked = true;
                        btnv.Enabled = false;
                        btnds.Enabled = false;
                        btnps.Enabled = false;
                        btncs.Enabled = false;
                        btncns.Enabled = false;
                    }
                    else
                    {
                        chkcan.Checked = false;
                    }
                    txtcom.Text = r1["Comment"].ToString();
                    txtcname.Text = r1["Coustmer_Name"].ToString();
                    txtcemail.Text = r1["Coustmer_Email"].ToString();
                    txtship.Text = r1["Shipping_Adress"].ToString();

                }
            }
        }

        protected void disable()
        {
            TextBox1.Enabled = false;

            chkv.Enabled = false;
            chkdel.Enabled = false;

            chkprs.Enabled = false;
            chkcom.Enabled = false;
            chkcan.Enabled = false;

            txtcname.Enabled = false;
            txtcemail.Enabled = false;
            txtship.Enabled = false;
            txtcom.Enabled = false;

            btnupcom.Enabled = false;
            btnupds.Enabled = false;
            txrds.Enabled = false;
        }

        protected void btnv_Click(object sender, EventArgs e)
        {

            string s1;
            s1 = ConfigurationManager.ConnectionStrings["FoodDatabase"].ConnectionString;
            string oid = Request.QueryString["order_id"];
            MySqlConnection conn = new MySqlConnection(s1);
            conn.Open();
            chkv.Checked = true;

            MySqlCommand cmd = new MySqlCommand("Update order1 set Verified=@a where order_id=" + oid, conn);

            Boolean c = true;
            cmd.Parameters.AddWithValue("@a", c);

            cmd.ExecuteNonQuery();
            conn.Close();
            filltable();
        }

        protected void btnds_Click(object sender, EventArgs e)
        {
            btnps.Enabled = false;
            btncns.Enabled = false;
            txrds.Enabled = true;
            btnupds.Enabled = true;



            string s1;
            s1 = ConfigurationManager.ConnectionStrings["FoodDatabase"].ConnectionString;
            string oid = Request.QueryString["order_id"];
            MySqlConnection conn = new MySqlConnection(s1);
            conn.Open();
            chkv.Checked = true;

            MySqlCommand cmd = new MySqlCommand("Update order1 set Dilivery_Status=@a where order_id=" + oid, conn);

            Boolean c = true;
            cmd.Parameters.AddWithValue("@a", c);

            cmd.ExecuteNonQuery();
            conn.Close();
            filltable();
            Label2.Text = "Enter date dd/mm/yyyy";
        }

        protected void btnps_Click(object sender, EventArgs e)
        {
            string s1;
            s1 = ConfigurationManager.ConnectionStrings["FoodDatabase"].ConnectionString;
            string oid = Request.QueryString["order_id"];
            MySqlConnection conn = new MySqlConnection(s1);
            conn.Open();
            chkv.Checked = true;

            MySqlCommand cmd = new MySqlCommand("Update order1 set Payment_Dilevery_Status=@a where order_id=" + oid, conn);

            Boolean c = true;
            cmd.Parameters.AddWithValue("@a", c);

            cmd.ExecuteNonQuery();
            conn.Close();
            filltable();
        }

        protected void btncs_Click(object sender, EventArgs e)
        {
            string s1;
            s1 = ConfigurationManager.ConnectionStrings["FoodDatabase"].ConnectionString;
            string oid = Request.QueryString["order_id"];
            MySqlConnection conn = new MySqlConnection(s1);
            conn.Open();
            chkv.Checked = true;

            MySqlCommand cmd = new MySqlCommand("Update order1 set Completed=@a where order_id=" + oid, conn);

            Boolean c = true;
            cmd.Parameters.AddWithValue("@a", c);

            cmd.ExecuteNonQuery();
            conn.Close();
            filltable();
        }

        protected void btncns_Click(object sender, EventArgs e)
        {
            btnupcom.Enabled = true;
            txtcom.Enabled = true;
            string s1;
            s1 = ConfigurationManager.ConnectionStrings["FoodDatabase"].ConnectionString;
            string oid = Request.QueryString["order_id"];
            MySqlConnection conn = new MySqlConnection(s1);
            conn.Open();
            chkv.Checked = true;

            MySqlCommand cmd = new MySqlCommand("Update order1 set Cancled=@a where order_id=" + oid, conn);

            Boolean c = true;
            cmd.Parameters.AddWithValue("@a", c);

            cmd.ExecuteNonQuery();
            conn.Close();
            filltable();
            Label1.Text = "Enter Comment";
        }

        protected void btnupds_Click(object sender, EventArgs e)
        {
            btnps.Enabled = true;
            btncns.Enabled = true;
            string s1;
            s1 = ConfigurationManager.ConnectionStrings["FoodDatabase"].ConnectionString;
            string oid = Request.QueryString["order_id"];
            MySqlConnection conn = new MySqlConnection(s1);
            conn.Open();
            chkv.Checked = true;

            MySqlCommand cmd = new MySqlCommand("Update order1 set Date_Shipped=@a where order_id=" + oid, conn);


            cmd.Parameters.AddWithValue("@a", txrds.Text);

            cmd.ExecuteNonQuery();
            conn.Close();
            filltable();
            txrds.Enabled = false;
            btnupds.Enabled = false;
            lblmsg.Text = "";
            Label2.Text = "";
        }

        protected void btnupcom_Click(object sender, EventArgs e)
        {
            string s1;
            s1 = ConfigurationManager.ConnectionStrings["FoodDatabase"].ConnectionString;
            string oid = Request.QueryString["order_id"];
            MySqlConnection conn = new MySqlConnection(s1);
            conn.Open();
            chkv.Checked = true;

            MySqlCommand cmd = new MySqlCommand("Update order1 set Comment=@a where order_id=" + oid, conn);


            cmd.Parameters.AddWithValue("@a", txtcom.Text);

            cmd.ExecuteNonQuery();
            conn.Close();
            filltable();
            lblmsg.Text = "Comment Added and Updated Successfully";
            lblmsg.BackColor = Color.Green;
            lblmsg.ForeColor = Color.White;
        }
    }
}