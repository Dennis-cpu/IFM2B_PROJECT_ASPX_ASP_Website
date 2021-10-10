<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Tutors.aspx.cs" Inherits="IFM2B_PROJECT_main.Tutors" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

   
<div class="bg-white">
        <div class="max-w-2xl mx-auto py-16 px-4 sm:py-24 sm:px-6 lg:max-w-7xl lg:px-8">
            <h2 class="">Tutors</h2>
            <div class="grid grid-cols-1 gap-y-10 sm:grid-cols-2 gap-x-6 lg:grid-cols-3 xl:grid-cols-3 xl:gap-x-8">


                <div class="group" id="tutors_list" runat="server">

                    <%--Add the Tutors Here--%>

                </div>



            </div>
        </div>

    </div>

</asp:Content>
