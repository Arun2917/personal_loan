<%-- 
    Document   : loanstatus
    Created on : Jun 16, 2022, 12:11:23 PM
    Author     : Java
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
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

        <link rel="stylesheet" href="assets/vendors/mdi/css/materialdesignicons.min.css">
        <link rel="stylesheet" href="assets/vendors/css/vendor.bundle.base.css">

        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="shortcut icon" href="assets/images/favicon.ico" />
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
        <h1 style="margin-top: 100px;">
            Loan Status Track 
       </h1>
        <br>
        <br>
        
        <%
            PreparedStatement ps11 = Database.con().prepareStatement("select * from loanapplication where uid='" + id + "' ");

                                ResultSet check1 = ps11.executeQuery();

                                if (check1.next()) {

                                              
                                                String status="Waiting";

            try {
                                PreparedStatement ps1 = Database.con().prepareStatement("select * from loanapplication where uid='" + id + "' ");

                                ResultSet check = ps1.executeQuery();

                                while (check.next()) {
                                    //session.setAttribute("uid", id);
                                    String stat=check.getString("status");
                                    

                        %>
                        
                        <%
                            if(stat.equals(status)){
                            %>
        <div class="col-md-6 grid-margin stretch-card" style="    margin-top:-91px;margin-left: 300px;">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Loan Application Process</h4>
                    <br>
                    <br>
                    <form class="forms-sample" action="accept1.jsp" method="post">

        

                        <div class="form-group row">
                            <label for="exampleInputEmail2" class="col-sm-3 col-form-label" style="font-size: 20px;color: black;">Email</label>
                            <div class="col-sm-9">
                                <input disabled="" type="email" class="form-control" id="exampleInputEmail2" value="<%=check.getString("uemail")%>">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="exampleInputMobile" class="col-sm-3 col-form-label" style="font-size: 20px;color: black;">Loan Amount</label>
                            <div class="col-sm-9">
                                <input disabled="" type="text" class="form-control" id="exampleInputMobile" value="<%=check.getString("cash")%>">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="exampleInputPassword2" class="col-sm-3 col-form-label" style="font-size: 20px;color: black;">Interest Rate</label>
                            <div class="col-sm-9">
                                <input disabled="" name="irate" type="number" class="form-control" id="exampleInputPassword2" value="<%=check.getString("irate")%>">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="exampleInputConfirmPassword2" class="col-sm-3 col-form-label" style="font-size: 20px;color: black;">Duration</label>
                            <div class="col-sm-9">
                                <input disabled="" type="text" class="form-control" id="exampleInputConfirmPassword2" value="<%=check.getString("duration")%> Months">
                            </div>
                        </div>

                        <input type="submit" class="btn btn-gradient-primary mr-2" value="Accept" style="background:green">
                        <a href="cancelloan.jsp?uid=<%=id%>" class="btn btn-gradient-primary mr-2" style="background:red;">Cancel</a>
                    </form>
                   
                </div>
            </div>
        </div>

        <%
            }
else {
%>




                <div class="row">
                    <div class="col-12 grid-margin">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Loan Details</h4>
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead style="color: #e447e4">
                                            <tr>
                                                <th> Id </th>
                                               
                                                <th> Email</th>
                                                <th> Amount </th>
                                                <th> Duration </th>
                                                <th> Rate </th>
                                                <th>  Status</th>
                                            </tr>
                                        </thead>
                                        
                                        

                <tbody>
                                            <tr>
                                               
                                                <td> <%=check.getInt("uid")%></td>
                                                <td> <%=check.getString("uemail")%></td>
                                                <td> <%=check.getString("cash")%> </td>
                                                <td> <%=check.getString("duration")%> </td>
                                                <td> <%=check.getString("irate")%> </td>
                                                
                                                <%
                                                    if(stat.equals("Processed") || stat.equals("Accepted")){
                                                    %>
                                                <td><%=check.getString("status")%> </td>
                                                
                                                <%
                                                    }
else{
                                                
                                                %>
             <td>Canceled By You</td>

                                            </tr>

                                        </tbody>
                                       
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                
                
                
                
                
                
                
                
                
                <%
                    }
                            
                        

}
}
}catch (Exception ae) {
                            JOptionPane.showMessageDialog(null, ae);
                        }
}
else{
                    %>
                    
                    
                    
                    
                     <h1 style="margin-top: 31px;font-size: 20px; margin-left: 300px;">
           Check Your Mail Or Else Your are Not Applied Any Loan Yet. 
       </h1>
                    
                    <%
                        }
                    %>
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
