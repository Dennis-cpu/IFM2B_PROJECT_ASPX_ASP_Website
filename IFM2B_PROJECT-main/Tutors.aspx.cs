using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using IFM2B_PROJECT_main.ACAD_Reference;


namespace IFM2B_PROJECT_main
{
    public partial class Tutors : System.Web.UI.Page
    {
        ACAD_ServiceClient client = new ACAD_ServiceClient();
        protected void Page_Load(object sender, EventArgs e)
        {
            Display();
        }

        public void Display()
        {
            string display = "";

            dynamic tutorsList = client.getAllTutors();

            foreach (Tutor t in tutorsList)
            {
                display += "<div";
                display += " class='w-full aspect-w-1 aspect-h-1 bg-white-200 rounded-lg overflow-hidden xl:aspect-w-7 xl:aspect-h-8'>";
                //display += " <img src = 'images/tutors/tutor1.png'";
                display += $" <img src = '{t.Image}'";
                display += " class='w-full h-full object-center object-cover group-hover:opacity-75'>";
                display += " </div>";
                //display += " <h1 class='mt-4 text-lg font-large text-blue'>Refilwe King</h1>";
                display += $" <h1 class='mt-4 text-lg font-large text-blue'>{t.Firstname} {t.Lastname}</h1>";
                display += " <p class='mt-1 text-sm font-medium text-yellow-500 text-yellow-500'>";
                //display += " Based in Johannesburg, South Africa.";
                display += $" Based in {t.Location}";
                display += " </p>";
                //display += " <h3 class='mt-4 text-sm text-gray-700'>Vibrant college student with experience in Maths tutoring Grade 12 level.";
                display += $" <h3 class='mt-4 text-sm text-gray-700'>{t.Description}";
                display += " </h3>";
                display += " <p class='mt-1 text-lg font-medium text-yellow-500 text-yellow-500'>";
                display += " R70 /Session";
                display += " </p>";
                display += " <button";
                display += " class='bg-yellow-500 text-white active:bg-yellow-600 font-bold uppercase text-sm px-6 py-3 rounded-full shadow hover:shadow-lg outline-none focus:outline-none mr-1 mb-1 ease-linear transition-all duration-150'";
                display += " type='button'>";
                display += " Add to Cart";
                display += " </button>";
            }




            tutors_list.InnerHtml = display;

        }
    }
}