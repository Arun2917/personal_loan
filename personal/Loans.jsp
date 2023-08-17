<%-- 
    Document   : Loans
    Created on : Jun 22, 2022, 4:02:12 PM
    Author     : Java
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.Database"%>
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
        <style>
            body{
   font-family: 'Roboto', sans-serif;
}
#loading{
   display: none;
}
#amortresults{
   float: right;
    clear: left;
    margin-right: 0!important;
    position: relative;
    top: -302px;
}
table{
   table-layout: auto;
   width: 100%;
}
th{
   font-size: 1.5em;
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
                                <div class="collapse navbar-collapse sub-menu-bar" id="navbarSupportedContent" style="margin-left: 700px;">
                                    <ul id="nav" class="navbar-nav ms-auto">
                                        <li class="nav-item">
                                            <a href="userpage.jsp" class="active" aria-label="Toggle navigation">Home</a>
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
        <div class="row" style="margin-top:100px">
                    <div class="col-12 grid-margin">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title" style="border-style: dashed; width: 167px;margin-left: 200px;margin-top: 20px;">Loan Details</h4>
                                <div class="table-responsive">
                                    <table class="table" style="    border-style: dashed;width: 800px;margin-left: 200px;margin-top: 20px;border-color: black;">
                                        <thead style="color: blue">
                                            <tr>
                                                <th> Id </th>
                                               
                                                <th> Name</th>
                                                <th> Amount </th>
                                                <th> Duration </th>
                                                <th> Rate </th>
                                                <th>  Status</th>
                                            </tr>
                                        </thead>
                                        
        <%
            PreparedStatement ps13 = Database.con().prepareStatement("select * from loanhistory where uid='" + id + "' ");

                                ResultSet check13 = ps13.executeQuery();

                                while (check13.next()) {
//String status="Waiting";
                                    String stat=check13.getString("status");

                                              
                        %>
                        
                
                        
                                        

                <tbody>
                                            <tr>
                                               
                                                <td> <%=check13.getInt("uid")%></td>
                                                <td> <%=check13.getString("uname")%></td>
                                                <td> <%=check13.getString("cash")%> </td>
                                                <td> <%=check13.getString("duration")%> </td>
                                                <td> <%=check13.getString("rate")%> </td>
                                                <%
                                                    if(stat.equals("Accepted") || stat.equals("Rejected")){
                                                    
                                                    %>
                                               
                                                <td><%=check13.getString("status")%> </td>
                                                
                                                <%
                                                    }
else{
                                                
                                                %>
                                                
                                                
                                                <td>Canceled By You</td>
                                                
                                                
                                                <%
                                                    }
}
%>
                                            </tr>

                                        </tbody>
                                       
                                    </table>
               
               
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                        
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/wow.min.js"></script>
        <script src="js/tiny-slider.js"></script>
        <script src="js/glightbox.min.js"></script>
        <script src="js/main.js"></script>
       
    </body>
</html>
