<%@page import="algo.CipherHelper"%>
<%@page import="java.util.Random"%>
<!doctype html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title> Lightweight secure cloud</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="manifest" href="site.webmanifest">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

    <!-- CSS here -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="assets/css/slicknav.css">
    <link rel="stylesheet" href="assets/css/flaticon.css">
    <link rel="stylesheet" href="assets/css/progressbar_barfiller.css">
    <link rel="stylesheet" href="assets/css/gijgo.css">
    <link rel="stylesheet" href="assets/css/animate.min.css">
    <link rel="stylesheet" href="assets/css/animated-headline.css">
    <link rel="stylesheet" href="assets/css/magnific-popup.css">
    <link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="assets/css/themify-icons.css">
    <link rel="stylesheet" href="assets/css/slick.css">
    <link rel="stylesheet" href="assets/css/nice-select.css">
    <link rel="stylesheet" href="assets/css/style.css">
    
</head>
<body>
    <!-- ? Preloader Start -->
    <div id="preloader-active">
        <div class="preloader d-flex align-items-center justify-content-center">
            <div class="preloader-inner position-relative">
                <div class="preloader-circle"></div>
                <div class="preloader-img pere-text">
                    <img src="assets/img/logo/loder.png" alt="">
                </div>
            </div>
        </div>
    </div>
    <!-- Preloader Start -->
    <header>
        <!-- Header Start -->
        <div class="header-area header-transparent">
            <div class="main-header ">
                <div class="header-bottom  header-sticky">
                    <div class="container-fluid">
                        <div class="row align-items-center">
                            <!-- Logo -->
                            <div class="col-xl-2 col-lg-2">
                                <div class="logo">
                                   
                                </div>
                            </div>
                            <div class="col-xl-10 col-lg-10">
                                <div class="menu-wrapper d-flex align-items-center justify-content-end">
                                    <!-- Main-menu -->
                                    <div class="main-menu d-none d-lg-block">
                                        <nav>
                                            <ul id="navigation">                                                                                          
                                                <li><a href="ohome.jsp">Home</a></li>
                                                <li><a href="oupload.jsp">Upload image</a></li>
                                                <li><a href="oreq.jsp">User request</a></li>
                                                 <li><a href="oreqproxy.jsp">Request to Proxy</a></li>
                                                  <li><a href="oreupload.jsp">Upload Re-encrypted</a></li>
                                                  <li><a href="index.html">Logout</a></li>
                                              </ul>
                                        </nav>
                                    </div>
                                </div>
                            </div> 
                            <!-- Mobile Menu -->
                            <div class="col-12">
                                <div class="mobile_menu d-block d-lg-none"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Header End -->
    </header>
    <main>
        <!-- Slider Area Start-->
        <div class="slider-area slider-bg ">
            <div class="slider-active">
                <!-- Single Slider -->
                <div class="single-slider d-flex align-items-center slider-height ">
                   <main >
                  
                  <style>
                            table,tr,td{
                                
                                padding:7px;
                                font-weight:  300;
                                color: white;
                               margin-left: 450px;
                                
                                
                            }
                            h2{
                                font-weight: bold;
                                color: white;
                            
                            }
                        </style>
                        <div class="header-text">
            <br>
            <br>
            <h2 align="center" style=" color:  #F067FF;  font-weight: bold; margin-left: 300px; font-size: 20px; margin-top:-200px;"> Upload File</h2><br><br>
   <div class="container">
                            <%
                    
                    String user=session.getAttribute("user").toString();
                    String id=session.getAttribute("id").toString();
                    String email=session.getAttribute("email").toString();
                    String mobile=session.getAttribute("mobile").toString();
                    System.out.println(user+"  "+id);
                    Random r = new Random(); 
                      String x = Integer.toString(r.nextInt(10000));
                      String a="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghiiaifia";                      
                   CipherHelper cc = new CipherHelper();
                    String tkey=cc.cipher("12345678",x);
                  
                   long code   =(long)((Math.random()*9*Math.pow(10,15))+Math.pow(10,15));
  
