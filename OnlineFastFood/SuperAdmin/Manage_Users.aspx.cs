using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using MySql.Data.MySqlClient;

namespace OnlineFastFood.SuperAdmin
{
    public partial class Manage_Users : System.Web.UI.Page
    {
        string muser;
        protected void Page_Load(object sender, EventArgs e)
        {
            muser = User.Identity.Name.ToString();
            if (!IsPostBack)
            {
                lst2();
            }
        }

        protected void btngu_Click(object sender, EventArgs e)
        {
            ListBox4.DataSource = Membership.GetAllUsers();
            ListBox4.DataBind();
        }

        protected void databind3()
        {
            string text = ListBox5.SelectedItem.ToString();
            ListBox6.DataSource = Roles.GetUsersInRole(text);
            ListBox6.DataBind();
        }

        protected void btndu_Click(object sender, EventArgs e)
        {
            string name = ListBox6.SelectedItem.Text.ToString();
            Membership.DeleteUser(ListBox6.SelectedItem.Text.ToString());
            Label2.Text = "User Deleted Successfully";
            databind3();

            string conn;
            conn = ConfigurationManager.ConnectionStrings["AccessDb"].ToString(); ;
            MySqlConnection ocon = new MySqlConnection(conn);

            ocon.Open();

            MySqlCommand cmd = new MySqlCommand("Delete from CoustmerRegistration where UserName='" + name + "'", ocon);
            int res = cmd.ExecuteNonQuery();
            cmd.ExecuteNonQuery();
            ocon.Close();
        }

        protected void lst2()
        {
            ListBox5.DataSource = Roles.GetAllRoles();
            ListBox5.DataBind();
        }

        protected void ListBox2_SelectedIndexChanged(object sender, EventArgs e)
        {
            //ListBox2.DataSource = Roles.GetAllRoles();
            //ListBox2.DataBind();
            databind3();
        }
    }
}