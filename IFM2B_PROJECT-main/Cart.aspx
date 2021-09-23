﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="IFM2B_PROJECT_main.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <nav>
    <div class="wrapper site-header__wrapper">
        <a href="Index.aspx" class="brand"><img src="images/Logo.png" alt="Academia Logo" width="190px"></a>
        <div class="nav">
            <button class="nav__toggle" aria-expanded="false" type="button">
                menu
            </button>
            <ul class="nav__wrapper">
                <li class="nav__item"><a href="Index.aspx">Home</a></li>
                <li class="nav__item"><a href="About.aspx">Search</a></li>
                <li class="nav__item"><a href="Cart.aspx">Cart<i class="fas fa fa-shopping-cart fa-lg"></i>
                    <span class="cart-basket d-flex align-items-center justify-content-center">
                      2
                    </span></a></li>
                <li class="nav__item"><a href="Index.aspx">Logout</a></li>
            </ul>
        </div>
    </div>
</nav>
<div class="bg-white">
  <div class="max-w-2xl mx-auto py-16 px-4 sm:py-24 sm:px-6 lg:max-w-7xl lg:px-8">
      <h2 class="">Tutors</h2>

      <div class="grid grid-cols-1 gap-y-10 sm:grid-cols-2 gap-x-6 lg:grid-cols-3 xl:grid-cols-3 xl:gap-x-8">
          <div class="group">
              <div
                  class="w-full aspect-w-1 aspect-h-1 bg-white-200 rounded-lg overflow-hidden xl:aspect-w-7 xl:aspect-h-8">
                  <img src="images/tutors/tutor1.png"
                      class="w-full h-full object-center object-cover group-hover:opacity-75">
              </div>
              <h1 class="mt-4 text-lg font-large text-blue"> Refilwe King</h1>
              <p class="mt-1 text-sm font-medium text-yellow-500 text-yellow-500">
                  Based in Johannesburg, South Africa.
              </p>
              <h3 class="mt-4 text-sm text-gray-700">
                  Vibrant college student with experience in Maths tutoring Grade 12 level.
              </h3>

              <p class="mt-1 text-lg font-medium text-yellow-500 text-yellow-500">
                  R70 /Session
              </p>
              <button
                  class="bg-yellow-500 text-white active:bg-yellow-600 font-bold uppercase text-sm px-6 py-3 rounded-full shadow hover:shadow-lg outline-none focus:outline-none mr-1 mb-1 ease-linear transition-all duration-150"
                  type="button">
                  Add to Cart
              </button>
          </div>

          <div class="group">
              <div
                  class="w-full aspect-w-1 aspect-h-1 bg-white-200 rounded-lg overflow-hidden xl:aspect-w-7 xl:aspect-h-8">
                  <img src="images/tutors/tutor2.jpg"
                      class="w-full h-full object-center object-cover group-hover:opacity-75">
              </div>
              <h1 class="mt-4 text-lg font-large"> Gino Kelly</h1>
              <p class="mt-1 text-sm font-medium text-yellow-500">
                  Based in Johannesburg, South Africa.
              </p>
              <h3 class="mt-4 text-sm text-gray-700">
                  An engineering enthusiast student offering lessons in Physics Grade 10.
              </h3>

              <p class="mt-1 text-lg font-medium text-yellow-500">
                  R150 /Session
              </p>
              <button
                  class="bg-yellow-500 text-white active:bg-yellow-600 font-bold uppercase text-sm px-6 py-3 rounded-full shadow hover:shadow-lg outline-none focus:outline-none mr-1 mb-1 ease-linear transition-all duration-150"
                  type="button">
                  Add to Cart
              </button>
          </div>

          <div class="group">
              <div
                  class="w-full aspect-w-1 aspect-h-1 bg-white-200 rounded-lg overflow-hidden xl:aspect-w-7 xl:aspect-h-8">
                  <img src="images/tutors/tutor4.png"
                      alt="Hand holding black machined steel mechanical pencil with brass tip and top."
                      class="w-full h-full object-center object-cover group-hover:opacity-75">
              </div>
              <h1 class="mt-4 text-lg font-large"> Effie Escandalo</h1>
              <p class="mt-1 text-sm font-medium text-yellow-500 text-yellow-500">
                  Based in Pretoria, South Africa.
              </p>
              <h3 class="mt-4 text-sm text-gray-700">
                  Undergraduate student, offering lessons in English home language Grade 12.
              </h3>
              <p class="mt-1 text-lg font-medium text-yellow-500 text-yellow-500">
                  R 100 /Session
              </p>
              <button
                  class="bg-yellow-500 text-white active:bg-yellow-600 font-bold uppercase text-sm px-6 py-3 rounded-full shadow hover:shadow-lg outline-none focus:outline-none mr-1 mb-1 ease-linear transition-all duration-150"
                  type="button">
                  Add to Cart
              </button>
          </div>

      </div>
  </div>