String unique_password="";
for (long i=code;i!=0;i/=100)
    {
        long digit=i%100;
        if (digit<=90)
        digit=digit+32; 
       char ch=(char) digit;
       unique_password=ch+unique_password;
    }
    System.out.println("unique password ="+unique_password);
    
                  
                  %>
                      <form action='Upload' method="post" enctype="multipart/form-data">       
                          
                             <table style=" font-size:15px;margin-top:-400px;" align="center">
                                 <input type="hidden" name="id"value='<%=id%>'style=" border-radius: 2px;">
                                 <input type="hidden" name="user" value='<%=user%>'style=" border-radius: 2px;">
                                 <input type="hidden" name="email" value="<%=email%>" style="border-radius: 2px;" required>
                                 <input type="hidden" name="mobile" value="<%=mobile%>" style="border-radius: 2px;" required>
         
                                 <br><br> <tr><td><strong>Patient Name&nbsp;&nbsp;&nbsp;</storng></td><td><input type="text" name="paname" value="" style=" border-radius: 2px;"></td></tr>
                            <br><br><tr><td><strong>Patient Age  &nbsp;&nbsp;&nbsp;</strong></td><td><input type="text" name="page" value="" style=" border-radius: 2px;"></td></tr>
                            <br><br><tr><td><strong>Symptoms &nbsp;&nbsp;&nbsp;</strong></td><td><input type="text" name="sym" value="" style=" border-radius: 2px"></td></tr>
                             <br><br><tr><td><strong>Diseases Name &nbsp;&nbsp;&nbsp;</strong></td><td><input type="text" name="dises" value="" style=" border-radius: 2px;"></td></tr>
                            <br><br> <tr><td><storng>File keyword &emsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  </storng></td><td><input type="text"name="key" value="" style=" border-radius: 2px;"></td></tr>
                            <br><br> <tr><td><storng>Encryption Key&nbsp;</storng></td><td><input type="text" name="tkey"value='<%=tkey%>'style=" border-radius: 2px;"></td></tr>
                            <br><br> <tr><td><storng>Secret Key &emsp;&nbsp;&nbsp; </storng></td><td><input type="text"name="skey" value='<%=unique_password%>'style=" border-radius: 2px;"></td></tr>
                            <br><br> <tr><td><storng>Upload Image &nbsp;&nbsp;&nbsp;&nbsp;</storng></td><td><input type="file"  name="image" value="file" style=" border-radius: 2px;"></td></tr>
                            <tr><td align='center' colspan="2"><input type="submit" Value='Upload' style="border-radius: 2px; width: 100px; height: 30px;padding: 5px; text-align: center;font-size:15px;background-color: lightblue; color: #000;"</td></tr>
                             </table>
                        </form>   
                      
                </main> 
                            
                            
                            
                </div>      
                <!-- Single Slider -->
                <div class="single-slider d-flex align-items-center slider-height ">
                    <div class="container">
                        <div class="row align-items-center">
                            <div class="col-lg-6 col-md-9 ">
                              
                            </div>
                            <div class="col-lg-6">
                                <div class="hero__img d-none d-lg-block f-right">
                                    <img src="assets/img/hero/hero_right.png" alt="" data-animation="fadeInRight" data-delay="1s">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>      
            </div>
            <!-- Slider Shape -->
            <div class="slider-shape d-none d-lg-block">
                <img class="slider-shape1" src="assets/img/hero/top-left-shape.png" alt="">
            </div>
        </div>
        
