using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using IFM2B_PROJECT_main.ACAD_Reference;


namespace IFM2B_PROJECT_main
{
    public partial class BecomeTutor : System.Web.UI.Page
    {
        ACAD_ServiceClient client = new ACAD_ServiceClient();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Btn_RegTutor(object sender, EventArgs e)
        {


            string filename = "";
            if (FileUpload1.HasFile)
            {
                try
                {
                    filename = System.IO.Path.GetFileName(FileUpload1.FileName);
                    string fullPath = Server.MapPath("images\\tutors\\") + filename;
                    FileUpload1.SaveAs(fullPath);

                    message.InnerText = filename + " uploaded!";
                }
                catch (Exception ex)
                {
                    message.InnerText = filename + " could not be uploaded. The following error occured: " + ex.Message;
                }
            }

            MyTutor myTutor = new MyTutor
            {
                firstname = firstname.Value,
                lastname = lastname.Value,
                email = email.Value,
                description = desc.Value,
                location = location.Value,
                price = Convert.ToDecimal(price.Value),
                image = "images/tutors/" + filename

            };
            int tutorExist = client.AddTutor(myTutor);

            if (tutorExist == 1)
            {
                message.InnerText = "Successfully updated";
            }
            else if (tutorExist == -1)
            {
                message.InnerText = "Something went wrong";
            }
            else if (tutorExist == 0)
            {
                message.InnerText = "The Tutor already Exists";
            }



            CleanInputs();
        }

        private void CleanInputs()
        {
            firstname.Value = "";
            lastname.Value = "";
            email.Value = "";
            desc.Value = "";
            location.Value = "";
            price.Value = "";

        }

    }
}
