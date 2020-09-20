using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using MySql.Data.MySqlClient;
using System.Data;

namespace OnlineFastFood.Admin
{
    public partial class Food_Details_Edit : System.Web.UI.Page
    {
        string filetitle, filetitle1;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FilloiceMasterInv();
                FillDrop();              
            }
        }

        protected void FillDrop()
        {
            try
            {
                string strcon = ConfigurationManager.ConnectionStrings["FoodDatabase"].ConnectionString;
                string s2 = "SELECT * FROM food_category";
                MySqlConnection conn = new MySqlConnection(strcon);
                conn.Open();
                MySqlDataAdapter da1 = new MySqlDataAdapter(s2, strcon);
                DataSet ds = new DataSet();
                da1.Fill(ds, "food_cat");
                cat_dropdown.DataSource = ds.Tables["food_cat"].DefaultView;
                cat_dropdown.DataTextField = "Cat_Title";
                cat_dropdown.DataValueField = "Cat_ID";
                cat_dropdown.DataBind();
                ViewState["vsFoodCategory"] = ds;
                conn.Close();
            }
            catch (Exception x)
            {
                Response.Write(x);
            }
        }

        protected void FilloiceMasterInv()
        {
            try
            {
                string itemcode = Session["itemcode"].ToString();
                string strcon = ConfigurationManager.ConnectionStrings["FoodDatabase"].ConnectionString;
                MySqlConnection con = new MySqlConnection(strcon);
                con.Open();
                MySqlDataAdapter da = new MySqlDataAdapter("SELECT * FROM  food_details", con);
                DataSet ds1 = new DataSet();
                da.Fill(ds1, "t1");
                foreach (DataRow r1 in ds1.Tables["t1"].Rows)
                {
                    if ((r1["Item_Code"].ToString() == itemcode))
                    {
                        txtitemname.Text = r1["Item_Name"].ToString();
                        cat_dropdown.SelectedValue = r1["Cat_ID"].ToString();
                        txtitemdetails.Text = r1["Item_Details"].ToString();
                        Image1.ImageUrl = r1["Image1"].ToString();
                        Image2.ImageUrl = r1["Image2"].ToString();
                        txtwas.Text = r1["Was_Price"].ToString();
                        txtnow.Text = r1["Now_price"].ToString();
                    }
                }
                con.Close();
            }
            catch (Exception x)
            {
                Response.Write(x);
            }

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            try
            {

                if (FileUpload1.HasFile)
                {
                    smallimg();
                }
                else
                {
                    
                    filetitle = Image1.ImageUrl;
                }

                if (FileUpload2.HasFile)
                {
                    largeimg();
                }
                else
                {
                    filetitle1 = Image2.ImageUrl;
                }

                string itemcode = Session["itemcode"].ToString();
                string s1;
                s1 = ConfigurationManager.ConnectionStrings["FoodDatabase"].ToString(); ;
                MySqlConnection conn = new MySqlConnection(s1);

                conn.Open();
                MySqlCommand cmd = new MySqlCommand("UPDATE food_details SET Item_Name=@a,Cat_ID=@b,Item_Details=@c,Image1=@d,Image2=@e,Was_Price=@f,Now_Price=@g where Item_Code=@ic", conn);
                cmd.Parameters.AddWithValue("@a", txtitemname.Text);
                cmd.Parameters.AddWithValue("@b", cat_dropdown.SelectedValue);
                cmd.Parameters.AddWithValue("@c", txtitemdetails.Text);
                cmd.Parameters.AddWithValue("@d", filetitle);
                cmd.Parameters.AddWithValue("@e", filetitle1);
                cmd.Parameters.AddWithValue("@f", txtwas.Text);
                cmd.Parameters.AddWithValue("@g", txtnow.Text);
                cmd.Parameters.AddWithValue("@ic", itemcode);

                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("FoodDetails.aspx");
            }
            catch (Exception x)
            {
                Response.Write(x);
            }
        }

        protected void btnclear_Click(object sender, EventArgs e)
        {
            Response.Redirect("FoodDetails.aspx");
        }

        protected void smallimg()
        {
            try
            {
                string fileName = FileUpload1.PostedFile.FileName;
                if (FileUpload1.HasFile)
                {
                    FileUpload1.SaveAs(Server.MapPath("~/Styles/small/" + fileName));
                    filetitle = "~/Styles/small/" + fileName;
                }
                else
                {
                    Response.Write("Please upload an image");
                }
            }
            catch (Exception x)
            {
                Response.Write(x);
            }

        }

        protected void largeimg()
        {
            try
            {
                string fileName = FileUpload2.PostedFile.FileName;
                if (FileUpload2.HasFile)
                {
                    FileUpload2.SaveAs(Server.MapPath("~/Styles/large/" + fileName));
                    filetitle1 = "~/Styles/large/" + fileName;
                }
                else
                {
                    Response.Write("Please upload an image");
                }
            }
            catch (Exception x)
            {
                Response.Write(x.Message);
            }
        }
    }
}