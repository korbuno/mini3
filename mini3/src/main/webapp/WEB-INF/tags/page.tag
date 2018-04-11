<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ attribute name="data" type="com.omp.common.PageResult"%>

<c:if test="${data.count != 0}">
	<nav>
		<div class="w3-bar">
			  <a href="
			  <c:choose>
				<c:when test="${data.prev}">
				${pageContext.request.contextPath}/myCar/sell.do?pageNo=${data.beginPage - 1}
				</c:when>
				<c:otherwise>#1</c:otherwise>
			  </c:choose>" class="w3-button">&laquo;</a>
			  <c:forEach var="i" begin="${data.beginPage}" end="${data.endPage}">
			  	<c:choose>
					<c:when test="${i eq data.pageNo}">
						<a class="w3-button w3-green" href="#${i}">${i}</a>
					</c:when>
					<c:otherwise>
						<a class="w3-button"
						href="${pageContext.request.contextPath}/myCar/sell.do?pageNo=${i}">${i}</a>
					</c:otherwise>
				</c:choose>
			  </c:forEach>
			  <a href="
			  <c:choose>
			  	<c:when test="${data.next}">
			  		${pageContext.request.contextPath}/myCar/sell.do?pageNo=${data.endPage + 1}
			  	</c:when>
			  	<c:otherwise>#1</c:otherwise>
			  </c:choose>" class="w3-button">&raquo;</a>
		</div>
	</nav>
</c:if>