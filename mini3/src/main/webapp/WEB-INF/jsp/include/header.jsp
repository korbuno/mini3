<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="/WEB-INF/jsp/include/include.jsp"%>

<style>
.modal {text-align: center;}
/* @media screen and (min-width: 768px) {  */
/*         .modal:before { */
/*                 display: inline-block; */
/*                 vertical-align: middle; */
/*                 content: " "; */
/*                 height: 100%; */
/*         } */
/* } */
.modal-dialog {text-align: left;vertical-align: middle;}
ul > li > div > div:hover{width:100%; border-bottom:1px solid #ededed; background-color: #5194ff; color:#FFF;}
ul > li > div > div.active{width:100%; border-bottom:1px solid #ededed; background-color: #5194ff; color:#FFF;}
div#detail_searchbox{height:315px;}
div#detail_searchbox > ul > li{width:33%; float:left; border: 1px solid black; font-size: 15px;}
div#detail_searchbox > ul > li > p{width:100%; background: #f6f6f6;border-bottom: 1px solid #ccc;}
div#detail_searchbox > ul > li > div{width: 100%; height: 150px; overflow-y: scroll; text-align: left; background: #FFF;}
div#recentViewList{position: absolute; left:86%; 
 width: 165px; z-index: 10; background-color: #FFF; border-radius: 5px;
text-align: center; visibility: hidden;}
div#recentViewList img {width: 100%;}
#recentViewList > table{margin-bottom: 0;}
#recentViewList > table a tr td{text-align: center;}
#recentViewList > div > label > span > i{color: #000;}
label input[type="radio"] ~ i.fa.fa-circle-o{
    color: #c8c8c8;    display: inline;
}
label input[type="radio"] ~ i.fa.fa-dot-circle-o{
    display: none;
}
label input[type="radio"]:checked ~ i.fa.fa-circle-o{
    display: none;
}
label input[type="radio"]:checked ~ i.fa.fa-dot-circle-o{
    color: #5194ff;    display: inline;
}
label:hover input[type="radio"] ~ i.fa {
	color: #5194ff;
}

div[data-toggle="buttons"] label.active{
    background-color: #5194ff;
	color: #fff;
}
div[data-toggle="buttons"] label {
display: inline-block;
padding: 6px 12px;
margin-bottom: 0;
font-size: 12px;
line-height: 2em;
text-align: left;
white-space: nowrap;
vertical-align: top;
cursor: pointer;
background-color: #ccc;
border: 0px solid 
#c8c8c8;
border-radius: 3px;
color: #000;
-webkit-user-select: none;
-moz-user-select: none;
-ms-user-select: none;
-o-user-select: none;
user-select: none;
/* margin-right: 3px; */
}

div[data-toggle="buttons"] label:hover {
color: #7AA3CC;
}

div[data-toggle="buttons"] label:active, div[data-toggle="buttons"] label.active {
-webkit-box-shadow: none;
box-shadow: none;
}

.ui-autocomplete {
  z-index: 215000000 !important;
}

</style>
  
<div class="w3-top" style="z-index: 15;">
	<div class="w3-bar w3-white w3-padding w3-card"
		style="letter-spacing: 4px;">
		<a href="#home" class="w3-bar-item w3-button">[회사명]</a>
		<!-- Right-sided navbar links. Hide them on small screens -->
		<div class="w3-right w3-hide-small">
			<c:choose>
				<c:when test="${not empty sessionScope.member}">
					<a href="${pageContext.request.contextPath}/login/logout.do"
						id="logout" class="w3-bar-item w3-button">로그아웃</a>
					<a href="${pageContext.request.contextPath}/myPage/myPage.do"
						class="w3-bar-item w3-button"> 마이페이지</a> &nbsp; &nbsp; &nbsp;
				</c:when>

				<c:otherwise>
					<a href="#" class="w3-bar-item w3-button"
						onclick="document.getElementById('login').style.display='block'">로그인</a>
					<a href="#" class="w3-bar-item w3-button"
						onclick="document.getElementById('signUp').style.display='block'">회원가입</a>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
</div>
<br>
<br>
<br>
<br>

<ol id="menu">
	<li class="active_menu_item"><a
		href="${pageContext.request.contextPath}/main/main.do">홈</a></li>
	<li><a
		href="${pageContext.request.contextPath}/domesticCar/main.do?domestic=N">국산 차</a>
		<!-- sub menu -->
		<ol class="domestic">
			<li><a class="search_domestic_normal" value="N" href="${pageContext.request.contextPath}/domesticCar/main.do?domestic=N">국산차 모두</a></li>
			<li><a class="search_domestic_type" value="N" href="#">국산 차종별 검색</a></li>
			<li><a class="search_domestic_price" value="N" href="#">국산 가격별 검색</a></li>
			<li><a class="search_domestic_detail" value="N" href="#">국산 상세 검색</a></li>
		</ol></li>
	<!-- end sub menu -->
	<li><a href="${pageContext.request.contextPath}/domesticCar/main.do?domestic=Y">수입 차</a> <!-- sub menu -->
		<ol class="domestic">
			<li><a class="search_domesticY_normal" value="Y" href="${pageContext.request.contextPath}/domesticCar/main.do?domestic=Y">수입차 모두</a></li>
			<li><a class="search_domesticY_type" value="Y" href="#">수입 차종별 검색</a></li>
			<li><a class="search_domesticY_price" value="Y" href="#">수입 가격별 검색</a></li>
			<li><a class="search_domesticY_detail" value="Y" href="#">수입 상세 검색</a></li>
		</ol></li>
	<!-- end sub menu -->
	<li><a href="${pageContext.request.contextPath}/myCar/sell.do">내 차 사고팔기</a></li>
	<li><a href="${pageContext.request.contextPath}/community/news.do">커뮤니티</a> <!-- sub menu -->
		<ol>
			<li><a href="${pageContext.request.contextPath}/community/news.do">자동차 뉴스</a></li>
			<li><a href="${pageContext.request.contextPath}/community/girl.do">레이싱 걸</a></li>
		</ol></li>
	<!-- end sub menu -->
	<li><a href="${pageContext.request.contextPath}/about/about.do">회사 소개</a></li>
		<c:if test="${sessionScope.auth == 4}">
			<li><a href="${pageContext.request.contextPath}/admin/main.do?domestic=N">관리자</a>
				<ol>
					<li><a href="${pageContext.request.contextPath}/admin/main.do?domestic=N">매물 차량 등록</a></li>
					<li><a href="${pageContext.request.contextPath}/admin/member.do">회원관리</a></li>
					<li><a href="${pageContext.request.contextPath}/admin/resetPage.do">데이터 업데이트</a></li>
				</ol>
			</li>
		</c:if>
</ol>

<!-- 모달 부분 -->

<!-- 로그인 -->
<div id="login" class="w3-modal" style="z-index: 10000;">
	<div id="dialog" class="dialog dialog-effect-in">
		<div class="dialog-front">
			<span onclick="document.getElementById('login').style.display='none'"
				class="w3-button w3-xlarge w3-hover-red w3-display-topright"
				title="Close Modal">&times;</span>
			<div class="dialog-content">
				<form id="login_form" class="dialog-form" method="post"
					action="${pageContext.request.contextPath}/login/login.do">
					<fieldset>
						<legend>로그인</legend>
						<div class="form-group">
							<label for="user_username" class="control-label">아이디:</label> <input
								type="text" id="user_username" class="form-control"
								autofocus name="id" />
						</div>
						<div class="form-group">
							<label for="user_password" class="control-label">비밀번호:</label> <input
								type="password" id="user_password" class="form-control"
								name="pass" />
						</div>
						<div class="pad-top-20 pad-btm-20">
							<input type="submit" class="btn btn-default btn-block btn-lg"
								value="로그인">
						</div>
						<div class="text-center">
							<p>
								<a href="#" class="link user-actions"
									onclick="document.getElementById('login').style.display='none';	document.getElementById('signUp').style.display='block'"><strong>새로
										가입하기</strong></a>
							</p>
						</div>
					</fieldset>
				</form>
			</div>
		</div>
	</div>
</div>

<!-- 회원가입 -->
<div id="signUp" class="w3-modal"
	style="z-index: 1000; padding-top: 30px;">
	<div class="w3-modal-content w3-card-4 w3-animate-top"
		style="width: 800px">
		<div class="col-md-12">
			<span
				onclick="document.getElementById('signUp').style.display='none'"
				class="w3-button w3-xlarge w3-hover-red w3-display-topright"
				title="Close Modal">&times;</span>
			<div class="page-header">
				<h1>
					회원가입 <small>환영합니다</small>
				</h1>
			</div>
			<form class="form-horizontal" id="signUpForm" action="#">
				<div class="form-group">
					<label class="col-sm-3 control-label" for="inputEmail" style="">아이디</label>
					<div class="col-sm-6">
						<input class="form-control" id="inputId" type="text" name="id"
							placeholder="아이디">
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label" for="inputPassword">비밀번호</label>
					<div class="col-sm-6">
						<input class="form-control" id="inputPassword" type="password"
							name="pass" placeholder="비밀번호">
						<p class="help-block">영문, 숫자 포함 8자 이상</p>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label" for="inputPasswordCheck">비밀번호
						확인</label>
					<div class="col-sm-6">
						<input class="form-control" id="inputPasswordCheck"
							type="password" placeholder="비밀번호 확인">
						<p class="help-block">비밀번호를 한번 더 입력해주세요.</p>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label" for="inputName">이름</label>
					<div class="col-sm-6">
						<input class="form-control" id="inputName" type="text" name="name"
							placeholder="이름">
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label" for="inputName">이메일</label>
					<div class="col-sm-6">
						<div class="input-group">
							<input class="form-control" id="inputEmail" type="text"
								name="email" placeholder="이메일"> <span
								class="input-group-btn">
								<button class="btn btn-success" type="button">
									인증번호 전송<i class="fa fa-mail-forward spaceLeft"></i>
								</button>
							</span>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label" for="inputNumberCheck">인증번호
						확인</label>
					<div class="col-sm-6">
						<div class="input-group">
							<input class="form-control" id="inputNumberCheck" type="text"
								placeholder="인증번호"> <span class="input-group-btn">
								<button class="btn btn-success" type="button">
									인증번호 확인<i class="fa fa-edit spaceLeft"></i>
								</button>
							</span>
						</div>
						<p class="help-block">전송된 인증번호를 입력해주세요.</p>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label" for="inputNumber">휴대폰번호</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" id="inputNumber"
							name="phone" placeholder="- 없이 입력해 주세요" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label" for="inputAgree">약관
						동의</label>
					<div class="col-sm-6" data-toggle="buttons">
						<label class="btn btn-warning active"> <input id="agree"
							type="checkbox" autocomplete="off" chacked> <span
							class="fa fa-check"></span>
						</label> <a href="#">이용약관</a> 에 동의 합니다.
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-12 text-center">
						<button class="btn btn-primary" type="button">
							회원가입<i class="fa fa-check spaceLeft"></i>
						</button>
						<button class="btn btn-danger" type="button">
							가입취소<i class="fa fa-times spaceLeft"></i>
						</button>
					</div>
				</div>
			</form>
			<hr>
		</div>
		<div class="w3-container w3-border-top w3-padding-16 w3-light-grey">
			<button
				onclick="document.getElementById('signUp').style.display='none'"
				type="button" class="w3-button w3-red">닫기</button>
		</div>
	</div>
</div>
  <!-- 검색 모달창  -->
  <div class="modal fade" id="searchModal" role="dialog">
	<div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" id="close_search" class="close">×</button>
          <h5 class="modal-title"></h5>
        </div>
        
        <form id="searchForm">
	        <div class="modal-body">
			  <h3 class="text-center">
			  	  <span id="inputPos"></span>
				  <i class="fa fa-search" aria-hidden="true"></i> 
		          <button type="button" id="search" class="btn-success">검색</button>
			  </h3>
			</div>
        </form>
		
        <div class="modal-footer">
          <button type="button" id="back_search" class="btn-default">뒤로</button>
        </div>				
      </div>
    </div>
  </div>
<!-- 회원가입 처리 -->

<div id="recentViewList" class="row">
	<br>
	<div data-toggle="buttons">
		<label class="btn active">
	    	<input type="radio" name="toggle" checked><span>최근 본 차량</span>
	    </label>
		<label class="btn">
	    	<input type="radio" name="toggle"><span>찜 차량</span>
	    </label>
	</div>
	<table>
	</table>
</div>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	var path = '${pageContext.request.contextPath}';
	var idPattern = /^[a-z]+([a-z0-9]{5,19})$/; //알파벳 시작, 아이디 숫자 조합 6자~20자
	var passPattern = /^(?=.*[a-zA-Z])((?=.*\d)|(?=.*\W)).{8,20}$/; //영문,숫자,특수문자 조합
	var namePattern = /^[가-힣]{2,4}|[a-zA-Z]{2,10}\s[a-zA-Z]{2,10}$/; //한글~영어 2~10글자
	var emailPattern = /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
	// 알파벳 @ ~ . 영어
	
	$("#inputId")
			.blur(
					function(e) {
						if (!idPattern.test($(this).val())) {
							$(
									"#signUp > div > div.col-md-12 > form > div:nth-child(1) > label")
									.attr("style",
											"color:red; font-weight: bold;");
							return;
						}
						//아이디 중복확인
						$
								.ajax({
									url : path + "/signUp/idChk.json",
									dataType : "json",
									data : "id=" + $(this).val(),
									success : function(data) {
										if (data == 0)
											$(
													"#signUp > div > div.col-md-12 > form > div:nth-child(1) > label")
													.attr("style",
															"color:green; font-weight: bold;");
										else
											$(
													"#signUp > div > div.col-md-12 > form > div:nth-child(1) > label")
													.attr("style",
															"color:red; font-weight: bold;");
									}
								});
					});

	//비밀번호 유효성 
	$("#inputPassword")
			.blur(
					function(e) {
						if (!passPattern.test($(this).val())) {
							$(
									"#signUp > div > div.col-md-12 > form > div:nth-child(2) > label")
									.attr("style",
											"color:red; font-weight: bold;");
							return;
						}
						$(
								"#signUp > div > div.col-md-12 > form > div:nth-child(2) > label")
								.attr("style",
										"color:green; font-weight: bold;");
					});

	//비밀번호 재입력 검사
	$("#inputPasswordCheck")
			.blur(
					function(e) {
						if ($("#inputPassword").val() != $(this).val()) {
							$(
									"#signUp > div > div.col-md-12 > form > div:nth-child(3) > label")
									.attr("style",
											"color:red; font-weight: bold;");
							return;
						}
						$(
								"#signUp > div > div.col-md-12 > form > div:nth-child(3) > label")
								.attr("style",
										"color:green; font-weight: bold;");
					});

	//이름 유효성
	$("#inputName")
			.blur(
					function(e) {
						if (!namePattern.test($(this).val())) {
							$(
									"#signUp > div > div.col-md-12 > form > div:nth-child(4) > label")
									.attr("style",
											"color:red; font-weight: bold;");
							return;
						}
						$(
								"#signUp > div > div.col-md-12 > form > div:nth-child(4) > label")
								.attr("style",
										"color:green; font-weight: bold;");
					});

	var joinCode;

	//메일 유효성 검사
	$(
			"#signUp > div > div.col-md-12 > form > div:nth-child(5) > div > div > span > button")
			.click(function(e) {
				if (!emailPattern.test($("#inputEmail").val())) {
					swal({title: "이메일 주소를 다시 확인해주세요.", icon: "error"});
					return;
				}
// 				waitEffect();
				$.ajax({
					url : path + "/signUp/email.json",
					dataType : 'json',
					data : "email=" + $("#inputEmail").val(),
					success : function(data) {
						swal({title: "승인번호를 이메일로 전송하였습니다.", icon: "success"});
						joinCode = data;
					}
				});
			});

	$(
			"#signUp > div > div.col-md-12 > form > div:nth-child(6) > div > div > span > button")
			.click(
					function(e) {
						if ($("#inputNumberCheck").val() == joinCode) {
							$("#signUpForm > div:nth-child(5) > label").attr("style", "color:green; font-weight: bold;");
							$(
									"#signUp > div > div.col-md-12 > form > div:nth-child(6) > label")
									.attr("style",
											"color:green; font-weight: bold;").attr("disabled", true);
							return;
						}
						$("#signUpForm > div:nth-child(5) > label").attr("style", "color:red; font-weight: bold;");
						$(
								"#signUp > div > div.col-md-12 > form > div:nth-child(6) > label")
								.attr("style", "color:red; font-weight: bold;");
					});

	$(
			"#signUp > div > div.col-md-12 > form > div:nth-child(9) > div > button.btn.btn-primary")
			.click(
					function(e) {

						if (!idPattern.test($("#inputId").val())) {
							swal({title: "아이디 입력을 확인해주세요.", icon: "error"});
							$("#inputId").focus();
						} else if (!passPattern.test($("#inputPassword").val())) {
							swal({title: "비밀번호 입력을 확인해주세요.", icon: "error"});
							$("#inputPassword").focus();
						} else if ($("#inputPasswordCheck").val() != $(
								"#inputPassword").val()) {
							swal({title: "비밀번호 재입력을 확인해주세요.", icon: "error"});
							$("#inputPasswordCheck").focus();
						} else if (!namePattern.test($("#inputName").val())) {
							swal({title: "이름 입력을 확인해주세요.", icon: "error"});
							$("#inputName").focus();
						} else if (!emailPattern.test($("#inputEmail").val())) {
							swal({title: "이메일 입력을 확인해주세요.", icon: "error"});
							$("#inputEmail").focus();
						} else {
							var formData = $("#signUpForm").serialize();
							$.ajax({
								url : path + "/signUp/signUp.do",
								dataType : "json",
								data : formData,
								success : function(data) {
									if (data) {
										swal({title: "회원 가입되었습니다.", icon: "success"});
									} else {
										swal({title: "회원 가입 도중 에러 발생", icon: "error"});
									}
									location.href = path + "/main/main.do";
								}
							});
						}

					});
	
	var domestic = "";
	// 검색창
	$("#menu > li > ol.domestic > li").on("click", function(e){
		var search = $("#searchModal");
		var inputPos = $("#inputPos");
		var type = $(this).children();
		
		var typeHtml = "<input type='text' id='key' name='key'>" +
		"<input type='hidden' id='searchDomestic' name='domestic'>";
		var priceHtml = 
			"<div id='priceTap' style='margin-top: 10px;'><b>가격 :&nbsp;</b><select name='price1'>"+
				"<option value='0'>상관없음</option>"+
				"<option value='100'>100만</option>"+
				"<option value='300'>300만</option>"+
				"<option value='500'>500만</option>"+
				"<option value='800'>800만</option>"+
				"<option value='1000'>1000만</option>"+
				"<option value='1500'>1500만</option>"+
				"<option value='2000'>2000만</option>"+
			"</select>이상&nbsp;&nbsp;&nbsp;"+
			"<select name='price2'>"+
				"<option value='9999999'>상관없음</option>"+
				"<option value='100'>100만</option>"+
				"<option value='300'>300만</option>"+
				"<option value='500'>500만</option>"+
				"<option value='800'>800만</option>"+
				"<option value='1000'>1000만</option>"+
				"<option value='1500'>1500만</option>"+
				"<option value='2000'>2000만</option>"+
			"</select>이하</div>"+
			"<input type='hidden' id='searchDomestic' name='domestic'>";
		var detailHtml = 
			"<div id='detail_searchbox'>"+
				"<ul>"+
					"<li>"+
						"<p>제조사</p>"+
						"<div id='search_mnfDiv'>"+
						"</div>"+
						"<input type='hidden' id='searchMnf' name='mnfNo' value='0'>"+
					"</li>"+
					"<li>"+
						"<p>차종</p>"+
						"<div id='search_typeCarDiv'>"+
						"</div>"+
						"<input type='hidden' id='searchType' name='typeCarNo' value='0'>"+
					"</li>"+
					"<li>"+
						"<p>모델</p>"+
						"<div id='search_modelTypeCarDiv'>"+
						"</div>"+
						"<input type='hidden' id='searchModel' name='modelTypeCarNo' value='0'>"+
					"</li>"+
				"</ul>"+
				"<img id='detail_preview'>"+
			"</div>";
		var yearHtml = 
			"<div style='margin-top: 10px;'><b>연식 :&nbsp;</b><select name='year1'>"+
				"<option value='0'>상관없음</option>"+
				"<option value='2018'>2018년</option>"+
				"<option value='2017'>2017년</option>"+
				"<option value='2016'>2016년</option>"+
				"<option value='2015'>2015년</option>"+
				"<option value='2014'>2014년</option>"+
				"<option value='2013'>2013년</option>"+
				"<option value='2012'>2012년</option>"+
			"</select>부터&nbsp;&nbsp;&nbsp;"+
			"<select name='year2'>"+
				"<option value='9999999'>상관없음</option>"+
				"<option value='2018'>2018년</option>"+
				"<option value='2017'>2017년</option>"+
				"<option value='2016'>2016년</option>"+
				"<option value='2015'>2015년</option>"+
				"<option value='2014'>2014년</option>"+
				"<option value='2013'>2013년</option>"+
				"<option value='2012'>2012년</option>"+
			"</select>까지</div>";
		
		
			
		// 검색 타입 분류
		domestic = type.attr("class").charAt(15) == "Y" ? "Y" : "N";
		
		if(type.attr("class").search("type") != -1) {
			inputPos.html(typeHtml);
			
			$("#key").autocomplete({
				source : function (request, response) {
					$.ajax({
						url: path + "/admin/autocomplete.do",
						type: 'post',
						dataType: 'json',
						data: {"key" : request.term},
						success: function(data) {
							response(
									$.map(data, function(item) {
										return {
											label: item.val,
											value: item.val,
											no: item.typeCarNo										
										}
									}));	
						}
					});
				},
				minLength: 2
			});
		}
		else if(type.attr("class").search("price") != -1){
			inputPos.html(priceHtml);
		}
		else if(type.attr("class").search("detail") != -1){
			inputPos.html(detailHtml + priceHtml + yearHtml);
			
			// 제조사 리스트 불러오기
			$.ajax({
				url: path + "/admin/domestic.do",
				data: "domestic=" + domestic,
				dataType: 'json',
				success: function(data){
					$("#search_mnfDiv").html("");
					for (let item of data) {
						$("#search_mnfDiv").append("<div data='"+item.mnfNo+"'>"+item.val+"</div>");
					}
				}
			});
			
			// 제조사 클릭시 차종 리스트 불러오기
			$("#search_mnfDiv").on("click", "div", function() {
				$(this).siblings().removeClass();
				$(this).attr("class", "active");
				$("#searchMnf").val($(this).attr("data"));
				$.ajax({
					url: path + "/admin/typeCarList.json",
					data: "mnfNo=" + $(this).attr("data"),
					dataType: 'json',
					success: function(data){
						var type = ["", "소형", "준중형", "중형", "대형", "스포츠카"];
						$("#search_typeCarDiv").html("");
						for (let item of data) {
							$("#search_typeCarDiv").append(
									"<div data='"+item.typeCarNo +
									"' img='"+item.img+
									"' type='"+type[item.typeCarGroupNo]+
									"' onclick='searchTypeClick(this);' >"
									+item.val+
									"</div>");
						}
					}
				});
			});
		}
		// 모달 표시
		search.modal("show");
		$("#searchModal > div > div > div.modal-header > h5").html($(this).children()[0].innerText);
		// 모달 닫기
		$("#close_search").on("click",function(){search.modal("hide");});
		$("#back_search").on("click", function(){search.modal("hide");});
	});
	
	// 차종 클릭시 모델 리스트 불러오기
	function searchTypeClick(e){
		$("#search_typeCarDiv").children().removeClass();
		$(e).attr("class", "active");
		$("#detail_preview").attr("src", e.attributes[1].value);
		$("#searchType").val($(e).attr("data"));
		$.ajax({
			url : path + "/admin/modelTypeCarList.json",
			dataType : 'json',
			data : "typeCarNo="+e.attributes[0].value,
			success : function(data) {
				var res = "";
				$("#search_modelTypeCarDiv").html("");
				for(let i = 0; i < data.length; i++){
					res += "<div data='" + data[i].modelTypeCarNo
					+ "' onclick='searchModelClick(this);'>"
					+ data[i].val + "</div>";
				}
				$("#search_modelTypeCarDiv").html(res);
			}
		});
	}
	
	function searchModelClick(e){
		$("#search_modelTypeCarDiv").children().removeClass();
		$(e).attr("class", "active");
		$("#searchModel").val($(e).attr("data"));
	}
	
	// 검색 버튼 이벤트
	$("#search").on("click", function(){
		$("#searchDomestic").val(domestic);
		location.href = path + "/domesticCar/main.do?" + $("#searchForm").serialize();
	});
	
	
	// 최근 본 목록
	$.ajax({
		url: path+"/main/recentViewList.do",
		dataType: "json",
		success: function(data){
			viewList(data);
		}
	});
	
	// 최근 본 차량 클릭 시 목록
	$("#recentViewList > div > label:nth-child(1)").click(function(e) {
		$.ajax({
			url: path+"/main/recentViewList.do",
			dataType: "json",
			success: function(data){
				$("#recentViewList > table").html("");
				viewList(data);
			}
		});		
	});

	// 찜 차량 클릭 시 목록
	$("#recentViewList > div > label:nth-child(2)").click(function(e) {
		$.ajax({
			url: path+"/main/bucketList.do",
			dataType: "json",
			success: function(data){
				$("#recentViewList > table").html("");
				viewList(data);
			}
		});		
	});

	// 최근 본 차량, 찜 차량 구조 양식
	function viewList(data) {
		
		var $table = $("#recentViewList > table");
		
		
		for(let i=0; i<data.length; i++) {
			let $tr = $("<tr></tr>");
			let $td = $("<td></td>");
			let $img = $("<img></img>");
			let $a = $("<a></a>");
			$a.attr("href", "${pageContext.request.contextPath}/domesticCar/detail.do?carNo="+data[i].carNo);
			$td.append($img.attr("src", "${pageContext.request.contextPath}/common/imageView.do?filePath="+data[i].imgList[0].thumbPath));
			$table.append($a.append($tr.append($td.append(data[i].typeCar.val))));					
		}
	}
	
	// 최근 본 차량, 찜 차량 div 따라다니기
	$(document).ready(function(e) {
		var $recentViewList = $("#recentViewList");
		var point = 0;
		if($(".slideShow").length > 0){
			point = 650;
		} else if ($(".sell_img_box").length > 0) {
			point = 750;
		} else {
			point = 100;
		}
		$recentViewList.css("top", point).css("visibility", "visible");
	});
	
	$(window).scroll(function(e){
		var st = $(window).scrollTop(); // 스크롤의 위치	
		var $recentViewList = $("#recentViewList");
		
		var point = 0;

		if($(".slideShow").length > 0){
			point = 650;
		} else if ($(".sell_img_box").length > 0) {
			point = 750;
		} else {
			point = 100;
		}
			    
		if(st >= $(document).height() - $(window).height() - 100) {
			return;
		}
		else if(st >= point) {
			$recentViewList.animate({"top": st + 80}, {duration: 250, easing: 'linear', queue:false});			
		} 
		else {
			$recentViewList.animate({"top": point}, {duration: 250, easing: 'linear', queue:false});			
		}
	});
</script>