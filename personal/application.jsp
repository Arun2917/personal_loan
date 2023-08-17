<%-- 
    Document   : application
    Created on : Jun 16, 2022, 12:21:19 PM
    Author     : Java
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.Database"%>
<html lang="en">

    <!-- Mirrored from www.bootstrapdash.com/demo/purple-admin-free/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 10 Jun 2022 06:14:28 GMT -->
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Purple Admin</title>
        <!-- plugins:css -->
        <link rel="stylesheet" href="assets/vendors/mdi/css/materialdesignicons.min.css">
        <link rel="stylesheet" href="assets/vendors/css/vendor.bundle.base.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <!-- endinject -->
        <!-- Plugin css for this page -->
        <!-- End plugin css for this page -->
        <!-- inject:css -->
        <!-- endinject -->
        <!-- Layout styles -->
        <link rel="stylesheet" href="assets/css/style.css">
        <!-- End layout styles -->
        <link rel="shortcut icon" href="assets/images/favicon.ico" />
    </head>
    <body>
        <div class="container-scroller">
            <div class="row p-0 m-0 proBanner" id="proBanner">
                <div class="col-md-12 p-0 m-0">
                    <div class="card-body card-body-padding d-flex align-items-center justify-content-between">

                        <div class="d-flex align-items-center justify-content-between">
                            <a href="https://www.bootstrapdash.com/product/purple-bootstrap-admin-template/"><i class="mdi mdi-home mr-3 text-white"></i></a>
                            <button id="bannerClose" class="btn border-0 p-0">
                                <i class="mdi mdi-close text-white mr-0"></i>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <!-- partial:partials/_navbar.html -->
            <nav class="navbar default-layout-navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
                <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
                    <a class="navbar-brand brand-logo-mini" href="admin.html"><img src="assets/images/logo-mini.svg" alt="logo" /></a>
                </div>
                <div class="navbar-menu-wrapper d-flex align-items-stretch">
                    <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
                        <span class="mdi mdi-menu"></span>
                    </button>
                    <div class="search-field d-none d-md-block">
                        <form class="d-flex align-items-center h-100" action="#">
                            <div class="input-group">
                                <div class="input-group-prepend bg-transparent">
                                    <i class="input-group-text border-0 mdi mdi-magnify"></i>
                                </div>
                                <input type="text" class="form-control bg-transparent border-0" placeholder="Search projects">
                            </div>
                        </form>
                    </div>
                    <ul class="navbar-nav navbar-nav-right">
                        <li class="nav-item nav-profile dropdown">
                            <a class="nav-link dropdown-toggle" id="profileDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
                                <div class="nav-profile-img">
                                    <img src="assets/images/faces/images1.png" alt="image">
                                    <span class="availability-status online"></span>
                                </div>
                                <div class="nav-profile-text">
                                    <p class="mb-1 text-black">Administrator</p>
                                </div>
                            </a>
                            <div class="dropdown-menu navbar-dropdown" aria-labelledby="profileDropdown">
                                <a class="dropdown-item" href="#">
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="adminlogin.html">
                                        <i class="mdi mdi-logout mr-2 text-primary"></i> Signout </a>
                            </div>
                        </li>

                </div>
            </nav>
            <!-- partial -->
            <div class="container-fluid page-body-wrapper">
                <!-- partial:partials/_sidebar.html -->
                <nav class="sidebar sidebar-offcanvas" id="sidebar">
                    <ul class="nav">
                        <li class="nav-item nav-profile">
                            <a href="#" class="nav-link">
                                <div class="nav-profile-image">
                                    <img src="assets/images/faces/images1.png" alt="profile">
                                    <span class="login-status online"></span>
                                    <!--change to offline or busy as needed-->
                                </div>
                                <div class="nav-profile-text d-flex flex-column">
                                    <span class="font-weight-bold mb-2">Administrator</span>
                                    <span class="text-secondary text-small"></span>
                                </div>
                                <i class="mdi mdi-bookmark-check text-success nav-profile-badge"></i>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="admin.jsp">
                                <span class="menu-title">Dashboard</span>
                                <i class="mdi mdi-home menu-icon"></i>
                            </a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="user.jsp">
                                <span class="menu-title">User Details</span>
                                <i class="mdi mdi-contacts menu-icon"></i>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="userbank.jsp">
                                <span class="menu-title">User Bank Details</span>
                                <i class="mdi mdi-contacts menu-icon"></i>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="application.jsp">
                                <span class="menu-title">Loan Application</span>
                                <i class="mdi mdi-format-list-bulleted menu-icon"></i>
                            </a>
                        </li>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Allhistory.jsp">
                                <span class="menu-title">History</span>
                                <i class="mdi mdi-format-list-bulleted menu-icon"></i>
                            </a>
                        </li>
                        
                    </ul>
                </nav>
                <!-- partial -->


                <div class="row" style="    margin-left: -60px;">
                    <div class="col-12 grid-margin">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Application Details</h4>
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead style="color: #e447e4">
                                            <tr>
                                                <th>  U.Id </th>
                                                <th>  Name </th>
                                                <th> Amount </th>
                                                <th> Duration </th>
                                                <th> Applied Date </th>
                                                <th> Rate </th>
                                                <th> Proof </th>
                                                <th> Decision </th>
                                                <th> Remove </th>
                                            </tr>
                                        </thead>
                                        <%

                                            try {
    PreparedStatement ps = Database.con().prepareStatement("select user.username,user.email,user.phone,loanapplication.uid,loanapplication.irate,loanapplication.lid,loanapplication.cash,loanapplication.duration,loanapplication.adate,loanapplication.status,loanapplication.idproof from user INNER JOIN loanapplication ON user.uid=loanapplication.uid ");
    ResultSet check = ps.executeQuery();


                                        %>
                                        <tbody>
                                            <tr>
                                                <%                                
                                                    while (check.next()) {
                                                        int rate=check.getInt("irate");
                                                        String stat=check.getString("status");
                                                %>
                                                <td> <%=check.getInt("uid")%></td>
                                                <td><%=check.getString("username")%></td>
                                                <td> <%=check.getString("cash")%> </td>
                                                <td> <%=check.getString("duration")%> </td>
                                                <td> <%=check.getString("adate")%> </td>
                                                <td> <%=check.getString("irate")%> </td>
                                                <td> <div class="container" style="    margin-top: -15px;">
                                                        <p><section class="img-gallery-magnific">
                                                            <div class="magnific-img">
                                                                <a class="image-popup-vertical-fit" href="proof/<%=check.getString("idproof")%>" title="9.jpg">
                                                                   <div class="clear">
                                                                       <a href="proof/<%=check.getString("idproof")%>" target="_blank"> <%=check.getString("idproof")%></a>
                                                                   </div>
                                                                </a>
                                                            </div>

                                                        </section>
                                                   </div> </td>
                                                <%
                                                    if(rate==0 && stat.equals("Waiting")){
                                                    %>
                                                <td><a href="processapplication.jsp?uid=<%=check.getInt("uid")%>"><i class="fa fa-edit" style="font-size:24px"></i></a> </td>
                                            <%
                                                }
else if(stat.equals("Processed")){
                                                %>
<td><a style="    border: double; background: green;color: white;font-size: 17px;" href="finalprocess.jsp?uid=<%=check.getInt("uid")%>"> Accept </a> / 
                                                    <a style="border: double; background: red;color: white;font-size: 17px;" href="finalprocess1.jsp?uid=<%=check.getInt("uid")%>"> Reject </a></td>
                                               
                                            
                                      <%
                                                }
else{
                                                %>      
                                            
                                                <td><%=check.getString("Status")%><%}%></td> 
         <td><a href="deleteapplication.jsp?uid=<%=check.getInt("uid")%>"><i  class="mdi mdi-delete" style="size: 20px"></i></a> </td>

                                            </tr>

                                        </tbody>
                                        <%
                                            }
                                                
}
                                             catch (SQLException ae) {
                                                JOptionPane.showMessageDialog(null, ae);
                                            }
                                        %>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>



                <!-- partial -->
            </div>
            <!-- main-panel ends -->
        </div>
        <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
    <!-- plugins:js -->
    <script src="assets/vendors/js/vendor.bundle.base.js"></script>
    <!-- endinject -->
    <!-- Plugin js for this page -->
    <script src="assets/vendors/chart.js/Chart.min.js"></script>
    <script src="assets/js/jquery.cookie.js" type="text/javascript"></script>
    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script src="assets/js/off-canvas.js"></script>
    <script src="assets/js/hoverable-collapse.js"></script>
    <script src="assets/js/misc.js"></script>
    <!-- endinject -->
    <!-- Custom js for this page -->
    <script src="assets/js/dashboard.js"></script>
    <script src="assets/js/todolist.js"></script>
    <!-- End custom js for this page -->
</body>

<!-- Mirrored from www.bootstrapdash.com/demo/purple-admin-free/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 10 Jun 2022 06:14:36 GMT -->
</html>