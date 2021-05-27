<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="/resources/includes/header.jsp"%>
<c:set var="ctx" value="${pageContext.request.contextPath == '/' ? '' : pageContext.request.contextPath}" scope="application"/>
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
<div class="row">
  <div class="col-lg-12">
    <h1 class="page-header"></h1>
  </div>
  <!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<script type="text/javascript">
	$(document).ready(function(){
		// form이라는 데이터를 다 담음
		var formObj = $("form");
		
		// click이 일어나면 function실행
		$("button").on("click", function(e){
			e.preventDefault();
			
			// 현재 선택된 애의 data-oper를 동작
			var operation = $(this).data("oper");
			// 어떤 동작인지 확인.. (data-oper를 취득함)
			console.log(operation);
			
			if(operation === 'remove'){
				// formObj의 속성값을 적용함 (action에 설정을 해줌. (remove는 여기로가라)
				formObj.attr("action","${ctx}/secretgarden/board/remove");
				
			}else if(operation ==='list'){
				self.location = "${ctx}/secretgarden/board/list"; 
				formObj.attr("action","${ctx}/secretgarden/board/list").attr("method","get");
				var pageNumTag = $("input[name='pageNum']").clone();
				var amountTag = $("input[name='amount']").clone();
				var keywordTag = $("input[name='keyword']").clone();
				var typeTag = $("input[name='type']").clone();
				
				formObj.empty();
				formObj.append(pageNumTag);
				formObj.append(amountTag);
				formObj.append(keywordTag);
				formObj.append(typeTag);
				
				
			}
			
			// 이것들 아니면 modify이다.
			// formObj의 submit을 실행하라.
			formObj.submit();
		});
	});
</script>

<div class="row">
  <div class="col-lg-12">
    <div class="panel panel-default">

      <div class="panel-heading">Board Read Page</div>
      <!-- /.panel-heading -->
      <div class="panel-body">

        <form role="form" action="${ctx}/secretgarden/board/modify" method="post">
          <div class="form-group">
            <label>Bno</label> <input class="form-control" name='bno' value="${board.bno }" readonly="readonly">
          </div>
          <div class="form-group">
            <label>Title</label> <input class="form-control" name='title' value="${board.title }">
          </div>

          <div class="form-group">
            <label>Content</label>
            <textarea class="form-control" rows="3" name='content'>${board.content }</textarea>
          </div>

          <div class="form-group">
            <label>Writer</label> <input class="form-control" name='writer' value="${board.writer }" readonly="readonly">
          </div>
          <button type="submit" data-oper="modify" class="btn btn-default">완료</button>
          <button type="submit" data-oper="remove" class="btn btn-danger">삭제</button>
          <button type="submit" data-oper="list" class="btn btn-info"><a href="${ctx }/secretgarden/board/list">목록</a></button>
     	  <!-- <button type="submit" data-oper="list" class="btn btn-info">List</button> -->
         
         <input type="hidden" name="pageNum" value= '<c:out value="${cri.pageNum }"/>'>
          <input type="hidden" name="amount" value= '<c:out value="${cri.amount }"/>'>
          <input type="hidden" name="type" value= '<c:out value="${cri.type}"/>'>
          <input type="hidden" name="keyword" value= '<c:out value="${cri.keyword}"/>'>
        </form>

      </div>
      <!--  end panel-body -->

    </div>
    <!--  end panel-body -->
  </div>
  <!-- end panel -->
</div>
<!-- /.row -->
<%@include file="/resources/includes/footer.jsp"%>