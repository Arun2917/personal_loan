<%-- 
    Document   : useremical
    Created on : Jun 16, 2022, 10:57:52 AM
    Author     : Java
--%>

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
        
        
#border{
 display: flex;
  flex-direction: column;
  align-items: center;
}

#emi-calculation{
  width: 500px;
  height: 300px;
  border: 2px solid steelblue;
  box-shadow: 2px 5px 5px gray;
  border-radius: 5px;
   background-color: #f8f8f882;
}
#title{
  font-size: 30px;
  font-family: verdana;
  color: black;
  text-align: center;
}

#emi-output{
  width: 500px;
  height: 300px;
  border: 2px solid steelblue;
  box-shadow: 2px 5px 5px gray;
  border-radius: 5px;
  margin-top: 10px;
   background-color: #f8f8f882;
}

.section{
  margin-left: 10px;
  font-size: 20px;
  padding: 10px;
  font-family: verdana;
}
.result{
  margin-top: 20px;
  margin-left: 10px;
  font-size: 20px;
  padding: 5px;
  font-family: verdana;
}

.input{
  float: right;
 height: 35px;
    margin-right: 10px;
    border-radius: 15px;
}

 #calc,#reset{
  width: 200px;
  height: 30px;
  font-size: 20px;
  background-color: steelblue;
  box-shadow: 2px 5px 5px gray; 
}
.submit{
  text-align: center;
  margin-top: 20px;
}
#reset{
  background-color: orange;
}

@media screen and (max-width: 500px){
  #border{
    display: flex;
    flex-direction: column;
    width: 100%;
    margin-left: 5px;
    margin-right: 5px;
  }
  .label,.result{
    font-size: 10px;
  }
  #title{
    font-size: 20px;
  }
  #emi-calculation{
    max-width: 100%;
  }
  #emi-output{
    width: 100%;
    margin-left: 5px;
    margin-right: 5px;
  }
  .section{
    font-size: 16px;
  }
  .input{
    width: 100px;
  }
  #calc, #reset{
    width: 100px;
  }
  
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
                            <div class="collapse navbar-collapse sub-menu-bar" id="navbarSupportedContent" style="margin-left: 500px;">
                                <ul id="nav" class="navbar-nav ms-auto">
                                    <li class="nav-item">
                                        <a href="userpage.jsp" class="active" aria-label="Toggle navigation">Home</a>
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
   
    <div id="border">   <!--border-->
        
        <div id="emi-calculation" style="margin-left:-550px">    <!--calculation part-->
          
          <p id="title"><strong>EMI Calculator<strong></p> 
            
            <div class="section">         <!--loan amount with input-->
              <label id="loanamount" class="label">Loan Amount:</label>
              <input type="number" class="input" id="value1" required=""></input>
            </div>                        <!--loan amount with input closing-->
            
            <div class="section">   <!--interest rate with input-->
               <label id="interestrate" class="label">Interest Rate:(%)</label>
               <input type="number" class="input" id="value2" required=""></input>
            </div>              <!--interest rate with input closing-->
            
            <div class="section"> <!--loan terms with input-->
               <label id="loanduration" class="label"> Duration(Months):</label>
               <input type="number" class="input" id="value3" required=""></input>
            </div>   <!--loan terms with input closing-->
        
       
     
      <div class="submit">           <!--button-->
          <button type="submit" id="calc" onclick="calculation()" style="    border-radius: 50px;    width: 125px;
    height: 40px;">Calculate</button>
      </div>                          <!--button closing-->
      
        </div>    <!--Calculation part closing-->
        
        <div id="emi-output" style="margin-left:550px;margin-top:-100px;    margin-top: -60px;">
          <div class="result">Monthly Interest: <span id="monthly-interest"></span>
          </div>
          <div class="result">Monthly Payment: <span id="monthly-payment"></span>
          </div>
          <div class="result">Total Repayment: <span id="total-repayment"></span>
          </div>
          <div class="result">Total Interest Cost: <span id="total-interest"></span>
          </div>
          
        <div class="submit">           <!--button-->
            <button type="submit" id="reset" onclick="reset()" style="    border-radius: 50px;    width: 125px; height: 40px; margin-top: -16px;">Reset</button>
      </div>                          <!--button closing-->  
          
        </div>
  
        <script >
            function reset(){
  document.getElementById("value1").value = 0;
  document.getElementById("value2").value = 0;
  document.getElementById("value3").value = 0;
  
  document.getElementById("monthly-interest").innerHTML =" Rs. " +0;
  document.getElementById("monthly-payment").innerHTML =" Rs. " +0;
  document.getElementById("total-repayment").innerHTML =" Rs. " +0;
  document.getElementById("total-interest").innerHTML =" Rs. " +0;
}

function calculation(){
  
  var loanAmount = document.getElementById("value1").value;
  var interestRate = document.getElementById("value2").value;
  var loanDuration = document.getElementById("value3").value;
   
  //.......... declarations.............
  
 var interestPerYear = (loanAmount * interestRate)/100; 
 var monthlyInterest = interestPerYear/12;
  
  
  var monthlyPayment = monthlyInterest + (loanAmount/loanDuration);
  var totalInterestCost = monthlyInterest * loanDuration;
  var totalRepayment = monthlyPayment * loanDuration;
  
  //----------------monthly interest----------------------
  
 document.getElementById("monthly-interest").innerHTML = " Rs. " +monthlyInterest.toFixed(2);
  
 //-------------Monthly payment------------
  
   document.getElementById("monthly-payment").innerHTML = "  Rs. " +monthlyPayment.toFixed(2); 
  
  //-------------Total repayment-----------
  
  document.getElementById("total-repayment").innerHTML ="  Rs. " +totalRepayment.toFixed(2);
  
  //--------------Total Interest cost----------------
  
  document.getElementById("total-interest").innerHTML ="  Rs. " +totalInterestCost.toFixed(2);
  
}
        </script>
       
    
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

