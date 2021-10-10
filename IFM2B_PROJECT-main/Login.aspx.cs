using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using IFM2B_PROJECT_main.ACAD_Reference;


namespace IFM2B_PROJECT_main
{
    public partial class Login : System.Web.UI.Page
    {
        ACAD_ServiceClient client = new ACAD_ServiceClient();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_Login(object sender, EventArgs e)
        {
            //int userExist = client.Login(email.Value, password.Value);

            int UserExist = client.Login(email.Value, password.Value);

            //if (UserExist == 1)
            //{
            //    User user = client.getUser(UserExist);

            //    Session["Id"] = user.Id;
            //    Session["Firstname"] = user.Firstname;
            //    Session["UserType"] = user.UserType;

            //    if (user.UserType.Equals(1))
            //    {

            //        Response.Redirect("Admin.aspx");
            //    }
            //    else if (user.UserType == 0)
            //    {

            //        Response.Redirect("Home.aspx");
            //    }

            //}

            if (UserExist == 1)
            {
                User user = client.getUser(UserExist);

                //Session["Id"] = user.Id;
                //Session["Firstname"] = user.Firstname;
                //Session["UserType"] = user.UserType;

                Response.Redirect("Home.aspx");



            }

            else
            {
                Response.Redirect("WrongPass.aspx");
                email.Value = "";
                password.Value = "";
                //popUpMessage.Value = "Incorrect Password or Email";
                //popUpMessage.Visible = true;
            }
        }
    }
}