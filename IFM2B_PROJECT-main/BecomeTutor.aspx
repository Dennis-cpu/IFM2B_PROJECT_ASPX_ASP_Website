<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BecomeTutor.aspx.cs" Inherits="IFM2B_PROJECT_main.BecomeTutor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="mt-10 sm:mt-0 min-h-screen flex items-center justify-center bg-gray-50 py-12 px-4 sm:px-6 lg:px-8">
        <div class="max-w-lg w-full space-y-8">

            <div class="mt-5 md:mt-0 md:col-span-2">
                <form action="#" method="POST" runat="server">
                    <div class="shadow overflow-hidden sm:rounded-md">
                        <div>
                            <img class="mx-auto h-12 w-auto" src="images/Logo.png" alt="Workflow">
                            <h2 class="mt-6 text-center text-3xl font-bold text-gray-900">Become a Tutor, Register
                            </h2>

                        </div>


                        <div class="px-4 py-5 bg-white sm:p-6">
                            <div class="grid grid-cols-6 gap-6">
                                <div class="col-span-6 sm:col-span-3">
                                    <label for="first-name" class="block text-sm font-medium text-gray-700">First name<a style="color: dimgray;">*</a></label>
                                    <input id="firstname" runat="server" type="text" name="first-name" autocomplete="given-name" required="required" class="border border-gray mt-1 focus:ring-indigo-500 focus:border-indigo-500 block w-full shadow-sm sm:text-sm border-gray-300 rounded-md">
                                </div>

                                <div class="col-span-6 sm:col-span-3">
                                    <label for="last-name" class="block text-sm font-medium text-gray-700">Last name<a style="color: dimgray;">*</a></label>
                                    <input id="lastname" runat="server" type="text" name="last-name" autocomplete="family-name" required="required" class="border border-gray mt-1 focus:ring-indigo-500 focus:border-indigo-500 block w-full shadow-sm sm:text-sm border-gray-300 rounded-md">
                                </div>

                                <div class="col-span-6 sm:col-span-4">
                                    <label for="email-address" class="block text-sm font-medium text-gray-700">Email address<a style="color: dimgray;">*</a></label>
                                    <input id="email" runat="server" type="text" name="email-address" autocomplete="email" required="required" class="border border-gray mt-1 focus:ring-indigo-500 focus:border-indigo-500 block w-full shadow-sm sm:text-sm border-gray-300 rounded-md">
                                </div>



                                <div class="col-span-6">
                                    <label for="desc" class="block text-sm font-medium text-gray-700">Description<a style="color: dimgray;">*</a></label>

                                    <textarea id="desc" runat="server" rows="4" cols="50" name="comment" class="border border-gray mt-1 focus:ring-indigo-500 focus:border-indigo-500 block w-full shadow-sm sm:text-sm border-gray-300 rounded-md"></textarea>

                                </div>


                                <div class="col-span-6 sm:col-span-6 lg:col-span-4">
                                    <label for="location" class="block text-sm font-medium text-gray-700">Location<a style="color: dimgray;">*</a></label>
                                    <input id="location" runat="server" type="text" name="city" required="required" class="border border-gray mt-1 focus:ring-indigo-500 focus:border-indigo-500 block w-full shadow-sm sm:text-sm border-gray-300 rounded-md">
                                </div>

                                <div class="col-span-4 sm:col-span-3">
                                    <label for="price" class="block text-sm font-medium text-gray-700">Pricing<a style="color: dimgray;">*</a></label>
                                    <input id="price" runat="server" type="text" name="email-address" autocomplete="price" required="required" class="border border-gray mt-1 focus:ring-indigo-500 focus:border-indigo-500 block w-full shadow-sm sm:text-sm border-gray-300 rounded-md">
                                </div>


                            </div>
                            <p id="message" runat="server"></p>
                        </div>


                        <div class="px-4 py-3 bg-gray-50 text-center sm:px-6">
                            <div class="col-span-4 sm:col-span-3">
                                <label for="price" class="block text-sm font-medium text-gray-700">Profile Picture<a style="color: dimgray;">*</a></label>


                                <asp:ScriptManager ID="ScriptManager1" runat="server" />
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                    <ContentTemplate>
                                        <asp:FileUpload ID="FileUpload1" runat="server" />
                                        <asp:Button ID="btnUpload" runat="server" Text="Register Tutor" class="inline-flex justify-center py-2 px-4 border border-transparent shadow-sm text-sm font-medium rounded-md text-white bg-yellow-600 hover:bg-yellow-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500"
                                            OnClick="Btn_RegTutor" />
                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:PostBackTrigger ControlID="btnUpload" />
                                    </Triggers>
                                </asp:UpdatePanel>

                            </div>
                        </div>



                    </div>

                    <div class="text-sm">
                        <a href="Tutors.aspx" class="font-medium text-blue-600 hover:text-blue-400">Go to Tutors
                        </a>
                    </div>

                </form>
            </div>




            <script>
                function validateInput() {

                }
                function checkMatch() {
                    if (document.getElementById('password1').value == document.getElementById('password2').value) {
                        let message = document.getElementById('message')
                        message.style.color = "green"
                        message.innerText = "Matching"
                    } else {
                        let message = document.getElementById('message')
                        message.style.color = "red"
                        message.innerText = "Not Matching"
                    }
                }
            </script>
        </div>
    </div>

</asp:Content>
