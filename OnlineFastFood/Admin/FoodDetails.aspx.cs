﻿using System;
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

        protected void Fillgv()
        {
            string s1, s2;
            s1 = ConfigurationManager.ConnectionStrings["FoodDatabase"].ToString(); ;
            s2 = "SELECT * FROM food_details";
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

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            smallimg();

            largeimg();

            string s1;
            s1 = ConfigurationManager.ConnectionStrings["FoodDatabase"].ToString(); ;
            MySqlConnection conn = new MySqlConnection(s1);

            conn.Open();
            MySqlCommand cmd = new MySqlCommand("INSERT into food_details(Item_Name,Cat_ID,Item_Details,Image1,Image2,Was_Price,Now_Price) values (@a,@b,@c,@d,@e,@f,@g)", conn);
            cmd.Parameters.AddWithValue("@a", txtitemname.Text);
            cmd.Parameters.AddWithValue("@b", cat_dropdown.SelectedValue);
            cmd.Parameters.AddWithValue("@c", txtitemdetails.Text);
            cmd.Parameters.AddWithValue("@d", "~/Styles/small/" + filetitle);
            cmd.Parameters.AddWithValue("@e", "~/Styles/large/" + filetitle1);
            cmd.Parameters.AddWithValue("@f", txtwas.Text);
            cmd.Parameters.AddWithValue("@g", txtnow.Text);
            
            cmd.ExecuteNonQuery();
            conn.Close();
            lblmsg.BackColor = Color.Green;
            lblmsg.ForeColor = Color.White;
            lblmsg.Text = "Added Successfully";
            Fillgv();
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