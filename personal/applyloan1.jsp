<%-- 
    Document   : applyloan1
    Created on : Jun 14, 2022, 1:11:29 PM
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
    <style>
       
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
  height:50%;
  margin:auto;
  border:5px solid white;
  border-radius:10px;
  padding:10px;
  margin-top: 105px;
}
.navbar-top{
  width:100%;
  background:transparent;
  font-size:16px;
  padding:10px 0px;
  border-bottom: 1px solid grey;
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
    <%
        String id=""+session.getAttribute("uid");   

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
                            <div class="collapse navbar-collapse sub-menu-bar" id="navbarSupportedContent" style="margin-left: 200px;">
                                <ul id="nav" class="navbar-nav ms-auto">
                                    <li class="nav-item">
                                        <a href="userpage.jsp" class="active" aria-label="Toggle navigation">Home</a>
                                    </li>
                                    
                                    <li class="nav-item">
                                        <a href="loanstatus.jsp" class="active" aria-label="Toggle navigation">Loan Status</a>
                                    </li>
                                   
                                    <li class="nav-item">
                                        <a href="index.html" class="active" aria-label="Toggle navigation">Logout</a>
                                    </li>
                                     
                                </ul>
                            </div> <!-- navbar collapse -->
                         <div class="button add-list-button">
                                <a href="useremical.jsp" class="btn">Calculate EMI</a>
                            </div>
                        </nav>
                        <!-- End Navbar -->
                    </div>
                </div>
            </div> <!-- row -->
        </div> <!-- container -->
    </header>
    <br>
    <br>
       <div class="container1" style="height: 370px;">
           <h3 style="margin-left:100px">Loan Request Application</h3><br>
    <div class="info">
      <div class="data">
          <form action="applycheck.jsp" method="post">
              <label for="" style="    font-size: 17px;">Amount:</label><br>
              <input type="number" name="cash"  placeholder="Amount You need..." min="5000" max="500000" required=""><br>
          <label for="" style="    font-size: 17px;">Duration(Months):</label><br>
          <input type="number" name="duration" placeholder="Duration you wish to pay" min="6" max="60" required=""><br>
          <br>
          <input type="submit" value="Apply" style="    width: 110px;background: #015eea;color: white">
          </form>
        
      </div>
    </div>
       </div>
    <br>
    <br>
    <br>
     <br>
    <!-- Loan Process Start -->
 
     
    
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
