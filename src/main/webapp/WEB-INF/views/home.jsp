<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="_csrf_parameter" content="_csrf">
<meta name="_csrf_header" content="X-CSRF-TOKEN">
<meta name="_csrf" content="5557377e-0013-402c-90e5-0dad4d61305f">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="p3p"
	content="CP=&quot;CAO DSP AND SO &quot; policyref=&quot;/w3c/p3p.xml&quot;">
<meta http-equiv="imagetoolbar" content="no">
<meta name="robots" content="noindex,nofollow,noarchive">
<meta name="subject" content="#">
<meta name="author" content="#">
<meta name="keywords" content="#">
<meta name="selected-menu" content="0, 0, 0, 0">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<style type="text/css">
@import url(//fonts.googleapis.com/earlyaccess/notosanskr.css);

body {
	font-family: "Noto Sans KR", sans-serif !important;
}
</style>

<!-- jobs -->
<link rel="stylesheet" href="csss/bootstrap.min.css" />
<link rel="stylesheet" href="csss/main3.css" />

<!-- 확인용 0621 -->

<style type="text/css">

	.tiles {
		display: -moz-flex;
		display: -webkit-flex;
		display: -ms-flex;
		display: flex;
		-moz-flex-wrap: wrap;
		-webkit-flex-wrap: wrap;
		-ms-flex-wrap: wrap;
		flex-wrap: wrap;
		postiion: relative;
		margin: -2.5em 0 2.5em -2.5em;
	}

</style>

<!--  -->

<!-- 카카오 로그인 -->
<script type="text/javascript"
	src="https://developers.kakao.com/sdk/js/kakao.js"></script>

<!-- 네비바 -->


<script
	src="//cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>


<!-- jQuery Modal -->
<script
	src="//https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet"
	href="//https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
<script type="text/javascript"
	src="//www.saraminimage.co.kr/js/libs/jquery-1.11.1.min.js"></script>

<!-- 검색 부트스트랩 -->
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>


<!-- 전체 css -->
<link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
<script type="text/javascript" src="layout/scripts/jquery.min.js"></script>
<script type="text/javascript" src="layout/scripts/featured_slide.js"></script>

<link rel="shortcut icon" href="/images/common/ico/w_favicon.ico"
	type="image/x-icon">
<!-- TO_BE CSS.. -->
<link rel="stylesheet" href="static/css/import.css" media="all">
<!-- footer -->

<!-- 퀵메뉴 -->
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<!-- 랭킹 -->
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>



<link href="csss/ranking.css" rel="stylesheet" type="text/css">
<!-- 로그인 css -->
<link href="csss/logincss.css" rel="stylesheet" type="text/css">
<!-- 서치 css -->
<link href="csss/search.css" rel="stylesheet" type="text/css">



<style type="text/css">
/* 네비바 배경색 */
.bg-dark {
    background-color: white!important;
}
/* 네비바 글자색 */
.navbar-dark .navbar-nav .nav-link {
    color: black;
}
/* 네비바 hover색 */
.navbar-dark .navbar-nav .nav-link:focus, .navbar-dark .navbar-nav .nav-link:hover {
    color: #eee!important;
}
/* 네비바 가운데 정렬 */
.navbar-expand-sm {
    justify-content:center!important;
}
dl, ol, ul {
    margin-top: 0;
    margin-bottom: 0;
}
.navbar-nav2 dl, ol, ul {
    margin-left: 200px;
}
.bg-dark {
    background-color: #fff!important;
}
.dropdown-item {
    display: block;
    width: 100%;
    padding: .25rem 1.5rem;
    clear: both;
    font-weight: 400;
    color: #212529!important;
    text-align: inherit;
    white-space: nowrap;
    background-color: transparent;
    border: 0;
}
.fixed-top {
    position: fixed;
    top: 0;
    right: 0;
    left: 0;
    z-index: 1030;
}
/* 메인css */
nav { width:100%;height:100px; text-align:center;top:0;left:0;}
header {height:auto; background:white; padding-top: 0;}
main {flex: 1 1 100%;height:auto; background:white;}
footer{flex: 1 1 100%;height:auto;text-align:center;background:white;}
.all {
    display: flex;
    flex-flow: row wrap;
    min-width: 100px;
    flex-direction: column;
}
/* 제목아래 라인 */
#homecontent h5 {
    border-bottom: 2px solid #eee;
    font-size: 14pt;
    text-align: center;
    padding: 5px 0 5px 0;
    font-family: inherit;
    background-color: #eee;
}
.readmore{
	color: #747580
}
@media (min-width: 768px)
.col-md-4 {
    -webkit-box-flex: 0;
    -ms-flex: 0 0 30%;
    /* flex: 30%; */
    max-width: 30%;
}
p{
	font-size: 11pt;
    padding-top: 15px;
}
#homecontent .fl_right {
    display: contents;
    float: right;
    width: 500px;
}
#homecontent .fl_right img {
    float: left;
    width: 200px;
    height: 100px;
    margin: 0 10px 0 0;
}
#homecontent .fl_right li {
    display: block;
    width: 500px;
    margin: 0;
    padding: 0;
    margin-bottom: 10px;
}
#homecontent img {
    padding: 0px;
}
.form-control {
    display: block;
    width: 70%;
    height: 34px;
    padding: 6px 12px;
    font-size: 14px;
    line-height: 1.42857143;
    color: #555;
    background-color: #fff;
    background-image: none;
    border: 1px solid #ccc;
    border-radius: 4px;
    -webkit-box-shadow: inset 0 1px 1px rgb(0 0 0 / 8%);
    box-shadow: inset 0 1px 1px rgb(0 0 0 / 8%);
    -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
    -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
    transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
}
/* 검색css */
.form-control-borderless {
        border: none;
      }
 .form-control-borderless:hover, .form-control-borderless:active, .form-control-borderless:focus {
   border: none;
   outline: none;
   box-shadow: none;
 }
 .card-body1 {
   padding-bottom: 12px;
   padding-top: 12px;
   padding-right: 12px;
   padding-left: 12px;
   background: #2186eb!important;
 }
 .src_fild {
   border-radius: 0;
 }
 .src_btn {
   line-height: 0.5;
   height: 38px;
   border-radius: 0;
 }
 .btn-success {
color: #fff;
background-color: #2186eb;
border-color: #2186eb;
}
.navbar-brand {
    display: flex;
}
 .container {
    width: 100%;
    padding-right: 15px;
    padding-left: 15px;
    margin-right: auto;
    margin-left: auto;
}
.logoarea {
	clear: both;
}
.navbar-nav{
	background-color: #fff;
}
.bgc{
 color: #2186eb;
 background-color: #fff;
 font-size: 12pt;
}
/* 검색 top margin */
form, fieldset, legend {
    margin-top: 20px;
    padding: 0;
    border: none;
}
/* 부트스트랩css */
/* @import url('https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css'); */
#team {
    background: #fff !important;
}
.btn-primary:hover,
.btn-primary:focus {
    background-color: #fff!important;
    border-color: #000;
    box-shadow: none;
    outline: none;
}
.btn-primary {
    color: #000;
    background-color: #eee;
    border-color: #eee;
}
section {
    padding: 60px 0;
}
section .section-title {
    text-align: center;
    color: #000;
    margin-bottom: 50px;
    text-transform: uppercase;
}
#team .card {
    border: none;
    background: #eee;
}
.image-flip:hover .backside,
.image-flip.hover .backside {
    -webkit-transform: rotateY(0deg);
    -moz-transform: rotateY(0deg);
    -o-transform: rotateY(0deg);
    -ms-transform: rotateY(0deg);
    transform: rotateY(0deg);
    border-radius: .25rem;
}
.image-flip:hover .frontside,
.image-flip.hover .frontside {
    -webkit-transform: rotateY(180deg);
    -moz-transform: rotateY(180deg);
    -o-transform: rotateY(180deg);
    transform: rotateY(180deg);
}
.mainflip {
    -webkit-transition: 1s;
    -webkit-transform-style: preserve-3d;
    -ms-transition: 1s;
    -moz-transition: 1s;
    -moz-transform: perspective(1000px);
    -moz-transform-style: preserve-3d;
    -ms-transform-style: preserve-3d;
    transition: 1s;
    transform-style: preserve-3d;
    position: relative;
}
.frontside {
    position: relative;
    -webkit-transform: rotateY(0deg);
    -ms-transform: rotateY(0deg);
    z-index: 2;
    margin-bottom: 30px;
}
.backside {
    position: absolute;
    top: 0;
    left: 0;
    background: white;
    -webkit-transform: rotateY(-180deg);
    -moz-transform: rotateY(-180deg);
    -o-transform: rotateY(-180deg);
    -ms-transform: rotateY(-180deg);
    transform: rotateY(-180deg);
    -webkit-box-shadow: 5px 7px 9px -4px rgb(158, 158, 158);
    -moz-box-shadow: 5px 7px 9px -4px rgb(158, 158, 158);
    box-shadow: 5px 7px 9px -4px rgb(158, 158, 158);
}
.frontside,
.backside {
    -webkit-backface-visibility: hidden;
    -moz-backface-visibility: hidden;
    -ms-backface-visibility: hidden;
    backface-visibility: hidden;
    -webkit-transition: 1s;
    -webkit-transform-style: preserve-3d;
    -moz-transition: 1s;
    -moz-transform-style: preserve-3d;
    -o-transition: 1s;
    -o-transform-style: preserve-3d;
    -ms-transition: 1s;
    -ms-transform-style: preserve-3d;
    transition: 1s;
    transform-style: preserve-3d;
}
.frontside .card,
.backside .card {
    min-height: 312px;
}
.backside .card a {
    font-size: 18px;
    color: #000 !important;
}
.frontside .card .card-title,
.backside .card .card-title {
    color: #000 !important;
}
.frontside .card .card-body img {
    width: 100%;
    height: 120px;
}
.card-body {
    padding-bottom: 12px;
    padding-top: 12px;
    padding-right: 12px;
    padding-left: 12px;
    background: #eee;
     color: #000 !important;
}
/* 드롭다운 추가 */
.dropbtn {
  background-color: #2186eb;
  color: white;
  padding: 8px;
  font-size: 16px;
  border: none;
}
.dropdown {
  position: relative;
  display: inline-block;
}
.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f1f1f1;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}
.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}
.dropdown-content a:hover {background-color: #2186eb;}
.dropdown:hover .dropdown-content {display: block;}
.dropdown:hover .dropbtn {background-color: #2186eb;}
/* 퀵메뉴 */
body { padding-top:20px; }
/* .panel-body .btn:not(.btn-block) { width:120px;margin-bottom:10px; } */
.row {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -ms-flex-wrap: wrap;
    flex-wrap: wrap;
    margin-right: -15px;
    margin-left: -15px;
    justify-content: center;
}
.panel-primary>.panel-heading {
    color: #fff;
    background-color: #2186EB;
    border-color: #2186EB;
}
#header, #topbar, #featured_slide, #homecontent, #breadcrumb, #container, #copyright {
    display: flex;
    position: relative;
    margin: 0 auto;
    align-items: flex-start;
}
.panel-primary {
    border-color: #eee;
}
/* 랭킹css */
.content {
    width: 450px;
    margin: 0px auto;
}
body{
	padding-top: 100px;
}
.panel {
    margin-bottom: 20px;
    background-color: #eee;
    border: 1px solid transparent;
    border-radius: 4px;
    -webkit-box-shadow: 0 1px 1px rgb(0 0 0 / 5%);
    box-shadow: 0 1px 1px rgb(0 0 0 / 5%);
}
/* 모달 */
#login-modal {
margin-right : 450px;
}
/* 검색 */
/*search box css start here*/
.search-sec{
    padding: 2rem;
}
.search-slt{
    display: block;
    width: 100%;
    font-size: 0.875rem;
    line-height: 1.5;
    color: #55595c;
    background-color: #fff;
    background-image: none;
    border: 1px solid #ccc;
    height: calc(3rem + 2px) !important;
    border-radius:0;
}
.wrn-btn{
    width: 100%;
    font-size: 16px;
    font-weight: 400;
    text-transform: capitalize;
    height: calc(3rem + 2px) !important;
    border-radius:0;
}
@media (min-width: 992px){
    .search-sec{
        position: relative;
        top: -200px;
        background: rgb(255 255 255 / 0%);
    }
}
@media (max-width: 992px){
    .search-sec{
        background: #1A4668;
    }
}

