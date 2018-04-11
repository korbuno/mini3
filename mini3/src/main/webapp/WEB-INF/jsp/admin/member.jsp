<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>파이널 프로젝트</title>
<style>
table{border: 1px solid black;}
table tbody tr{border: 1px solid black;}
tablr tbody tr th{border: 1px solid black;}
table tbody tr td{border: 1px solid black;}
table tbody tr td input{border: none;}
table tbody tr td input.active{border: 1px solid black; background: yellow;}
</style>
</head>
<body>
  <!-- Main Menu -->
  <c:import url="/WEB-INF/jsp/include/header.jsp" />
  <!-- End Main -->
 	
  <div id="container">
  	<div class="memberList">
  	  	<div class="row">
	  		<div class="col-md-12">
	  			<b>상태 표시:</b>
	  			<span id="res">asas</span>
	  		</div>
	  	</div>
	  	
		<table>
			<tr>
				<th>아이디</th>
				<th>이름</th>
				<th>휴대번호</th>
				<th>권한</th>
			</tr>
  			<c:forEach items="${memberList}" var="member">
					<tr data-no="${member.memberNo}">
						<td>
						${member.id}
						</td>
						<td>
						<input type="text" value="${member.name}" name="name">
						</td>
						<td>
						<input type="text" value="${member.phone}" name="phone">
						</td>
						<td>
						<select class="selectBox" name="auth">
							<option value="1">일반 회원</option>
							<option value="2">우수 회원</option>
							<option value="3">딜러</option>
							<option value="4">관리자</option>
						</select>
						</td>
					</tr>
  			</c:forEach>
		</table>
  	</div>
  </div>
  
  <!-- Footer -->
  <c:import url="/WEB-INF/jsp/include/footer.jsp" />
  <!-- END footer -->
</body>

<script>
var selVal = [];
<c:forEach items="${memberList}" var="member">
selVal.push(${member.auth});
</c:forEach>
for (let i = 0; i < selVal.length; i++) {
	$(".selectBox")[i][selVal[i]-1].selected = true;
}

$("#container > div > table > tbody > tr").on("blur", "td", function (e) {
		var target = $(this).children();
		var data = target.attr("name");
		$.ajax({
			url: "${pageContext.request.contextPath}/admin/updateMember.do",
			data: data + "=" + target.val() + "&memberNo=" + target.parents("tr").data("no"),
			dataType: "json",
		});		
		$("#res").html(target.parents("tr").data("no")+"번 회원의 "+data+"값이 "+target.val()+"로 변경되었습니다.");
});
</script>
</html>