<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>파이널 프로젝트</title>
<link href="${pageContext.request.contextPath}/css/shop-item.css" rel="stylesheet">
<style>
table tbody tr th{border: 1px solid black; color: #808080; background-color: rgb(247, 247, 247);}
table tbody tr td{border: 1px solid black;}
div.photozone{padding-left: 16%;}
</style>
</head>
  <!-- Main Menu -->
  <c:import url="/WEB-INF/jsp/include/header.jsp" />
  <!-- End Main -->
<body>
	<div id="container">
	  <div class="row">
      <!-- Portfolio Item Heading -->
      	  <div class="col-md-10">
	      <h1 class="my-4">${detail.title}
	        <small>${detail.contents}</small>
	      </h1>
      	  </div>
      	  <div class="col-md-2" style="margin-top: 45px; padding-right: 10px;">
      	  	<a class="button bucketInsert" carNo="${detail.carNo}" style="float: right;">찜하기</a>
      	  </div>
	  </div>

      <!-- Portfolio Item Row -->
      <div class="row">

        <div class="col-md-6">
          <img id="bigImg"
          src="${pageContext.request.contextPath}/common/imageView.do?filePath=${detail.imgList[0].thumbPath}" style="width: 100%; height: 100%;">
          
          <div class="row col-md-12">
          	<c:forEach items="${detail.imgList}" var="item" varStatus="loop">
		        <div class="col-md-3 col-sm-6 mb-4">
		          <a href="#">
        			  <img src="${pageContext.request.contextPath}/common/imageView.do?filePath=${item.thumbPath}" style="width: 100%; height: 100%;">
		          </a>
		        </div>
          	</c:forEach>
	      </div>
        </div>

        <div class="col-md-6">
          <div id="carInfotitle">
          	<div class="num">매물번호 :${detail.carNo}</div>
          	<div class="carName">${detail.typeCar.val}</div>
          	<div class="price">
          		<span>입고가격</span>
          		<strong>${detail.price}</strong>만원
          	</div>
          </div>
          <div id="carInfoBox">
          	<table>
          		<tr>
          			<th>연식</th>
          			<td>2016년 9월</td>
          			<th>주행거리</th>
          			<td>${detail.driving}</td>
          		</tr>
          		<tr>
          			<th>색상</th>
          			<td>${detail.color}</td>
          			<th>배기량</th>
          			<td>${detail.modelTypeCar.displacement}</td>
          		</tr>
          		<tr>
          			<th>변속기</th>
          			<td>${detail.trans}</td>
          			<th>연료</th>
          			<td>${detail.modelTypeCar.val}</td>
          		</tr>
          		<tr>
          			<th>차종</th>
          			<td>
          				<c:choose>
          					<c:when test="${detail.typeCar.typeCarGroupNo==1}">
          						경형
          					</c:when>
          					<c:when test="${detail.typeCar.typeCarGroupNo==2}">
          						준중형
          					</c:when>
          					<c:when test="${detail.typeCar.typeCarGroupNo==3}">
          						중형
          					</c:when>
          					<c:when test="${detail.typeCar.typeCarGroupNo==4}">
          						대형
          					</c:when>
          					<c:when test="${detail.typeCar.typeCarGroupNo==5}">
          						스포츠카
          					</c:when>
          				</c:choose>
          			</td>
          			<th>차량번호</th>
          			<td>${detail.carsNumber}</td>
          		</tr>
          		<tr>
          			<th>사고여부</th>
          			<td>
          			<c:choose>
          				<c:when test="${detail.accident_status == 0}">
          					X
          				</c:when>
          				<c:otherwise>
          					O
          				</c:otherwise>
          			</c:choose>
          			</td>
          			<th>압류저당</th>
          			<td>없음</td>
          		</tr>
          	</table>
          </div>
          
        </div>

      </div>
      <!-- /.row -->
      
      <div class="row">
      	<div class="option">
      		<table class="cont">
      			<tr>
      				<td>
      					<div class="opt_title">외관장치</div>
      					<div class="val">
      						<c:forEach items="${allOptList}" var="opt" varStatus="loop">
	      						<c:if test="${opt.optionGroupNo == 1}">
		      							<i class="fa fa-square-o" aria-hidden="true" data-no="${opt.optionNo}"></i> ${opt.val} <br>
	      						</c:if>
      						</c:forEach>
      					</div>
      				</td>

      				<td>
      					<div class="opt_title">내관장치</div>
      					<div class="val">
      						<c:forEach items="${allOptList}" var="opt">
	      						<c:if test="${opt.optionGroupNo == 2}">
	      							<i class="fa fa-square-o" aria-hidden="true" data-no="${opt.optionNo}"></i> ${opt.val} <br>
	      						</c:if>
      						</c:forEach>
      					</div>
      				</td>

      				<td>
      					<div class="opt_title">안전장치</div>
      					<div class="val">
      						<c:forEach items="${allOptList}" var="opt">
	      						<c:if test="${opt.optionGroupNo == 3}">
	      							<i class="fa fa-square-o" aria-hidden="true" data-no="${opt.optionNo}"></i> ${opt.val} <br>
	      						</c:if>
      						</c:forEach>
      					</div>
      				</td>

      				<td>
      					<div class="opt_title">편의장치</div>
      					<div class="val">
      						<c:forEach items="${allOptList}" var="opt">
	      						<c:if test="${opt.optionGroupNo == 4}">
	      							<i class="fa fa-square-o" aria-hidden="true" data-no="${opt.optionNo}"></i> ${opt.val} <br>
	      						</c:if>
      						</c:forEach>
      					</div>
      				</td>

      				<td>
      					<div class="opt_title">성능장치</div>
      					<div class="val">
      						<c:forEach items="${allOptList}" var="opt">
	      						<c:if test="${opt.optionGroupNo == 5}">
	      							<i class="fa fa-square-o" aria-hidden="true" data-no="${opt.optionNo}"></i> ${opt.val} <br>
	      						</c:if>
      						</c:forEach>
      					</div>
      				</td>
      			</tr>
      		</table>
      	</div>
      </div>

	  <div class="row">
	      <!-- Related Projects Row -->
	      <div class="photozone" style="text-align: center;">
	      <c:forEach items="${detail.imgList}" var="img">
	          <img src="${pageContext.request.contextPath}/common/imageView.do?filePath=${img.filePath}" style="display:block;">
	      </c:forEach>
	      </div>		  
	      <a class="btn btn-default" id="backBtn" style="width:200px; margin-left:380px; margin-top: 30px; margin-bottom: 45px;">목록</a>
	  </div>     
      <!-- /.row -->
    </div>
	
	<!-- Footer -->
    <c:import url="/WEB-INF/jsp/include/footer.jsp" />
    <!-- END footer -->
    
    <script>
    	var checkNos = [];
		<c:forEach items="${detail.optList}" var="value">
	    checkNos.push(${value.optionNo});
		</c:forEach>
		
		$(".fa-square-o").each(function (ele) {
			if (checkNos.indexOf( ele ) != -1) {
				$(this).removeClass("fa-square-o").addClass("fa-check-square-o");
			}
		});
		
		$("#container > div > div > div > div > a > img").mouseenter(function(e){
			var src = $(this).attr("src");
			$("#bigImg").fadeOut("fast", function() {
	    		 $(this).attr("src", src);
	    		 $(this).fadeIn("fast");
	    	 });
		});
		
		$("#backBtn").on("click", function(e) {
			window.history.back();
		});
		
		$('.bucketInsert').click(function(e) {
			var carNo = $(this).attr("carNo");
			$.ajax({
				url: "${pageContext.request.contextPath}/myPage/bucketInsert.do",
				data: "carNo="+carNo,
				dataType: "json",
				success: function(data) {
					// 회원
					if(data["code"] == 1) {					
						swal({title: "회원 찜 하였습니다.", icon: "success"});
					}
					// 비회원
					else if(data["code"] == -1) {
						swal({title: "비회원 찜 하였습니다.", icon: "success"});
					}
				}
			});
		});
    </script>
</body>
</html>