<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<link href="csss/common.css" rel="stylesheet" type="text/css">
<link href="csss/reset.css" rel="stylesheet" type="text/css">
<link href="csss/contents.css" rel="stylesheet" type="text/css">

</head>
<body>


<c:import url="header2.jsp" charEncoding="utf-8"/>  




<section id="contents" style="
	padding-top: 20px;
    margin-left: auto;
    margin-right: auto;
">
	<div class="tit-util">
		<h2 class="tit">웹 접근성 정책</h2>
		
		<div class="page-util">
			<span class="hide-location" id="navi_1">이용안내</span>
			<span class="hide-location" id="navi_2">일하라 정책</span>
			<span class="hide-location" id="navi_3">웹 접근성 정책</span>
			<!-- 기능 버튼 들어갈 예정 -->
		</div>
	</div>
	<div class="box-info bg-gray mb40">
		일하라은 다양한 환경과 조건의 사용자가 불편함 없이 쉽게 편리하게 서비스를 이용할 수 있도록 웹 접근성 품질을 유지/강화하며, 장애인 고령자 등 
		정보취약계층을 위한 ‘한국형 웹 콘텐츠 접근성 지침 2.1’과 ‘전자정부서비스 호환성 준수지침(행정자치부 고시 제1호)”를 준수하고 있습니다. <br><br>

		일하라 사이트 제작 시 웹 접근성 준수 여부를 점검하기 위해 웹 접근성 자동진단 도구인 HTML, CSS validator, K-WHA 4.0을 활용해 자동평가를하고 
		자동화 도구로 평가 불가능한 항목을 해당 분야의 전문가들이 OpenWax, Firebug, WebDeveloper 도구를 사용하여 수동평가를 실시하였으며, 
		시각장애인 사용자 등을 대상으로 웹 사이트 이용 가능 여부를 평가하였습니다. <br><br>

		일하라은 국가표준에서 제시된 22개 검사 항목을 기반으로 제작되어, 장애인들이 사용하는 화면낭독 프로그램(Screen Reader)등 보조기기를 
		활용해서도 웹 콘텐츠에 접근할 수 있도록 제작되었습니다. 다만, 모든 보조기기가 웹 접근성 지침을 제대로 해석하여 작동되지 않음으로, 
		장애인 사용자가 이용하시는 보조기기제품에 따라 다소 문제가 발생할 수 있음을 알려 드리며, 이는 웹 사이트 제작의 문제가 아니라 보조기기 
		제품의 문제임을 알려 드립니다. <br><br>

		일하라은 웹 접근성 문제를 해결하기 위해 장애인 사용자, 웹 접근성 전문가들의 의견을 청하고, 웹 접근성 준수여부를 지속 점검토록 노력하겠습니
		다. 
	</div>
	<h3 class="sub-title-18 bul mb10">
		지원 가능한 운영체제 및 웹 브라우저
	</h3>
	<div class="mb40">
		<strong class="font-black">- 운영체제</strong> : 사용자 PC의 운영체제는 마이크로소프트 윈도우 Vista / 7 / 8 / 8.1 / 10을 지원합니다.<br>
		<strong class="font-black">- 웹 브라우저</strong> : 인터넷 익스플러 8.0~11, 크롬, 파이어폭스, 오페라, 사파리 등의 다양한 브라우저에서 동일한 서비스 화면을 제공하고 있습니다.<br>
		<span class="font-orange">※ 단, 일부 브라우저에서는 고용보험 서비스 등 일부 기능의 제한이 있을 수 있습니다. </span>
	</div>

	<h3 class="sub-title-18 bul mb10">
		웹 접근성 품질 인증마크
	</h3>
	<div class="box-white">
		<img src="/static/images/userguide/webAccesbilityMark.png" alt="과학기술정보통신부에서 지정한 웹 접근성 WA 마크" class="float-l">
		<p class="ml200"><strong class="font-black">웹 접근성 품질 인증마크</strong><br>
		장애인이나 고령자 등 정보취약계층이 웹 사이트를 이용하는데 불편함이 없도록 웹 접근성 표준지침을 준수한 우수 사이트에 대해 품질마크를 부여하는 제도. <br>
		<span class="font-blue2">일하라은 웹 접근성 표준지침을 준수하여 품질마크를 부여 받았습니다.</span></p>
	</div>

	<div class="manager-info">
		<div class="left"><b class="font-bold">담당부서</b> : 일하라팀</div>
		<div class="right"><b class="font-bold">최종수정일</b> : 2015-06-24</div>
		<div class="center"><b class="font-bold">문의</b> : 1577-7114</div>
	</div>


<c:import url="footer.jsp" charEncoding="utf-8"/>  

</section>

<br>

 

</body>
</html>