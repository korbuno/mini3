<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/WEB-INF/jsp/include/include.jsp" %>
<title>파이널 프로젝트</title>
<!-- Main Menu -->
  <c:import url="/WEB-INF/jsp/include/header.jsp" />
  <!-- End Main -->
    
  <!-- JS Files -->
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/custom.js"></script>
<script src="${pageContext.request.contextPath}/js/slides/slides.min.jquery.js"></script>
<script src="${pageContext.request.contextPath}/js/cycle-slider/cycle.js"></script>
<script src="${pageContext.request.contextPath}/js/nivo-slider/jquery.nivo.slider.js"></script>
<script src="${pageContext.request.contextPath}/js/tabify/jquery.tabify.js"></script>
<script src="${pageContext.request.contextPath}/js/prettyPhoto/jquery.prettyPhoto.js"></script>
<script src="${pageContext.request.contextPath}/js/twitter/jquery.tweet.js"></script>
<script src="${pageContext.request.contextPath}/js/scrolltop/scrolltopcontrol.js"></script>
<script src="${pageContext.request.contextPath}/js/portfolio/filterable.js"></script>
<script src="${pageContext.request.contextPath}/js/modernizr/modernizr-2.0.3.js"></script>
<script src="${pageContext.request.contextPath}/js/easing/jquery.easing.1.3.js"></script>
<script src="${pageContext.request.contextPath}/js/kwicks/jquery.kwicks-1.5.1.pack.js"></script>
<script src="${pageContext.request.contextPath}/js/swfobject/swfobject.js"></script>
<!-- FancyBox -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/js/fancybox/jquery.fancybox.css" media="all">
<script src="${pageContext.request.contextPath}/js/fancybox/jquery.fancybox-1.2.1.js"></script>
  
  
<style>
h1{font-weight: bold; color: #3f342a; font-size: 15px; height: 19px;}
#filterable{border-top: 2px solid #555; border-left: 1px solid #dcdcdc; border-right: 1px solid #dcdcdc; background: #fcfcfc;
border-radius: 3px; padding-right: 20px; padding-top: 10px;}
#filterable > li.first > h5{font-weight: bold;}
#list{text-align: center;}
#list > li > a > h4 > p{font-size: 13px;}
</style>
</head>
  

<body>
  
  <div id="container">
	  <h1></h1>
	  <div id="portfolio">
	    <ul id="filterable">
	      <li class="first">
	        <h5>정렬</h5>
	      </li>
	      <li class="current"><a class="all" href="#all">모두</a></li>
	      <li><a class="light" href="#light">경차</a></li>
	      <li><a class="semi_medium" href="#semi_medium">준중형차</a></li>
	      <li><a class="medium" href="#medium">중형차</a></li>
	      <li><a class="large" href="#large">대형고급차</a></li>
	      <li><a class="sports" href="#sports">스포츠카</a></li>
	    </ul>
		<!-- Container -->
		      <!--END filtering-nav-->
			    <div class="portfolio-container" id="columns">
			      <ul id="list">
			      	<c:forEach items="${recentList}" var="item" varStatus="loop">
			      	<%-- <a href="${pageContext.request.contextPath}/domesticCar/detail.do?carNo=${item.carNo}">
			      	</a> --%>
			      	<li <c:choose>
			      			<c:when test="${item.typeCar.typeCarGroupNo == 1}">class="portfolio-img one-third <c:if test="${(loop.index + 1) % 3 eq 0}">last</c:if> light"</c:when>
			      			<c:when test="${item.typeCar.typeCarGroupNo == 2}">class="portfolio-img one-third <c:if test="${(loop.index + 1) % 3 eq 0}">last</c:if> semi_medium"</c:when>
			      			<c:when test="${item.typeCar.typeCarGroupNo == 3}">class="portfolio-img one-third <c:if test="${(loop.index + 1) % 3 eq 0}">last</c:if> medium"</c:when>
			      			<c:when test="${item.typeCar.typeCarGroupNo == 4}">class="portfolio-img one-third <c:if test="${(loop.index + 1) % 3 eq 0}">last</c:if> large"</c:when>
			      			<c:when test="${item.typeCar.typeCarGroupNo == 5}">class="portfolio-img one-third <c:if test="${(loop.index + 1) % 3 eq 0}">last</c:if> sports"</c:when>
			      		</c:choose>	
			      	>
			      	<a href="${pageContext.request.contextPath}/domesticCar/detail.do?carNo=${item.carNo}">
				          <p>
				          	<img src="${pageContext.request.contextPath}/common/imageView.do?filePath=${item.imgList[0].thumbPath}" style="width: 100%; height: 100%;" class="pretty-box">
				          </p>
			          <h4>${item.typeCar.val}<p>${item.modelTypeCar.val}</p></h4>
