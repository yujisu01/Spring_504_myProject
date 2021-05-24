<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath == '/' ? '' : pageContext.request.contextPath}" scope="application"/>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Secret Garden &mdash; escape room</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900" rel="stylesheet">
    <link rel="stylesheet" href="${ctx}/resources/fonts/icomoon/style.css">
    <link rel="stylesheet" href="${ctx}/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="${ctx}/resources/css/animate.css">
    <link rel="stylesheet" href="${ctx}/resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="${ctx}/resources/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="${ctx}/resources/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="${ctx}/resources/fonts/flaticon/font/flaticon.css">
    <link rel="stylesheet" href="${ctx}/resources/css/aos.css">
    <link rel="stylesheet" href="${ctx}/resources/css/jquery.fancybox.min.css">
    <link rel="stylesheet" href="${ctx}/resources/css/style.css">
  </head>
 
  <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
   <div class="site-wrap">
    <div class="site-mobile-menu site-navbar-target">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body">
     </div>
    </div> 
    
    <!-- .site-mobile-menu -->
    
    
    <div class="site-navbar-wrap">
      
      <div class="site-navbar site-navbar-target js-sticky-header">
        <div class="container">
          <div class="row align-items-center">
            <div class="col-6 col-md-4">
              <h1 class="my-0 site-logo"><a href="${ctx }/secretgarden/main">S.Garden<span class="text-primary">.</span> </a></h1>
            </div>
            <div class="col-6 col-md-8">
              <nav class="site-navigation text-right" role="navigation">
                <div class="container">

                  <div class="d-inline-block d-lg-block ml-md-0 mr-auto py-3"><a href="/project/secretgarden/main#" class="site-menu-toggle js-menu-toggle text-black">
                    <span class="icon-menu h3"></span> <span class="menu-text">Menu</span>
                  </a></div>

                  <ul class="site-menu main-menu js-clone-nav d-none d-lg-none">
                    <li><a href="#home-section" class="nav-link">Home</a></li>
                    <li><a href="#what-we-do-section" class="nav-link">What We Do</a></li>
                    <li><a href="#about-section" class="nav-link">About Us</a></li>
                    <li><a href="#portfolio-section" class="nav-link">Theme</a></li>
                    <li><a href="${ctx }/secretgarden/board/list" class="nav-link">QnA</a></li>
                    <li><a href="#studio-section" class="nav-link">Coming soon</a></li>
                    <li><a href="#contact-section" class="nav-link">Contact</a></li>
                    <li><a href="${ctx }/secretgarden/login" class="nav-link">Log in</a></li>
                  </ul>
                </div>
              </nav>
            </div>
          </div>
        </div>
      </div>
    </div> 
    </div>
    
    
    <!-- END .site-navbar-wrap -->
    
    <div class="site-blocks-cover" id="home-section">
      <div class="img-wrap">
        <div class="owl-carousel slide-one-item hero-slider">
          <div class="slide">
            <img src="${ctx}/resources/images/th11.png" alt="Image">  
          </div>
          <div class="slide">
            <img src="${ctx}/resources/images/th2.jpg" alt="Image">  
          </div>
          <div class="slide">
            <img src="${ctx}/resources/images/th3.jpg" alt="Image">  
          </div>
        </div>
      </div>
     
      <div class="container">
        <div class="row">
          <div class="col-md-6 ml-auto align-self-center">
            <div class="intro">
              <div class="heading">
                <h1>Secret Garden</h1>
              </div>
              <div class="text">
                <p class="sub-text mb-5">Secret garden escape room</p>
                <p><a href="#" target="_blank" class="btn btn-outline-primary btn-md">테마 더보기</a></p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div> <!-- END .site-blocks-cover -->

    <div class="site-section" id="what-we-do-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-lg-6 section-title">
            <span class="sub-title mb-2 d-block">Caution</span>
            <h2 class="title text-primary">CAUTION</h2>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-10 ml-auto">
            <div class="row">
              <div class="col-md-6 col-lg-4 mb-4 mb-lg-4">
                <div class="service h-100">
                  <h3>Design</h3>
                  <p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
                 <!--  <p><a href="#" class="readmore">Learn more</a></p> -->
                </div>
              </div>
              <div class="col-md-6 col-lg-4 mb-4 mb-lg-4">
                <div class="service h-100">
                  <h3>Development</h3>
                  <p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
                  <!-- <p><a href="#" class="readmore">Learn more</a></p> -->
                </div>
              </div>
              <div class="col-md-6 col-lg-4 mb-4 mb-lg-4">
                <div class="service h-100">
                  <h3>eCommerce</h3>
                  <p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
                 <!--  <p><a href="#" class="readmore">Learn more</a></p> -->
                </div>
              </div>

              <div class="col-md-6 col-lg-4 mb-4 mb-lg-4">
                <div class="service h-100">
                  <h3>Mobile Apps</h3>
                  <p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
                  <!-- <p><a href="#" class="readmore">Learn more</a></p> -->
                </div>
              </div>
              <div class="col-md-6 col-lg-4 mb-4 mb-lg-4">
                <div class="service h-100">
                  <h3>CopyWriting</h3>
                  <p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
                 <!--  <p><a href="#" class="readmore">Learn more</a></p> -->
                </div>
              </div>
              <div class="col-md-6 col-lg-4 mb-4 mb-lg-4">
                <div class="service h-100">
                  <h3>Search Engine Optimization</h3>
                  <p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
                  <!-- <p><a href="#" class="readmore">Learn more</a></p> -->
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div> <!-- END .site-section -->

    <div class="site-section" id="about-section">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-6 mb-5">
            <img src="${ctx}/resources/images/key2.jpg" alt="Image" class="img-fluid">
          </div>
          <div class="col-lg-5 ml-auto section-title">
            <span class="sub-title mb-2 d-block">Acquaint Us</span>
            <h2 class="title text-primary mb-3">About us</h2>
            <p class="mb-4">A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>


            <div class="d-flex">
              <ul class="list-unstyled ul-check success mr-5">
                <li>Design</li>
                <li>Development</li>
                <li>eCommerce</li>
                
              </ul>
              <ul class="list-unstyled ul-check success">
                
                <li>Mobile Apps</li>
                <li>Copywriting</li>
                <li>SEO</li>
              </ul>
            </div>
            <p><a data-fancybox data-ratio="2" href="https://www.youtube.com/watch?v=KjPzlC6QE0Y" class="d-flex align-items-center"><span class="icon-play_circle_outline h4 m-0 mr-2"></span> <span>Watch the video</span></a></p>
          </div>
        </div>
      </div>
    </div> <!-- .END site-section -->

