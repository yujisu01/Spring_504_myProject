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

<script>
	$(document).ready(function(){
		// id가 operForm인 애를 가져와라
		var operForm = $("#operForm");
		// modify선택
		$("button[data-oper='modify']").on("click", function(e){
			// 체이닝기법
			operForm.attr("action","${ctx}/secretgarden/board/modify").submit();
		});
		$("button[data-oper='list']").on("click", function(e){
			// id가 bno인 것을 찾아서 삭제
			operForm.find("#bno").remove();
			// submit과 따로따로 실행
			operForm.attr("action","${ctx}/secretgarden/board/list");
			operForm.submit();
		});
	});
</script>

<div class="row">
  <div class="col-lg-12">
    <div class="panel panel-default">

      <div class="panel-heading">Board Read Page</div>
      <!-- /.panel-heading -->
      <div class="panel-body">

     <%--    <form role="form" action="${ctx}/board/register" method="post"> --%>
          <div class="form-group">
            <label>Bno</label> <input class="form-control" name='bno' value="${board.bno}" readonly="readonly">
          </div>
          <div class="form-group">
            <label>Title</label> <input class="form-control" name='title' value="${board.title}" readonly="readonly">
          </div>

          <div class="form-group">
            <label>Content</label>
            <textarea class="form-control" rows="3" name='content' readonly="readonly">${board.content}</textarea>
          </div>

          <div class="form-group">
            <label>Writer</label> <input class="form-control" name='writer' value="${board.writer}" readonly="readonly">
          </div>
          <button data-oper="modify" class="btn btn-default">Modify</button>
          <button data-oper="list" class="btn btn-info">List</button>
          <form action="${ctx}/secretgarden/board/modify" method="get" id="operForm">
          	<input type="hidden" id="bno" name="bno" value='<c:out value="${board.bno}"/>'>
          	<input type="hidden" name="pageNum" value= '<c:out value="${cri.pageNum}"/>'>
          	<input type="hidden" name="amount" value= '<c:out value="${cri.amount}"/>'>
          	<input type="hidden" name="keyword" value= '<c:out value="${cri.keyword}"/>'>
          	<input type="hidden" name="type" value= '<c:out value="${cri.type}"/>'>
          </form>
         <%--  <input type="button" value="삭제" onclick="del(${board.seq})"> --%>
     <!--    </form> -->

      </div>
      <!--  end panel-body -->

    </div>
    <!--  end panel-body -->
  </div>
  <!-- end panel -->
</div>
<!-- /.row -->



<div class='row'>
  <div class="col-lg-12">

    <!-- /.panel -->
    <div class="panel panel-default">
      <div class="panel-heading">
        <i class="fa fa-comments fa-fw"></i> Reply
        <button id='addReplyBtn' class='btn btn-primary btn-xs pull-right'>New Reply</button>
      </div>      
      
      <!-- /.panel-heading -->
      <div class="panel-body">        
        <ul class="chat">
        </ul>
        <!-- ./ end ul -->
      </div>
      <!-- /.panel .chat-panel -->

	  <div class="panel-footer"></div>
	</div>
  </div>
  <!-- ./ end row -->
</div>

<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="myModalLabel">REPLY MODAL</h4>
            </div>
            <div class="modal-body">
            	<div class="form-group">
            		<label>ReplyText</label>
            		<input class="form-control" name="replytext" value="New Reply!!!!">
            	</div>
            	<div class="form-group">
            		<label>Replyer</label>
            		<input class="form-control" name="replyer" value="replyer">
            	</div>
				<div class="form-group">
					<label>Reply Date</label>
					<input class="form-control" name="replyDate" value="2018-01-01 13:13">
				</div>
            </div>
			<div class="modal-footer">
        		<button id="modalModifyBtn" type="button" class="btn btn-warning">Modify</button>
        		<button id="modalRemoveBtn" type="button" class="btn btn-danger">Remove</button>
        		<button id="modalRegisterBtn" type="button" class="btn btn-primary">Register</button>
        		<button id="modalCloseBtn" type="button" class="btn btn-default">Close</button>
      		</div>          
    	</div>
          <!-- /.modal-content -->
	</div>
<!-- /.modal-dialog -->
</div>
 <!-- /.modal -->

