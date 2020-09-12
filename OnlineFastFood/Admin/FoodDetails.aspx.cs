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

namespace OnlineFastFood.Admin
{
    public partial class FoodDetails : System.Web.UI.Page
    {
        string filetitle, filetitle1;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillDrop();
                Fillgv();
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
            catch (Exception e)
            {
                Response.Write(e);
            }
        }

        protected void Fillgv()
        {
            string muser = User.Identity.Name.ToString();
            try
            {
                string s1, s2;
                s1 = ConfigurationManager.ConnectionStrings["FoodDatabase"].ToString();
                s2 = "SELECT * FROM food_details where user1='" + muser + "'";
                MySqlConnection conn1;
                conn1 = new MySqlConnection(s1);
                conn1.Open();
                MySqlDataAdapter da1 = new MySqlDataAdapter(s2, s1);
                DataSet ds1 = new DataSet();
                da1.Fill(ds1, "a");
                gv1.DataSource = ds1.Tables["a"].DefaultView;
                gv1.DataBind();
                conn1.Close();
                ViewState["mydataset"] = ds1;
            }
            catch(Exception e)
            {
                Response.Write(e);
            }
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            smallimg();

            largeimg();

            string muser = User.Identity.Name.ToString();

            try
            {
                string s1;
                s1 = ConfigurationManager.ConnectionStrings["FoodDatabase"].ToString(); ;
                MySqlConnection conn = new MySqlConnection(s1);

                conn.Open();
                MySqlCommand cmd = new MySqlCommand("INSERT into food_details(Item_Name,Cat_ID,Item_Details,Image1,Image2,Was_Price,Now_Price,user1) values (@a,@b,@c,@d,@e,@f,@g,@h)", conn);
                cmd.Parameters.AddWithValue("@a", txtitemname.Text);
                cmd.Parameters.AddWithValue("@b", cat_dropdown.SelectedValue);
                cmd.Parameters.AddWithValue("@c", txtitemdetails.Text);
                cmd.Parameters.AddWithValue("@d", filetitle);
                cmd.Parameters.AddWithValue("@e", filetitle1);
                cmd.Parameters.AddWithValue("@f", txtwas.Text);
                cmd.Parameters.AddWithValue("@g", txtnow.Text);
                cmd.Parameters.AddWithValue("@h", muser);

                cmd.ExecuteNonQuery();
                conn.Close();
                lblmsg.BackColor = Color.Green;
                lblmsg.ForeColor = Color.White;
                lblmsg.Text = "Added Successfully";
                Fillgv();
            }
            catch(Exception x)
            {
                Response.Write(x);
            }
        }

        protected void smallimg()
        {
            try
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

                            filetitle = "~/Styles/small/" + filetitle;
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
            catch (Exception x)
            {
                Response.Write(x);
            }
            
        }

        protected void gv1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                string Uid = gv1.DataKeys[e.RowIndex].Values["Item_Code"].ToString();
                Session["itemcode"] = Uid.ToString();
                Response.Redirect("Food_Details_Edit.aspx");
            }
            catch (Exception x)
            {
                Response.Write(x);
            }
        }

        protected void btnclear_Click(object sender, EventArgs e)
        {
            try
            {
                txtitemname.Text = "";
                txtitemdetails.Text = "";
                txtnow.Text = "";
                txtwas.Text = "";
                cat_dropdown.SelectedValue = "1";
                lblmsg.Text = "";
            }
            catch (Exception x)
            {
                Response.Write(x);
            }
        }

        protected void gv1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string ic = gv1.DataKeys[e.RowIndex].Values["Item_Code"].ToString();         
            string conn;
            conn = ConfigurationManager.ConnectionStrings["FoodDatabase"].ToString();
            MySqlConnection ocon = new MySqlConnection(conn);
            ocon.Open();
            MySqlCommand cmd = new MySqlCommand("Delete from food_details where Item_Code=" + ic, ocon);
            int res = cmd.ExecuteNonQuery();
            gv1.EditIndex = -1;
            cmd.ExecuteNonQuery();
            ocon.Close();
            if (res == 1)
            {
                Fillgv();
            }
        }

        protected void largeimg()
        {
            try
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
            catch (Exception x)
            {
                Response.Write(x);
            }
        }
    }

}