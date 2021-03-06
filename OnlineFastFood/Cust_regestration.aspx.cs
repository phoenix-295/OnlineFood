﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using System.Configuration;
using System.Web.Security;

namespace OnlineFastFood
{
    public partial class Cust_regestration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void creg()
        {
            try
            {
                string conn = ConfigurationManager.ConnectionStrings["FoodDatabase"].ConnectionString;

                MySqlConnection ocon = new MySqlConnection(conn);

                ocon.Open();
                string mUserName = CreateUserWizard1.UserName;
                string pass = CreateUserWizard1.Password;
                string mailid = CreateUserWizard1.Email;
                MySqlCommand cmd = new MySqlCommand("INSERT into cust_registration (f_name,m_name,l_name,contact_no,adress,state,city,email_id,pin_code,user_name,pass) values(@a,@b,@c,@d,@e,@f,@g,@h,@i,@j,@k)", ocon);
                cmd.Parameters.AddWithValue("@a", txtfname.Text);
                cmd.Parameters.AddWithValue("@b", txtmname.Text);
                cmd.Parameters.AddWithValue("@c", txtlastname.Text);
                cmd.Parameters.AddWithValue("@d", txtcontact.Text);
                cmd.Parameters.AddWithValue("@e", txtadress.Text);
                cmd.Parameters.AddWithValue("@f", txtloc.Text);
                cmd.Parameters.AddWithValue("@g", txtcity.Text);
                cmd.Parameters.AddWithValue("@h", mailid);
                cmd.Parameters.AddWithValue("@i", txtpin.Text);
                cmd.Parameters.AddWithValue("@j", mUserName);
                cmd.Parameters.AddWithValue("@k", pass);

                cmd.ExecuteNonQuery();
                ocon.Close();
            }
            catch (Exception x)
            {
                Response.Write(x);
            }
        }

        protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
        {
            string newRole = "Customer";
            Roles.AddUserToRole(CreateUserWizard1.UserName, newRole);
            creg();
        }
    }
}