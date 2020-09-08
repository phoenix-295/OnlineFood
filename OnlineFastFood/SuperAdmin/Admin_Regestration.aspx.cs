using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using MySql.Data.MySqlClient;
using System.Data;
using System.Configuration;

namespace OnlineFastFood.SuperAdmin
{
    public partial class Admin_Regestration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
        {
            string newRole = "Admin";
            Roles.AddUserToRole(CreateUserWizard1.UserName, newRole);
            areg();
        }

        protected void areg()
        {
            CreateUserWizard1.Email = txtmail.Text;
            string conn = ConfigurationManager.ConnectionStrings["FoodDatabase"].ConnectionString;
            
            MySqlConnection ocon = new MySqlConnection(conn);

            ocon.Open();
            string mUserName = CreateUserWizard1.UserName;
            MySqlCommand cmd = new MySqlCommand("INSERT into admin_registration (f_name,m_name,l_name,contact_no,adress,state,city,email_id,pin_code,user_name) values(@a,@b,@c,@d,@e,@f,@g,@h,@i,@j)", ocon);
            cmd.Parameters.AddWithValue("@a", txtfname.Text);
            cmd.Parameters.AddWithValue("@b", txtmname.Text);
            cmd.Parameters.AddWithValue("@c", txtlastname.Text);
            cmd.Parameters.AddWithValue("@d", txtcontact.Text);
            cmd.Parameters.AddWithValue("@e", txtadress.Text);
            cmd.Parameters.AddWithValue("@f", txtloc.Text);
            cmd.Parameters.AddWithValue("@g", txtcity.Text);
            cmd.Parameters.AddWithValue("@h", txtmail.Text);
            cmd.Parameters.AddWithValue("@i", txtpin.Text);
            cmd.Parameters.AddWithValue("@j", mUserName);


            cmd.ExecuteNonQuery();
            ocon.Close();
        }
    }
}