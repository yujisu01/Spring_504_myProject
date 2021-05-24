<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath == '/' ? '' : pageContext.request.contextPath}" scope="application"/>
<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <!-- <title>Secret Garden</title> -->
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
<body>
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
 <div class="site-navbar-wrap">
      
      <div class="site-navbar site-navbar-target js-sticky-header">
        <div class="container">
          <div class="row align-items-center">
            <div class="col-6 col-md-4">
             <%--  <h1 class="my-0 site-logo"><a href="${ctx }/secretgarden/main">Secret Garden<span class="text-primary">.</span> </a></h1> --%>
            </div>
            <div class="col-6 col-md-8">
              <nav class="site-navigation text-right" role="navigation">
                <div class="container">

                  <div class="d-inline-block d-lg-block ml-md-0 mr-auto py-3"><a href="/project/secretgarden/main#" class="site-menu-toggle js-menu-toggle text-black">
                   <!--  <span class="icon-menu h3"></span> <span class="menu-text">Menu</span> -->
                  </a></div>

                  <ul class="site-menu main-menu js-clone-nav d-none d-lg-none">
                    <li><a href="#home-section" class="nav-link">Home</a></li>
                    <li><a href="#what-we-do-section" class="nav-link">What We Do</a></li>
                    <li><a href="#about-section" class="nav-link">About Us</a></li>
                    <li><a href="#portfolio-section" class="nav-link">Theme</a></li>
                    <li><a href="${ctx }/secretgarden/list" class="nav-link">QnA</a></li>
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