</main>
<footer>
    <div class="footer-wrappr " data-background="assets/img/gallery/footer-bg.png">
        <div class="footer-area footer-padding ">
            <div class="container">
                <div class="row d-flex justify-content-between">
                    <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6">
                        <div class="single-footer-caption mb-50">
                            <!-- logo -->
                            <div class="footer-logo mb-25">
                                <a href="index.html"><img src="assets/img/logo/logo2_footer.png" alt=""></a>
                            </div>
                            <div class="footer-tittle mb-50">
                                <p>Subscribe our newsletter to get updates about our services</p>
                            </div>
                            <!-- Form -->
                            <div class="footer-form">
                                <div id="mc_embed_signup">
                                    <form target="_blank" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01" method="get" class="subscribe_form relative mail_part" novalidate="true">
                                        <input type="email" name="EMAIL" id="newsletter-form-email" placeholder=" Email Address " class="placeholder hide-on-focus" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Your email address'">
                                        <div class="form-icon">
                                            <button type="submit" name="submit" id="newsletter-submit" class="email_icon newsletter-submit button-contactForm">
                                                Subscribe
                                            </button>
                                        </div>
                                        <div class="mt-10 info"></div>
                                    </form>
                                </div>
                            </div>
                            <!-- social -->
                            <div class="footer-social mt-50">
                                <a href="#"><i class="fab fa-twitter"></i></a>
                                <a href="https://bit.ly/sai4ull"><i class="fab fa-facebook-f"></i></a>
                                <a href="#"><i class="fab fa-pinterest-p"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-1 col-lg-1 col-md-1 col-sm-1"></div>
                    <div class="col-xl-2 col-lg-2 col-md-4 col-sm-5">
                        <div class="single-footer-caption mb-50">
                            <div class="footer-tittle">
                                <h4>Company</h4>
                                <ul>
                                    <li><a href="#">Why choose us</a></li>
                                    <li><a href="#"> Review</a></li>
                                    <li><a href="#">Customers</a></li>
                                    <li><a href="#">Blog</a></li>
                                    <li><a href="#">Carrier</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-2 col-lg-2 col-md-4 col-sm-5">
                        <div class="single-footer-caption mb-50">
                            <div class="footer-tittle">
                                <h4>Products</h4>
                                <ul>
                                    <li><a href="#">Why choose us</a></li>
                                    <li><a href="#"> Review</a></li>
                                    <li><a href="#">Customers</a></li>
                                    <li><a href="#">Blog</a></li>
                                    <li><a href="#">Carrier</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-2 col-lg-2 col-md-4 col-sm-5">
                        <div class="single-footer-caption mb-50">
                            <div class="footer-tittle">
                                <h4>Support</h4>
                                <ul>
                                    <li><a href="#">Technology</a></li>
                                    <li><a href="#">  Products</a></li>
                                    <li><a href="#">Customers</a></li>
                                    <li><a href="#">Quality</a></li>
                                    <li><a href="#">Sales geography</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- footer-bottom area -->
        <div class="footer-bottom-area">
            <div class="container">
                <div class="footer-border">
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="footer-copy-right text-center">
                                <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                                  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>

                              </div>
                          </div>
                      </div>
                  </div>
              </div>
          </div>
      </div>
  </footer>
  <!-- Scroll Up -->
  <div id="back-top" >
    <a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a>
</div>

<!-- JS here -->

<script src="./assets/js/vendor/modernizr-3.5.0.min.js"></script>
<!-- Jquery, Popper, Bootstrap -->
<script src="./assets/js/vendor/jquery-1.12.4.min.js"></script>
<script src="./assets/js/popper.min.js"></script>
<script src="./assets/js/bootstrap.min.js"></script>
<!-- Jquery Mobile Menu -->
<script src="./assets/js/jquery.slicknav.min.js"></script>

<!-- Jquery Slick , Owl-Carousel Plugins -->
<script src="./assets/js/owl.carousel.min.js"></script>
<script src="./assets/js/slick.min.js"></script>
<!-- One Page, Animated-HeadLin -->
<script src="./assets/js/wow.min.js"></script>
<script src="./assets/js/animated.headline.js"></script>
<script src="./assets/js/jquery.magnific-popup.js"></script>

<!-- Date Picker -->
<script src="./assets/js/gijgo.min.js"></script>

<!-- Video bg -->
<script src="./assets/js/jquery.vide.js"></script>

<!-- Nice-select, sticky -->
<script src="./assets/js/jquery.nice-select.min.js"></script>
<script src="./assets/js/jquery.sticky.js"></script>
<!-- Progress -->
<script src="./assets/js/jquery.barfiller.js"></script>

<!-- counter , waypoint,Hover Direction -->
<script src="./assets/js/jquery.counterup.min.js"></script>
<script src="./assets/js/waypoints.min.js"></script>
<script src="./assets/js/jquery.countdown.min.js"></script>
<script src="./assets/js/hover-direction-snake.min.js"></script>

<!-- contact js -->
<script src="./assets/js/contact.js"></script>
<script src="./assets/js/jquery.form.js"></script>
<script src="./assets/js/jquery.validate.min.js"></script>
<script src="./assets/js/mail-script.js"></script>
<script src="./assets/js/jquery.ajaxchimp.min.js"></script>

<!-- Jquery Plugins, main Jquery -->	
<script src="./assets/js/plugins.js"></script>
<script src="./assets/js/main.js"></script>

</body>
</html>