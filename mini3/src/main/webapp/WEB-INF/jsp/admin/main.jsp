<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>파이널 프로젝트</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/detail.css">
<style>
.sub_searchbox{height:220px;}
div.domestic{float:right; height:15px;}
div.sub_searchbox > ul > li{width:25%; float:left; border:1px solid black;}
div.sub_searchbox > ul > li > p{width:100%; border-bottom:1px solid #ccc; background: #f6f6f6;}
div.sub_searchbox > ul > li > div{width:100%; height:150px; overflow-y:scroll; text-align:left; background: #FFF;}
div.sub_searchbox > ul > li > div > div:hover{width:100%; border-bottom:1px solid #ededed; background-color: #5194ff; color: #fff;}
div.sub_searchbox > ul > li > div > div.active{width:100%; border-bottom:1px solid #ededed; background-color: #5194ff; color: #fff;}
div.modal-body > ul > li{width:25%; float:left; border:1px solid black;}
div.modal-body > ul > li > p{width:100%; border-bottom:1px solid #ccc; background: #f6f6f6;}
div.modal-body > ul > li > div{width:100%; height:150px; overflow-y:scroll; text-align:left; background: #FFF;}
div.modal-body > ul > li > div > div:hover{width:100%; border-bottom:1px solid #ededed; background-color: #5194ff; color: #fff;}
div.modal-body > ul > li > div > div.active{width:100%; border-bottom:1px solid #ededed; background-color: #5194ff; color: #fff;}
#emptyType{text-align: center; padding-top: 50px !important; color: #999; border-bottom: none;}
#emptyModel{text-align: center; padding-top: 50px !important; color: #999; border-bottom: none;}
#result > table {border-radius: 5px;}
#result > table > tbody > tr{text-align: center; font-size: 15px;}
#result > table > tbody > tr > th{text-align: center; font-size: 15px; background: #f7f7f7; border-bottom: 1px solid #eee; color: #7c7c7c;
text-align: 0 10px;}
#result > table > tbody > tr > td{text-align: center; border-bottom: 1px solid #eee; color: #7c7c7c;
text-align: 0 10px;}
#myModal1 > div > div > div.modal-body > div{height: 16px;}
.btn{background-color: #446CB3; color: #fff; font-weight: 700;}
#tblGrid > tbody > tr {text-align: center; font-size: 15px;}
#tblGrid > tbody > tr > th{text-align: center; font-size: 15px; background: #f7f7f7; border-bottom: 1px solid #eee; color: #7c7c7c;
text-align: 0 10px;}
#tblGrid > tbody > tr > td{text-align: center; border-bottom: 1px solid #eee; color: #7c7c7c;
text-align: 0 10px;}
#myModal3 > div > div > div.modal-body > ul > li{margin-top: 30px;}
#input-b5{left:50%;}

<!-- 라디오버튼 -->
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
	outline: 5px auto -webkit-focus-ring-color;
	outline-offset: -2px;
	color: #fff;
}
div[data-toggle="buttons"] label {
display: inline-block;
padding: 6px 12px;
margin-bottom: 0;
font-size: 14px;
font-weight: normal;
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
margin-right: 3px;
}

div[data-toggle="buttons"] label:hover {
color: #7AA3CC;
}

div[data-toggle="buttons"] label:active, div[data-toggle="buttons"] label.active {
-webkit-box-shadow: none;
box-shadow: none;
}
#myModal2 > div > div > div.modal-body > div.details.col-md-6 > div > div > div > label{
font-size: 20px;
}
</style>
</head>

<body>
  <!-- Main Menu -->
  <c:import url="/WEB-INF/jsp/include/header.jsp" />
  <!-- End Main -->
 	
  <div id="container">
  	<h1>매물 차량 등록</h1>
  	<div class="domestic">
		<div data-toggle="buttons">
			<label class="btn active" id="domesticN">
		    	<input type="radio" name="domestic" checked value="N"><span>국산차</span>
		    </label>
			<label class="btn" id="domesticY">
		    	<input type="radio" name="domestic" value="Y"><span>수입차</span>
		    </label>
		</div>
  	</div>
  	<div class="sub_searchbox">
  		<ul>
  			<li>
  				<p>제조사</p>
  				<div id="mnfDiv">
  					<c:forEach items="${mnfList}" var="mnf">
  						<div img="${mnf.img}" data="${mnf.mnfNo}">${mnf.val}</div>
  					</c:forEach>
  				</div>
  			</li>
  			<li>
  				<p>차종</p>
  				<div id="typeCarDiv">
  					<div id="emptyType">
  					제조사를 선택하시면<br>
  					리스트가 나타납니다.
  					</div>
  				</div>
  			</li>
  			<li>
  				<p>모델</p>
  				<div id="modelTypeCarDiv">
  					<div id="emptyModel">
  					차종을 선택하시면<br>
  					리스트가 나타납니다.
  					</div>
  				</div>
  			</li>
  		</ul>
  	</div>
  	  	<div id="result">
  		<table border="1px solid black">
  			<tr>
  				<th> 제조사 </th>
  				<td class="mnfImg"><img width="30px" height="30px"></td>
  				<td class="mnfName"></td>
  			</tr>
  			<tr>
  				<th> 차종 </th>
  				<td><img width="160px" height="116px" alt="차종을 고르면 표시됩니다."></td>
  				<td class="typeCar"></td>
  			</tr>
  			<tr>
  				<th> 모델명 </th>
  				<td class="val" colspan="2"></td>
  			</tr>
  			<tr>
  				<th> 배기량 </th>
  				<td class="displacement" colspan="2"></td>
  			</tr>
  			<tr>
  				<th> 최고출력 </th>
  				<td class="maxOutput" colspan="2"></td>
  			</tr>
  			<tr>
  				<th> 연비 </th>
  				<td class="fuelEff" colspan="2"></td>
  			</tr>
  			<tr>
  				<th> 첫 출시 당시 가격 </th>
  				<td class="release" colspan="2"></td>
  			</tr>
  		</table>
  	</div>
  	<br>
  	<br>
  	<button id="openBtn" class="btn btn-block btn-lg">매물등록</button>
  	<div style="clear:both; height: 40px"></div>
  </div>
  
  
  <!-- 모달 부분 -->
  <!-- 첫번째 입력 -->
  <div class="modal fade" id="myModal1" role="dialog">
	<div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close">×</button>
          <h4 class="modal-title">매물 등록</h4>
        </div>
        <div class="modal-body">
		  <h5 class="text-center">1. 매물 정보 확인</h5>
          <table class="table" id="tblGrid">
            <tbody>
              <tr>
              	<th>제조사</th>
                <td class="mnfImg"><img width="30px" height="30px"></td>
                <td class="mnfName text-right"></td>
              </tr>
              <tr>
  				<th> 차종 </th>
  				<td><img width="160px" height="116px"></td>
  				<td class="typeCar"></td>
              </tr>
              <tr>
  				<th> 모델명 </th>
  				<td class="val" colspan="2"></td>
              </tr>
              <tr>
  				<th> 배기량 </th>
  				<td class="displacement" colspan="2"></td>
  			  </tr>
  			  <tr>
  				<th> 최고출력 </th>
  				<td class="maxOutput" colspan="2"></td>
  			  </tr>
  			  <tr>
  				<th> 연비 </th>
  				<td class="fuelEff" colspan="2"></td>
  			  </tr>
  			  <tr>
  			 	<th> 첫 출시 당시 가격 </th>
  				<td class="release" colspan="2"></td>
  			  </tr>         
            </tbody>
          </table>
          <div class="form-group">
            <input type="button" class="btn btn-warning btn-sm pull-right" value="직접입력">
          </div>
		</div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default">취소</button>
          <button type="button" class="btn btn-primary">다음</button>
        </div>
				
      </div>
    </div>
  </div>
  
<form class="form-horizontal" id="insertCar" method="post" enctype="multipart/form-data">
  <input type="hidden" id="modelNo" name="modelNo" value="" />
  <!-- 두번째 입력 -->
  <div class="modal fade" id="myModal2" role="dialog">
  	<div class="modal-dialog" style="width: 75%;">
		<div class="modal-content" style="max-height: 650px; overflow-y: scroll;">
			<div class="modal-header">  
	            <button type="button" class="close">×</button>
	            <h3 class="modal-title">매물 등록</h3>
        	</div>
			<div class="modal-body">
				<h4 class="text-center">2. 매물 등록</h4>
				<div class="preview col-md-6" style="margin-top: 40px;">
					<div class="preview-pic tab-content">

						<input id="input-b5" type="file" name="attach" multiple>

					</div>
				</div>
				<div class="details col-md-6" style="margin-top: 40px;">
				
					<h3 class="product-title"><input class="form-control" type="text" name="title" placeholder="제목을 입력해주세요." /></h3>
					
					<p class="product-description"><textarea class="form-control" rows="5" cols="50" name="contents" placeholder="내용을 입력해주세요" ></textarea></p>
					
					<h4 class="price"><span><input class="form-control" type="text" name="price" placeholder="가격을 입력해주세요." /></span></h4>
					<hr>
					<div class="row status_trans" style="text-align: center; margin-bottom: 12px;">
						<%--
						 --%>
						<div class="col-md-4">
							<p class="vote"><strong>사고경력</strong>
							<div class="btn-group" data-toggle="buttons">
							    <label class="btn active">
							    	<input type="radio" name='accident_status' value="1"><span> 유</span>
							    </label>
							    <label class="btn">
							    	<input type="radio" name='accident_status' value="0"><span> 무</span>
							    </label>
						    </div>
						</div>
						<div class="col-md-4">
							<p class="sizes"><strong>변속기</strong>
							<div class="btn-group" data-toggle="buttons">
							    <label class="btn active">
							    	<input type="radio" name='trans' value="오토"><span>오토</span>
							    </label>
							    <label class="btn">
							    	<input type="radio" name='trans' value="수동"><span>수동</span>
							    </label>
						    </div>
						</div>
						<div class="col-md-4">
							<p class="sizes"><strong>매물분류</strong>
							<div class="btn-group" data-toggle="buttons">
							    <label class="btn active">
							    	<input type="radio" name='special' value="1"><span>특별</span>
							    </label>
							    <label class="btn">
							    	<input type="radio" name='special' value="0"><span>일반</span>
							    </label>
						    </div>
						</div>
					</div>
					<hr>
					<h5 class="colors">차량번호
						<span><input class="form-control" type="text" name="carsNumber" placeholder="차량번호를 입력해주세요." /></span>
					</h5>
					<h5 class="colors">색상
						<span><input class="form-control" type="text" name="color" placeholder="색상을 입력해주세요." /></span>
					</h5>
					<h5 class="colors">주행거리
						<span><input class="form-control" type="text" name="driving" placeholder="주행거리를 입력해주세요." /></span>
					</h5>
				</div>
			</div>
			<div class="modal-footer">
	          <button type="button" class="btn btn-default">이전</button>
	          <button type="button" class="btn btn-primary">다음</button>
	        </div>
			
		</div>
	</div>
</div>

<!-- 세번째 입력 -->
  <div class="modal fade" id="myModal3" role="dialog">
	<div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close">×</button>
          <h3 class="modal-title">매물 등록</h3>
        </div>
        
        <div class="modal-body">
		  <h4 class="text-center">3. 매물 옵션 정보</h4>
          <ul>
        	<li>
	        	<p>외관</p>
	        	<div id="ex_opt">
	        	</div>
        	</li>
        	<li>
	        	<p>내장</p>
	        	<div id="in_opt">
	        	</div>
        	</li>
        	<li>
	        	<p>안전</p>
	        	<div id="sf_opt">
	        	</div>
        	</li>
        	<li>
	        	<p>편의</p>
	        	<div id="cv_opt">
	        	</div>
        	</li>
          </ul>
          
		</div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default">이전</button>
          <button type="button" class="btn btn-primary">작성완료</button>
        </div>
				
      </div>
    </div>
  </div>
</form>
  <!-- Footer -->
  <c:import url="/WEB-INF/jsp/include/footer.jsp" />
  <!-- END footer -->
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/lib/js/fileinput.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/lib/css/fileinput.css">
<script>
var path = '${pageContext.request.contextPath}';
$emptyType = $("<div id='emptyType'>제조사를 선택하시면 <br> 리스트가 나타납니다.</div>");
$emptyModel = $("<div id='emptyModel'>차종을 선택하시면 <br> 리스트가 나타납니다.</div>");

$(document).ready(function() {
    $("#input-b5").fileinput({
    	showCaption: false,
    	allowedFileExtensions: ["jpg", "png", "gif"],
    	showUpload: false
    });
});

	// 검색창
	$("#search_admin_Btn").click(function(e) {
		if($("input.search_admin").val()){
			$.ajax({
				url : path + "/admin/search.json",
				data : "val="+$("input.search_admin").val()
			});			
		}
	});
	$("#domesticN").on("click", function(e) {
		$("#typeCarDiv").html($emptyType);
		$("#modelTypeCarDiv").html($emptyModel);
		
		$.ajax({
			url: path + "/admin/domestic.do",
			data: "domestic=N",
			dataType: "json",
			success: function(data) {
				var str = ""
				for (let item of data) {
					str += "<div img='"+item.img+"' data='"+item.mnfNo+"'>"+item.val+"</div>";
				}
				$("#domesticY > input[type='radio']").attr("checked", false);
				$("#domesticN > input[type='radio']").attr("checked", true);
				$("#mnfDiv").html(str);
			}
		});
		$("#result > table > tbody > tr:nth-child(1) > td.mnfImg > img").attr("src", "");
		$("#result > table > tbody > tr:nth-child(1) > td.mnfName").text("");
		$("#result > table > tbody > tr:nth-child(2) > td > img").attr("src", "").attr("alt","차종을 고르면 표시됩니다.");
		$("#result > table > tbody > tr:nth-child(2) > td.typeCar").text("");
		$("#tblGrid > tbody > tr:nth-child(2) > td:nth-child(2) > img").attr("src", "").attr("alt","차종을 고르면 표시됩니다.");
		$("#tblGrid > tbody > tr:nth-child(2) > td.typeCar").text("");
		modelTypeClick("");
	});
	
	$("#domesticY").on("click", function(e) {
		$("#typeCarDiv").html($emptyType);
		$("#modelTypeCarDiv").html($emptyModel);
		
		$.ajax({
			url: path + "/admin/domestic.do",
			data: "domestic=Y",
			dataType: "json",
			success: function(data) {
				var str = ""
				for (let item of data) {
					str += "<div img='"+item.img+"' data='"+item.mnfNo+"'>"+item.val+"</div>";
				}
				$("#domesticY > input[type='radio']").attr("checked", true);
				$("#domesticN > input[type='radio']").attr("checked", false);
				$("#mnfDiv").html(str);
			}
		});
		$("#result > table > tbody > tr:nth-child(2) > td > img").attr("src", "").attr("alt","차종을 고르면 표시됩니다.");
		$("#result > table > tbody > tr:nth-child(2) > td.typeCar").text("");
		$("#tblGrid > tbody > tr:nth-child(2) > td:nth-child(2) > img").attr("src", "").attr("alt","차종을 고르면 표시됩니다.");
		$("#tblGrid > tbody > tr:nth-child(2) > td.typeCar").text("");
		modelTypeClick("");
	});
	
	// 제조사 리스트 클릭시 차종 리스트 불러오기
	$("#mnfDiv").on("click", "div", function(e) {
		$(this).siblings().removeClass();
		$(this).attr("class", "active");
		$("#modelTypeCarDiv").html("");
		
		$("#result > table > tbody > tr:nth-child(1) > td.mnfImg > img").attr("src", $(this).attr("img"));
		$("#result > table > tbody > tr:nth-child(1) > td.mnfName").text($(this).text());
		
		$("#tblGrid > tbody > tr:nth-child(1) > td.mnfImg > img").attr("src", $(this).attr("img"));
		$("#tblGrid > tbody > tr:nth-child(1) > td.mnfName.text-right").text($(this).text());
		$.ajax({
			url : path + "/admin/typeCarList.json",
			dataType : 'json', 
			data : "mnfNo="+$(this).attr("data"),
			success : function(data) {
				var res = "";
				var type = ["", "소형", "준중형", "중형", "대형", "스포츠카"];
				
				for(let i = 0; i < data.length; i++){
					res += "<div data='"+ data[i].typeCarNo 
					+"' img='" + data[i].img 
					+ "' type='" + type[data[i].typeCarGroupNo] 
					+ "' onclick='typeClick(this);'>"
					+ data[i].val + "</div>";
				}
				$("#typeCarDiv").html(res);
				$("#result > table > tbody > tr:nth-child(2) > td > img").attr("src", "").attr("alt","차종을 고르면 표시됩니다.");
				$("#result > table > tbody > tr:nth-child(2) > td.typeCar").text("");
				$("#tblGrid > tbody > tr:nth-child(2) > td:nth-child(2) > img").attr("src", "").attr("alt","차종을 고르면 표시됩니다.");
				$("#tblGrid > tbody > tr:nth-child(2) > td.typeCar").text("");
				modelTypeClick("");
			}
		});
	});
	
	// 리스트 호버시 이미지 표시 - 2. 차종, 모델 리스트 불러와서 붙이기
	function typeClick(e){
		$(e).siblings().removeClass();
		$(e).attr("class", "active");
		
		$("#result > table > tbody > tr:nth-child(2) > td > img").attr("src", e.attributes[1].value);
		$("#result > table > tbody > tr:nth-child(2) > td.typeCar").text(e.innerText);
		$("#tblGrid > tbody > tr:nth-child(2) > td:nth-child(2) > img").attr("src", e.attributes[1].value);
		$("#tblGrid > tbody > tr:nth-child(2) > td.typeCar").text(e.innerText);
		
		$.ajax({
			url : path + "/admin/modelTypeCarList.json",
			dataType : 'json',
			data : "typeCarNo="+e.attributes[0].value,
			success : function(data) {
				var res = "";
				for(let i = 0; i < data.length; i++){
					res += "<div displacement='" + data[i].displacement
					+ "' maxOutput='" + data[i].maxOutput 
					+ "' fuelEff='" + data[i].fuelEff
					+ "' release='" + data[i].release
					+ "' data='" + data[i].modelTypeCarNo
					+ "' onclick='modelTypeClick(this);'>"
					+ data[i].val + "</div>";
				}
				$("#modelTypeCarDiv").html(res);
				modelTypeClick("");
			}
		});
	}
	
	// 모델명 클릭시 아래 테이블에 붙이기
	function modelTypeClick(e) {
		$(e).siblings().removeClass();
		$(e).attr("class", "active");
		
		if(e != ""){
			$("#result > table > tbody > tr:nth-child(3) > td.val").text(e.innerText);
			$("#result > table > tbody > tr:nth-child(4) > td.displacement").text(e.attributes[0].value);
			$("#result > table > tbody > tr:nth-child(5) > td.maxOutput").text(e.attributes[1].value);
			$("#result > table > tbody > tr:nth-child(6) > td.fuelEff").text(e.attributes[2].value);
			$("#result > table > tbody > tr:nth-child(7) > td.release").text(e.attributes[3].value);
			
			$("#tblGrid > tbody > tr:nth-child(3) > td.val").text(e.innerText);
			$("#tblGrid > tbody > tr:nth-child(4) > td.displacement").text(e.attributes[0].value);
			$("#tblGrid > tbody > tr:nth-child(5) > td.maxOutput").text(e.attributes[1].value);
			$("#tblGrid > tbody > tr:nth-child(6) > td.fuelEff").text(e.attributes[2].value);
			$("#tblGrid > tbody > tr:nth-child(7) > td.release").text(e.attributes[3].value);
			$("#modelNo").val(e.attributes[4].value);
		}
		else {
			$("#result > table > tbody > tr:nth-child(3) > td.val").text(e);
			$("#result > table > tbody > tr:nth-child(4) > td.displacement").text(e);
			$("#result > table > tbody > tr:nth-child(5) > td.maxOutput").text(e);
			$("#result > table > tbody > tr:nth-child(6) > td.fuelEff").text(e);
			$("#result > table > tbody > tr:nth-child(7) > td.release").text(e);
		}
	}
		
	// 모달부분---------------------------------------------------------------------------------------------
	// 직접 수정버튼
	$("#myModal1 > div.modal-dialog > div > div.modal-body > div").on("click", "input", function(e){
		var typeCar = $("#tblGrid > tbody > tr:nth-child(2) > td.typeCar");
		var val = $("#tblGrid > tbody > tr:nth-child(3) > td.val");
		var displacement = $("#tblGrid > tbody > tr:nth-child(4) > td.displacement");
		var maxOutput = $("#tblGrid > tbody > tr:nth-child(5) > td.maxOutput");
		var fuelEff = $("#tblGrid > tbody > tr:nth-child(6) > td.fuelEff");
		var release = $("#tblGrid > tbody > tr:nth-child(7) > td.release");
		
		if($(this).val() === "직접입력"){
			$(this).val("수정완료");
			typeCar.html("<input type='text' value='"+typeCar.text()+"' />");
			val.html("<input type='text' value='"+val.text()+"' />");
			displacement.html("<input type='text' value='"+displacement.text()+"' />");
			maxOutput.html("<input type='text' value='"+maxOutput.text()+"' />");
			fuelEff.html("<input type='text' value='"+fuelEff.text()+"' />");
			release.html("<input type='text' value='"+release.text()+"' />");
		} else {
			$(this).val("직접입력");
			typeCar.html(typeCar.children().val());			
			val.html(val.children().val());
			displacement.html(displacement.children().val());
			maxOutput.html(maxOutput.children().val());
			fuelEff.html(fuelEff.children().val());
			release.html(release.children().val());
		}
	});
	
	$("#openBtn").on("click", function(e) {
		var myModal1 = $("#myModal1");
		var myModal2 = $("#myModal2");
		var myModal3 = $("#myModal3");
		myModal1.modal("show");
		$("#myModal1 > div > div > div.modal-header > button").on("click", function(e) {
			myModal1.modal("hide");
		})
		$("#myModal1 > div > div > div.modal-footer > button.btn.btn-default").on("click", function(e){
			myModal1.modal("hide");
		});
		$("#myModal1 > div > div > div.modal-footer > button.btn.btn-primary").on("click", function(e){
			myModal1.modal("hide");
			myModal2.modal("show");
			
			$("#myModal2 > div > div > div.modal-footer > button.btn.btn-default").on("click", function(e){				
				myModal2.modal("hide");
				myModal1.modal("show");
			});
			
			$("#myModal2 > div > div > div > button").on("click", function(e){
				myModal2.modal("hide");
			});
			
			$("#myModal2 > div > div > div.modal-footer > button.btn.btn-primary").on("click", function(e){
				myModal2.modal("hide");
				myModal3.modal("show");
				
				$.ajax({
					url : path + "/admin/optList.json",
					dataType : 'json',
					success : function(data) {
						var res = ["", "", "", ""];
						for(let i = 0; i < data.length; i++){
							switch(data[i].optionGroupNo){
								case 1:
									res[0] += "<div>"+data[i].val+"  <input type='checkbox' name='optionNo' value='"+data[i].optionNo+"'></div>"
									break;
								case 2:
									res[1] += "<div>"+data[i].val+"  <input type='checkbox' name='optionNo' value='"+data[i].optionNo+"'></div>"
									break;
								case 3:
									res[2] += "<div>"+data[i].val+"  <input type='checkbox' name='optionNo' value='"+data[i].optionNo+"'></div>"
									break;
								case 4:
									res[3] += "<div>"+data[i].val+"  <input type='checkbox' name='optionNo' value='"+data[i].optionNo+"'></div>"
									break;
							}
						}
						$("#ex_opt").html(res[0]);
						$("#in_opt").html(res[1]);
						$("#sf_opt").html(res[2]);
						$("#cv_opt").html(res[3]);
					}
				});
				
				$("#myModal3 > div > div > div.modal-header > button").on("click", function(e){
					myModal3.modal("hide");
				})
				
				$("#myModal3 > div > div > div.modal-footer > button.btn.btn-default").on("click", function(e){
					myModal3.modal("hide");
					myModal2.modal("show");
				})
				
				$("#myModal3 > div > div > div.modal-footer > button.btn.btn-primary").on("click", function(e){
					var fd = new FormData(document.getElementById('insertCar'));
					$.ajax({
						url: path + "/admin/insertCar.do",
						data: fd,
						type: 'post',
						processData: false,
						contentType: false,
						success: function(e){
							swal(
									{title: "매물이 등록되었습니다!", icon: "success"}
								).then(()=>{
									location.href=path+"/admin/main.do?domestic=N";
								});
						}
					});
				});
			});
		});
	});
	
// 	$(function() {
// 	    // Multiple images preview in browser
// 	    var imagesPreview = function(input, placeToInsertImagePreview1, placeToInsertImagePreview2) {

// 	        if (input.files) {
// 	            var filesAmount = input.files.length;

// 	            for (let i = 0; i < filesAmount; i++) {
// 	                var reader = new FileReader();
// 					let child = ":nth-child("+(i+1)+") > a";
// 	                reader.onload = function(event) {
// 	                    $($.parseHTML('<img>')).attr('src', event.target.result).appendTo(placeToInsertImagePreview1 + child);
// 	                    $($.parseHTML('<img>')).attr('src', event.target.result).appendTo(placeToInsertImagePreview2 + (i+1));
// 	                }
// 	                reader.readAsDataURL(input.files[i]);
// 	            }
// 	        }

// 	    };
	    
// 	    $('#myModal2 > div > div > div.modal-body > div.preview.col-md-6 > div > input[type="file"]').on('change', function() {
// 	        imagesPreview(this, '#myModal2 > div > div > div.modal-body > div.preview.col-md-6 > ul > li', '#pic-');
// 	    });
// 	});
	
	$("#myModal3 > div > div > div.modal-body > ul > li > div").on("click", "div", function(e){
		var check = $(this).children();
		if(typeof check.attr("checked") === "undefined" || check.attr("checked") === false)
			check.attr("checked", true);
		else{
			check.attr("checked", false);
		}
	});
	
	
</script>
</html>