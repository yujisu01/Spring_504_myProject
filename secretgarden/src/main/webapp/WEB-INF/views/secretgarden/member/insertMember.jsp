<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath == '/' ? '' : pageContext.request.contextPath}" scope="application"/>
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
        <link rel="icon" type="${ctx}/resources/assets/image/x-icon" href="${ctx}/resources/assets/favicon.ico" />
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
    </head>
    <body id="page-top">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="${ctx }/secretgarden/main">Secret Garden</a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto my-2 my-lg-0">
                        <li class="nav-item"><a class="nav-link" href="${ctx }/secretgarden/main#about">About</a></li>
                        <li class="nav-item"><a class="nav-link" href="${ctx }/secretgarden/main#services">Services</a></li>
                        <li class="nav-item"><a class="nav-link" href="${ctx }/secretgarden/main#portfolio">Themes</a></li>
                        <li class="nav-item"><a class="nav-link" href="${ctx }/secretgarden/main#contact">Contact</a></li>
                        <li class="nav-item"><a class="nav-link" href="${ctx }/secretgarden/list">QnA</a></li>
                        <li class="nav-item"><a class="nav-link" href="${ctx }/secretgarden/login">Login</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        
        <body class="hold-transition register-page">
<div class="register-box">
  <div class="register-logo">
    <a href="${ctx}/"><b>Admin</b>LTE</a>
  </div>

  <div class="card">
    <div class="card-body register-card-body">
      <p class="login-box-msg">Register a new membership</p>

      <form action="${ctx}/member/insertMember" method="post">
        <div class="input-group mb-3">
          <input type="text" name="userId" class="form-control" placeholder="아이디">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-exclamation"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="text" name="userName" class="form-control" placeholder="이름">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-user"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="email" name="userEmail" class="form-control" placeholder="이메일">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-envelope"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="password" name="userPw" class="form-control" placeholder="비밀번호">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="password" class="form-control" placeholder="비밀번호 확인">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-8">
            <div class="icheck-primary">
              <input type="checkbox" id="agreeTerms" name="terms" value="agree">
              <label for="agreeTerms">
               I agree to the <a href="#">terms</a>
              </label>
            </div>
          </div>
          <!-- /.col -->
          <div class="col-4">
            <button type="submit" class="btn btn-primary btn-block">Register</button>
          </div>
          <!-- /.col -->
        </div>
      </form>

      <a href="${ctx}/member/login" class="text-center">I already have a membership</a>
    </div>
    <!-- /.form-box -->
  </div><!-- /.card -->
</div>
<!-- /.register-box -->


<script>
    $(function () {
        $('input').iCheck({
            checkboxClass: 'icheckbox_square-blue',
            radioClass: 'iradio_square-blue',
            increaseArea: '20%' // optional
        });
    });
</script>
</body>
        
        
        
        
        
 <%@ include file="/resources/includes/footer.jsp" %>