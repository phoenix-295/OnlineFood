using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineFastFood.SuperAdmin
{
    public partial class Test : System.Web.UI.Page
    {
        string filetitle;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                smallimg();
                Label1.Text = filetitle.ToString();
            }
            catch (Exception x)
            {
                Response.Write(x.Message);
            }
        }

        protected void smallimg()
        {
            try
            {
                string fileName = FileUpload1.PostedFile.FileName;
                
                double fileSizeInKb = FileUpload1.PostedFile.ContentLength / 1024;
                //filetitle = FileUpload1.FileName;

                //string[] MatchExtension = { ".jpg", ".jpeg", ".png", ".gif" };
                //string[] MatchMimeType = { "image/jpeg", "image/gif", "image/png" };

                if (FileUpload1.HasFile)
                {
                    if (fileSizeInKb <= 1024)
                    {
                        //FileUpload1.SaveAs(Server.MapPath("~/Styles/small/" + filetitle));

                        filetitle = "~/Styles/small/" + fileName;
                    }
                    else
                    {
                        Response.Write("File size greater than 1 MB ");
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

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            double fileSizeInKb = FileUpload1.PostedFile.ContentLength / 1024;
            if (fileSizeInKb <= 1024)

            {

                args.IsValid = true;
                
            }

            else

            {

                args.IsValid = false;
                Label1.Text = "Great";
            }
        }
    }
}