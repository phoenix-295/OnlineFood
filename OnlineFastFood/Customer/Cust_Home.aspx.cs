﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineFastFood.Customer
{
    public partial class Cust_Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string mcurrentuser = User.Identity.Name.ToString();
            Session["cuser"] = mcurrentuser;
        }
    }
}