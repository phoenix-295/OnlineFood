using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using System.Configuration;

namespace OnlineFastFood.Admin
{
    public partial class Food_CategoryEdit : System.Web.UI.Page
    {
        string ic,filetitle,filetitle1;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                FilloiceMasterInv();
                FillDrop();
            }
        }

        protected void FillDrop()
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
            int index1 = Convert.ToInt32(ic) - 1;
            cat_dropdown.SelectedIndex = index1;
            conn.Close();
        }

        protected void FilloiceMasterInv()
        {
            string itemcode = Session["itemcode"].ToString();
            string strcon = ConfigurationManager.ConnectionStrings["FoodDatabase"].ConnectionString;
            MySqlConnection con = new MySqlConnection(strcon);
            con.Open();
            MySqlDataAdapter da = new MySqlDataAdapter("SELECT * FROM  food_details" , con);
            DataSet ds1 = new DataSet();
            da.Fill(ds1, "t1");
            

            foreach (DataRow r1 in ds1.Tables["t1"].Rows)
            {
                if ((r1["Item_Code"].ToString() == itemcode))
                {
                    txtitemname.Text = r1["Item_Name"].ToString();
                    ic = r1["Cat_ID"].ToString();
                    txtitemdetails.Text = r1["Item_Details"].ToString();
                    Image1.ImageUrl = r1["Image1"].ToString();
                    Image2.ImageUrl = r1["Image2"].ToString();
                    txtwas.Text = r1["Was_Price"].ToString();
                    txtnow.Text = r1["Now_price"].ToString();
                }
            }
            con.Close();
            
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
           
                smallimg();

                largeimg();

            if (filetitle == "")
            {
                filetitle = Image1.ImageUrl;
            }
            else
            {
                filetitle = "~/Styles/small/" + filetitle;
            }

            if (filetitle1 == "")
            {
                filetitle1 = Image1.ImageUrl;
            }
            else
            {
                filetitle1 = "~/Styles/large/" + filetitle1;
            }

            string s1;
                s1 = ConfigurationManager.ConnectionStrings["FoodDatabase"].ToString(); ;
                MySqlConnection conn = new MySqlConnection(s1);

                conn.Open();
                MySqlCommand cmd = new MySqlCommand("INSERT into food_details(Item_Name,Cat_ID,Item_Details,Image1,Image2,Was_Price,Now_Price) values (@a,@b,@c,@d,@e,@f,@g)", conn);
                cmd.Parameters.AddWithValue("@a", txtitemname.Text);
                cmd.Parameters.AddWithValue("@b", cat_dropdown.SelectedValue);
                cmd.Parameters.AddWithValue("@c", txtitemdetails.Text);
                cmd.Parameters.AddWithValue("@d",  filetitle);
                cmd.Parameters.AddWithValue("@e",  filetitle1);
                cmd.Parameters.AddWithValue("@f", txtwas.Text);
                cmd.Parameters.AddWithValue("@g", txtnow.Text);

                cmd.ExecuteNonQuery();
                conn.Close();
              //  lblmsg.BackColor = Color.Green;
              //  lblmsg.ForeColor = Color.White;
              // lblmsg.Text = "Added Successfully";
              //Fillgv();
        }

            protected void smallimg()
            {
                string fileName = FileUpload1.PostedFile.FileName;
                string fileExtension = System.IO.Path.GetExtension(fileName);
                string fileMimeType = FileUpload1.PostedFile.ContentType;
                int fileSizeInKb = FileUpload1.PostedFile.ContentLength / 1024;
                filetitle = FileUpload1.FileName;

                string[] MatchExtension = { ".jpg", ".jpeg", ".png", ".gif" };
                string[] MatchMimeType = { "image/jpeg", "image/gif", "image/png" };

                if (FileUpload1.HasFile)
                {
                    if (MatchExtension.Contains(fileExtension) || MatchMimeType.Contains(fileMimeType))
                    {
                        if (fileSizeInKb <= 1024)
                        {
                            FileUpload1.SaveAs(Server.MapPath("~/Styles/small/" + filetitle));
                        }
                        else
                        {
                            Response.Write("File size greater than 1 MB");

                            filetitle = "~/Styles/small/" + filetitle;
                        }
                    }
                    else
                    {
                        Response.Write("Please Upload an .jpg, .jpeg, .gif or .png image");
                    }
                }
                else
                {
                    Response.Write("Please upload an image");
                }

            }
        protected void largeimg()
        {
            string fileName = FileUpload2.PostedFile.FileName;
            string fileExtension = System.IO.Path.GetExtension(fileName);
            string fileMimeType = FileUpload2.PostedFile.ContentType;
            int fileSizeInKb = FileUpload2.PostedFile.ContentLength / 1024;
            filetitle1 = FileUpload2.FileName;

            string[] MatchExtension = { ".jpg", ".jpeg", ".png", ".gif" };
            string[] MatchMimeType = { "image/jpeg", "image/gif", "image/png" };

            if (FileUpload2.HasFile)
            {
                if (MatchExtension.Contains(fileExtension) || MatchMimeType.Contains(fileMimeType))
                {
                    if (fileSizeInKb <= 4024)
                    {
                        FileUpload2.SaveAs(Server.MapPath("~/Styles/large/" + filetitle1));

                        filetitle1 = "~/Styles/large/" + filetitle1;
                    }
                    else
                    {
                        Response.Write("File size greater than 1 MB");
                    }
                }
                else
                {
                    Response.Write("Please Upload an .jpg, .jpeg, .gif or .png image");
                }
            }
            else
            {
                Response.Write("Please upload an image");
            }
        }
    }
}