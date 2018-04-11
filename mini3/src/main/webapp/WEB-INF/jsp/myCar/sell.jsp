<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="navi" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>파이널 프로젝트</title>

<style>
.sell_img_box{
background: url(${pageContext.request.contextPath}/upload/my_sell_visual.jpg)top center no-repeat;
height: 530px; margin: -15px 0 5px; overflow: hidden;
display:block;
}
.sell_inner{
background: url(${pageContext.request.contextPath}/upload/inner_bg.png)top left no-repeat;
width: 810px; height:310px; margin: 107px auto 0; overflow: hidden;
}
.txt{margin: 75px 0 0 60px; float: left; letter-spacing: -0.15em;}
.txt h6{margin-bottom: 25px; font-size: 50px; color: #353535;}
.txt p{font-size: 18px; color: #353535; line-height: 1.4;}
.sell_form{width: 360px; margin: 20px 40px 0 0; float: right; letter-spacing: -0.1em;}
.sell_form input{width: 342px; height: 40px; margin-bottom: 10px; padding: 5px 0 0 18px; border: none;
color: #666666; background: url(${pageContext.request.contextPath}/upload/input.png)top left no-repeat #fff;
line-height: 40px;}
.sell_form button{border: 0 none; padding: 0; margin: 0; background: transparent; cursor: pointer; margin-top: 0;}
.consult_list{padding: 50px 0 0;}
.consult_list p.tit{width: 130px; height: 55px; line-height: 37px; font-size: 18px;
color: #333; font-weight: 600; letter-spacing: -0.05em; text-align: center; border-width: 1px 0;
border-style: solid; border-color: #5acaff #fff #aaa #fff; margin: 0 auto;}
div.cont{padding: 40px 0 0;}
div.cont table{box-shadow: none; border: none; border-top: 2px solid #5acaff;}
div.cont table thead th{height: 43px; text-align: center; font-size: 14px; letter-spacing: -0.05em;
color: #333; font-weight: normal; background: #fdfdfd; border-bottom: 1px solid #e4e4e4;}
div.cont table tbody td{height: 43px; text-align: center; font-size: 13px; color: #666; border-bottom: 1px solid #e4e4e4;}
div.cont table tbody th{height: 43px; text-align: center; font-size: 13px; color: #666; border-bottom: 1px solid #e4e4e4;}

div.opt table{width: 100%; height: 100%; box-shadow: none; border: 0;}
div.opt table tr td{padding: 0;}
div.opt table tbody tr th{vertical-align:top;}
div.btn-group > label.btn > span{font-size:20px;}
</style>
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/animate.css/3.2.0/animate.min.css">
</head>

<body>
  <!-- Main Menu -->
  <c:import url="/WEB-INF/jsp/include/header.jsp" />
  <!-- End Main -->
  <script src="${pageContext.request.contextPath}/lib/js/animatedModal.min.js"></script>
 
  <div class="sell_img_box">
  	<div class="sell_inner">
  		<div class="txt">
  			<h6>내차 사고 팔기</h6>
  			<p>
  				내차 사고 팔기 상담을
  				<br>
  				이용하시면
  				<b>
  				가장 빠르게 최고가로
  				<br>
  				차량을 판매
  				</b>
  				하실 수 있습니다.
  			</p>
  		</div>
  		<div class="sell_form">
  			<form class="form">
	  			<input class="title" name="title" type="text" value="차량명 EX ) K5, K5 2.5 럭셔리" 
	  			onfocus="if(this.value=='차량명 EX ) K5, K5 2.5 럭셔리'){this.value=''}"
	  			onblur="if(this.value==''){this.value='차량명 EX ) K5, K5 2.5 럭셔리'}">
	  			<input class="phone" name="phone" type="text" value="연락처 EX ) 010-1234-5678"
	  			onfocus="if(this.value=='연락처 EX ) 010-1234-5678'){this.value=''}"
	  			onblur="if(this.value==''){this.value='연락처 EX ) 010-1234-5678'}">
	  			<div class="row" style="text-align: center; margin-bottom: 45px; margin-top: 25px;">
	  				 <div class="col-md-6">
							<div class="btn-group" data-toggle="buttons">
							    <label class="btn active">
							    	<input type="radio" name='role' value="20" checked><span>공개글</span>
							    </label>
							    <label class="btn">
							    	<input type="radio" name='role' value="21"><span>비밀글</span>
							    </label>
						    </div>
					</div>
	  				 <div class="col-md-6">
							<div class="btn-group" data-toggle="buttons">
							    <label class="btn active">
							    	<input type="radio" name='type' value="sell" checked><span>판매</span>
							    </label>
							    <label class="btn">
							    	<input type="radio" name='type' value="buy"><span>구매</span>
							    </label>
						    </div>
					</div>
	  			</div>
	  			<button class="btn" id="submit" type="button"><img src="${pageContext.request.contextPath}/upload/btn.png"></button>
  			</form>
  		</div>
  	</div>
  		
  </div>
  <div id="container">
  	<div class="consult_list">
  		<p class="tit">상담 신청 현황</p>
  		<div class="cont">
  			<table width="100%" border="0" cellpadding="0" cellspacing="0">
  				<thead>
					<tr>
					<th width="13%">No.</th>
					<th>제목</th>
					<th width="15%">등록일</th>
					<th width="15%">처리상태</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${boardList}" var="board">
						<tr class="modalOpen" style="cursor: pointer;">
						<td>${board.boardNo}</td>
						<th>
							<c:choose>
								<c:when test="${board.role == 21}">
									<i class="fa fa-lock" aria-hidden="true"></i>
								</c:when>
								<c:otherwise>
									<i class="fa fa-unlock" aria-hidden="true"></i>
								</c:otherwise>
							</c:choose>
							&nbsp;[${board.type}]${board.title}</th>
						<fmt:formatDate value="${board.regDate}" pattern="yyyy/mm/dd" var="date" />
						<td><small>${date}</small></td>	
						<td>
							<c:choose>
								<c:when test="${board.status == 15}">
								<i class="fa fa-spinner fa-spin" aria-hidden="true"></i>
								</c:when>
								<c:when test="${board.status == 16}">
								<i class="fa fa-check-circle-o" aria-hidden="true"></i>
								</c:when>
							</c:choose>
						</td>
						</tr>
					</c:forEach>
				</tbody>
  			</table>
  			
  			<navi:page data="${pageRes}"></navi:page>
  		</div>
  	</div>
  </div>

  <!-- Footer -->
  <c:import url="/WEB-INF/jsp/include/footer.jsp" />
  <!-- END footer -->
  
  <!-- 상세글 모달  -->
  <div class="modal fade" id="myModal" role="dialog">
	<div class="modal-dialog">
      <div class="modal-content">
      
        <div class="modal-header">
          <button type="button" id="close_sellDetail" class="close">×</button>
          <h5 class="modal-title"></h5>
        </div>
        
        <div class="modal-body">
		  <h3 class="text-center"></h3>
		</div>
		
        <div class="modal-footer">
          <button type="button" id="back_sellDetail" class="btn-default">뒤로</button>
          <button type="button" id="confirm" class="btn-default">상담완료</button>
        </div>
				
      </div>
    </div>
  </div>  
  <script>
  var path = '${pageContext.request.contextPath}';
  $("#submit").click(function(e) {
	  $.ajax({
		  url: path+"/myCar/sellInsert.do",
		  data: $(".form").serialize(),
		  success: function(data) {
			  location.href = path + "/myCar/sell.do";
		  }
		  
	  });
  });
  
  $(".modalOpen").on("click", function(e) {
	  var target = $(this);
	  var myModal = $("#myModal");
	  var boardNo = target.children()[0].innerText;
	  
	  $.ajax({
		  url: path+"/myCar/sellDetail.do",
		  data: "boardNo=" + boardNo,
		  dataType: "json",
		  success: function(data) {
			  
			  if(data["code"] == -1) {
				  swal({title: '로그인을 해주세요.', icon: 'error'});
				  return;
			  }
			  else if(data["code"] == -2){
				  swal({title: '접근 권한이 없습니다.', icon: 'error'});
				  return;
			  }
			  
			  else{
			 	  $("#myModal .modal-title").html(data["board"].title);
			 	  $("#myModal .text-center").html(data["board"].phone);
			 	  
			 	  if(data["board"].status == 16) $("#confirm").text("상담완료 취소");
			 	  else if(data["code"] == 201){
			 		 $("#confirm").text("");
			 	  }
			 	  else $("#confirm").text("상담완료");
				  myModal.modal("show");				  
			  }
		  }
	  });
	  
	  $("#close_sellDetail").click(function () {myModal.modal("hide");});
	  $("#back_sellDetail").click(function () {myModal.modal("hide");});
	  
	  $("#confirm").on("click", function() {
		  if($(this).text() == "상담완료"){			  
			  if(confirm("상담을 완료하시겠습니까??")){
				  $.ajax({
					  url: path+ "/myCar/confirmDetail.do",
					  data: "boardNo=" + boardNo,
					  success: function() {
						  swal({title: '상담이 완료 되었습니다.', icon: 'success'});
						  location.href = path + "/myCar/sell.do";
					  }
				  })			  
			  }
		  } else {
			  
		  }
	  });
  });
  </script>
</body>

</html>