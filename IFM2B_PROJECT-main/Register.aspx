﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="IFM2B_PROJECT_main.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    

    <div class="mt-10 sm:mt-0 min-h-screen flex items-center justify-center bg-gray-50 py-12 px-4 sm:px-6 lg:px-8">
        <div class="max-w-lg w-full space-y-8">

            <div class="mt-5 md:mt-0 md:col-span-2">
                <form action="#" method="POST">
                    <div class="shadow overflow-hidden sm:rounded-md">
                        <div>
                            <img class="mx-auto h-12 w-auto" src="images/Logo.png" alt="Workflow">
                            <h2 class="mt-6 text-center text-3xl font-bold text-gray-900">Register your account
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

                                <div class="col-span-6 sm:col-span-3">
                                    <label for="qualification" class="block text-sm font-medium text-gray-700">Qualification Level<a style="color: dimgray;">*</a></label>
                                    <%--<select id="qualification" name="qualification" autocomplete="qualification" required="required" class="mt-1 block w-full py-2 px-3 border border-gray-300 bg-white rounded-md shadow-sm focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm">
                                        <option>University</option>
                                        <option>College</option>
                                        <option>High School</option>
                                    </select>--%>

                                    <select id="qualifications" runat="server" name="qualification" autocomplete="qualification" required="required" class="mt-1 block w-full py-2 px-3 border border-gray-300 bg-white rounded-md shadow-sm focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm">
                                        <option>University</option>
                                        <option>College</option>
                                        <option>High School</option>

                                    </select>

                                </div>

                                <div class="col-span-6">
                                    <label for="street-address" class="block text-sm font-medium text-gray-700">Street address<a style="color: dimgray;">*</a></label>
                                    <input id="street" runat="server" type="text" name="street-address" autocomplete="street-address" required="required" class="border border-gray mt-1 focus:ring-indigo-500 focus:border-indigo-500 block w-full shadow-sm sm:text-sm border-gray-300 rounded-md">
                                </div>

                                <div class="col-span-6 sm:col-span-6 lg:col-span-2">
                                    <label for="city" class="block text-sm font-medium text-gray-700">City<a style="color: dimgray;">*</a></label>
                                    <input id="city" runat="server" type="text" name="city" required="required" class="border border-gray mt-1 focus:ring-indigo-500 focus:border-indigo-500 block w-full shadow-sm sm:text-sm border-gray-300 rounded-md">
                                </div>

                                <div class="col-span-6 sm:col-span-3 lg:col-span-2">
                                    <label for="state" class="block text-sm font-medium text-gray-700">State / Province<a style="color: dimgray;">*</a></label>
                                    <input id="state" runat="server" type="text" name="state" required="required" class="border border-gray mt-1 focus:ring-indigo-500 focus:border-indigo-500 block w-full shadow-sm sm:text-sm border-gray-300 rounded-md">
                                </div>

                                <div class="col-span-6 sm:col-span-3 lg:col-span-2">
                                    <label for="postal-code" class="block text-sm font-medium text-gray-700">ZIP / Postal<a style="color: dimgray;">*</a></label>
                                    <input id="postal_code" runat="server" type="text" name="postal-code" autocomplete="postal-code" required="required" class="border border-gray mt-1 focus:ring-indigo-500 focus:border-indigo-500 block w-full shadow-sm sm:text-sm border-gray-300 rounded-md">
                                </div>
                                <div class="col-span-6 sm:col-span-4">
                                    <label for="password" class="block text-sm font-medium text-gray-700">Password<a style="color: dimgray;">*</a></label>
                                    <input id="password1" runat="server" name="password" type="password" data-type="password" autocomplete="current-password" required="required" class="appearance-none rounded-none relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 rounded-b-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm" placeholder="Password">
                                </div>
                                <div class="col-span-6 sm:col-span-4">
                                    <label for="password" class="block text-sm font-medium text-gray-700">Confirm Password<a style="color: dimgray;">*</a></label>
                                    <input id="password2" runat="server" onkeyup="checkMatch()" data-type="password" name="password" type="password" autocomplete="current-password" required="required" class="appearance-none rounded-none relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 rounded-b-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm" placeholder="Re-Type Password">
                                </div>

                            </div>
                            <p id="message"></p>
                        </div>
                        <div class="px-4 py-3 bg-gray-50 text-center sm:px-6">

                            <form runat="server">

                                <asp:Button type="button" class="inline-flex justify-center py-2 px-4 border border-transparent shadow-sm text-sm font-medium rounded-md text-white bg-yellow-600 hover:bg-yellow-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500"
                                    runat="server" Text="Register" OnClick="Btn_Register" />
                            </form>



                        </div>
                    </div>
                    <div class="flex items-center justify-between">
                        <div class="flex items-center">
                            <input id="have-account" name="have-account" type="" class="h-4 w-4 text-indigo-600 focus:ring-indigo-500 border-gray-300 rounded">
                            <label for="have-account" class="ml-2 block text-sm text-gray-900">
                                Already Have An Account?
                 
                            </label>
                        </div>
                    </div>
                    <div class="text-sm">
                        <a href="Login.aspx" class="font-medium text-blue-600 hover:text-blue-400">Login
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