<%-- 
    <div class="site-section" id="what-we-do-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-lg-6 section-title">
            <span class="sub-title mb-2 d-block">Meet The Team</span>
            <h2 class="title text-primary">We are talented people.</h2>
          </div>
        </div>
        <div class="row no-gutters">
          <div class="col-lg-6 mb-5 person">
            <img src="${ctx}/resources/images/person_1.jpg" alt="Image" class="img-fluid mb-5">

            <div class="row">
              <div class="col-lg-10 ml-auto">
                <div class="pr-lg-5">
                  <h3>Jacob Spencer</h3>
                  <span class="mb-4 d-block">CEO, Co-Founder</span>
                  <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
                  <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
                  <p class="d-flex align-items-center">
                    <span class="mr-3 text-black">Follow me:</span>
                    <a href="#" class="twitter pr-2 pt-2 pb-2 pl-0"><span class="icon-twitter"></span></a>
                    <a href="#" class="facebook p-2"><span class="icon-facebook"></span></a>
                    <a href="#" class="dribbble p-2"><span class="icon-dribbble"></span></a>
                    <a href="#" class="instagram p-2"><span class="icon-instagram"></span></a>
                    <a href="#" class="linkedin p-2"><span class="icon-linkedin"></span></a>
                  </p>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-6 person">
            <img src="${ctx}/resources/images/person_2.jpg" alt="Image" class="img-fluid mb-5">
            <div class="row">
              <div class="col-lg-10 ml-auto">
                <div class="pr-lg-5">
                  <h3>Chris Peters</h3>
                  <span class="mb-4 d-block">CTO, Co-Founder</span>
                  <p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p>
                  <p>The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way.</p>
                  <p class="d-flex align-items-center">
                    <span class="mr-3 text-black">Follow me:</span>
                    <a href="#" class="twitter pr-2 pt-2 pb-2 pl-0"><span class="icon-twitter"></span></a>
                    <a href="#" class="github p-2"><span class="icon-github"></span></a>
                    <a href="#" class="dribbble p-2"><span class="icon-dribbble"></span></a>
                    <a href="#" class="instagram p-2"><span class="icon-instagram"></span></a>
                    <a href="#" class="linkedin p-2"><span class="icon-linkedin"></span></a>
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
     --%>

    <div class="site-section" id="portfolio-section">
      <div class="container">
        <div class="row mb-5 ">
          <div class="col-md-7 section-title text-center mx-auto">
            <span class="sub-title mb-2 d-block">THEMES</span>
            <h2 class="title text-primary mb-3">THEMES</h2>
          </div>
        </div>
        <div class="row mb-5">
          <div class="col-lg-6 mb-4 mb-lg-0">
            <img src="${ctx}/resources/images/th11.png" alt="Image" class="img-fluid">
          </div>
          <div class="col-lg-5 h-100 jm-sticky-top ml-auto">
            <h3>Project title one</h3>
            <p class="mb-4">A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
            <p class="mb-4"><a href="#" class="readmore">Visit website</a></p>
            <div class="testimonial bg-white h-100">
              <blockquote class="mb-3">
                <p>&ldquo;Far far away, behind the word mountains, <strong>far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove</strong> right at the coast of the Semantics, a large language ocean.&rdquo;</p>
              </blockquote>
              <div class="d-flex align-items-center vcard">
                <figure class="mb-0 mr-3">
                  <img src="${ctx}/resources/images/person_3.jpg" alt="Image" class="img-fluid ounded-circle">
                </figure>
                <div class="vcard-text">
                  <span class="d-block">Jacob Spencer</span>
                  <span class="position">Web Designer</span>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="row mb-5">
          <div class="col-lg-6 order-1 order-lg-2 mb-4 mb-lg-0">
            <img src="${ctx}/resources/images/th2.jpg" alt="Image" class="img-fluid">
          </div>
          <div class="col-lg-5 h-100 jm-sticky-top mr-auto order-2 order-lg-1">
            <h3>Project title two</h3>
            <p class="mb-4">A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
            <p class="mb-4"><a href="#" class="readmore">Visit website</a></p>
            <div class="testimonial bg-white h-100">
              <blockquote class="mb-3">
                <p>&ldquo;A small river named Duden <strong>flows by their place and supplies it with the necessary regelialia</strong>. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.&rdquo;</p>
              </blockquote>
              <div class="d-flex align-items-center vcard">
                <figure class="mb-0 mr-3">
                  <img src="${ctx}/resources/images/person_4.jpg" alt="Image" class="img-fluid ounded-circle">
                </figure>
                <div class="vcard-text">
                  <span class="d-block">Jean Smith</span>
                  <span class="position">Web Designer</span>
                </div>
              </div>
            </div>
          </div>
        </div>

          <div class="row mb-5">
          <div class="col-lg-6 mb-4 mb-lg-0">
            <img src="${ctx}/resources/images/th3.jpg" alt="Image" class="img-fluid">
          </div>
          <div class="col-lg-5 h-100 jm-sticky-top ml-auto">
            <h3>Project title three</h3>
            <p class="mb-4">A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
            <p class="mb-4><a href="#" class="readmore">Visit website</a></p>
            <div class="testimonial bg-white h-100">
              <blockquote class="mb-3">
                <p>&ldquo;Far far away, behind the word mountains, <strong>far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove</strong> right at the coast of the Semantics, a large language ocean.&rdquo;</p>
              </blockquote>
              <div class="d-flex align-items-center vcard">
                <figure class="mb-0 mr-3">
                  <img src="${ctx}/resources/images/person_3.jpg" alt="Image" class="img-fluid ounded-circle">
                </figure>
                <div class="vcard-text">
                  <span class="d-block">Jacob Spencer</span>
                  <span class="position">Web Designer</span>
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>
    </div>

    <div class="site-section bg-light">
      <div class="container">
         <div class="row mb-5 ">
          <div class="col-md-7 section-title text-center mx-auto">
            <span class="sub-title mb-2 d-block">Testimonials</span>
            <h2 class="title text-primary mb-3">Comment</h2>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-6 mb-4">
            <div class="testimonial bg-white h-100">
              <blockquote class="mb-3">
                <p>&ldquo;Far far away, behind the word mountains, <strong>far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove</strong> right at the coast of the Semantics, a large language ocean.&rdquo;</p>
              </blockquote>
              <div class="d-flex align-items-center vcard">
                <figure class="mb-0 mr-3">
                  <img src="${ctx}/resources/images/person_3.jpg" alt="Image" class="img-fluid ounded-circle">
                </figure>
                <div class="vcard-text">
                  <span class="d-block">Jacob Spencer</span>
                  <span class="position">Web Designer</span>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-6 mb-4">
            <div class="testimonial bg-white h-100">
              <blockquote class="mb-3">
                <p>&ldquo;A small river named Duden <strong>flows by their place and supplies it with the necessary regelialia</strong>. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.&rdquo;</p>
              </blockquote>
              <div class="d-flex align-items-center vcard">
                <figure class="mb-0 mr-3">
                  <img src="${ctx}/resources/images/person_4.jpg" alt="Image" class="img-fluid ounded-circle">
                </figure>
                <div class="vcard-text">
                  <span class="d-block">Jean Smith</span>
                  <span class="position">Web Designer</span>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-6 mb-4">
            <div class="testimonial bg-white h-100">
              <blockquote class="mb-3">
                <p>&ldquo;A small river named Duden <strong>flows by their place and supplies it with the necessary regelialia</strong>. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.&rdquo;</p>
              </blockquote>
              <div class="d-flex align-items-center vcard">
                <figure class="mb-0 mr-3">
                  <img src="${ctx}/resources/images/person_4.jpg" alt="Image" class="img-fluid ounded-circle">
                </figure>
                <div class="vcard-text">
                  <span class="d-block">Jean Smith</span>
                  <span class="position">Web Designer</span>
                </div>
              </div>
            </div>
            
          </div>
          <div class="col-lg-6 mb-4">
            <div class="testimonial bg-white h-100">
              <blockquote class="mb-3">
                <p>&ldquo;Far far away, behind the word mountains, <strong>far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove</strong> right at the coast of the Semantics, a large language ocean.&rdquo;</p>
              </blockquote>
              <div class="d-flex align-items-center vcard">
                <figure class="mb-0 mr-3">
                  <img src="${ctx}/resources/images/person_3.jpg" alt="Image" class="img-fluid ounded-circle">
                </figure>
                <div class="vcard-text">
                  <span class="d-block">Jacob Spencer</span>
                  <span class="position">Web Designer</span>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>


    
    <div class="site-section" id="studio-section">
      <div class="container">

        <div class="row mb-5 ">
          <div class="col-md-7 section-title text-center mx-auto">
            <span class="sub-title mb-2 d-block">Photos</span>
            <h2 class="title text-primary mb-3">Coming soon</h2>
          </div>
        </div>
       
        <div id="posts" class="row no-gutter">
          <div class="item web col-6 col-sm-6 col-md-6 col-lg-4 col-xl-4 mb-4">
            <a href="${ctx}/resources/images/soon5.png" class="item-wrap" data-fancybox="gal">
              <span class="icon-search2"></span>
              <img class="img-fluid" src="${ctx}/resources/images/soon5.png">
            </a>
          </div>
          <div class="item web col-6 col-sm-6 col-md-6 col-lg-4 col-xl-4 mb-4">
            <a href="${ctx}/resources/images/soon1.jpg" class="item-wrap" data-fancybox="gal">
              <span class="icon-search2"></span>
              <img class="img-fluid" src="${ctx}/resources/images/soon1.jpg">
            </a>
          </div>

          <div class="item brand col-6 col-sm-6 col-md-6 col-lg-4 col-xl-4 mb-4">
            <a href="${ctx}/resources/images/soon6.png" class="item-wrap" data-fancybox="gal">
              <span class="icon-search2"></span>
              <img class="img-fluid" src="${ctx}/resources/images/soon6.png">
            </a>
          </div>

          <div class="item design col-6 col-sm-6 col-md-6 col-lg-4 col-xl-4 mb-4">
            <a href="${ctx}/resources/images/soon2.png" class="item-wrap" data-fancybox="gal">
              <span class="icon-search2"></span>
              <img class="img-fluid" src="${ctx}/resources/images/soon2.png">
            </a>
          </div>

          <div class="item web col-6 col-sm-6 col-md-6 col-lg-4 col-xl-4 mb-4">
            <a href="${ctx}/resources/images/soon3.png" class="item-wrap" data-fancybox="gal">
              <span class="icon-search2"></span>
              <img class="img-fluid" src="${ctx}/resources/images/soon3.png">
            </a>
          </div>

          <div class="item brand col-6 col-sm-6 col-md-6 col-lg-4 col-xl-4 mb-4">
            <a href="${ctx}/resources/images/soon4.jpg" class="item-wrap" data-fancybox="gal">
              <span class="icon-search2"></span>
              <img class="img-fluid" src="${ctx}/resources/images/soon4.jpg">
            </a>
          </div>

   
        </div>
      </div>
    </div> 
    
    
    <div class="site-section" id="contact-section">
      <div class="container">
        <form action="" class="contact-form">

          <div class="section-title text-center mb-5">
            <span class="sub-title mb-2 d-block">Get In Touch</span>
            <h2 class="title text-primary">Contact Us</h2>
          </div>

         <p align="middle">
		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3165.341466153088!2d127.0264379151658!3d37.499863779810376!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca15831e2a919%3A0x5a24c247c604f45!2z7ISc7Jq47Yq567OE7IucIOqwleuCqOq1rCDsl63sgrzrj5kg6rCV64Ko64yA66GcOTbquLggMjA!5e0!3m2!1sko!2skr!4v1619352516557!5m2!1sko!2skr" width="1000" height="680" style="border:0;" allowfullscreen="" loading="lazy" ></iframe><br>
		</p>

        </form>
      </div>
    </div> <!-- END .site-section -->
  
    
    
    <%@ include file="/resources/includes/footer.jsp" %>
    
    
    
  </div>

  <script src="${ctx}/resources/js/jquery-3.3.1.min.js"></script>
  <script src="${ctx}/resources/js/popper.min.js"></script>
  <script src="${ctx}/resources/js/bootstrap.min.js"></script>
  <script src="${ctx}/resources/js/owl.carousel.min.js"></script>
  <script src="${ctx}/resources/js/aos.js"></script>
  <script src="${ctx}/resources/js/jquery.sticky.js"></script>
  <script src="${ctx}/resources/js/stickyfill.min.js"></script>
  <script src="${ctx}/resources/js/jquery.easing.1.3.js"></script>
  <script src="${ctx}/resources/js/isotope.pkgd.min.js"></script>
  <script src="${ctx}/resources/js/jquery.fancybox.min.js"></script>
  <script src="${ctx}/resources/js/main.js"></script>

  </body>
</html>