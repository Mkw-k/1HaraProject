<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="csss/common.css" rel="stylesheet" type="text/css">
<link href="csss/contents.css" rel="stylesheet" type="text/css">
<link href="csss/reset.css" rel="stylesheet" type="text/css">

  <meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="_csrf_parameter" content="_csrf"><meta name="_csrf_header" content="X-CSRF-TOKEN"><meta name="_csrf" content="5557377e-0013-402c-90e5-0dad4d61305f">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="p3p" content="CP=&quot;CAO DSP AND SO &quot; policyref=&quot;/w3c/p3p.xml&quot;">
<meta http-equiv="imagetoolbar" content="no">
<meta name="robots" content="noindex,nofollow,noarchive">
<meta name="subject" content="#">
<meta name="author" content="#">
<meta name="keywords" content="#">
<meta name="selected-menu" content="0, 0, 0, 0">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- 제이쿼리 -->
<script src="//https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- 네비바 -->
<!-- carousel -->
<link rel="stylesheet" href="//https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  
<script src="//https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="//https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<!-- jQuery Modal -->
<script src="//https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet" href="//https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" /> 


  <!-- 검색 부트스트랩 -->
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>


 <!-- 전체 css -->
<link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
<script type="text/javascript" src="layout/scripts/jquery.min.js"></script>
<script type="text/javascript" src="layout/scripts/featured_slide.js"></script>

<!-- 부트스트랩 -->
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>


<link rel="shortcut icon" href="/images/common/ico/w_favicon.ico" type="image/x-icon">
<!-- TO_BE CSS.. -->
<link rel="stylesheet" href="static/css/import.css" media="all">
<!-- footer -->

<!-- 퀵메뉴 -->
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script> 

<!-- 랭킹 -->
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

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
/* main {flex: 1 1 100%;height:auto; background:white;} */
footer{flex: 1 1 100%;height:auto;text-align:center;background:white;}
.all {
    display: flex;
    flex-flow: row wrap;
    min-width: 100px;
    flex-direction: column;
}


/* 제목아래 라인 */
/* #homecontent h5 {
    border-bottom: 2px solid #eee;
    font-size: 14pt;
    text-align: center;
    padding: 5px 0 5px 0;
    font-family: inherit;
    background-color: #eee;
} */

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

/* 부트스트랩css */
@import url('https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css');
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

/* section .section-title {
    text-align: center;
    color: #000;
    margin-bottom: 50px;
    text-transform: uppercase;
} */

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
.panel-body .btn:not(.btn-block) { width:120px;margin-bottom:10px; }

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

#header, #topbar, #featured_slide, #homecontent, #breadcrumb, #copyright {
    display: flex;
    position: relative;
    margin: 0 auto;
    align-items: flex-start;
}

.panel-primary {
    border-color: #eee;
}

/* 랭킹css */
/* .content {
    width: 450px;
    margin: 0px auto;
} */

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

</style>
</head>
<body>


<div class="all">

<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
  <!-- Links -->
  
  
  <div>
	 <a href=""><img alt="" src="<%=request.getContextPath() %>/image/logo5.gif" height="80" width="160" style="float:left; padding-right: 20px"></a>
	</div>
  
  <ul class="navbar-nav">
<!-- Dropdown -->

	 <li class="nav-item">
            <c:choose>
            	<c:when test="${login.memberid ne null }">
            		<c:choose>
            			 <c:when test="${login.auth == 1}">
             				 <p><b>[개인]${login.name }</b>님</p>
             	 		 </c:when>	 
             			<%-- <%-- <c:when test="${login ne null }">
         				<p><b>${login.name }</b>님 반갑습니다. 사원으로 입장하셨습니다.</p>	
         				</c:when> --%>
             			<c:when test="${login.auth == 2}">
             				<p><b>[사원]${login.name }</b>님</p>
    					</c:when>
    					<c:otherwise>
             				<p><b>${login.name }</b>님</p>
    					</c:otherwise>
    				</c:choose>			
            	 </c:when> 
         	 </c:choose>  
    </li>

    <li class="nav-item dropdown" style="padding-top: 5px;">
     <div class="dropdown">
		  <button class="dropbtn" style="color:#2186eb; background-color: #fff;">전체보기</button>
		  <div class="dropdown-content">
		    <a href="#">채용공고</a>
		    <a href="#">기업정보</a>
		    <a href="jobtalk.do">취업톡톡</a>
		    <a href="#">공채달력</a>
		    <a href="#">자료실</a>
		    <a href="notice.do">공지사항</a>
		  </div>
		</div>
    </li>

    <li class="nav-item">
      <a class="nav-link bgc" href="recuruitlist.do" style="color:#2186eb">채용공고</a>
    </li>
    <li class="nav-item">
      <a class="nav-link bgc" href="#" style="color:#2186eb">기업정보</a>
    </li>
    <li class="nav-item">
      <a class="nav-link bgc" href="jobtalk.do" style="color:#2186eb">취업톡톡</a>
    </li>
    <li class="nav-item">
      <a class="nav-link bgc" href="#" style="color:#2186eb">공채달력</a>
    </li>
    <li class="nav-item">
      <a class="nav-link bgc" href="#" style="color:#2186eb">자료실</a>
    </li>
    <li class="nav-item">
      <a class="nav-link bgc" href="notice.do" style="color:#2186eb">공지사항</a>
    </li>





    
    <li class="nav-item">


     	 <a class="nav-link bgc" href="resumeMain.do" style="color: #2186eb;background-color: #fff;">이력서관리</a>

    </li>
    <li class="nav-item">

       <c:if test="${login.auth==3}">
          <a class="nav-link bgc" href="#" style="color: #2186eb;background-color: #fff;">회원관리</a> 
      </c:if>
   </li>
   <li class="nav-item">
      <c:if test="${login.memberid ne null}">   
         <a href="logout.do" class="nav-link bgc" style="color: #2186eb;background-color: #fff;"><i class="fa fa-user"></i>로그아웃</a>
      </c:if>   
   </li>
  </ul>