</div>
<div class="fixed inset-0 overflow-hidden" aria-labelledby="slide-over-title" role="dialog" aria-modal="true">
    <div class="absolute inset-0 overflow-hidden">
      <!--
        Background overlay, show/hide based on slide-over state.
  
        Entering: "ease-in-out duration-500"
          From: "opacity-0"
          To: "opacity-100"
        Leaving: "ease-in-out duration-500"
          From: "opacity-100"
          To: "opacity-0"
      -->
      <div class="absolute inset-0 bg-gray-500 bg-opacity-75 transition-opacity" aria-hidden="true"></div>
  
      <div class="fixed inset-y-0 right-0 pl-10 max-w-full flex">
        <!--
          Slide-over panel, show/hide based on slide-over state.
  
          Entering: "transform transition ease-in-out duration-500 sm:duration-700"
            From: "translate-x-full"
            To: "translate-x-0"
          Leaving: "transform transition ease-in-out duration-500 sm:duration-700"
            From: "translate-x-0"
            To: "translate-x-full"
        -->
        <div class="w-screen max-w-md">
          <div class="h-full flex flex-col bg-white shadow-xl overflow-y-scroll">
            <div class="flex-1 py-6 overflow-y-auto px-4 sm:px-6">
              <div class="flex items-start justify-between">
                <h2 class="text-lg font-medium text-gray-900" id="slide-over-title">
                  Shopping cart
                </h2>
                <div class="ml-3 h-7 flex items-center">
                  <button type="button" class="-m-2 p-2 text-gray-400 hover:text-gray-500">
                    <span class="sr-only">Close panel</span>
                    <!-- Heroicon name: outline/x -->
                    <svg class="h-6 w-6" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
                      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
                    </svg>
                  </button>
                </div>
              </div>
  
              <div class="mt-8">
                <div class="flow-root">
                  <ul role="list" class="-my-6 divide-y divide-gray-200">
                    <li class="py-6 flex">
                      <div class="flex-shrink-0 w-24 h-24 border border-gray-200 rounded-md overflow-hidden">
                        <img src="images/tutors/tutor1.png">
                      </div>
  
                      <div class="ml-4 flex-1 flex flex-col">
                        <div>
                          <div class="flex justify-between text-base font-medium text-gray-900">
                            <h3>
                              <a href="#">
                                Mathematics
                              </a>
                            </h3>
                            <p class="ml-4">
                              R70
                            </p>
                          </div>
                          <p class="mt-1 text-sm text-gray-500">
                            Grade 12
                          </p>
                        </div>
                        <div class="flex-1 flex items-end justify-between text-sm">
                          <p class="text-gray-500">
                            Session 1
                          </p>
  
                          <div class="flex">
                            <button type="button" class="font-medium text-indigo-600 hover:text-indigo-500">Remove</button>
                          </div>
                        </div>
                      </div>
                    </li>
  
                    <li class="py-6 flex">
                      <div class="flex-shrink-0 w-24 h-24 border border-gray-200 rounded-md overflow-hidden">
                        <img src="images/tutors/tutor4.png" class="w-full h-full object-center object-cover">
                      </div>
  
                      <div class="ml-4 flex-1 flex flex-col">
                        <div>
                          <div class="flex justify-between text-base font-medium text-gray-900">
                            <h3>
                              <a href="#">
                                English Home Language
                              </a>
                            </h3>
                            <p class="ml-4">
                              R100
                            </p>
                          </div>
                          <p class="mt-1 text-sm text-gray-500">
                            Grade 12
                          </p>
                        </div>
                        <div class="flex-1 flex items-end justify-between text-sm">
                          <p class="text-gray-500">
                            Session 1
                          </p>
  
                          <div class="flex">
                            <button type="button" class="font-medium text-indigo-600 hover:text-indigo-500">Remove</button>
                          </div>
                        </div>
                      </div>
                    </li>
  
                    <!-- More products... -->
                  </ul>
                </div>
              </div>
            </div>
  
            <div class="border-t border-gray-200 py-6 px-4 sm:px-6">
              <div class="flex justify-between text-base font-medium text-gray-900">
                <p>Subtotal</p>
                <p>R170.00</p>
              </div>
              <p class="mt-0.5 text-sm text-gray-500">Taxes calculated at checkout.</p>
              <div class="mt-6">
                <a href="#" class="flex justify-center items-center px-6 py-3 border border-transparent rounded-md shadow-sm text-base font-medium text-white bg-indigo-600 hover:bg-indigo-700">Checkout</a>
              </div>
              <div class="mt-6 flex justify-center text-sm text-center text-gray-500">
                <p>
                  or <a href="Home.aspx"><button type="button" class="text-indigo-600 font-medium hover:text-indigo-500">Continue Shopping<span aria-hidden="true"> &rarr;</span></button></a>
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</asp:Content>
