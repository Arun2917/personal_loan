<%-- 
    Document   : profile
    Created on : Jun 11, 2022, 4:16:07 PM
    Author     : Java
--%>


<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.Database"%>

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
        :root{
  --bg-black:#000;
  --bg-white:#fff;
  --bg-skyblue:#5b91f5;
  --active:#07d100;
  --grey:#e8e8e8;
  --blue:#0a54ff;
}
button:hover{
  cursor:pointer;
}
.container1{
  background:#ffffff47;
  min-width:300px;
  width:100%;
  max-width:600px;
  height:100%;
  margin:auto;
  border:5px solid white;
  border-radius:10px;
  padding:10px;
  margin-top: 105px;
}
#homebutton{
  background:var(--grey);
  border:2px solid grey;
  border-radius:10px;
  padding:5px 10px;
  outline:none;
}
.info{
  width:100%;
}
.profile-picture-div{
  width:100%;
  text-align:center;
  position:relative;
}
#profile-picture{
  top:10px;
  position:relative;
  width:200px;
  height:200px;
  border-radius:50%;
  border:5px solid var(active);
}
#editpicture{
  cursor:pointer;
  outline:none;
  background:white;
  border:2px solid grey;
  border-radius:10px;
  padding:5px 10px;
  background: blue;
  color: white;
}
.data{
  width:100%;
  text-align:center;
}
.data input{
  width:100%;
  max-width:300px;
  background:white;
  padding:10px;
  outline:none;
  border-radius:10px;
}
.footer{
  text-align:center;
}
#savebutton{
  background:var(--blue);
  color:white;
  padding:5px 30px;
  outline:none;
  border-radius:5px;
  font-size:16px;
}
#savebutton:active{
  cursor:wait;
}
.alerts{
  text-align:center;
  padding:20px;
}
#alert{
  display:none;
  background:green;
  color:white;
  padding:10px;
  border-radius:10px;
}
    </style>
   
</head>

<body>

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
                            
                            <button class="navbar-toggler mobile-menu-btn" type="button" data-bs-toggle="collapse"
                                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                                aria-expanded="false" aria-label="Toggle navigation">
                                <span class="toggler-icon"></span>
                                <span class="toggler-icon"></span>
                                <span class="toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse sub-menu-bar" id="navbarSupportedContent" style="margin-left:850px;">
                                <ul id="nav" class="navbar-nav ms-auto">
                                    <li class="nav-item">
                                        <a href="userpage.jsp" aria-label="Toggle navigation" style="color:black">Home</a>
                                    </li>
                                    
                                    <li class="nav-item">
                                        <a href="profile.jsp" class="active" aria-label="Toggle navigation">Profile</a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="index.html"  aria-label="Toggle navigation" style="color:black">Logout</a>
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
    
    
  <div class="container1" style="height: 570px;">
   
    <div class="info">
          <%
                            
                            
String id=""+session.getAttribute("uid");   

try{
PreparedStatement ps=Database.con().prepareStatement("select * from user where uid='"+id+"' ");
		
		ResultSet check=ps.executeQuery();
                            
                            
                            %>
                            
        
      <div class="profile-picture-div">
           <%
                while(check.next()){
                    
                                    %>
        <img src="profile/<%=check.getString("pic")%>" id="profile-picture"><br><br>
        <a href="" onclick="OpenWindow()"    id="editpicture" data-abc="true">Add picture <i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
    
 <script>
            function OpenWindow()
            {
    
                window.open('ChangePicture.jsp?pid=<%=id%>','','left=250px, top=245px, width=520px, height=300px, scrollbars=no, status=no, resizable=no');
                return false;
    
            }
        </script>
      </div>
      <br>
      <div class="data">
        <label for="">Name</label><br>
        <input disabled="" value="<%=check.getString("username")%>" placeholder="Name..."><br>
          <label for="">Email</label><br>
          <input disabled="" value="<%=check.getString("email")%>" placeholder="Lastname..."><br>
          <label for="">Phone Number:</label><br>
          <input disabled="" value="<%=check.getString("phone")%>" placeholder="DOB..."><br>

          <a href="profileupdate.jsp" id="editpicture" data-abc="true">Update Profile Details<i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>

        
      </div>
      <br>
      
       <% 
                                }
}

                catch(Exception ae){
JOptionPane.showMessageDialog(null, ae);}
                %>
    </div>
    </div>
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
    <script>
        function SaveDataAlert(){
  message = "Data has been Saved ";
  alert(message)
}
        /* Client
        -----------------------*/
        tns({
            container: '.client-active',
            autoplay: true,
            autoplayButtonOutput: false,
            mouseDrag: true,
            gutter: 15,
            nav: false,
            controls: false,
            responsive: {
                0: {
                    items: 1,
                },
                540: {
                    items: 2,
                },
                768: {
                    items: 3,
                },
                992: {
                    items: 4,
                },
                1200: {
                    items: 5,
                }
            }
        });
        /* Testimonial
        -----------------------*/ 
        tns({
            container: '.testimonial-slider',
            items: 3,
            slideBy: 'page',
            autoplay: false,
            mouseDrag: true,
            gutter: 0,
            nav: true,
            controls: false,
            controlsText: ['<i class="lni lni-arrow-left"></i>', '<i class="lni lni-arrow-right"></i>'],
            responsive: {
                0: {
                    items: 1,
                },
                540: {
                    items: 1,
                },
                768: {
                    items: 1,
                },
                992: {
                    items: 2,
                },
                1170: {
                    items: 2,
                }
            }
        });
        /* glightbox
        -----------------------*/
        GLightbox({
            'href': 'https://www.youtube.com/watch?v=UwPrJmOxPeI',
            'type': 'video',
            'source': 'youtube',
            'width': 900,
            'autoplayVideos': true,
        });
    </script>
    </body>
</html>
