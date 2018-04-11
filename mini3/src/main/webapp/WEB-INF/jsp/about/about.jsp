<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>파이널 프로젝트</title>
<style>
.main{padding: 55px 70px 0; height: auto;}
.h3_sub_tit{font-size: 22px; padding-bottom: 17px; border-bottom: 2px solid #e2e2e2; font-weight: bold;}
.cont_wrap{font-size: 12px;}
.tit_sub11{margin: 35px 0 20px; font-size: 19px; letter-spacing: -.8px}
.txt_sub11{font-size: 13px; color: #666; line-height: 20px; letter-spacing: -.5px;}
.desc_sub11{margin: 38px 0 35px; font-size: 16px; height: auto;}
.desc_sub11 li{margin: 5px 0 0 0;}
.list_sub11 em{font-size: 36px; color: #999; display: inline-block;}
.list_sub11 p{display: inline-block; width: 350px; font-size: 13px; color: #000; margin-left: 5px; letter-spacing: -.2px;}
.dl_sub11{border-top: 1px solid #444; margin-bottom: 70px;}
.dl_sub11 d1{border-bottom: 1px solid #e6e6e6; height:33px; line-height: 32px;}
.dl_sub11 dt{float: left; width: 90px; text-indent: 18px; color: #333; background: #fafafa; }
.dl_sub11 dd{float: left; width: 601px; color: #666; text-indent: 28px; }
</style>
</head>

<body>
  <!-- Main Menu -->
  <c:import url="/WEB-INF/jsp/include/header.jsp" />
  <!-- End Main -->
 	
  <div id="container">
  <div id="danawa_content" class="main" role="main">
                <h3 class="h3_sub_tit">기업정보</h3>
                <div class="cont_wrap">
                    <p class="tit_sub11"><strong>드림카</strong>는 가격비교를 중심으로 다양한 콘텐츠와 커뮤니티를 구축하고 있으며,<br>이를 바탕으로 <strong>양질의 쇼핑정보</strong>를 제공하고자 합니다.</p>
                    <p class="txt_sub11">양질의 쇼핑정보를 제공하여 소비자의 구매결정을 돕고, 다양한 커뮤니티를 통해 소비자로 하여금 자발적으로 정보와 토론의 장을 형성하게 하며 알찬 쇼핑 콘텐츠와 서비스로 소비자를 만족시키는 것이야말로 가격비교 사이트의 본질입니다. 이러한 온라인 쇼핑의 관문이자 첫걸음이 되기 위해 드림카는 모든 핵심역량을 고객만족에 집중하고 있습니다.</p>
                    <div class="desc_sub11 row">
                    	<div class="col-md-6">
                        <strong>DreamCar</strong>는
                        <ul class="list_sub11">
                            <li><em>01</em><p>드림카는 컴퓨터, 가전, 유아용품, 게임, 자동차, 아웃도어 등 주요 제품에 대한 가격비교 서비스를 제공합니다.</p></li>
                            <li><em>02</em><p>드림카는 상품에 관한 자세한 정보와 옵션 별 상품<br>정보 검색을 제공합니다.</p></li>
                            <li><em>03</em><p>드림카는 모든 상품을 찾을 수 있는 통합 검색<br>서비스를 제공합니다.</p></li>
                        </ul>
                    	</div>
                    	<div class="col-md-6">
                    		<img src="${pageContext.request.contextPath}/images/8.jpg">
                    	</div>
                    </div>
                    <div class="dl_sub11">
                        <dl>
                            <dt>회사명</dt>
                            <dd>주식회사 드림카</dd>
                        </dl>
                        <dl>
                            <dt>대표이사</dt>
                            <dd>윤현구</dd>
                        </dl>
                        <dl>
                            <dt>주소</dt>
                            <dd>서울특별시 강남구 12번 출구 오르막길 등산 후 2층 지문인식</dd>
                        </dl>
                        <dl>
                            <dt>설립일</dt>
                            <dd>2018년 01월 19일</dd>
                        </dl>
                        <dl>
                            <dt>자본금</dt>
                            <dd>6,537 백만원</dd>
                        </dl>
                        <dl>
                            <dt>매출액</dt>
                            <dd>644억원 (2016년)</dd>
                        </dl>
                        <dl>
                            <dt>임직원 수</dt>
                            <dd>253명 (2016년 12.31 기준)</dd>
                        </dl>
                        <dl>
                            <dt>주요산업</dt>
                            <dd>가격비교 서비스, 광고사업 등</dd>
                        </dl>
                    </div>
                </div>
            </div>
  	<div style="clear:both; height: 40px"></div>
  </div>
  
  <!-- Footer -->
  <c:import url="/WEB-INF/jsp/include/footer.jsp" />
  <!-- END footer -->
</body>

</html>