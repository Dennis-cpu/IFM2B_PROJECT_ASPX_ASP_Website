<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="IFM2B_PROJECT_main.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <section id="about">
    <h1 class="font-bold text-4xl">Learn with Academia</h1>
    <p class = "p-3">Get support online for all your courses or subjects. <br> high quality tutors to assist with exam prep, homeworks,<br> or any academic concept.</p>
    <button
                        class="bg-yellow-500 text-white active:bg-yellow-600 font-bold uppercase text-sm px-6 py-3 rounded-full shadow hover:shadow-lg outline-none focus:outline-none mr-1 mb-1 ease-linear transition-all duration-150"
                        type="button">
                        Find a tutor
                    </button>
                    <div class="features">
    <div class="feature">
      <img src="images/svgs/tutor.svg" alt=""  class="inline w-60"/>
      <p>Find High quality Tutors & Learn Online</p>
    </div>

    <div class="feature">
      <img src="images/svgs/achieve.svg" alt="" class="inline w-60" />
      <p>Accelerate your academic grades</p>
    </div>

    <div class="feature">
      <img src="images/svgs/affordable.svg" alt="" class="inline w-60"/>
      <p>Get affordable tutoring sessions</p>
    </div>
  </div>
  </section>
</asp:Content>
