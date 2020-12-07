using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace OnlineFastFood
{
    public partial class HomePage1 : System.Web.UI.Page
    {
        string currentuser1;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcust();
            getadmin();
            getsadmin();
        }

        protected void getcust()
        {
            bool x;
            currentuser1 = User.Identity.Name.ToString();
            x = Roles.IsUserInRole("Customer");
            if (x == true)
            {
                Response.Redirect("/Customer/Cust_Home.aspx");
            }
        }

        protected void getadmin()
        {
            //bool x;
            //currentuser1 = User.Identity.Name.ToString();
            //x = Roles.IsUserInRole("Admin");
            //if (x == true)
            //{
            //    Response.Redirect("/Admin/AdminHome.aspx");
            //}
        }

        protected void getsadmin()
        {
            //bool x;
            //currentuser1 = User.Identity.Name.ToString();
            //x = Roles.IsUserInRole("Sadmin");
            //if (x == true)
            //{
            //    Response.Redirect("/SuperAdmin/SAdminHome.aspx");
            //}
        }
    }
}