<script type="text/javascript" src="${ctx}/resources/js/reply.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	var bnoValue = "${board.bno}";
	var replyUL = $(".chat");
	  
	showList(1);
	
	function showList(page) {
		console.log("show list " + page);
		   
		replyService.getList(
				{bno:bnoValue, contextPath:"${ctx}", page: page || 1 }, 
				function(replyCnt, list) {
					console.log("replyCnt: "+ replyCnt );
					console.log("list: " + list);
					console.log(list);
					
					if(page == -1){
						pageNum = Math.ceil(replyCnt/10.0);
						showList(pageNum);
						return;
					}
					  
					var str="";
					 
					if(list == null || list.length == 0){
						return;
					}
					 
					for (var i = 0, len = list.length || 0; i < len; i++) {
						str +="<li class='left clearfix' data-rno='"+list[i].rno+"'>";
						str +="  <div><div class='header'><strong class='primary-font'>["
							+ list[i].rno+"] "+list[i].replyer+"</strong>";
						str +="    <small class='pull-right text-muted'>"
							+ replyService.displayTime(list[i].updatedate)+"list[i].updatedate"+list[i].updatedate+"</small></div>";
						str +="    <p>"+list[i].replytext+"</p></div></li>";
					}
					 
					replyUL.html(str);
					 
					showReplyPage(replyCnt);
		});//end function
	}//end showList
	
    var pageNum = 1;
    var replyPageFooter = $(".panel-footer");
    
    function showReplyPage(replyCnt) {
    	var endNum = Math.ceil(pageNum / 10.0) * 10;
    	var startNum = endNum - 9;
    	
    	var prev = startNum != 1;
    	var next = false;
    	
    	if(endNum * 10 >= replyCnt) {
    		endNum = Math.ceil(replyCnt/10.0);
    	}
    	
    	if(endNum * 10 < replyCnt) {
    		next = true;
    	}
    	
    	var str = "<ul class='pagination pull-right'>";
    	
    	if(prev) {
    		str+= "<li class='page-item'><a class='page-link' href='"+(startNum -1)+"'>Previous</a></li>";
    	}
    	
    	for(var i = startNum ; i <= endNum; i++) {
    		var active = pageNum == i? "active":"";
    		
    		str+= "<li class='page-item "+active+" '><a class='page-link' href='"+i+"'>"+i+"</a></li>";
    	}
    	
    	if(next) {
    		str+= "<li class='page-item'><a class='page-link' href='"+(endNum + 1)+"'>Next</a></li>";
    	}
    	
    	str += "</ul></div>";
    	
    	console.log(str);
    	
    	replyPageFooter.html(str);
    }
     
    replyPageFooter.on("click","li a", function(e) {
    	e.preventDefault();
    	console.log("page click");
    	
    	var targetPageNum = $(this).attr("href");
    	
    	console.log("targetPageNum: " + targetPageNum);
    	
    	pageNum = targetPageNum;
    	
    	showList(pageNum);
     });     
	
    var modal = $(".modal");
    var modalInputReplyText = modal.find("input[name='replytext']");
    var modalInputReplyer = modal.find("input[name='replyer']");
    var modalInputReplyDate = modal.find("input[name='replyDate']");
    
    var modalModifyBtn = $("#modalModifyBtn");
    var modalRemoveBtn = $("#modalRemoveBtn");
    var modalRegisterBtn = $("#modalRegisterBtn");
    
    $("#modalCloseBtn").on("click", function(e){
    	modal.modal("hide");
    });
    
    
    $("#addReplyBtn").on("click", function(e){
    	modal.find("input").val("");
    	modalInputReplyDate.closest("div").hide();
    	modal.find("button[id !='modalCloseBtn']").hide();
    	
    	modalRegisterBtn.show();
    	
    	$(".modal").modal("show");
    });
    
    modalRegisterBtn.on("click", function(e) {
    	var reply = {
    			replytext: modalInputReplyText.val(),
    			replyer:modalInputReplyer.val(),
    			contextPath:"${ctx}",
    			bno:bnoValue
    		};
    	
        replyService.add(reply, function(result){
        	alert(result);
        	
        	modal.find("input").val("");
        	modal.modal("hide");
        	
        	showList(-1);
        });
	});
    
    $(".chat").on("click", "li", function(e){
    	var reply = {
    		rno : $(this).data("rno"),
    		contextPath:"${ctx}",
    	};
    	replyService.get(reply, function(reply){
    		modalInputReplyText.val(reply.replytext);
    		modalInputReplyer.val(reply.replyer);
    		modalInputReplyDate.val(replyService.displayTime(reply.regdate)).attr("readonly","readonly");
    		modal.data("rno", reply.rno);
    		
    		modal.find("button[id !='modalCloseBtn']").hide();
    		modalModifyBtn.show();
    		modalRemoveBtn.show();
    		
    		$(".modal").modal("show");
    	});
    });
    
    modalModifyBtn.on("click", function(e){
    	var reply = {
    			rno:modal.data("rno"), 
    			replytext: modalInputReplyText.val(),
    			contextPath:"${ctx}"
    		};
    	
    	replyService.update(reply, function(result) {
    		alert(result);
    		
     	    modal.modal("hide");
     	    showList(pageNum);
     	});
    });
    modalRemoveBtn.on("click", function (e) {
    	var reply = {
    			rno : modal.data("rno"), 
    			contextPath:"${ctx}"
    		};
    	
    	replyService.remove(reply, function(result) {
    		alert(result);
    		
    		modal.modal("hide");
    		showList(pageNum);
    	});
    });
});
</script>
<script type="text/javascript">
$(document).ready(function() {
	var operForm = $("#operForm"); 
		$("button[data-oper='modify']").on("click", function(e){
	  	operForm.attr("action","${ctx}/secretgarden/board/modify").submit();
	});
	
	$("button[data-oper='list']").on("click", function(e){
		operForm.find("#bno").remove();
		operForm.attr("action","${ctx}/secretgarden/board/list")
		operForm.submit();
	});  
});
</script>
<%@include file="/resources/includes/footer.jsp"%>