h2{
 font-size: 20px;
}
</style>


<link href="csss/Newmain.css" rel="stylesheet" type="text/css">
<link href="csss/headerDefa.css" rel="stylesheet" type="text/css">
</head>
<body id="sri_main">
<div id="skipnavigation">
<a href="#search">본문 바로가기</a>
</div>
<header id="sri_header">
<div class="wrap_header">
<h1>
<a href="/" class="bi" aria-label="사람인">
<span class="wrap_img">
<svg class="img_bi" aria-hidden="true"><use xlink:href="#svg_saramin_ci"></use></svg>
</span>
</a>
</h1>
<img src="static/css/Animation.gif" class="bi_art_logo" aria-label="내일이 더 즐거운 사람인" onclick="pushDataLayer('ga_lead','main-gnb','global_menu','ci')">
<span class="blind">내일이 더 즐거운 사람인</span>
<div class="navigation">
<div class="navi_common">
<ul class="navi_depth1">
<li><a href="recuruitlist.do"><span>채용정보</span></a></li>



<li><a href="newslist.do"><span>TODAY NEWS📈</span></a></li>
<li><a href="pdslist.do"><span>자료실</span></a></li>
<li>
<a href="/zf_user/jobs/theme/it-headhunting">
<span class="passkk0">50만원 받고</span>
<span class="passkk1">합격ㅋㅋ</span>
<span class="passkk2"><svg class="img_bi" aria-hidden="true"><use xlink:href="#svg_gnb_passkk1"></use></svg></span>
<span class="passkk3"><svg class="img_bi" aria-hidden="true"><use xlink:href="#svg_gnb_passkk2"></use></svg></span>
</a>
</li>
</ul>
</div>
<div class="navi_depth1 secondary">
<span class="marker"><svg aria-hidden="true"><use xlink:href="#svg_gnb_more"></use></svg></span>
<ul>
<c:if test="${login.auth==1 || login.auth==3}">
	<li><a href="resumeMain.do?memberid=${login.memberid }"><span>이력서관리</span></a></li>
</c:if>
<c:if test="${login.auth==1 || login.auth==3}">
<li><a href="FAQ.do"><span>FAQ</span></a></li>
</c:if>
<c:if test="${login.auth==2}">
<li><a href="FAQ2.do"><span>FAQ</span></a></li>
</c:if>
<li><a href="notice.do"><span>공지사항</span></a></li>
<li><a href="https://www.jumpit.co.kr" target="_blank"><span class="icon icon_jumpit">점핏</span></a></li>
</ul>
</div>
</div>
<div class="utility">

<!-- 누구누구님 안녕하세요 -->
<ul class="navbar-nav">
 <li class="nav-item" style="margin-top: 12px;">
<c:choose>
       <c:when test="${login.memberid ne null }">
            		<c:choose>
            			 <c:when test="${login.auth == 1}">
             				 <p><b>[개인🧑]${login.name }</b>님</p>
             	 		 </c:when>
             			<c:when test="${login.auth == 2}">
             				<p><b>[기업👨‍💼]${login.name }</b>님</p>
    		 			</c:when>
    					<c:otherwise>
             				<p><b>[관리자👨‍✈️]${login.name }</b>님</p>
    					</c:otherwise>
    				</c:choose>
            	 </c:when>
         	</c:choose>
      </li>
 </ul>
<!-- 로그인 로그아웃 란 -->
<c:choose>
	<c:when test="${empty login}">
		<a href="javascript:login()" class="btn_sign signin"><span class="txt">로그인 🔑</span></a>
	</c:when>
	<c:otherwise>
		<c:choose>
		   <c:when test="${login.auth==1 || login.auth==3}">
    		  <a href="logout.do" class="btn_sign signin"><span class="txt">로그아웃</span></a>
   			</c:when>
   			<c:otherwise>
    		  <a href="logout.do" class="btn_sign signin"><span class="txt">로그아웃</span></a>
   			</c:otherwise>
		</c:choose>
	</c:otherwise>
</c:choose>
<c:if test="${login.memberid == null }">
   <a href="regiclick.do" class="btn_sign signup"><span class="txt">회원가입</span></a>
</c:if>
<c:if test="${login.auth == 1 || login.auth == 3 }">
   <a href="mypage.do?memberid=${login.memberid }" class="btn_sign signup"><span class="txt">마이페이지</span></a>
</c:if>
<c:if test="${login.auth == 3 }">
<a href="memberlist.do" class="btn_sign signup"><span class="txt">회원목록</span></a>
</c:if>
<c:if test="${login.auth == 2 }">
<a href="buspage.do?memberid=${login.memberid }" class="btn_sign signup"><span class="txt">기업마이페이지</span></a>
</c:if>
<c:if test="${login.auth == 3 }">
<a href="memberlist.do" class="btn_sign signup"><span class="txt">회원목록</span></a>
</c:if>
</div>
</div>
<div class="navi_total">
<button type="button" class="btn_menu">
<svg aria-hidden="true"><use xlink:href="#svg_gnb_total_off"></use></svg>
<svg aria-hidden="true"><use xlink:href="#svg_gnb_total_on"></use></svg>
<span class="blind">전체메뉴</span>
</button>
<div id="sri_index">
<div class="inner">
<div class="menu">
<div class="depth_1">
<span><a href="recruitlist.do">채용정보</a></span>
<ul class="depth_2">
<li><a href="recruitlist.do">지역별</a></li>
<li><a href="/zf_user/jobs/list/job-category">직업별</a></li>
<li><a href="/zf_user/jobs/hot100">HOT100</a></li>
<li><a href="/zf_user/curation">큐레이션</a></li>
<li><a href="/zf_user/jobs/public/list">공채</a></li>
<li><a href="/zf_user/upjikjong-recruit/select-upjikjong/recruitform_type/industrial">산업별</a></li>
<li><a href="/zf_user/jobs/list/headhunting">헤드헌팅</a></li>
<li><a href="/zf_user/jobs/list/dispatch">파견대행</a></li>
<li><a href="/zf_user/jobs/theme/main">채용관</a></li>
</ul>
</div>
<div class="depth_1">
<span><a href="/zf_user/companylab">기업정보</a></span>
<ul class="depth_2">
<li><a href="/zf_user/company-review">기업리뷰</a></li>
<li><a href="/zf_user/interview-review">면접후기</a></li>
<li><a href="/zf_user/career-information/senior-list">직무인터뷰</a></li>
<li><a href="/zf_user/salaries/total-salary/list">연봉정보</a></li>
<li><a href="/zf_user/company-info/sri-certification?seq=377">기업큐레이션</a></li>
<li><a href="/zf_user/company-section/road-map">이직로드맵</a></li>
</ul>
</div>
<div class="depth_1">
<span><a href="/zf_user/member/suggest/status-list">TODAY NEWS📈</a></span>
<ul class="depth_2">
<li><a href="/zf_user/member/suggest/status-list">제안받은 현황<span class="flag">개인</span></a></li>
<li><a href="/zf_user/memcom/talent-pool/main">인재Pool 검색<span class="flag">기업</span></a></li>
</ul>
</div>
<div class="depth_1">
<span><a href="pdslist.do">자료실</a></span>
<ul class="depth_2">
<li><a  href="/zf_user/memcom/preview/guide?page_type=manual">preview 소개</a></li>
<li><a  href="/zf_user/event/iam-ground-app/app-intro">아이엠그라운드 소개</a></li>
</ul>
</div>
<div class="depth_1">
<span><a  href="/zf_user/jobs/theme/it-headhunting">합격ㅋㅋ</a></span>
</div>
<div class="depth_1">
<span><a>사람인 서비스</a></span>
<ul class="depth_2">
<li><a  href="/zf_user/resume/resume-manage">이력서 관리<span class="flag">개인</span></a></li>
<li><a  href="/zf_user/company/recruit-manage">공고·지원자 관리<span class="flag">기업</span></a></li>
<li><a  href="/zf_user/company-review-qst-and-ans">취준진담</a></li>
<li><a  href="/zf_user/white-paper/office">FAQ<span class="flag">글자수세기</span></a></li>
</ul>
<ul class="depth_2">
<li><a target="_blank"  href="https://www.jumpit.co.kr" class="icon icon_jumpit">점핏<svg aria-hidden="true"><use xlink:href="#svg_gnb_window_new"></use></svg></a></li>
<li><a target="_blank"  href="https://www.otwojob.com/main" class="icon icon_otwojob">오투잡<svg aria-hidden="true"><use xlink:href="#svg_gnb_window_new"></use></svg></a></li>
</ul>
</div>
</div>
<ul class="extra">
<li><a  href="/zf_user/help/help-word/main">고객센터<span>공지/이벤트</span></a></li>
<li><a  href="/zf_user/member/avatar/list">추천<span>채용공고</span></a></li>
<li><a  href="/zf_user/service/products">상품 안내<span>유료서비스</span></a></li>
<li><a target="_blank"  href="/zf_user/welounge/main">We.라운지<span>브랜딩</span></a></li>
</ul>
</div>
</div>
</div>
</header>
<div class="all" style="background-color: #ecf1fd;">
 <!-- 메인 검색 창 -->
 <!-- 검색html -->
 


    <img src="개발자23.gif" style="width:1259px;height:250px;margin-left: auto;margin-right: auto;">
		
		
		<!-- 메인검색창 끝 -->
		<!-- =========Login 클릭 시 Mod	al =========== -->
      <div id="login-modal" tabindex="-1" role="dialog" aria-labelledby="login-modalLabel" class="modal modal-center fade ">
        <div role="document" class="modal-dialog" style="margin: 0;">
          <div class="modal-content" style="width: 371.988636px;">
            <div class="modal-header">
              <h4 id="login-modalLabel" class="modal-title">1hara Login</h4>
              <button type="button" data-dismiss="modal" aria-label="Close" class="close"><span aria-hidden="true"></span>x</button>
            </div>
            <div class="modal-body">
            
          <ul class="nav nav-pills" style="margin-left: 100px;">
            <li class="nav-item"> <a href="" class="nav-link active show" data-toggle="pill" data-target="#tabone">개인회원</a> </li>
            <li class="nav-item"> <a class="nav-link" href="" data-toggle="pill" data-target="#tabtwo">기업회원</a> </li>
          </ul>
          <div class="tab-content mt-2">
            <div class="tab-pane fade active show" id="tabone" role="tabpanel">
              <form id="login_frm" name="login_frm" method="post" action="loginAf.do">
                  <input type="hidden" name="page_url" value="">
                 <input type="hidden" name="FrameKey" value="">
                 <input type="hidden" name="login_tab" value="p" id="login_tab">
                    <div class="form-group" >
                        <input id="memberid" style="margin: 0 auto;" type="text" placeholder="ID" name="memberid" class="form-control">
                      </div>
                      <div class="form-group" >
                        <input id="pwd"  style="margin: 0 auto;" type="password" name="pwd" placeholder="password" class="form-control">
                      </div>
                      <p class="text-center">
                        <button class="btn btn-template-outlined" id="_btnLogin"><i class="fa fa-sign-in"></i> Login</button>
                     </p>
              </form>
                 <a href="javascript:kakaoLogin()" >
               <img alt="" src="https://img.eduwill.net/Img2/Common/Join/new/btn-kakao-large.png" style="margin: 0 auto;">
              </a>
              <p class="text-center text-muted">아직 회원가입을 안하셨나요?</p>
              <p class="text-center text-muted"><a href="regiclick.do"><strong>가입하기</strong></a> 백수를 탈출합시다!</p>
            </div>
            <div class="tab-pane fade" id="tabtwo" role="tabpanel">
              <form id="login_frm" name="login_frm" method="post" action="businessloginAf.do">
                  <input type="hidden" name="page_url" value="">
                 <input type="hidden" name="FrameKey" value="">
                 <input type="hidden" name="login_tab" value="p" id="login_tab">
                    <div class="form-group">
                        <input id="memberid" style="margin: 0 auto;" type="text" placeholder="ID" name="memberid" class="form-control">
                      </div>
                      <div class="form-group">
                       <input id="pwd"  style="margin: 0 auto;" type="password" name="pwd" placeholder="password" class="form-control">
                      </div>
                      <p class="text-center">
                        <button class="btn btn-template-outlined" id="_btnLogin"><i class="fa fa-sign-in"></i> Login</button>
                     </p>
              </form>
              <p class="text-center text-muted">아직 회원가입을 안하셨나요?</p>
              <p class="text-center text-muted"><a href="regiclick.do"><strong>가입하기</strong></a> 백수를 탈출합시다!</p>
            </div>
          </div>
            </div>
          </div>
        </div>
      </div>
