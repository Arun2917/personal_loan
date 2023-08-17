<%-- 
    Document   : userpage
    Created on : Jun 10, 2022, 2:13:36 PM
    Author     : Java
--%>


<%@page import="javax.swing.JOptionPane"%>
<html class="no-js" lang="zxx">

    <head>
        <meta charset="utf-8" />
        <meta http-equiv="x-ua-compatible" content="ie=edge" />
        <title>Personal Loan Application</title>
        <meta name="description" content="" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="shortcut icon" type="image/x-icon" href="images/favicon.png" />

        <!-- Web Font -->
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700;800;900&amp;family=Roboto:wght@300;400;500&amp;display=swap" rel="stylesheet">


        <!-- CSS here -->
        <link rel="stylesheet" href="css/bootstrap.min.css" />
        <link rel="stylesheet" href="css/LineIcons.2.0.css" />
        <link rel="stylesheet" href="css/font-awesome.min.css" />
        <link rel="stylesheet" href="fonts/flaticon.css" />
        <link rel="stylesheet" href="css/animate.css" />
        <link rel="stylesheet" href="css/tiny-slider.css" />
        <link rel="stylesheet" href="css/glightbox.min.css" />
        <link rel="stylesheet" href="css/typography.css" />
        <link rel="stylesheet" href="style.css" />
        <style>
            body{
                background: linear-gradient(#f9faff85, rgb(232 221 221 / 72%)), url(images/banner.jpg);
                background-attachment:fixed;
                background-size:cover;
                background-position:right;
            }
        </style>

    </head>

    <body>
        <%
            String id = "" + session.getAttribute("uid");

            //JOptionPane.showMessageDialog(null, id);

        %>
        <!-- Preloader Start-->
        <div id="preloader">
            <div class="iddrak-load"></div>
        </div>
        <!-- Preloader End-->

        <!-- Header Start -->
        <header class="header navbar-area" style="background-color:white">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-12">
                        <div class="nav-inner">
                            <!-- Start Navbar -->
                            <nav class="navbar navbar-expand-lg">
                                <a class="navbar-brand style3" href="index.html">
                                    <img src="images/logo.png" alt="Logo">
                                </a>
                                <button class="navbar-toggler mobile-menu-btn" type="button" data-bs-toggle="collapse"
                                        data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                                        aria-expanded="false" aria-label="Toggle navigation">
                                    <span class="toggler-icon"></span>
                                    <span class="toggler-icon"></span>
                                    <span class="toggler-icon"></span>
                                </button>
                                <div class="collapse navbar-collapse sub-menu-bar" id="navbarSupportedContent" style="margin-left: 400px;">
                                    <ul id="nav" class="navbar-nav ms-auto">
                                        <li class="nav-item">
                                            <a href="userpage.jsp" class="active" aria-label="Toggle navigation">Home</a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="applyloan1.jsp" class="active" aria-label="Toggle navigation">Apply Personal Loan</a>
                                        </li>
                                         <li class="nav-item">
                                            <a href="Loans.jsp" class="active" aria-label="Toggle navigation">Loan</a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="profile.jsp" class="active" aria-label="Toggle navigation">Profile</a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="index.html" class="active" aria-label="Toggle navigation">Logout</a>
                                        </li>

                                    </ul>
                                </div> <!-- navbar collapse -->

                            </nav>
                            <!-- End Navbar -->
                        </div>
                    </div>
                </div> <!-- row -->
            </div> <!-- container -->
        </header>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <!-- Loan Process Start -->
        <section id="loan-process-section" class="mt-115">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-12">
                        <div class="section-title process-title">
                            <h6>A quick & transparent process</h6>
                            <h2 class="mb-0">We have a simple online application</h2>
                            <p style="font-size:20px;color: black">Which will give you the adjuct information, how to get loan!</p>
                        </div>
                    </div>
                </div>


            </div>
        </section>


        <a href="#" class="scroll-top">
            <i class="lni lni-chevron-up"></i>
        </a>
        <!-- Scroll Top End -->

        <!-- JS here -->
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/wow.min.js"></script>
        <script src="js/tiny-slider.js"></script>
        <script src="js/glightbox.min.js"></script>
        <script src="js/main.js"></script>
       
    </body>
</html>
