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
.newsBox a{color:#000;}
.list_carNews{padding: 0 20px;}
.articles{overflow: hidden; height:125px; margin-top: 25px;}
.list_carNews .link_thumb{
display:block; overflow:hidden; position: relative;
float: left; width:185px; height: 125px; margin-right: 30px;
right: auto; bottom: auto;
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
  	<div class="newsBox">
  		<h4>주요뉴스 목록</h4>
  		<ul class="list_carNews">
  			<c:forEach items="${newsList}" var="item">
  			<li class="articles">
  				<a href="${item.link}" class="link_thumb">
  					<c:choose>
  						<c:when test="${empty item.img}">
  						<img src="${pageContext.request.contextPath}/common/imageView.do?filePath=" width="185px" height="125px">
  						</c:when>
  						<c:otherwise>
  						<img src="${item.img}" width="185px" height="125px">
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
  					${item.info}
  					</span>
  				</span>
  			</li>
  			</c:forEach>
  		</ul>
  		<nav>
		  <ul class="pagination">
		  	<c:if test="${page > 1}">
		    <li>
		      <a
		      <c:choose>
		      	<c:when test="${page < 6}">
			      href="${pageContext.request.contextPath}/community/news.do?page=1"
		      	</c:when>
		      	<c:otherwise>
			      href="${pageContext.request.contextPath}/community/news.do?page=${page - 5}"
		      	</c:otherwise>
		      </c:choose> 
		      aria-label="Previous">
		        <span aria-hidden="true">&laquo;</span>
		      </a>
		    </li>
		  	</c:if>
		    <li><a href="${pageContext.request.contextPath}/community/news.do?page=${page}">${page}</a></li>
		    <li><a href="${pageContext.request.contextPath}/community/news.do?page=${page+1}">${page+1}</a></li>
		    <li><a href="${pageContext.request.contextPath}/community/news.do?page=${page+2}">${page+2}</a></li>
		    <li><a href="${pageContext.request.contextPath}/community/news.do?page=${page+3}">${page+3}</a></li>
		    <li><a href="${pageContext.request.contextPath}/community/news.do?page=${page+4}">${page+4}</a></li>
		    <li>
		      <a href="${pageContext.request.contextPath}/community/news.do?page=${page+5}" aria-label="Next">
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
</body>

</html>