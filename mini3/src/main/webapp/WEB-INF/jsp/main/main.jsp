<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

  <!-- Main Menu -->
  <c:import url="/WEB-INF/jsp/include/header.jsp" />
  <!-- End Main -->
  
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>파이널 프로젝트</title>
<script>
	$(function() {
		$("#prod_nav ul").tabs("#panes > div", {
			effect : 'fade',
			fadeOutSpeed : 400
		});
	});
</script>
<!-- JS Files -->
<script src="${pageContext.request.contextPath}/js/jquery.tools.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.eislideshow.js"></script>
<script src="${pageContext.request.contextPath}/js/custom.js"></script>
<script>
	jQuery.noConflict()(function($) {
		$('#ei-slider').eislideshow({
			animation : 'center',
			autoplay : true,
			slideshow_interval : 3000,
			titlesFactor : 0
		});
	});
</script>
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
<script	src="${pageContext.request.contextPath}/js/fancybox/jquery.fancybox-1.2.1.js"></script>

<style>
#footer {margin-left: -20px; margin-bottom: 0px;}
#panes img{border: 1px solid #ccc; border-radius: 5px;}
div.one-third>img {width: 100%;height: 150px;}
.w3-input {height: 50px;}
div#thumbPreview{display: inherit;width: 450px; height: 50px; top: 309px; left: 15px;}
div#thumbPreview li{float:left; width:20%; height:20%;}
div#thumbPreview img{width: 100%; height: 100%; border: 1px solid #ccc; border-radius: 5px;}
div.one-third{border-radius: 3px; padding: 5px; border-top: 2px solid #555; border-left: 1px solid #dcdcdc; 
border-right: 1px solid #dcdcdc; background: #fcfcfc;}
#panes > div > h2{height: 30px; overflow: hidden; margin-bottom: 10px;}
#panes > div > h2 > a{font-size: 30px; font-weight: bold; color: #333;}
#panes > div > span {display:block; line-height: 25px; margin-right: 12px; margin-left:465px; border-bottom: 1px solid #888d92;}
#panes > div > span.model_inner {border-top: 2px solid #888d92; margin-top: 20px;}
#panes > div > span.contents_inner {border-bottom: 2px solid #888d92; height: 72px; overflow: hidden;}
#panes > div > span > strong.price_val{color: #e61920; font-size: 15px; font-weight: bold;}
#panes > div > span > strong.model_val{color: #e61920; font-size: 15px; font-weight: bold;}
#panes > div > p {float:right; margin-right:30px; margin-top: 20px;}
#panes > div > span > i{color:#ff0000;}
h1{font-weight: bold; color: #3f342a; font-size: 15px; height: 19px;}
div#ei-slider > ul.ei-slider-large > li > img{
	width: 1600px;
	height: 400px;
}
#prod_wrapper > h1{background: url(${pageContext.request.contextPath}/images/hot_title.gif) no-repeat left top;
margin:0; margin-top: 20px;}
#container > h1{background: url(${pageContext.request.contextPath}/images/command_title.gif) no-repeat left top;
margin:0; margin-top: 20px;}
.customoverlay {position:relative;bottom:85px;border-radius:6px;border: 1px solid #ccc;border-bottom:2px solid #ddd;float:left;}
.customoverlay:nth-of-type(n) {border:0; box-shadow:0px 1px 2px #888;}
.customoverlay a {display:block;text-decoration:none;color:#000;text-align:center;border-radius:6px;font-size:14px;font-weight:bold;overflow:hidden;background: #d95050;background: #d95050 url(http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/arrow_white.png) no-repeat right 14px center;}
.customoverlay .title {display:block;text-align:center;background:#fff;margin-right:35px;padding:10px 15px;font-size:14px;font-weight:bold;}
.customoverlay:after {content:'';position:absolute;margin-left:-12px;left:50%;bottom:-12px;width:22px;height:12px;background:url('http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
</style>
</head>

<body>
<div class="wrapper slideShow">
  <div id="ei-slider" class="ei-slider">
    <ul class="ei-slider-large">
      <li> <img src="${pageContext.request.contextPath}/images/1.jpg" alt="">
        <div class="ei-title">
        </div>
      </li>
      <li> <img src="${pageContext.request.contextPath}/images/2.jpg" alt="">
        <div class="ei-title">
<!--           <h2>제목2</h2> -->
<!--           <h3>부제2</h3> -->
        </div>
      </li>
      <li> <img src="${pageContext.request.contextPath}/images/3.jpg" alt="">
        <div class="ei-title">
<!--           <h2>제목3</h2> -->
<!--           <h3>부제3</h3> -->
        </div>
      </li>
      <li> <img src="${pageContext.request.contextPath}/images/4.jpg" alt="">
        <div class="ei-title">
<!--           <h2>제목4</h2> -->
<!--           <h3>부제4</h3> -->
        </div>
      </li>
      <li> <img src="${pageContext.request.contextPath}/images/5.jpg" alt="">
        <div class="ei-title">
<!--           <h2>제목5</h2> -->
<!--           <h3>부제5</h3> -->
        </div>
      </li>
      <li> <img src="${pageContext.request.contextPath}/images/6.jpg" alt="">
        <div class="ei-title">
<!--           <h2>제목6</h2> -->
<!--           <h3>부제6</h3> -->
        </div>
      </li>
      <li> <img src="${pageContext.request.contextPath}/images/7.jpg" alt="">
        <div class="ei-title">
<!--           <h2>제목7</h2> -->
<!--           <h3>부제7</h3> -->
        </div>
      </li>
    </ul>
    <!-- ei-slider-large -->
    <ul class="ei-slider-thumbs">
      <li class="ei-slider-element">Current</li>
      <li><a href="#">Slide 1</a><img src="${pageContext.request.contextPath}/images/1.jpg" alt=""  width="137" height="54"></li>
      <li><a href="#">Slide 2</a><img src="${pageContext.request.contextPath}/images/2.jpg" alt=""  width="137" height="54"></li>
      <li><a href="#">Slide 3</a><img src="${pageContext.request.contextPath}/images/3.jpg" alt=""  width="137" height="54"></li>
      <li><a href="#">Slide 4</a><img src="${pageContext.request.contextPath}/images/4.jpg" alt=""  width="137" height="54"></li>
      <li><a href="#">Slide 5</a><img src="${pageContext.request.contextPath}/images/5.jpg" alt=""  width="137" height="54"></li>
      <li><a href="#">Slide 6</a><img src="${pageContext.request.contextPath}/images/6.jpg" alt=""  width="137" height="54"></li>
      <li><a href="#">Slide 7</a><img src="${pageContext.request.contextPath}/images/7.jpg" alt=""  width="137" height="54"></li>
    </ul>
    <!-- ei-slider-thumbs -->
  </div>
  <!-- ei-slider -->
</div>
<!-- wrapper -->
  
  <div id="container">
    <div id="site_title"><a href="index.html"><img src="${pageContext.request.contextPath}/img/logo.png" alt=""></a></div>
    
    <!-- tab panes -->
    <div id="prod_wrapper">
      <h1></h1>
      <div id="panes">
      	<c:forEach items="${recentSpecialList}" var="item" varStatus="loop">
	        <div>
	          <img src="${pageContext.request.contextPath}/common/imageView.do?filePath=${item.imgList[0].thumbPath}" style="width: 465px; height: 300px;">
	          <h2 class="tit">
		          <a href="${pageContext.request.contextPath}/domesticCar/detail.do?carNo=${item.carNo}">
		          ${item.typeCar.val}
		          </a>
	          </h2>
	          <span class="model_inner">
		          <i class="fa fa-caret-right" aria-hidden="true"></i>&nbsp;&nbsp;<b class="price_tit">모델</b>
		          : <strong class="model_val">  ${item.modelTypeCar.val}</strong>
	          </span>
	          <span class="price_inner">
		          <i class="fa fa-caret-right" aria-hidden="true"></i>&nbsp;&nbsp;<b class="price_tit">가격</b>
		          : <strong class="price_val">  ${item.price}</strong>만원
	          </span>
	          <span class="title_inner">
		          <i class="fa fa-caret-right" aria-hidden="true"></i>&nbsp;&nbsp;<b class="driving_tit">제목</b>
		          : ${item.title}
	          </span>
	          <span class="driving_inner">
		          <i class="fa fa-caret-right" aria-hidden="true"></i>&nbsp;&nbsp;<b class="driving_tit">주행거리</b>
		          : ${item.driving}
	          </span>
	          <span class="displacement_inner">
		          <i class="fa fa-caret-right" aria-hidden="true"></i>&nbsp;&nbsp;<b class="driving_tit">배기량</b>
		          : ${item.modelTypeCar.displacement}
	          </span>
	          <span class="maxOutput_inner">
		          <i class="fa fa-caret-right" aria-hidden="true"></i>&nbsp;&nbsp;<b class="driving_tit">최고출력</b>
		          : ${item.modelTypeCar.maxOutput}
	          </span>
	          <span class="contents_inner">
		          <i class="fa fa-caret-right" aria-hidden="true"></i>&nbsp;&nbsp;<b class="driving_tit">상세설명</b>
		          : ${item.contents}
	          </span>
	          <p>
	            <a href="${pageContext.request.contextPath}/domesticCar/detail.do?carNo=${item.carNo}" class="button">상세보기</a>
	            <a carNo="${item.carNo}" class="button bucketInsert">찜하기</a>
	          </p>
	          <div id="thumbPreview">
		          <ul>
		          	<c:forEach items="${item.imgList}" var="img" varStatus="loop2">
			          	<li>
			          		<img src="${pageContext.request.contextPath}/common/imageView.do?filePath=${img.thumbPath}">
			          	</li>
		          	</c:forEach>
		          </ul>
	          </div>
	        </div>
    	</c:forEach>
      </div>
      <!-- END tab panes -->
      <br clear="all">
      <!-- navigator -->
      <div id="prod_nav">
        <ul>
        	<c:forEach items="${recentSpecialList}" var="item" varStatus="loop">
	          <li>
	            <a href="#1">
	              <img src="${pageContext.request.contextPath}/common/imageView.do?filePath=${item.imgList[0].thumbPath}" style="width: 100%; height: 100%;">
	              <strong>${item.typeCar.val}</strong>
	            <c:choose>
	            	<c:when test="${not empty item.modelTypeCar.val}">${item.modelTypeCar.val}</c:when>
	            	<c:otherwise>모델 미정</c:otherwise>
	            </c:choose>
	            </a>
	          </li>
        	</c:forEach>
        </ul>
      </div>
      <!-- END navigator -->
    </div>
    <!-- END prod wrapper -->
    <div style="clear:both"></div>
    <div style="clear:both"></div>
    <hr>
    <h1></h1>
    <c:forEach items="${recentNormalList}" var="item" varStatus="loop">
    	<a href="${pageContext.request.contextPath}/domesticCar/detail.do?carNo=${item.carNo}">
    	<div <c:choose>
	    	<c:when test="${loop.index eq 2 or loop.index eq 5}">
	    		class="one-third main last"
	    	</c:when>
	    	<c:otherwise>
	    		class="one-third main"
	    	</c:otherwise>
    	    </c:choose>
    	>
      <img src="${pageContext.request.contextPath}/common/imageView.do?filePath=${item.imgList[0].thumbPath}">
      <ul class="post_meta" style="margin-top: 10px; width:100%;">
        <li class="post_meta" style="overflow: hidden;"><i class="fa fa-car" aria-hidden="true"></i>&nbsp;&nbsp;
          <b style="padding-right: 10px;">${item.typeCar.val}  </b>
          ${item.modelTypeCar.val}
        </li>
        <li class="post_meta" style="overflow: hidden;"><i class="fa fa-calendar" aria-hidden="true"></i>&nbsp;&nbsp;
<%--           <fmt:formatDate var="date" value="${item.regDate}" pattern="yyyy/MM/dd"/> --%>
          ${item.regDate}
        </li>
      </ul>
      <p style="text-align: center;">${item.title}</p>
    </div>
    </a>
    </c:forEach>
    <div class="one-half">
      <blockquote style="width: 918px;"></blockquote>
      <div class="heading_bg">
        <h2>찾아오시는길</h2>
      </div>
      
      <!-- 지도표시 -->
      <div id="map" style="width:100%; height:400px;"></div>
     <%-- 
     --%>

    </div>
    <div style="clear:both; height: 40px"></div>
    <!-- END container -->
  
    <!-- Footer -->
    <c:import url="/WEB-INF/jsp/include/footer.jsp" />
    <!-- END footer -->
    
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f05542d9d1637130c65b8679dcc6e3b0"></script>


<script>
    <!-- 지도 -->
    var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
    var options = { //지도를 생성할 때 필요한 기본 옵션
	    center: new daum.maps.LatLng(37.469947, 127.13683300000002), //지도의 중심좌표.
	    level: 5 //지도의 레벨(확대, 축소 정도)
    };

    var map = new daum.maps.Map(container, options);
    
    var imageSrc = 'http://i1.daumcdn.net/dmaps/apis/n_local_blit_04.png', // 마커이미지의 주소입니다    
    imageSize = new daum.maps.Size(35, 39), // 마커이미지의 크기입니다
    imageOprion = {offset: new daum.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
	// 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
    var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize, imageOprion),
        markerPosition = new daum.maps.LatLng(37.469947, 127.13683300000002); // 마커가 표시될 위치입니다
	// 마커를 생성합니다
	var marker = new daum.maps.Marker({
	  position: markerPosition,
	  image: markerImage // 마커이미지 설정 
	});
	// 마커가 지도 위에 표시되도록 설정합니다
	marker.setMap(map);
	
	// 커스텀 오버레이에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
	var content = '<div class="customoverlay">' +
	    '  <a href="http://map.daum.net/link/map/11394059" target="_blank">' +
	    '    <span class="title">회사 위치</span>' +
	    '  </a>' +
	    '</div>';
	 // 커스텀 오버레이가 표시될 위치입니다 
	 var position = new daum.maps.LatLng(37.469947, 127.13683300000002);  

	 // 커스텀 오버레이를 생성합니다
	 var customOverlay = new daum.maps.CustomOverlay({
	     map: map,
	     position: position,
	     content: content,
	     yAnchor: 1 
	 });

    
    $("#thumbPreview > ul > li > img").mouseenter(function(e){
  	  var src = $(this).attr("src");
  	 $("#panes > div[style*='display: block'] > img").fadeOut("fast", function() {
  		 $(this).attr("src", src);
  		 $(this).fadeIn("fast");
  	 })
    });
    
    $('#prod_nav > ul > li > a > img').each(function() {
		$(this).hover(function() {
			$(this).stop().animate({
				opacity : 0.5
			}, 400);
		}, function() {
			$(this).stop().animate({
				opacity : 1.0
			}, 400);
		})
	});
    $('#container > a > div > img').each(function() {
	$(this).hover(function() {
		$(this).stop().animate({
			opacity : 0.5
		}, 400);
	}, function() {
		$(this).stop().animate({
			opacity : 1.0
		}, 400);
	})
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