<!-- 				          <div style="-webkit-line-clamp: 3;-webkit-box-orient: vertical;display: -webkit-box;overflow: hidden;width: 200px;text-overflow: ellipsis;"> -->
<%-- 				            ${item.modelTypeCar.val} --%>
<!-- 				          </div> -->
			      	</a>
				    </li>
			      	</c:forEach>
			      </ul>
			      <!--END ul-->
			    </div>
			    <!--END portfolio-wrap-->
	    </div>
	 <div style="clear:both; height: 40px"></div>
   </div>
   <!-- close container -->
   
    <!-- Footer -->
    <c:import url="/WEB-INF/jsp/include/footer.jsp" />
    <!-- END footer -->
    
    
	<script>
	var path = '${pageContext.request.contextPath}';
	var index = 13;
		$(window).scroll(function () {
			
			var st = $(window).scrollTop(); // 스크롤의 위치	
			var wh = $(window).height(); // 윈도우 창의 높이
			var dh = $(document).height(); // 문서 자체의 높이
			
			if( st + wh >= dh - 15 ) {
				$.ajax({
					url: path + "/domesticCar/reload.do",
					data: "index=" + index,
					dataType: 'json',
					success: function(data) {
						index += 3;
						for (let ele of data) {
							var type = "";
							switch(ele.typeCar.typeCarGroupNo){
							case 1:
								type="light";
								break;
							case 2:
								type="semi_medium";
								break;
							case 3:
								type="medium";
								break;
							case 4:
								type="large";
								break;
							case 5:
								type="sports";
								break;
							}
							
							var liItem = $(
									'<li class="portfolio-img one-third '+"medium"+'">' +
									'<p><img src="${pageContext.request.contextPath}/common/imageView.do?filePath='+ele.imgList[0].thumbPath+'" style="width: 100%; height: 100%;" class="pretty-box"></p>' +
									'<h4>'+ele.title+'</h4>' +
									'<div style="-webkit-line-clamp: 3;-webkit-box-orient: vertical;display: -webkit-box;overflow: hidden;width: 200px;text-overflow: ellipsis;">' +
									ele.contents+'</div></li>'
							)[0];
							
// 							jQuery.noConflict()(function($){
// // 								$("#list").masonry( {
// // 								    columnWidth:  '217px',
// // 								    itemSelector: '.item'
// // 								} );
// 								$( $("#list") ).append('<li class="portfolio-img one-third '+"medium"+'" style="position: absolute;">' +
// 										'<p><img src="${pageContext.request.contextPath}/common/imageView.do?filePath='+ele.imgList[0].thumbPath+'" style="width: 100%; height: 100%;" class="pretty-box"></p>' +
// 										'<h4>'+ele.typeCar.val+'</h4>' +
// 										'<div style="-webkit-line-clamp: 3;-webkit-box-orient: vertical;display: -webkit-box;overflow: hidden;width: 200px;text-overflow: ellipsis;">' +
// 										ele.modelTypeCar.val+'</div></li>');
// 								$( $("#list") ).masonry( 'reloadItems' );
// 								$( $("#list") ).masonry( 'layout' ).masonry();
// 							});
// 							jQuery.noConflict()(function($){
// 								$("#list")
// 								.append(liItem)
// 								.masonry( 'appended', liItem )
// 								.masonry();
// 							});
							
							
// 							reload_js(path+"/js/custom.js");
							
							
						}
					}
				});
// 				jQuery.noConflict()(function($){
// 				$( $("#list") ).masonry( 'reloadItems' );
// 				$( $("#list") ).masonry( 'layout' ).masonry();
// 				});
			}
		});
		
// 	    function reload_js(src) {
// 	        $('script[src="' + src + '"]').remove();
// 	        $('<script>').attr('src', src).appendTo('head');
// 	    }
    </script> 


</body>
</html>