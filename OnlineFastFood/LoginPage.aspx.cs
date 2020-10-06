using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.Security;
using System.Web.UI.WebControls;

namespace OnlineFastFood
{
    public partial class LoginPage : System.Web.UI.Page
    {
        string role1, currentuser1;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcust();
        }

        protected void getcust()
        {
            bool x;
            currentuser1 = User.Identity.Name.ToString();
            x = Roles.IsUserInRole("Customer");
            if (x == true)
            {
                Response.Redirect("Cust_regestration.aspx");
            }
        }

    }
}