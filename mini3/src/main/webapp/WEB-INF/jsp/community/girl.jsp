<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>파이널 프로젝트</title>

<style>
#container{text-align: left;}
.girlBox a{color:#000;}
.list_girlNews{padding: 0 20px;}
.articles{overflow: hidden; height:125px; margin-top: 25px;}
.list_girlNews .link_thumb{
display:block; overflow:hidden; position: relative;
float: left; width:185px; height: 125px; margin-right: 30px;
right: auto; bottom: auto;
border: 1px solid #ccc;
}
.tit_thumb{
padding-top: 14px; font-weight: bold; font-size: 14px; line-height: 22px;
white-space: nowrap; text-overflow: ellipsis; letter-spacing: -0.5px;
}
.cont_thumb{margin-right: 20px; overflow:hidden; display: block; overflow: hidden;}
.desc_thumb{
padding-top: 10px; max-height:47px; font-size: 12px; line-height: 20px;
display: block; overflow: hidden;
}
.desc_thumb > a{color: #666;}
.info_thumb{
padding-top: 13px; font-size: 11px;
line-height:14px; color: #919191;
display: block; overflow: hidden;
}
</style>

</head>

<body>
  <!-- Main Menu -->
  <c:import url="/WEB-INF/jsp/include/header.jsp" />
  <!-- End Main -->
 	
  <div id="container">
  	<div class="girlBox">
  		<h4>주요레이싱걸 목록</h4>
  		<ul class="list_girlNews">
  			<c:forEach items="${girlList}" var="item">
  			<li class="articles">
  				<a href="${item.link}" class="link_thumb">
  					<c:choose>
  						<c:when test="${empty item.img}">
  						<img src="${pageContext.request.contextPath}/common/imageView.do?filePath=" width="100%" height="100%">
  						</c:when>
  						<c:otherwise>
  						<img src="${item.img}" width="100%" height="100%">
  						</c:otherwise>
  					</c:choose>
  				</a>
  				<span class="cont_thumb">
  					<strong class="tit_thumb">
  						<a href="${item.link}" class="link_txt">${item.title}</a>
  					</strong>
  					<span class="desc_thumb">
  						<a href="${item.link}" class="link_txt">${item.contents}</a>
  					</span>
  					<span class="info_thumb">
  					${item.numInfo}
  					</span>
  				</span>
  			</li>
  			</c:forEach>
  		</ul>
  		<nav>
		  <ul class="pagination">
		  	<c:if test="${p > 1}">
		    <li>
		      <a
		      <c:choose>
		      	<c:when test="${p < 6}">
			      href="${pageContext.request.contextPath}/community/girl.do?p=1"
		      	</c:when>
		      	<c:otherwise>
			      href="${pageContext.request.contextPath}/community/girl.do?p=${p - 5}"
		      	</c:otherwise>
		      </c:choose> 
		      aria-label="Previous">
		        <span aria-hidden="true">&laquo;</span>
		      </a>
		    </li>
		  	</c:if>
		    <li><a href="${pageContext.request.contextPath}/community/girl.do?p=${p}">${p}</a></li>
		    <li><a href="${pageContext.request.contextPath}/community/girl.do?p=${p+1}">${p+1}</a></li>
		    <li><a href="${pageContext.request.contextPath}/community/girl.do?p=${p+2}">${p+2}</a></li>
		    <li><a href="${pageContext.request.contextPath}/community/girl.do?p=${p+3}">${p+3}</a></li>
		    <li><a href="${pageContext.request.contextPath}/community/girl.do?p=${p+4}">${p+4}</a></li>
		    <li>
		      <a href="${pageContext.request.contextPath}/community/girl.do?p=${p+5}" aria-label="Next">
		        <span aria-hidden="true">&raquo;</span>
		      </a>
		    </li>
		  </ul>
		</nav>
  	</div>
  </div>

  <!-- Footer -->
  <c:import url="/WEB-INF/jsp/include/footer.jsp" />
  <!-- END footer -->
  
  <script>
  	
  </script>
</body>

</html>