</nav>
<br>

  
</div>


<div class="container" id="container">
	<div class="inner-wrap no-lnb">
<div id="contents">

<section id="contents">

	<!-- 메뉴 Depth -->	
	<div class="tit-util">
		<h2 class="tit">회원가입 유형선택</h2>
			<span class="hide-location" id="navi_1">회원가입</span>
			<span class="hide-location" id="navi_2">회원가입 유형선택</span>		
		<div class="page-util">
			<!-- 기능 버튼 들어갈 예정 -->
		</div>
	</div>		
	
	<!-- 화면 -->
	<div class="login-top">
		<div class="login-head" style="background-image:url('bg-login.png')">
			<strong>개인회원과 기업회원 중 원하는 유형을 선택해주세요.</strong>
			<p class="min-txt">1hara는 개인회원과 기업회원 두 개의 유형으로 회원가입이 가능합니다.</p>
		</div>
		<div class="join-wrap bdb-no">
			<!-- 개인회원 -->
			<div class="join-form join-idv">
				<div class="join-area">
				<img src="img-join-ent.png">
					<a href="memberRegi.do" class="button blue">개인 회원가입</a>
				</div>
			</div>
			
			<!-- 기업회원 -->
			<div class="join-form join-ent">
				<div class="join-area">
				<img src="img-join-idv.png">
					<a href="businessRegi.do" class="button navy">기업 회원가입</a>
				</div>
			</div>
		</div>
		<div class="join-wrap bdt-no">
			<div class="join-form join-idv pd00">
				<div class="box-gray">
					<ul class="dot-list v1 v2" style="margin-left: 0px;">
						<li>최대 5개의 이력서 등록 및 관리</li>
						<li>맞춤 일자리정보 제공</li>
						<li>취업활동 증명서 발급</li>
						<li>채용공고 스크랩 기능 제공</li>
						<li>입사지원 시스템 제공</li>
						<li>생애경력설계 서비스(만 40세 이상)</li>
						<li>직업심리검사 서비스 무료 제공</li>
						<li>전직지원 서비스(만 40세 이상)</li>
					</ul>
				</div>
			</div>
			<div class="join-form join-ent pd00">
				<div class="box-gray">
					<ul class="dot-list v1 w50pc float-l" style="margin-left: 0px;">
						<li class="mt05">구인신청서 작성 및 관리</li>
						<li>채용지원, 알선기능 제공</li>
						<li>맞춤 인재정보 제공</li>
						<li>이력서 스크랩 기능 제공</li>
					</ul> 
					<ul class="dot-list v1 w50pc float-l" style="margin-left: 0px;">
						<li class="mt05">기업체 출강 제공(무료)
							<ul class="dash-list" style="margin-left: 0px;">
								<li>생애경력설계 서비스</li>
								<li>전직지원 서비스</li>
							</ul>
						</li>
					</ul> 
				</div>
			</div>
		</div>
	</div>

	<h5 class="sub-title-18 bul mb20 mt40">개인회원 대상 구직신청 절차</h5>
	<img src="../../static/images/img-join-step-idv.png" alt="step1. 회원가입, step2. 이력서 및 자기소개서 등록, step3. 구직신청, step4. 입사지원">
	
	<ul class="dot-list v1 mt10">
		<li>워크넷에서 구직 서비스를 받기 위해서는 <span class="font-bold">워크넷 또는</span> 고용노동부에서 제공하는 <span class="font-bold">ONE-ID  회원가입</span>이 필요합니다.</li>
		<li>이력서 등록 후 마이페이지에서 구직신청이 가능합니다.</li>
		<li>구직신청 접수 후 개인 이력서는 <span class="font-bold">워크넷 인재정보에 공개되며, 입사지원 및 취업알선</span>을 받으실 수 있습니다.</li>
		<li><span class="font-bold">구직 인증은 약 3개월 간 유지</span>되며 기간이 만료된 후에는 다시 구직신청을 하셔야 입사지원을 하실 수 있습니다.</li>
	</ul>
	
	<h5 class="sub-title-18 bul mb20 mt40">기업회원 대상 구인신청 절차</h5>
	<img src="../../static/images/img-join-step-ent.png" alt="step1. 회원가입, step2. 구인신청, step3. 관할 고용센터 인증, step4. 채용관리">
	
	<ul class="dot-list v1 mt10">
		<li>워크넷에서 구인 서비스를 받기 위해서는 구인신청 과정을 통해 고용센터의 인증을 거쳐야 합니다.</li>
		<li>인증의 목적은 신뢰성을 높이고 허위 정보로 인한 폐해를 방지하고자 함입니다.</li>
		<li>구인신청은 한 건 이상 하실 수 있으며, 고용센터의 인증을 받은 후 온라인 알선 등 다양한 서비스를 이용하실 수 있습니다.</li>
		<li>구인신청 후 인증된 내용은 워크넷에 로그인 하시면 기업회원 서비스 홈에서 확인하실 수 있습니다.</li>
		<li>구인 인증은 약 2개월 간 유지되며 기간이 만료된 후에는 다시 구인신청을 하셔야 동일한 서비스 혜택을 받으실 수 있습니다.</li>
	</ul>

</section>
</div>
</div>

</div>



</body>
</html>