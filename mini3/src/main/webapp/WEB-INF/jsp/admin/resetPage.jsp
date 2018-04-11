<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>파이널 프로젝트</title>

</head>
<body>
  <!-- Main Menu -->
  <c:import url="/WEB-INF/jsp/include/header.jsp" />
  <!-- End Main -->
 	
  <div id="container" style="height: 500px; text-align: center;">
		<a href="${pageContext.request.contextPath}/admin/reset.do" class="button" style="margin-top:20%;">데이터 업데이트 시작</a>
  		<h3>주의사항</h3>
  		<p>데이터 업데이트시, 서버 지연이 발생합니다.</p>
  </div>
  
  <!-- Footer -->
  <c:import url="/WEB-INF/jsp/include/footer.jsp" />
  <!-- END footer -->
  

</body>


</html>