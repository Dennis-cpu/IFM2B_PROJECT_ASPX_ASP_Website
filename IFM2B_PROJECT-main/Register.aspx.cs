using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using IFM2B_PROJECT_main.ACAD_Reference;


namespace IFM2B_PROJECT_main
{
    public partial class Register : System.Web.UI.Page
    {
        ACAD_ServiceClient client = new ACAD_ServiceClient();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_Register(object sender, EventArgs e)
        {


            if (password1.Value.Equals(password1.Value))
            {

                string theQualification = "";

                switch (qualifications.SelectedIndex)
                {
                    case 0:
                        theQualification = "University";
                        break;
                    case 1:
                        theQualification = "Collage";
                        break;
                    case 2:
                        theQualification = "High School";
                        break;

                }

                MyUser newUser = new MyUser
                {
                    firstname = firstname.Value,
                    lastname = lastname.Value,
                    email = email.Value,
                    qualification = theQualification,
                    street = street.Value,
                    city = city.Value,
                    province = state.Value,
                    postalCode = postal_code.Value,
                    passwd = password1.Value,
                };



                if (client.Register(newUser) == 1)
                {
                    if (Session["Firstname"] != null)
                    {
                        Response.Redirect("Home.aspx");

                    }

                }
                else if (client.Register(newUser) == 0)
                {
                    //The User Exists
                    //You did not save changes in the backend
                    Response.Redirect("AlreadyRegistered.aspx");
                }


            }

            firstname.Value = "";
            lastname.Value = "";
            email.Value = "";
            // qualification.Value = "";
            street.Value = "";
            city.Value = "";
            state.Value = "";
            postal_code.Value = "";
            password1.Value = "";
            password2.Value = "";
        }
    }
}