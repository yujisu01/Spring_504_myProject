<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath == '/' ? '' : pageContext.request.contextPath}" scope="application"/>
<script src="https://kit.fontawesome.com/215ee1d5fa.js" crossorigin="anonymous"></script>

<!DOCTYPE html>
<html lang="en">

    <head>
     <%@ include file="/resources/includes/header.jsp" %>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Secret Garden</title>
        <!-- Favicon-->
		<!-- <link rel="icon" type="image/png" href="http://example.com/myicon.png"> -->
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >
		<link rel="stylesheet" href="${ctx}/resources/css/bootstrap-datepicker.css">
		
		<script src="https://code.jquery.com/jquery-3.2.1.js"></script>
		<script src="${ctx}/resources/js/bootstrap-datepicker.min.js"></script>
       <%--  <link rel="icon" type="${ctx}/resources/assets/image/x-icon" href="${ctx}/resources/assets/favicon.ico" /> --%>
        <!-- Bootstrap Icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic" rel="stylesheet" type="text/css" />
        <!-- SimpleLightbox plugin CSS-->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="${ctx}/resources/css/styles.css" rel="stylesheet" />
        <link href="${ctx}/resources/css/index.css" rel="stylesheet" />
         <link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
		<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
		
    </head>
    <body id="page-top">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="${ctx }/secretgarden/main">Secret Garden</a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto my-2 my-lg-0">
                        <li class="nav-item"><a class="nav-link" href="${ctx }/secretgarden/main#what-we-do-section">Caution</a></li>
                        <li class="nav-item"><a class="nav-link" href="${ctx }/secretgarden/main#about-section">About Us</a></li>
                        <li class="nav-item"><a class="nav-link" href="${ctx }/secretgarden/main#portfolio-section">Themes</a></li>
                        <li class="nav-item"><a class="nav-link" href="${ctx }/secretgarden/board/list">QnA</a></li>
                        <li class="nav-item"><a class="nav-link" href="${ctx }/secretgarden/main#studio-section">Coming soon..</a></li>
                        <li class="nav-item"><a class="nav-link" href="${ctx }/secretgarden/main#contact-section">Contact</a></li>
                        <li class="nav-item"><a class="nav-link" href="${ctx }/secretgarden/login">Log in</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        
        
<body>



</body>
</html>

<%@ include file="/resources/includes/footer.jsp" %>