<!-- =======Login 클릭 시 Modal END =========-->
		<!-- 본문 -->
		<main>
			<div id="section_contents" class="cont_top">
				<div class="inner">
					<div class="lpop_wrap layer_upgrade" style="display: none;">
						<div class="layer_head">
							<strong class="blind">브라우저 지원범위 안내</strong>
						</div>
						<div class="layer_cont">
							<a class="desc_upgrade" target="_blank" title="업그레이드 새창알림">
								원활한 서비스 이용을 위해<br> <strong>최신 익스플로러 브라우저</strong>로<br>
								<strong>업그레이드</strong> 해주세요
							</a>
						</div>
						<button type="button" class="btn_close">
							<span class="blind">닫기</span>
						</button>
					</div>
					<div class="wrap_recomm loading" style="display: block">
						<div class="wrap_bigbox person" >
							<div class="bigbox person"
								style="width: 2233px; transform: translateX(-1595px); transition: all 300ms ease 0s;">
								<div class="slide type_event">
									<img
										src="https://www.saraminbanner.co.kr/new/main/2021/03/qpqjor_pit8-2so1qt_A01.png">
									<a
										href="https://www.saramin.co.kr/zf_user/curation?inner_source=saramin&amp;inner_medium=banner&amp;inner_campaign=top_box_type_banner_person&amp;inner_term=curation"
										class="go_link" target="_blank"></a>
								</div>
								<div class="slide type_company">
									<span class="category">추천기업</span> <strong class="title">
										<a
										href="/zf_user/company-info/view?csn=RWxFQ0JEWDhqL09Xc3h4dXRyUFpxZz09"
										data-click-url="http://rcmd-log.saramin.co.kr:9020/so-logging/log/client?custId=0&amp;pcId=16230612419786911889857&amp;nonce=f545d7cea28927b4a53f&amp;dpId=SRI_050_MAIN_SM_CPN&amp;scnId=763&amp;tgId=1&amp;itemSetId=1&amp;itemValue=5298500774&amp;click=1"
										class="link goto_company_view"
										onmousedown="loggingEventAndTagManager(['main', 'BIG_com', 'cominfo', ''], ['ga_lead', 'main', 'BIG_com', 'cominfo'])">
											<span>롯데e커머스</span>
									</a>
									</strong>
									<div class="wrap_list">
										<dl class="list">
											<dt class="list_title">
												기업정보
												<svg xmlns="http://www.w3.org/2000/svg" width="7"
													height="11" viewBox="0 0 7 11" class="ic_arrow">
                                        <path fill="none"
														fill-rule="evenodd" stroke="#FFF" d="M-2 3L3 8 8 3"
														opacity=".8" transform="rotate(-90 3 5.5)"></path>
                                    </svg>
											</dt>
											<dd class="desc company_info">
												- 업종 : 쇼핑몰·오픈마켓<br>- 주소 : 서울 송파구
											</dd>
										</dl>
										<a
											href="/zf_user/company-info/view?csn=RWxFQ0JEWDhqL09Xc3h4dXRyUFpxZz09"
											onmousedown="loggingEventAndTagManager(['main', 'BIG_com', 'cominfo', ''], ['ga_lead', 'main', 'BIG_com', 'cominfo'])"
											class="list_link"></a>
									</div>
									<div class="wrap_list">
										<dl class="list">
											<dt class="list_title">
												진행중 공고
												<svg xmlns="http://www.w3.org/2000/svg" width="7"
													height="11" viewBox="0 0 7 11" class="ic_arrow">
                                        <path fill="none"
														fill-rule="evenodd" stroke="#FFF" d="M-2 3L3 8 8 3"
														opacity=".8" transform="rotate(-90 3 5.5)"></path>
                                    </svg>
											</dt>
											<dd class="desc">[TECH팀] DevOps(C 외 4건</dd>
										</dl>
										<a
											href="/zf_user/company-info/view-inner-recruit?csn=RWxFQ0JEWDhqL09Xc3h4dXRyUFpxZz09"
											class="list_link" onclick=""
											onmousedown="loggingEventAndTagManager(['main', 'BIG_com', 'rec', ''], ['ga_lead', 'main', 'BIG_com', 'rec'])"></a>
									</div>
									<button type="button" class="btn_link"
										onclick="window.location.href='/zf_user/company-info/view?csn=RWxFQ0JEWDhqL09Xc3h4dXRyUFpxZz09'"
										onmousedown="loggingEventAndTagManager(['main', 'BIG_com', 'cominfo', ''], ['ga_lead', 'main', 'BIG_com', 'cominfo'])">
										<svg xmlns="http://www.w3.org/2000/svg"
											xmlns:xlink="http://www.w3.org/1999/xlink" width="18px"
											height="18px" viewBox="0 0 18 18" version="1.1" class="ic">
                                <title>ico_company</title>
                                <g stroke="none" stroke-width="1"
												fill="none" fill-rule="evenodd">
                                    <g
												transform="translate(-424.000000, -490.000000)">
                                        <g
												transform="translate(330.000000, 192.000000)">
                                            <g
												transform="translate(32.000000, 288.000000)">
                                                <g
												transform="translate(61.000000, 10.000000)">
                                                    <image x="1" y="0"
												width="18" height="18"
												xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABIAAAASCAYAAABWzo5XAAAABGdBTUEAALGOfPtRkwAAAERlWElmTU0AKgAAAAgAAYdpAAQAAAABAAAAGgAAAAAAA6ABAAMAAAABAAEAAKACAAQAAAABAAAAEqADAAQAAAABAAAAEgAAAACaqbJVAAADfklEQVQ4EX2TzXLjRBSFT6tbv5bkyHbiBJOahCoWFFWkYMdr8AaseQ/2bNiymuJ5qKIoGEiYIZOfyTixLcuWLPUPRx4Ydthldbu7de+53z0t8M/n+vo63mxeKWMK1y8tFguRZZm9uLjY/Hvm/0bx/Pn3RRwfH56ejL8t1+WXxnqVgxPOiiBIopuH+7df/3p9vXwfZB/2v9it74tcykYl0fCb2z9ffHV7qT/uui7VFrCuFyWglDqVYfRjZHTTRzaWmz7grMeHg5IeEmnDUTH6QZ19dL7wuvrzN4sNAnjQ2qAPs48FeEK4L5I43q9LvqiN2YsLAwXL+Wg4wPDog+/UdHpc3q8a1HaFozzBU9UgCgIGMhDCQ7NrEQ8GeCzXOCpyzFcVjHEoigEubx9xOpvhcFxU6mm5FY4beRwhDn3kVB/4ivL7zB58z0PM7FkSIeT6kGO/E4XhXo0QAmVZeqpuWjyVGzwsar4cY1W16GWTCTFJ1Lsd8jTBI5WQDBY8q1l3P39YrDFlaYICVGc6+EGENPcRhBIxSYVkYXtFnoRTCiGzJwMq5RinHozgnNyGxQgqCCElG2OYWNcbGLLRNoBpOmi+3DPqSzNth86ynG3NdQ292dEc7KyyMJslzFCh6hioT1xZhRW1SCdRQiLibw9bKtQELkSENXsZehEqBiFSnvGxZIIGCnkg+SS6SexBOY3Yt4g4SklL9lI9i9Q3CEQL5XcYuB0k/zsGz5TDLBWIhaFqvAv0wLJeE/Y4CbCsCduX1N7D9lA3NWGnmNNnxxNF6GsY63DMSq5uHnjWR0amvFvAeBBCd4ZtplMJr6+33ZEVa0jIIjBbeCHVdhUOQzKVAe2iMBunPM9kdQ3Vdh3evH3C1f0cRcpWstSknuOX367eO5z25txhx+CzkylWKsPZ+TkuX75GRvVRf11s22JykDI7M3IxJLj5/RY/3a4xzhKUW+KUEr4SeFxWOHl2hmfHUxRZjLPZIY0aYlOW7xTd3N7h91d3OMh5b6hqUozRsmRJf5ntjibglyw6YitGE9zd36GmgKuXf7E0+oxN8aztxGCQYDwaEioDZdnejLqpYHXDjtS8nA2bqznf7m1xkOdIkhiT8YjXit4jaFWWm/rDSbE9SuNty4VBFOPnF384JnBat8J22hneN2O0cM66dVmKzz79RPTMTicHhOeUllH9N/QDw/IGcl6sAAAAAElFTkSuQmCC"></image>
                                                </g>
                                            </g>
                                        </g>
                                    </g>
                                </g>
                            </svg>
										기업정보 보러가기
									</button>
								</div>
								<div class="slide type_announce">
									<span class="category">추천공고</span> <strong class="title"><span>라인비즈플러스(주)</span></strong>
									<p class="title_recom">
										<a
											href="/zf_user/jobs/relay/view?isMypage=no&amp;view_type=list&amp;rec_idx=40378127"
											class="link goto_recruit_view"
											data-click-url="http://rcmd-log.saramin.co.kr:9020/so-logging/log/client?custId=&amp;pcId=16230612419786911889857&amp;nonce=56a136eb71e11c3e8ce7&amp;dpId=SRI_050_MAIN_AVA_RCT&amp;scnId=755&amp;tgId=2&amp;itemSetId=1&amp;itemValue=40378127&amp;click=1"
											onmousedown="loggingEventAndTagManager(['main', 'BIG_rec', 'rec', ''], ['ga_lead', 'main', 'BIG_rec', 'rec'])">
											<span>LINE Fintech Recruitment 2021 전직군 경력 공개채용</span>
										</a>
									</p>
									<div class="wrap_list">
										<dl class="list">
											<dt class="list_title">
												기업정보
												<svg xmlns="http://www.w3.org/2000/svg" width="7"
													height="11" viewBox="0 0 7 11" class="ic_arrow">
                                        <path fill="none"
														fill-rule="evenodd" stroke="#FFF" d="M-2 3L3 8 8 3"
														opacity=".8" transform="rotate(-90 3 5.5)"></path>
                                    </svg>
											</dt>
											<dd class="desc">응용 소프트웨어 개발 및 공급업, 8년차, 경기 성남시 분당구
												분당내곡로</dd>
										</dl>
										<a
											href="/zf_user/company-info/view?csn=bEl4VFRFN051aTFRSEEwYzJscW9wUT09"
											onmousedown="loggingEventAndTagManager(['main', 'BIG_rec', 'cominfo', ''], ['ga_lead', 'main', 'BIG_rec', 'cominfo'])"
											class="list_link"></a>
									</div>
									<div class="wrap_list">
										<dl class="list">
											<dt class="list_title">
												면접 후기
												<svg xmlns="http://www.w3.org/2000/svg" width="7"
													height="11" viewBox="0 0 7 11" class="ic_arrow">
                                        <path fill="none"
														fill-rule="evenodd" stroke="#FFF" d="M-2 3L3 8 8 3"
														opacity=".8" transform="rotate(-90 3 5.5)"></path>
                                    </svg>
											</dt>
											<dd class="desc">IT·인터넷&nbsp;면접 후기 748건</dd>
										</dl>
										<a
											href="/zf_user/interview-review?my=0&amp;page=1&amp;orderby=registration&amp;job_category=4"
											class="list_link"
											onmousedown="loggingEventAndTagManager(['main', 'BIG_rec', 'interview-review', ''], ['ga_lead', 'main', 'BIG_rec', 'interview-review'])"></a>
									</div>
									<button type="button" class="btn_link"
										onclick="window.location.href='/zf_user/jobs/relay/view?isMypage=no&amp;view_type=list&amp;rec_idx=40378127'"
										onmousedown="loggingEventAndTagManager(['main', 'BIG_rec', 'rec', ''], ['ga_lead', 'main', 'BIG_rec', 'rec'])">
										<svg xmlns="http://www.w3.org/2000/svg"
											xmlns:xlink="http://www.w3.org/1999/xlink" width="20px"
											height="16px" viewBox="0 0 20 16" version="1.1" class="ic">
                                <g stroke="none" stroke-width="1"
												fill="none" fill-rule="evenodd">
                                    <g
												transform="translate(-434.000000, -492.000000)">
                                        <g
												transform="translate(330.000000, 192.000000)">
                                            <g
												transform="translate(32.000000, 288.000000)">
                                                <g
												transform="translate(72.000000, 10.000000)">
                                                    <image x="0" y="2"
												width="20" height="16"
												xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABQAAAAQCAYAAAAWGF8bAAAABGdBTUEAALGOfPtRkwAAAERlWElmTU0AKgAAAAgAAYdpAAQAAAABAAAAGgAAAAAAA6ABAAMAAAABAAEAAKACAAQAAAABAAAAFKADAAQAAAABAAAAEAAAAABHXVY9AAADRElEQVQ4EWVUWUhUYRT+5s6Ms2leQguzpk1pcwFbaGFQ6qUhqKDMXvKhNx9ajCIIdwtCeokIKiiTShkwgtQpITWQUiSEtCJsrMacYcLKcu7s472df+S/3uiHe8/2ne3+51wdNKexsbHCarVWRqNRaX5+/npDQ8NrjVllm5qatpBwnrC5oVDocX19/W3VyJmampqr09PTCjvJZFIZGRmR6+rqyrmd09ra2j0DAwMSw7ATCAQUSvyIHoFjQMJBr9ebAmhfXV1dYbLZOZD4JR0dHQtZNUC/369QQacYLhU1PT39kt2u+nF/lJWVWaj1M1xBVZ1wOp25XOY0JycH9FyghGahubk53+FwbOdGLaVEoESHCGhg+uzs7IrMzEwtROVLS0tX6XS6XYIsyztW5uYKPs84ZqY/gzpRQYwpKipap9fr11ZXV1sKCgoKZ2d8+DYxhngs+g+OkkEQhN1C1tKl2z1DT9H78CaObFqPG+eOIJlIqGAC6hKJRB5VtsoqS+KnkT5UOYtxcqsVMz6visvIyAB1lCekxX9ve/m8Bx++x+BNAl2uJxh71asCLRYLqzoj02Zb6W69hgl/EF+DJnwMKGitO/pPR9StaEhG/5jvt/ZATgP0BgGySYb0c0INSBfBnJImszG9v28Qd12DEJcAQRmQ46OgS4PBkPrEzCchmMRl74vXUzAjyCBj/17AXuhQA0qSxBwC0Cvv9uxajSy6EykC7C4GHAeOq8FoGUCfxm/w/Yo9ONt8udIzWIOsFcDGfXexOn+bGnByclIi4WNV1dnZTlH8vmHN6eVGYxCbdx7CZufiggSDQYTD4begkWDD+iMaCSmxaEQzrgtsS0tLH49O2HtUiRIJh/7Dud3uBI3gWoFAc+Pj4+2yokOaycx9U3RqagrU8i2N8g7TmS1WjQqIx+MYGhp6Tmv5JbUpNpvtSmdnp0+LikQiaGtre0Gz9ZjrKflwe3v7vbm5Oa5K0e7u7hDN6kUm6Nmrv78/VFJS8mx0dLRMFMVltNcgxx6j0XiMdjTGMPzQOrqHh4ftZrO5mNrXuVwur8fjKac/0BuG0XEgo6QspTE4TGyY1qiNKlqcHw2Q9HR9OEnY5VRZL8nd3PwX+wS6IUlvDbcAAAAASUVORK5CYII="></image>
                                                </g>
                                            </g>
                                        </g>
                                    </g>
                                </g>
                            </svg>
										공고 바로가기
									</button>
								</div>
								<div class="slide type_qst">
									<span class="category">취준진담</span> <strong class="title"><span>34살
											신입으로 취업하는 건 이제 포기해야되나요?</span></strong> <span class="recom_category">
										<span>모든기업</span> <span>모든 직무</span> <span>2021.03.09작성</span>
									</span> <span class="recom_category"> <span>#신입</span>
									</span>
									<p class="question">할 수 있는 건 다 한것 같습니다.4년제 공대 졸업 후 빚이 너무
										있어서 학자금 대출 상환하고 집안 형편이 어려워 집안을 돕느라4~5년간 전공과 무관한 일을 하다가모두 빚을
										상환하고 모은돈으로 다시 전공공부를 했습니다.대학전공과 관련된 기사자격증 2개토익컴활 한능검 공기업인턴전공과
										관련된 실무를 쌓기위해 4개월간 학원도 다녓습니다그리고1월부터 현재까지 600곳이상의 회사를 지원했습니다.결과는
										모두다 광탈입니다면접은 총 20곳 정도 됫는데다 불합격됬습니다이제 뭘해야될지 모르겟습니다자살이 답일까요?</p>
									<button type="button" class="btn_link goto_qna"
										data-value="15009"
										onmousedown="loggingEventAndTagManager(['main', 'BIG_qna', 'qna', ''], ['ga_lead', 'main', 'BIG_qna', 'qna'])">
										<svg xmlns="http://www.w3.org/2000/svg"
											xmlns:xlink="http://www.w3.org/1999/xlink" width="19px"
											height="19px" viewBox="0 0 19 19" version="1.1" class="ic">
                                <title>ico_answer</title>
                                <g id="0806" stroke="none"
												stroke-width="1" fill="none" fill-rule="evenodd">
                                    <g
												transform="translate(-421.000000, -490.000000)">
                                        <g
												transform="translate(328.000000, 192.000000)">
                                            <g
												transform="translate(32.000000, 288.000000)">
                                                <g
												transform="translate(61.000000, 10.000000)">
                                                    <image x="0" y="0"
												width="19" height="19"
												xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABMAAAATCAYAAAByUDbMAAAABGdBTUEAALGOfPtRkwAAAERlWElmTU0AKgAAAAgAAYdpAAQAAAABAAAAGgAAAAAAA6ABAAMAAAABAAEAAKACAAQAAAABAAAAE6ADAAQAAAABAAAAEwAAAAAgb1CmAAADN0lEQVQ4EYVUS0tbYRCd5MY8jIkm1b6wkSi1iotSKm0pCBIo7cJVf0F3dpX+BemupRRcdNGuCm6sYsFNNkViMRBQKkqKWEuiRkJioqZG8zKP23NuvSK22g8m3813Z86cOTPfNciZNTExYcaRx2Qy3bfZbD0NDQ3XDAaDvV6vF6vVaqpUKq1VKpX5tra22ODgYBnvVB3CoD+MjIyY+vv7ewDworW19Smc3Y2NjWI2m8VoNArABCACMNnd3c3t7Ox8OTo6Gl1ZWZn3+/1lHUdUVVWmp6efhMPhOBxVBOHo/AVgdX9/X11eXi7MzMw8RzU2gpn4MzU1dQdMPnR1dd1obm4WRVF4fO5CaeJwOMTr9dqQchTJM9g/K8Fg0Iqo1wB6SCCLxSJ0/t+iDw0yKGDpRbmfjIlE4iayPLLb7QLRNQxkYel/GXU7fU5nNEhA4m6xWBwwsmtOp9NNRgSjs55VZ6jvp9/xmYuSoFFG7Pf4c4sdYwa+YODe3p4sLCwIOibIKIuLi9oZAZaWlmR9fV1qtZrWZXaaJDAFHUZQdzPDaTZ0Hhsbk2g0KtBDxsfHJR6PC+aMzZJQKKSNiR5DQCynMjQ09KClpWUApmWgQ1NTk/T19YnH49G61t3dLe3t7VpzOjs7pbe3VyCNJglnL5fLSTqd/mbK5/ORbDYrBwcHWqksmY40LoqOTp8ITzD9nEwxuFIoFGibJkx0CB3ddLvdHWwCF7Whfvqz3kWyplZ8z523gSQymUwNYGEFbc0DyI5gH5tAZgxiAI1AZ01ndHh4SCA25CvA3ygYNhV38gf+XIHdpuOxoJrI/H/WWBoZpVIpQXwUTfIPDw//1GqZm5vL+3y+7xiDx6B7iRpQWL0cBpfLZW1MyIYjE4vFZHV1NYgx8qMB4dnZWfXPyEMc3M0MGPyiFslkUra3tysoew1WhwRulG4AaAUNyyJZBOABPIfwtUlQZup7AoYrddVqtXYQbGtrq4SvxzuXy/UKYAawdIAlb0sJJZWQrByJRApgUyWIvjSwQCBgAatnuBaXMajwTb4EyEd8p0rHjmk94KJdA4MOLpRwfWNj4y1Yvccem5ycrF0U+K93vwFtX0aHbXi7swAAAABJRU5ErkJggg=="></image>
                                                </g>
                                            </g>
                                        </g>
                                    </g>
                                </g>
                            </svg>
										답변 99건+ 보러가기
									</button>
								</div>
								<div class="slide type_event">
									<img
										src="https://www.saraminbanner.co.kr/new/main/2021/03/qq7cir_wudv-2so1qt_PC.png">
									<a
										href="https://www.saramin.co.kr/zf_user/jobs/theme/jump-it?t_ref=main&amp;t_ref_content=platinum_fix_expand&amp;inner_source=saramin&amp;inner_medium=banner&amp;inner_campaign=top_box_type_banner_person&amp;inner_term=jumpit"
										class="go_link" target="_blank"></a>
								</div>
								<div class="slide type_event slide_active">
									<img
										src="https://www.saraminbanner.co.kr/new/main/2021/03/qpqjor_pit8-2so1qt_A01.png">
									<a
										href="recuruitlist.do"
										class="go_link" target="_blank"></a>
								</div>
								
								
								
							</div>
							
						</div>
						<div class="recomm_content">
							<div class="wrap_box_news person">
								<div class="box_news person"
									style="width: 2232px; transform: translateX(-558px);">
									
									<div class="slide slide_active">
										<div class="item">
											<span class="title type_review">면접후기</span>
											<p class="desc">면접은 코로나때문에 비대면으로 실시됐습니다. 지원자 6에 면접관 5였던걸로
												기억합니다. 면접은 인성과 끈기, 가치관 위주로 물어봤습니다. 저한테만 상이한 질문하여서 합격했다는 느낌을
												받았습니다. 상이한 질문은 저한테만 사는곳이 여긴데 어디서도 근무가능하냐는 질문이었습니다.</p>
											<span class="hashtag"><span>#직무·인성 면접</span></span> <span
												class="wrap_thumb"> <img
												src="//www.saraminimage.co.kr/sri/main/thumb/interview_6.jpg"
												alt="면접후기 이미지" class="thumb">
											</span> <a
												href="jobtalklist.do"
												class="link"
												onmousedown="loggingEventAndTagManager(['main', 'CONTENTS', 'interview-review', ''], ['ga_lead', 'main', 'CONTENTS', 'interview-review'])"></a>
										</div>
										<div class="item">
											<span class="title type_interview">직무인터뷰</span>
											<p class="desc">진정성을 바탕으로 소통하는 채용 컨설턴트</p>
											<span class="hashtag"><span>#로버트월터스코리아</span></span> <span
												class="wrap_thumb"> <img
												src="https://pds.saramin.co.kr/career-information/asset_thumbnail/202105/25/qtndz8_b5sd-2so1r1_asset.jpg"
												alt="직무인터뷰 이미지" class="thumb">
											</span> <a
												href="https://www.robertwalters.co.kr/"
												class="link"
												onmousedown="loggingEventAndTagManager(['main', 'CONTENTS', 'job-interview', ''], ['ga_lead', 'main', 'CONTENTS', 'job-interview'])"></a>
										</div>
										<div class="item">
											<span class="title type_live">취업뉴스</span>
											<p class="desc">사람인HR, (주)두산과 함께 중소기업 채용 돕는다</p>
											<span class="wrap_thumb"> <img
												src="//www.saraminimage.co.kr/sri/main/thumb/new_p_6.jpg"
												alt="취업뉴스 이미지" class="thumb">
											</span> <a
												href="https://www.saramin.co.kr/zf_user/help/live/view?idx=108297&listType=news"
												class="link"
												onmousedown="loggingEventAndTagManager(['main', 'CONTENTS', 'job-news', ''], ['ga_lead', 'main', 'CONTENTS', 'job-news'])"></a>
										</div>
										<div class="item">
											<span class="title type_curation">기업큐레이션</span>
											<p class="desc">일하기 좋은in경기도</p>
											<span class="hashtag"><span>#(주)고운세상코스메틱
													#(주)아프리카티비</span></span> <span class="wrap_thumb"> <img
												src="//www.saraminimage.co.kr/sri/main/thumb/cu_6.jpg"
												alt="기업큐레이션 이미지" class="thumb">
											</span> <a href="https://www.saramin.co.kr/zf_user/company-info/sri-certification?seq=995"
												class="link"
												onmousedown="loggingEventAndTagManager(['main', 'CONTENTS', 'certification', ''], ['ga_lead', 'main', 'CONTENTS', 'certification'])"></a>
										</div>
									</div>
									
									<div class="slide">
                              <div class="item">
                                 <span class="title type_review">홍보대사</span>
                                 <p class="desc">광고계의 블루칩으로 떠오른 배우 송중기. 일하라 홍보대사로 선정</p>
                                 <span class="hashtag"><span>#빈센조·송중기 일하라</span></span> <span
                                    class="wrap_thumb"> <img
                                    src="songpic.png"
                                    alt="면접후기 이미지" class="thumb">
                                 </span> <a
                                    href="#"
                                    class="link"
                                    onmousedown="loggingEventAndTagManager(['main', 'CONTENTS', 'interview-review', ''], ['ga_lead', 'main', 'CONTENTS', 'interview-review'])"></a>
                              </div>
                              <div class="item">
                                 <span class="title type_interview">6월 이벤트</span>
                                 <p class="desc">취업자추첨 BTS공연 초대 이벤트</p>
                                 <span class="hashtag"><span>#런던 스타디움·일하라 Festival</span></span> <span
                                    class="wrap_thumb"> <img
                                    src="mainad7.png"
                                    alt="직무인터뷰 이미지" class="thumb">
                                 </span> <a
                                    href="mainad07.png"
                                    class="link"
                                    onmousedown="loggingEventAndTagManager(['main', 'CONTENTS', 'job-interview', ''], ['ga_lead', 'main', 'CONTENTS', 'job-interview'])"></a>
                              </div>
                              <div class="item">
                                 <span class="title type_live">취업뉴스</span>
                                 <p class="desc">일하라, 구글코리아 함께 중소기업 채용 돕는다</p>
                                 <span class="wrap_thumb"> <img
                                    src="//www.saraminimage.co.kr/sri/main/thumb/new_p_6.jpg"
                                    alt="취업뉴스 이미지" class="thumb">
                                 </span> <a
                                    href="newslist.do"
                                    class="link"
                                    onmousedown="loggingEventAndTagManager(['main', 'CONTENTS', 'job-news', ''], ['ga_lead', 'main', 'CONTENTS', 'job-news'])"></a>
                              </div>
                              <div class="item">
                                 <span class="title type_curation">취업정보공유</span>
                                 <p class="desc">일하라 취업 Talk</p>
                                 <span class="hashtag"><span>#(주)오라클코리아
                                       #(주)비트캠프</span></span> <span class="wrap_thumb"> <img
                                    src="//www.saraminimage.co.kr/sri/main/thumb/cu_6.jpg"
                                    alt="기업큐레이션 이미지" class="thumb">
                                 </span> <a href="Jobtalklist.do"
                                    class="link"
                                    onmousedown="loggingEventAndTagManager(['main', 'CONTENTS', 'certification', ''], ['ga_lead', 'main', 'CONTENTS', 'certification'])"></a>
                              </div>
                              <div class="item">
                              <img src="ma.jpg"/>
                              </div>
                           </div>
								</div>
								<div class="wrap_slide_btns" style="display: block">
									<button type="button" class="btn_slide btn_prev">
										<svg xmlns="http://www.w3.org/2000/svg" width="6" height="10"
											viewBox="0 0 6 10" class="btn">
                                <g fill="none" fill-rule="evenodd">
                                    <path fill-rule="nonzero"
												d="M0 0L6 0 6 10 0 10z"></path>
                                    <path stroke="#9398AA"
												stroke-width="1.2" d="M-1 3L3 7 7 3"
												transform="rotate(90 3 5)" class="change"></path>
                                </g>
                            </svg>
									</button>
									<button type="button" class="btn_slide btn_next">
										<svg xmlns="http://www.w3.org/2000/svg" width="6" height="10"
											viewBox="0 0 6 10" class="btn">
                                <g fill="none" fill-rule="evenodd">
                                    <path fill-rule="nonzero"
												d="M0 0L6 0 6 10 0 10z"></path>
                                    <path stroke="#9398AA"
												stroke-width="1.2" d="M-1 3L3 7 7 3"
												transform="matrix(0 1 1 0 -2 2)" class="change"></path>
                                </g>
                            </svg>
									</button>
								</div>
							</div>
						</div>
					</div>
					
					<div class="wrap_my_area">
						<div class="top_login" style="display: block;padding-left: 100px;">
							<!-- <input type="hidden" id="top_login_tab" name="top_login_tab"
								value="p"> -->
							<ul style="margin-left: 0px;">
								<li>
									<c:choose>
										<c:when test="${login.memberid ne null }">
											<c:choose>
												<c:when test="${login.auth == 1}">
													<p>
														<b>[개인🧑]${login.name }</b>님 Hi!
													</p>
												</c:when>
												<c:when test="${login.auth == 2}">
													<p>
														<b>[사원👨‍💼]${login.name }</b>님 Hi!
													</p>
												</c:when>
												<c:otherwise>
													<p>
														<b>[관리자👨‍✈️]${login.name }</b>님 Hi!
													</p>
												</c:otherwise>
											</c:choose>
										</c:when>
									</c:choose>
								</li>
							</ul>
							<!--  -->
							<c:choose>
								<c:when test="${empty login}">
									<ul class="area_login" style="display: contents;">
										<li class="on" style="width: 160.994318px;">
											<button type="button"id="login_tab_person_login" class="track_event"onclick="loginpage()" data-track_event="login|pc_main_per|tab_per">
												<strong style="padding-right: 20px;">로그인</strong>
											</button>
										</li>
									</ul>
								</c:when>
								<c:otherwise>
									<c:choose>
										<c:when test="${login.auth==1 || login.auth==3}">
											<ul class="area_login" style="margin-left: 0px;">
												<li class="on">
													<button type="button" id="login_tab_person_logout"
														class="track_event" onclick="logout()"
														data-track_event="login|pc_main_per|tab_per">
														<strong>로그아웃</strong>
													</button>
												</li>
											</ul>
										</c:when>
										<c:otherwise>
											<ul class="area_login" style="margin-left: 0px;">
												<li class="on">
													<button type="button"
														id="login_tab_business" class="track_event"
														data-track_event="login|pc_main_per|tab_per">
														<strong>로그아웃</strong>
													</button>
												</li>
											</ul>
										</c:otherwise>
									</c:choose>
								</c:otherwise>
							</c:choose>
							<c:if test="${login.memberid == null }">
							<!-- 	<a href="searchidpwd.do" class="link_id_password track_event" data-track_event="login|pc_main_per|find|">아이디/비번찾기</a> -->
								<a href="regiclick.do" class="link_join track_event" data-track_event="login|pc_main_per|join|">회원가입</a>
							</c:if>
						</div>
						<div class="area_recom recruit_card" style="display: block">
							<div class="top">
								<strong class="sub_title">당신의 최고의 취업멘토 '일하라'</strong>

							</div>


							<div class="list_recom">

							
							<div style="width:317px; height:190px;">
								<a href="hiddengame.do"><img src="m3.gif" style="width:317px;height:190px;padding-top: 15px;border-left-width: 15px;padding-left: 15px;border-right-width: 15px;padding-bottom: 15px;padding-right: 15px;"/></a>
							</div>

							</div>



						</div>
						
						<div class="wrap_float_login" style="display: none">
							<form name="login_frm" id="login_frm" method="post"
								action="https://www.saramin.co.kr/zf_user/auth/login">
								<input type="hidden" id="url" name="url" value="/zf_user/">
								<input type="hidden" id="seq" name="seq" value="0"> <input
									type="hidden" id="encid" name="encid" value=""> <input
									type="hidden" id="encpw" name="encpw" value=""> <input
									type="hidden" id="login_tab" name="login_tab" value="p">
								<fieldset>
									<ul class="btn_logins">
										<li class="on"><button type="button"
												id="login_layer_tab_person" onclick="loginpage()"
												class="track_event"
												data-track_event="login|pc_main_per|tab_per">로그인</button></li>
									</ul>
									<div class="area_login">
										
										<div class="login_input person" style="display: block;">
											<strong class="blind">개인회원 로그인</strong> <span
												class="box_typo id"><label for="login_person_id"
												class="blind">아이디</label><input type="text" name="id"
												id="login_person_id" class="inpTypo" value=""
												placeholder="아이디" title="아이디 입력"></span> <span
												class="box_typo password"><label
												for="login_person_pwd" class="blind">비밀번호</label><input
												type="password" name="password" id="login_person_pwd"
												class="inpTypo" placeholder="비밀번호" title="비밀번호 입력"></span>
										</div>
										<div class="login_input company" style="display: none;">
											<strong class="blind">기업회원 로그인</strong> <span
												class="box_typo id"></span> <span class="box_typo password"></span>
										</div>
										<div class="login_etc">
											<button type="submit"
												class="btn_login track_event log_fb_pixel_login tag_manager"
												data-track_event="login|pc_main_per|login|">로그인</button>
											<span class="inpChk small"> <input type="checkbox"
												name="autologin" id="autoLogin"> <label
												for="autoLogin" class="lbl autologin"
												data-track_event="login|pc_main_per|auto_login|">로그인
													유지</label>
											</span> <span class="inpChk small"> <input type="checkbox"
												name="id_save" id="id_save"> <label for="id_save"
												class="lbl track_event"
												data-track_event="login|pc_main_per|id_save|">아이디 저장</label>
											</span> <span class="txt_safety"> <input type="checkbox"
												name="ssl_login" id="ssl_login" checked="checked"
												class="inp_safety track_event"
												data-track_event="login|pc_main_per|security|OFF"> <label
												for="ssl_login" class="lab_safety">&nbsp;보안</label>
											</span> <a href="/zf_user/applicant/rater/login-form"
												class="link_rater track_event" data-track_event=""
												style="display: none;">협업자 로그인</a>
										</div>
										<div class="wrap_join_find">
											<a href="regiclick.do" onclick="return false;"
												class="link_join login_layer_link_join track_event"
												data-track_event="login|pc_main_per|join|">회원가입</a> <a
												href="searchidpw.do"
												class="link_id_password login_layer_link_id_password track_event"
												data-track_event="login|pc_main_per|find|">아이디/비번찾기</a>
										</div>
										<button type="button" class="btn_layer_close">
											<span class="blind">닫기</span>
										</button>
									</div>
								</fieldset>
							</form>
						</div>
						
					</div>
					
					
				</div>
			</div>
<div id="section_contents" class="cont_top" style="
    height: 430px;
">
    <div class="inner" style="
    height: 300px;
">
      
        <div class="wrap_recomm loading" style="display : block">
            <div class="wrap_bigbox person" style="
    width: 400px;">
    	<div class="panel-heading" style="width: 400px; color: white; background-color: #2186EB;">
		                    <h3 class="panel-title">
		                        <span class="glyphicon glyphicon-bookmark"></span> 인기기업 TOP 5</h3>
		                </div>
            <div id="jquery-accordion-menu" class="jquery-accordion-menu">

            		<ul>
            <c:forEach var="hot" items="${hot10}" varStatus="status">
            	<li><a href="companydetail.do?companyid='${hot.companyId}'" style="font-size: 12pt;">&nbsp;&nbsp;&nbsp;${hot.companyname}</a><span class="jquery-accordion-menu-label">${status.count}</span>
            </c:forEach>
					</ul>

				</div>
			</div>
            <div class="recomm_content" style="
    padding-top: 0px;
    padding-left: 0px;
    width: 400px;">
            <div id="carouselSample" class="carousel slide" data-ride="carousel">
			    <!-- indicator(이동할 수 있는 바) -->
			    <ol class="carousel-indicators">
			        <li data-target="#carouselSample" data-slide-to="0" class="">
			        </li><li data-target="#carouselSample" data-slide-to="1" class="">
			        </li></ol>
			    <div class="carousel-inner">
			        <!-- first slide -->
			        <div class="carousel-item">
			            <img alt="first" class="d-block w-100" src="/sample10/image/bm.png" height="300px" width="200px">
			            <!-- caption -->
			            <div class="carousel-caption d-none d-md-block">
			            </div>
			        </div>
			        <!-- second slide -->
			        <div class="carousel-item active">
			            <img alt="second" class="d-block w-100" src="/sample10/image/dg.png" height="300px" width="200px" style="
    margin-left: 10px;
">
			            <!-- caption -->
			            <div class="carousel-caption d-none d-md-block">
			            </div>
			        </div>
			        <!-- third slide -->
			        <div class="carousel-item active">
			            <!-- caption -->
			            <div class="carousel-caption d-none d-md-block">
			            </div>
			        </div>
			        <!-- controller 부분 -->
			        <a class="carousel-control-prev" href="#carouselSample" role="button" data-slide="prev">
			            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
			            <span class="sr-only">앞으로</span>
			        </a>
			        <a class="carousel-control-next" href="#carouselSample" role="button" data-slide="next">
			            <span class="carousel-control-next-icon" aria-hidden="true"></span>
			            <span class="sr-only">다음으로</span>
			        </a>
			    </div>
			</div>
		</div>
      </div>
      <div class="wrap_recomm company" style="display : none">
          <div class="wrap_bigbox company">
              <div class="bigbox company" style="width: 1595px; transform: translateX(-957px); transition: all 300ms ease 0s;">
                  <div class="slide type_hr">
                      <img src="https://www.saraminbanner.co.kr/new/main/2020/08/qevl7q_6psk-1meg1l1_banner3.png">
                      <a href="http://www.saramin.co.kr/zf_user/memcom/preview/guide?page_type=verify&amp;inner_source=saramin&amp;inner_medium=banner&amp;inner_campaign=top_box_type_banner_company&amp;inner_term=preview" class="go_link" target=""></a>
                  </div>
                    <div class="slide type_rec_write">
                        <svg xmlns="http://www.w3.org/2000/svg" width="44" height="45" viewBox="0 0 44 45" class="ic_write">
                            <g fill="none" fill-rule="evenodd" opacity=".7">
                                <path fill="#FFF" fill-rule="nonzero" d="M16 5v2H2v35h35V26h2v18H0V5h16z" transform="translate(0 1)"></path>
                                <path stroke="#FFF" stroke-linecap="round" stroke-width="2" d="M38.828 1.828l2.344 2.344c1.562 1.562 1.562 4.094 0 5.656L18 33h-8v-8L33.172 1.828c1.562-1.562 4.094-1.562 5.656 0zM30 5l8 8" transform="translate(0 1)"></path>
                            </g>
                        </svg>
									<p class="desc1">
										구직자의 입사지원은 물론,<br>맞춤형 인재추천까지!
									</p>
									<p class="desc2">
										지금!<br>채용공고를 등록하세요!
									</p>
									<button type="button" class="btn_link"
										onclick="document.location.href='/zf_user/recruit-manage';"
										onmousedown="">채용공고 등록하기</button>
								</div>
								<div class="slide type_hr">
									<img
										src="https://www.saraminbanner.co.kr/new/main/2020/09/qhel6d_eyqc-2so1qt_032.png">
									<a
										href="http://www.saramin.co.kr/zf_user/memcom/talent-pool/main/recommend?inner_source=saramin&amp;inner_medium=banner&amp;inner_campaign=top_box_type_banner_company&amp;inner_term=new_talent-pool"
										class="go_link" target="_blank"></a>
								</div>
								<div class="slide type_hr slide_active">
									<img
										src="https://www.saraminbanner.co.kr/new/main/2020/08/qevl7q_6psk-1meg1l1_banner3.png">
									<a
										href="http://www.saramin.co.kr/zf_user/memcom/preview/guide?page_type=verify&amp;inner_source=saramin&amp;inner_medium=banner&amp;inner_campaign=top_box_type_banner_company&amp;inner_term=preview"
										class="go_link" target=""></a>
								</div>
								<div class="slide type_rec_write">
									<svg xmlns="http://www.w3.org/2000/svg" width="44" height="45"
										viewBox="0 0 44 45" class="ic_write">
                            <g fill="none" fill-rule="evenodd"
											opacity=".7">
                                <path fill="#FFF" fill-rule="nonzero"
											d="M16 5v2H2v35h35V26h2v18H0V5h16z"
											transform="translate(0 1)"></path>
                                <path stroke="#FFF"
											stroke-linecap="round" stroke-width="2"
											d="M38.828 1.828l2.344 2.344c1.562 1.562 1.562 4.094 0 5.656L18 33h-8v-8L33.172 1.828c1.562-1.562 4.094-1.562 5.656 0zM30 5l8 8"
											transform="translate(0 1)"></path>
                            </g>
                        </svg>
									<p class="desc1">
										구직자의 입사지원은 물론,<br>맞춤형 인재추천까지!
									</p>
									<p class="desc2">
										지금!<br>채용공고를 등록하세요!
									</p>
									<button type="button" class="btn_link"
										onclick="document.location.href='/zf_user/recruit-manage';"
										onmousedown="">채용공고 등록하기</button>
								</div>
							</div>
							<div class="wrap_slide_btns company" style="display: block">
								<div class="pager company">
									<button type="button" class="pager_item" data-index="0">1</button>
									<button type="button" class="pager_item" data-index="1">1</button>
									<button type="button" class="pager_item active" data-index="2">1</button>
								</div>
								<div class="controll_auto play">
									<button type="button" class="btn_play">
										<svg width="6px" height="8px" viewBox="0 0 6 8" version="1.1"
											xmlns="http://www.w3.org/2000/svg"
											xmlns:xlink="http://www.w3.org/1999/xlink" class="btn">
                                <title>슬라이드 시작 버튼</title>
                                <g stroke="none" stroke-width="1"
												fill="none" fill-rule="evenodd">
                                    <g
												transform="translate(-615.000000, -535.000000)"
												fill="#FFFFFF">
                                        <g
												transform="translate(330.000000, 192.000000)">
                                            <g
												transform="translate(229.000000, 343.000000)">
                                                <g
												transform="translate(56.000000, 0.000000)">
                                                    <polygon
												points="0 5.69266856e-14 0 8 6 4"></polygon>
                                                </g>
                                            </g>
                                        </g>
                                    </g>
                                </g>
                            </svg>
									</button>
									<button type="button" class="btn_pause">
										<svg width="6px" height="6px" viewBox="0 0 6 6" version="1.1"
											xmlns="http://www.w3.org/2000/svg"
											xmlns:xlink="http://www.w3.org/1999/xlink" class="btn">
                                <title>슬라이드 정지 버튼</title>
                                <g stroke="none" stroke-width="1"
												fill="none" fill-rule="evenodd">
                                    <g
												transform="translate(-615.000000, -536.000000)"
												fill="#FFFFFF" fill-rule="nonzero">
                                        <g
												transform="translate(330.000000, 192.000000)">
                                            <g
												transform="translate(229.000000, 344.000000)">
                                                <g
												transform="translate(56.000000, 0.000000)">
                                                    <rect x="0" y="0"
												width="1.5" height="6"></rect>
                                                    <rect x="4.5" y="0"
												width="1.5" height="6"></rect>
                                                </g>
                                            </g>
                                        </g>
                                    </g>
                                </g>
                            </svg>
                        </button>
                    </div>
                </div>
            </div>
            
        </div>
        <div class="wrap_my_area" style="width: 401px;">
           <div class="row" style="width: 450px;">
              <div>
                 <div class="panel panel-primary" style="margin-bottom: 0px;height: 302px;width: 442px;margin-left: 20px;">
                      <div class="panel-heading" style="width: 440px;">
                          <h3 class="panel-title">
                              <span class="glyphicon glyphicon-bookmark"></span> 바로가기 🚀 </h3>
                      </div>
                      
                      <div class="panel-body" style="padding-left: 0px;padding-right: 0px;">
                          <div class="row" style="width: 450px;margin-right: 0px;margin-left: 0px;">
                              <div style="padding-left: 0px;width: 450px;">
                                <a href="recuruitlist.do" class="btn btn-light btn-lg" role="button" style="
    width: 142px;
"><span class="glyphicon glyphicon-bookmark"></span> <br>채용정보</a>
                                <a href="newslist.do" class="btn btn-light btn-lg" role="button" style="
    width: 142px;
"><span class="glyphicon glyphicon-list-alt"></span> <br>오늘의 뉴스</a>
                              <a href="Jobtalklist.do" class="btn btn-light btn-lg" role="button" style="
    width: 142px;
"><span class="glyphicon glyphicon-comment"></span> <br>취업톡톡</a></div>
                              
                              
                          <div style="padding-left: 0px;width: 450px;">
                                <a href="pdslist.do" class="btn btn-light btn-lg" role="button" style="
    width: 142px;
"><span class="glyphicon glyphicon-file"></span> <br>자료실</a>
                                <a href="calendarlist1.do" class="btn btn-light btn-lg" role="button" style="
    width: 142px;
"><span class="glyphicon glyphicon-user"></span> <br>이력서</a>
                              <a href="Jobtalklist.do" class="btn btn-light btn-lg" role="button" style="
    width: 142px;
"><span class="glyphicon glyphicon-picture"></span> <br>공채달력</a></div><div style="padding-left: 0px;width: 450px;">
                                <a href="notice.do" class="btn btn-light btn-lg" role="button" style="
    width: 142px;
"><span class="glyphicon glyphicon-tag"></span> <br>공지사항</a>
                                <a href="FAQ.do" class="btn btn-light btn-lg" role="button" style="
    width: 142px;
"><span class="glyphicon glyphicon-list-alt"></span> <br>FAQ</a>
                              <a href="info
                              .do" class="btn btn-light btn-lg" role="button" style="
    width: 142px;
"><span class="glyphicon glyphicon-comment"></span> <br>일하라는?</a></div></div>



<!--  -->
<div style="width:440px;height:90px;border-style: solid;padding-top:10px;background-color: #2186eb;margin-top: 10px;">

</div>
<!--  -->


                      </div> 
                  </div>
              </div>
          </div>
       </div>
    </div>
    </div>
    
    
    
<script type="text/javascript">
	$(".close").click(function(){
	 	 $('.outside').toggleClass('in');
	 	 $('.bar').toggleClass('active');
	 	 $(this).toggleClass('is-showing');
	});
</script>
		

		
							
					<br><br><br>
		
		
		<!-- Jobs -->
						<div style="text-align: center;"><h2>🏆프리미엄 채용관🏆</h2></div>
							<section class="tiles" style="margin-left: 300px;margin-right: 300px;">
								<c:forEach var="dto" items="${list}">

							    	<%-- <c:out value="${dto.title}" /> --%>
								<article class="style2">
										<span class="image">
											<img src="upload/${dto.newfilename}" alt="디폴트이미지" width="20%" height="300px" >
										</span>
										<%-- <a href="'RecruitDetail.do?jobseq="+${dto.jobSeq}+"&memberid="+${dto.companyId}+"'"> --%>
										<a href= "RecruitDetail.do?jobseq=${dto.jobSeq}&memberid='${dto.companyId}'">
											<h5>${dto.companyname}</h5><br>
											<h2>${dto.jobTitle}</h2>

											<c:choose>
												<c:when test="${dto.salary == 0} ">
													<p><strong>💰연봉 회사내규에 따름</strong></p>
												</c:when>
												<c:when test="">
													<p><strong>💰연봉 면접후 결정</strong></p>
												</c:when>
												<c:otherwise>
													<p><strong>💰연봉 ${dto.salary}</strong></p>
												</c:otherwise>


											</c:choose>


											<p>
			                                	<i class="fa fa-calendar"></i> ${dto.jobEnd } &nbsp;&nbsp;&nbsp;&nbsp;

	                                         	<i class="fa fa-map-marker"></i> ${dto.area1Name }&nbsp;&nbsp;${dto.area2Name }
											</p>
										</a>
									</article>
								</c:forEach>
							</section>
						</div>




		<br><br>
		
		
		<div style="text-align: center;"><h2>🌟인기공고🌟</h2></div>
		
		<div class="py-5">
    <div class="container">
      <div class="row"><br>
      <div class="col-md-12">
         <table class="table table-hover col-sm-12" style="" id="HOT10">
         <col width="5%"><col width="10%"><col width="30%"><col width="13%">
         <col width="7%"><col width="10%"><col width="25%">
            <thead class="thead-dark">
               <tr>
                  <th></th>

                  <th>회사명</th>
                  <th>공고제목</th>
                  <th>지원자격(학력·경력)</th>
                  <th>채용인원</th>
                  <th>근무조건</th>
                  <th>마감일·등록일</th>
               </tr>
            </thead>
         </table>
         <p></p>
       </div>
      </div>
    </div>
  </div>


	<!-- column2 end -->
	<br class="clear">
	<!-- FOOTER -->
	<div id="footer" style="margin-top:100px;">
		<div class="top-area">
			<div class="inner-wrap">
				<div class="link">
					<a href="#1" class="bg-logo-ei"
						onclick="fn_moelToken('https://www.ei.go.kr/ei/eih/cm/hm/main.do');">고용보험</a>
					<a href="#2" class="bg-logo-hrd"
						onclick="fn_moelToken('http://www.hrd.go.kr');">직업훈련포털 HRD-Net</a>
				</div>
				<div class="right">
					<div class="link-select">
						<button type="button" class="btn-link-open">패밀리 및 유관기관
							사이트</button>
					</div>
				</div>
			</div>
		</div>
		<div class="familySite-area" style="display: block;">
			<ul>
				<li><strong>패밀리사이트</strong> <a
					href="/empInfo/empInfoSrch/list/retriveWorkRegionEmpIntroList.do"
					title="새창 열림" target="_blank">지역워크넷</a> <a
					href="/ilmoa/jobSearch/retrieveIlmoaJobDetailSearchByMain.do"
					title="새창 열림" target="_blank">정부지원일자리</a> <a href="#1"
					title="새창 열림" onclick="f_moveUrl('EI')">고용보험</a> <a href="#2"
					title="새창 열림" onclick="f_moveUrl('HRD')">직업능력개발훈련</a> <a href="#3"
					title="새창 열림" onclick="f_moveUrl('WT')">장애인고용포털</a> <a
					href="http://www.eps.go.kr" title="새창 열림" target="_blank">외국인고용</a>
					<a href="#4" title="새창 열림" onclick="f_moveUrl('CM')">사이버진로교육센터</a>
				</li>
				<li><strong>정부기관</strong> <a href="http://www.moel.go.kr"
					title="새창 열림" target="_blank">고용노동부</a> <a
					href="http://www.moef.go.kr" title="새창 열림" target="_blank">기획재정부</a>
					<a href="http://www.moe.go.kr" title="새창 열림" target="_blank">교육부</a>
					<a href="http://www.msit.go.kr" title="새창 열림" target="_blank">과학기술정보통신부</a>
					<a href="http://www.mofa.go.kr" title="새창 열림" target="_blank">외교부</a>
					<a href="http://www.unikorea.go.kr" title="새창 열림" target="_blank">통일부</a>
					<a href="http://www.moj.go.kr" title="새창 열림" target="_blank">법무부</a>
					<a href="http://www.mnd.go.kr" title="새창 열림" target="_blank">국방부</a>
					<a href="http://www.mois.go.kr" title="새창 열림" target="_blank">행정안전부</a>
					<a href="http://www.mcst.go.kr" title="새창 열림" target="_blank">문화체육관광부</a>
					<a href="http://www.mafra.go.kr" title="새창 열림" target="_blank">농림축산식품부</a>
					<a href="http://www.motie.go.kr" title="새창 열림" target="_blank">산업통상자원부</a>
					<a href="http://www.mohw.go.kr" title="새창 열림" target="_blank">보건복지부</a>
					<a href="http://www.me.go.kr" title="새창 열림" target="_blank">환경부</a>
					<a href="http://www.mogef.go.kr" title="새창 열림" target="_blank">여성가족부</a>
					<a href="http://www.molit.go.kr" title="새창 열림" target="_blank">국토교통부</a>
					<a href="http://www.mof.go.kr" title="새창 열림" target="_blank">해양수산부</a>
					<a href="http://www.mpm.go.kr" title="새창 열림" target="_blank">인사혁신처</a>
					<a href="http://www.moleg.go.kr" title="새창 열림" target="_blank">법제처</a>
					<a href="http://www.mpva.go.kr" title="새창 열림" target="_blank">국가보훈처</a>
					<a href="http://www.mfds.go.kr" title="새창 열림" target="_blank">식품의약품안전처</a>
					<a href="http://www.ftc.go.kr" title="새창 열림" target="_blank">공정거래위원회</a>
					<a href="http://www.fsc.go.kr" title="새창 열림" target="_blank">금융위원회</a>
					<a href="http://www.acrc.go.kr" title="새창 열림" target="_blank">국민권익위원회</a>
					<a href="http://www.kcc.go.kr" title="새창 열림" target="_blank">방송통신위원회</a>
				</li>
				<li><strong>유관기관</strong> <a href="http://www.kcomwel.or.kr"
					title="새창 열림" target="_blank">근로복지공단</a> <a
					href="http://www.hrdkorea.or.kr" title="새창 열림" target="_blank">한국산업인력공단</a>
					<a href="http://www.kosha.or.kr" title="새창 열림" target="_blank">안전보건공단</a>
					<a href="http://www.kead.or.kr" title="새창 열림" target="_blank">장애인고용공단</a>
					<a href="http://www.socialenterprise.or.kr" title="새창 열림"
					target="_blank">한국사회적기업진흥원</a> <a href="http://www.kopo.ac.kr"
					title="새창 열림" target="_blank">한국폴리텍대학</a> <a
					href="http://www.koreatech.ac.kr" title="새창 열림" target="_blank">한국기술교육대학교</a>
					<a href="http://www.kli.re.kr" title="새창 열림" target="_blank">한국노동연구원</a>
					<!-- <a href="http://news.joins.com/retirement?cloc=joongang|home|subsection5" title="새창 열림" target="_blank">중앙일보 반퇴시대 </a> -->
				</li>
			</ul>
		</div>
		<!-- 푸터미들 -->
		<div class="middle-area">
			<div class="inner-wrap">
				<div class="link-footer">
					<a href="info.do">일하라 소개</a> <a href="infoyakgwan.do">이용약관</a> <a
						href="infomember.do"><b>개인정보처리방침</b></a> <a href="infoemail.do">이메일주소무단수집거부</a>
					<a href="infowebaccess.do">웹접근성정책</a> <a href="infocopyright.do">저작권정책
						및 제휴문의</a> <a href="infobanner.do">배너 가져가기</a>
				</div>
			</div>
		</div>
		<div class="bottom-area">
			<div class="inner-wrap">
				<div class="link-logo">
					<a href="http://www.moel.go.kr/" class="bg-logo-moel"
						target="_blank" title="새창 열림">고용노동부</a> <a
						href="http://www.keis.or.kr/" class="bg-logo-keis" target="_blank"
						title="새창 열림">한국고용정보원</a>
				</div>
				<div class="info">
					<address class="address">서울특별시 마포구 신수동 63-14 비트캠프 신촌센터</address>
					<p class="copy">
						Copyright © 2021 <span class="bg-txt-moel">고용노동부</span> <span
							class="bg-txt-keis">한국고용정보원</span> all rights reserved.
					</p>
					<p class="txt">일하라 이용문의 1haramaster@keis.or.kr 1577-7114(유료)</p>
				</div>
				<img src="./static/images/mainlogo.png" style="width: 130px;">
				<div class="etc">
					<a href="/images/useInfo/certification_kor2015.jpg" target="_blank"
						onclick="try { latte.getEvent(event).stop(); } catch (ex) {}; var remote = window.open('https://www.eprivacy.or.kr/front/certifiedSiteMark/certifiedSiteMarkPopup.do?certCmd=E&amp;certNum=2021-E-R001','EPRIVACY','width=527,height=720'); remote.focus(); return false;"
						title="새창"><img src="./static/images/brn-epriavcy.png"
						alt="개인정보보호우수사이트 인증서"></a> <a
						href="/html/wauMark2020_worknet.html"
						onclick="try { latte.getEvent(event).stop(); } catch (ex) {};window.open(this.href,'mark2020','width=605,height=850,scrollbars=no');return false;"
						title="새창" target="_blank" style="margin-top: -3px"><img
						src="./static/images/brn-wa-2019.png"
						alt="과학기술정보통신부 WEB ACCESSIBILITY 마크(웹 접근성 품질인증 마크)"></a>
				</div>
			</div>
		</div>
	</div>
	<!-- ==============FOOTER================= -->








	<script type="text/javascript" defer="defer">
//<![CDATA[
    $(window).load(function() {
        try {
            if (document != top.document) {
                fnFrameResize();
            }
        } catch(e){
            fnFrameResize();
        }
    });
//]]>
</script>
	<script type="text/javascript">
/* $("#_btnRegi").click(function () {
	location.href = "regiclick.do";
}); */
function login() {
	//alert('c');
	$("#login-modal").modal();
	$("#login-modal").removeClass("modal fade");
	$("#login-modal").addClass("modal");
}
/* 네비게이션고정 */
var nav = document.getElementsByClassName("navigation");
window.onscroll = function sticky() {
  if(window.pageYOffset > nav[0].offsetTop) {
    nav[0].classList.add("nav");
  } else {
    nav[0].classList.remove("nav");
  }
}
</script>

	<!-- End Channel Plugin -->
	<!-- 카카오 스크립트 -->
	<script type="text/javascript">
  function kakaoLogout() {
    if (!Kakao.Auth.getAccessToken()) {
      alert('Not logged in.')
      return
    }
    Kakao.Auth.logout(function() {
      alert('logout ok\naccess token -> ' + Kakao.Auth.getAccessToken())
    })
  }
</script>
<script>
<!-- d59485d594506fb0185f34b5e6b7b114 -->
<!-- 자바스크립트 key를 입력하여 초기화해줌 -->
Kakao.init('685fcbb766340d7c8812f4e0a29a6661');
function kakaoLogin() {
	//alert('카카오로그인실행');
    Kakao.Auth.login({
      scope:'profile, account_email, birthday',
      success: function(authObj) {
         //alert('success');
         console.log(authObj);
         Kakao.API.request({
            url: '/v2/user/me',
            success: res => {
               const kakao_account = res.kakao_account;
               console.log(kakao_account);
               let name = kakao_account.profile.nickname;
               let birth = kakao_account.birthday;
               let email = kakao_account.email
               $.ajax({
           		type:"post",
           		url:"kakalogAf.do",
           		data: {memberid: email, name:name , birth:birth},
           		success: function (data) {
           			$('#login-modal').modal('hide');
           			//alert('카카오 로그인성공');
           			location.reload();
           		},
           		error: function(){
           			alert("birth:" + birth);
           			alert('카카오 로그인 실패');
           		}
           	  })
            }
         });
      }
   });
}
function loginpage() {
	location.href="login1.do";
}

function logout() {
	location.href="logout.do";
}




getTop10List();

//인기 탑텐 가져오기
function getTop10List() {

  $.ajax({
       type : 'get',
       url : './getTop10List.do',
       error: function(xhr, status, error){
           alert("에러발생");
       },
       success:function(list){
			//alert('success');
			//alert(list);

			$(".list_col").remove();

			var memberid = '<c:out value="${login.memberid}"/>';
 			var auth = '<c:out value="${login.auth}"/>';

			$.each(list, function(i, val){

				var end = val.jobEnd;
 	 			var regdate = val.regdate;
 	 			end = end.substr(2,9);
 	 			regdate = regdate.substr(2,9);


				//alert(val.jobSeq);
				let app = "<tr class= 'list_col'>"
							+"<td>" + val.rnum +"</td>";

							if(val.del==0){

								"<td>"
								+ "<a href='companydetail.do?companyid=" + val.companyId  + "'>" + val.companyname+"</a>"
							    + "</td>"
								/* let empT = "";
								if(val.empType == 3){
									empT = "정규직";
								} */
								app +="<td>"
									+ "<a href='companydetail.do?companyid=" + val.companyId  + "'>" + val.companyname + "</a>"
									+ "</td>"
									+"<td style='text-align:left'>"
									//+ arrow(val.depth)
									+"<a href='RecruitDetail.do?jobseq=" + val.jobSeq +"&memberid="+memberid+"'>" + val.jobTitle+ "</a>"
									+"</td>"
									+"<td>" + val.eduname +"<br>"+val.career_Desc + "</td>"
									+"<td>" + val.jobVolumn + "</td>"
									+"<td>" + val.emp_name +"<br>"+ val.area1Name+" " + val.area2Name +"<br>"+val.salary+" 만원"+ "</td>"
									+"<td>" + end +"<br>"+regdate;

								if(val.companyId == memberid || auth == 3){
	 								app += "<input type='button' class='btn btn-primary' value='공고삭제' onClick='deleteRecruit("+val.jobSeq +")' >"
	 									}

	 								app += "</td>";

	 							}

	 							else{
	 								app += "<td style='text-align:left' colspan='6'>"
	 										+"<font color='#ff0000'>********* 이 글은 작성자에 의해서 삭제되었습니다</font>"
	 										+"</td>";
	 							}

	 							+"</tr>";

					$("#HOT10").append(app);
			});
		},
		error:function(){
			alert('error');
		}
   });

}




$("#btn_search_recruit").click(function() {
	
	$("#search_form_recruit").attr('action', 'url').submit();
	
	
});


</script>
	<div id="ch-plugin">
		<div id="ch-plugin-core">
			<style data-styled="active" data-styled-version="5.1.1"></style>
			<style data-styled="active" data-styled-version="5.1.1"></style>
			<div data-ch-testid="full-screen-push-message" hidden=""
				class="FullScreenPushMessagestyled__Wrapper-nxoc25-13 kkSXuR PushMessagestyled__PCPopupMessage-vqm8p7-1 gnkQzw"
				style="z-index: 100000000 !important;">
				<div
					class="FullScreenPushMessagestyled__MainWrapper-nxoc25-12 gNRDiC">
					<div
						class="FullScreenPushMessagestyled__SVGIconWrapper-nxoc25-0 kmAVFX">
						<div name="cancel" size="16" width="24" height="24"
							class="SVGIconstyled__SVGIcon-sc-15isf0b-0 cQJNXd"></div>
					</div>
					<div class="FullScreenPushMessagestyled__Header-nxoc25-7 bDhUju">
						<div
							class="FullScreenPushMessagestyled__AvatarWrapper-nxoc25-1 hDPlJg">
							<div size="24" radius="8px"
								class="Avatarstyled__Avatar-yfy5xq-0 jUtegZ"></div>
						</div>
						<div class="FullScreenPushMessagestyled__Name-nxoc25-3 idyZLa">(알
							수 없음)</div>
						<div
							class="FullScreenPushMessagestyled__HeaderContent-nxoc25-2 CmXCx">
							<div class="FullScreenPushMessagestyled__Time-nxoc25-6 hPulhM">9:00
								AM</div>
						</div>
					</div>
					<div class="FullScreenPushMessagestyled__Content-nxoc25-11 rXAbU">
						<div class="FullScreenPushMessagestyled__Text-nxoc25-8 hVIZBL"></div>
					</div>
				</div>
			</div>
			<div size="300" class="Screenstyled__Screen-sc-3ge3qf-0 gNcrUK"></div>
			<div data-ch-testid="launcher"
				class="Launcherstyled__Wrapper-oef45p-0 kyEsUG">
				<div class="Launcherstyled__TextLauncher-oef45p-1 lbMRR">
					<div
						class="Launcherstyled__TextLauncherContent-oef45p-2 cEtkaf textLauncherContent">채팅
						상담</div>
					<div
						class="Launcherstyled__TextLauncherIcon-oef45p-3 ldDAM textLauncherIcon">
						<div data-ch-testid="badge" hidden=""
							class="Badgestyled__Badge-sc-1ztqq4-0 Launcherstyled__Badge-oef45p-5 bZpFRQ">0</div>
					</div>
				</div>
			</div>
		</div>
		<div id="ch-plugin-script" style="display: none"
			class="ch-messenger-hidden">
			<iframe id="ch-plugin-script-iframe"
				style="position: relative !important; height: 100% !important; width: 100% !important; border: none !important;"></iframe>
		</div>
	</div>
	<style data-styled="active" data-styled-version="5.1.1"></style>
	
	
	
</body>
</html>
