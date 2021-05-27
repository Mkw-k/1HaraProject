<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
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


</style>
</head>
<body>
<div class="all">
<header>
		
 <!-- 검색html -->
 
 <section style="padding: 0">
 <form id="search_form_recruit" onsubmit="event.preventDefault()" style="height: 300px; background-image: url('개발자23.gif');">
    <div class="main_search">
        <div class="option option_keyword">
            <label for="ipt_keyword_recruit" class="placeholder" style="color: rgb(72, 118, 239);">일하라 주식회사</label>
            <input id="ipt_keyword_recruit" type="text" class="key" maxlength="30" placeholder="검색어를 입력해주세요" autocomplete="off">
        </div>
        <div class="option option_area">
            <label for="ipt_area_recruit" class="placeholder">지역을 선택해주세요</label>
            <button id="ipt_area_recruit" type="button" class="key">
                <span class="filter_selected"></span>
            </button>
        </div>
        <div class="option option_category">
            <label for="ipt_category_recruit" class="placeholder">직업을 선택해주세요</label>
            <button id="ipt_category_recruit" type="button" class="key">
                <span class="filter_selected"></span>
            </button>
        </div>
        <button type="button" id="btn_search_recruit" class="btn_search">
            <svg xmlns="http://www.w3.org/2000/svg" width="28" height="28" viewbox="0 0 28 28" class="bg_search">
                <g fill="none" fill-rule="evenodd">
                    <path d="M0 0H28V28H0z"></path>
                    <circle cx="12.778" cy="12.778" r="9.778" stroke="#FFF" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"></circle>
                    <path stroke="#FFF" stroke-width="2" d="M25 25L19.683 19.683"></path>
                </g>
            </svg>
            <span class="txt">검색</span>
        </button>
        <button type="button" id="search_close_recruit" class="btn_close">
            <span>닫기</span>
        </button>
        <button type="button" class="search_reset">
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewbox="0 0 16 16" class="ic_reset">
                <g fill="none" fill-rule="evenodd">
                    <path fill-rule="nonzero" d="M0 0H16V16H0z"></path>
                    <path stroke="#B5BACB" d="M12.828 3.003v3.024H9.804m2.943 3.815c-.845 2.21-3.114 3.534-5.454 3.183-2.34-.35-4.12-2.282-4.281-4.642-.16-2.36 1.342-4.515 3.613-5.18 2.27-.664 4.698.34 5.835 2.415"></path>
                </g>
            </svg>검색 초기화
        </button>
    </div>
</form>
</section>
 <!--  -->
 
 





</header>

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
             			
             			<c:when test="${login.auth == 3}">
             				<p><b>[관리자]${login.name }</b>님</p>
    		 			</c:when>  
             			
    					<c:otherwise>
             				<p><b>[사원]${login.name }</b>님</p>
    					</c:otherwise>
    					
    				</c:choose>			
            	 </c:when> 
         	 </c:choose>
         	<%--  <c:choose>
         	 	<c:when test="${login1.memberid ne null }">
         	 		<c:when test="${login1.auth == 2}">
             			<p><b>[사원]${login1.name }</b>님</p>
    		 		</c:when>  
         	 	</c:when>
    		 </c:choose> --%>
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
   	  <c:if test="">
   	  
   	  </c:if>
      <c:if test="${login.memberid ne null}">   
         <a href="logout.do" class="nav-link bgc" style="color: #2186eb;background-color: #fff;"><i class="fa fa-user"></i>로그아웃</a>
      </c:if>   
   </li>
  </ul>
</nav>
<br>

  


 <!-- =========Login 클릭 시 Modal =========== -->
      <div id="login-modal" tabindex="-1" role="dialog" aria-labelledby="login-modalLabel" class="modal modal-center fade ">
        <div role="document" class="modal-dialog" style="margin: 0;">
          <div class="modal-content">
            <div class="modal-header">
              <h4 id="login-modalLabel" class="modal-title">1hara Login</h4>
              <button type="button" data-dismiss="modal" aria-label="Close" class="close"><span aria-hidden="true"></span>x</button>
            </div>
            <div class="modal-body">
            
            <!-- memberController - loginAf.do로 이동 -->
              <form action="loginAf.do" method="post" id="_frmFrom">
             <!--     <input type="hidden" name="param" value="loginAf.do"> -->
                <div class="form-group">
                  <input id="memberid" type="text" placeholder="ID" name="memberid" class="form-control">
                </div>
                <div class="form-group">
                  <input id="pwd" type="password" name="pwd" placeholder="password" class="form-control">
                </div>
                <p class="text-center">
                  <button class="btn btn-template-outlined" id="_btnLogin"><i class="fa fa-sign-in"></i> Login</button>
                </p>
              </form>
              
              <a href="javascript:kakaoLogin()">
				<img alt="" src="https://img.eduwill.net/Img2/Common/Join/new/btn-kakao-large.png">
			  </a>
              
              <p class="text-center text-muted">아직 회원가입을 안하셨나요?</p>
              <p class="text-center text-muted"><a href="regiclick.do"><strong>가입하기</strong></a> 백수를 탈출합시다!</p>
            </div>
          </div>
        </div>
      </div>

<!-- =======Login 클릭 시 Modal END =========-->

<!-- 본문 -->
<main>



<div class="wrapper col3" style="margin-top: -150px;">

  <div id="homecontent" style="margin-left: 159px;">
  
  <!-- 좌측 광고판 -->
   <img class="fit-picture" src="ma2.png" style="
    width: 318px;
    height: 318px;
    border-left-width: 30px;
    margin-left: 20px;">
 
  
    <div class="fl_left">
       <div class="column2">
        <h5>최신공채</h5>
       		<div class="container">
 
			<div id="carouselSample" class="carousel slide" data-ride="carousel">
			 
			    <!-- indicator(이동할 수 있는 바) -->
			    <ol class="carousel-indicators">
			        <li data-target="#carouselSample" data-slide-to="0" class="active">
			        <li data-target="#carouselSample" data-slide-to="1">
			        <li data-target="#carouselSample" data-slide-to="2">
			    </ol>
			 
			    <div class="carousel-inner">
			        <!-- first slide -->
			        <div class="carousel-item active">
			            <img alt="first" class="d-block w-100" src="<%=request.getContextPath() %>/image/bm.png" height="300px" width="200px">
			            
			            <!-- caption -->
			            <div class="carousel-caption d-none d-md-block">
			               
			            </div>            
			        </div>
			        
			        <!-- second slide -->
			        <div class="carousel-item">
			            <img alt="second" class="d-block w-100" src="<%=request.getContextPath() %>/image/dg.png" height="300px" width="200px">
			            
			            <!-- caption -->
			            <div class="carousel-caption d-none d-md-block">
			               
			            </div>                
			        </div>
			        
			        <!-- third slide -->
			        <div class="carousel-item">
			            <img alt="third" class="d-block w-100" src="<%=request.getContextPath() %>/image/cp.PNG" height="300px" width="200px">
			            
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
       
       
       
   
     
        <div class="fl_right">
	      <h5>취업뉴스</h5>
	      <ul>
	        <li>
	          <a href="#"><img src="<%=request.getContextPath() %>/image/기사1.png" alt="" /><p style="margin-top: 20px;">기업, 구직자 불필요한 스펙 여전해!</p></a>
	        </li>
	        <li>
	          <a href="#"><img src="<%=request.getContextPath() %>/image/기사2.png" alt="" /><p style="margin-top: 20px;">구직자 90%, 코로나로 채용시장 변화…“너무 힘들다”</p></a>
	        </li>
	        <li>
	          <a href="#"><img src="<%=request.getContextPath() %>/image/기사3.png" alt="" /><p style="margin-top: 20px;">사람인-충남일자리진흥원, “충남 우수기업 채용관” 오픈</p></a>
	        </li>
	         <li>
	          <a href="#"><img src="<%=request.getContextPath() %>/image/기사4.png" alt="" /><p style="margin-top: 20px;">직장인 5명중 2명, “코로나19로 인해 다니는 회사 위기”</p></a>
	        </li>
	        <li class="last">
	          <a href="#"><img src="<%=request.getContextPath() %>/image/기사5.png" alt="" /><p style="margin-top: 20px;">사람인, 삼성전자 협력회사 채용관 리뉴얼 오픈!</p></a>
	        </li>
	      </ul>
	      
	         </div>
    	</div>
    </div>
    
      
      <!-- 랭킹 js -->
      <script type="text/javascript" src="js/ranking.js"></script>   
    
    <div class="column2" style="padding-left: 40pt;">
          <div class="container">
          		<div>
		            <div class="panel panel-primary">
		                <div class="panel-heading">
		                    <h3 class="panel-title">
		                        <span class="glyphicon glyphicon-bookmark"></span> 일하라와 함께하고 싶다면? </h3>
		                </div>
		                
		                <div class="panel-body"> <!-- 컨테이너 바디 -->
		                   
		                    <div class="main-login" style="width: 358px;">
			<!-- 로그인 전 -->
					<!-- 로그인 전 -->
					
					<div class="before">
						<c:if test="${ empty login }">
						<p class="txt">일하라를 더 안전하고 편리하게 이용하세요.</p>

						<a href="javascript:login()" class="login-worknet">일하라 로그인</a>

						<div class="link">
							<a href="/member/idPwdVw/retrieveCustIdPwdSrch.do" class="left">아이디/ 패스워드 찾기</a>
							<a href="regiclick.do" class="right">회원가입</a>
						</div>
						<div class="other-login">
							<a href="javascript:f_snsLogin('naver');" id="naver_id_login" title="새창열림 : 네이버 아이디로 로그인" class="left"><i class="iconset ico-main-login-naver"></i>로그인</a>
							<a href="javascript:f_snsLogin('kakao');" id="kakao_id_login" title="새창열림 : 카카오 아이디로 로그인" class="right"><i class="iconset ico-main-login-kakao"></i>로그인</a>
						</div>
						</c:if>
						
						
					<!-- 로그인 후 -->
					<div class="main-login">
							<!-- 개인 로그인 후 -->
							
							<div class="after personal">
								
							<c:choose>	
								<c:when test="${login.memberid ne null}">	
									<c:choose>	
										<c:when test="${login.auth==1 }">
											<div class="top">
												<div class="bg" style="background-image: url('bg-main-login-person.png') no-repeat 0 2px;">
													<p class="txt">개인회원</p>
											
													<p class="name"><strong>${login.name}</strong> 님</p>
													<a href="/indivMemberSrv/main/indivMemberSrvMain.do" class="mypge">마이페이지</a>
												</div>
												<div class="btn-grp">
													<button type="button" class="btn-logout float-l" onclick="f_logout();">로그아웃</button>
													<a href="/indivMemberSrv/custInfoAdmin/retrieveIndivCustInfo.do" class="float-r">회원정보 관리</a>
												</div>
											</div>
										</c:when>
										<c:when test="${login.auth==2 }">
										 <div class="top">
												<div class="bg" style="background-image: url('bg-main-login-person.png') no-repeat 0 2px;">
													<p class="txt">기업</p>
											
													<p class="name"><strong>${login.name}</strong> 님</p>
													<a href="/indivMemberSrv/main/indivMemberSrvMain.do" class="mypge">마이페이지</a>
												</div>
												<div class="btn-grp">
													<button type="button" class="btn-logout float-l" onclick="f_logout();">로그아웃</button>
													<a href="/indivMemberSrv/custInfoAdmin/retrieveIndivCustInfo.do" class="float-r">기업 관리</a>
												</div>
											</div> 
										</c:when>	
										
										<c:otherwise>
										 <div class="top">
												<div class="bg" style="background-image: url('bg-main-login-person.png') no-repeat 0 2px;">
													<p class="txt">관리자</p>
											
													<p class="name"><strong>${login.name}</strong> 님</p>
													<a href="/indivMemberSrv/main/indivMemberSrvMain.do" class="mypge">마이페이지</a>
												</div>
												<div class="btn-grp">
													<button type="button" class="btn-logout float-l" onclick="f_logout();">로그아웃</button>
													<a href="/indivMemberSrv/custInfoAdmin/retrieveIndivCustInfo.do" class="float-r">개인 관리</a>
												</div>
											</div>
											
										</c:otherwise>
								</c:choose>	
							</c:when>	
						</c:choose>
							<!-- 	
								<div class="btn-func">
									
										
										
									
									<a href="/indivMemberSrv/seekApplyAdmin/resumeMng/resumeMngMain.do">구직신청하기</a>
									
								</div>
								
								<ul class="my-info2">
									<li><a href="/indivMemberSrv/seekApplyAdmin/resumeMng/resumeSelfIntroMng.do">내 이력서 관리</a></li>
									<li><a href="/indivMemberSrv/intrstInfo/intrstCoMngList.do?thisMenuId=M201200157">관심스크랩</a></li>
									<li><a href="/indivMemberSrv/aplentMng/seekActvHist/seekActvHistList.do">구직활동 내역</a></li>
									<li><a href="/indivMemberSrv/myCustmadeSrvList.do">맞춤서비스</a></li>
								</ul>
							</div> -->
							<!-- //개인 로그인 후 -->
						
						
						<ul class="menu-link">
							<li><a href="/indivMemberSrv/seekApplyAdmin/resumeMng/resumeMngMain.do">내게 딱! 맞는 일자리 찾기<br><strong>구직신청</strong></a></li>
							<li><a href="/coMemberSrv/wantedInfoAdmin/wantedAdmin.do">우리 회사 맞춤인재 채용<br><strong>구인신청</strong></a></li>
							<!-- <li><a href="/consltJobCarpa/jobPsyExamNew/jobPsyExamYouthList.do">로그인 없이 간편하게!<br><strong>청소년 심리검사</strong></a></li> -->
						</ul>
					</div>
					<!-- //로그인 전 -->
		<!-- 로그인영역 -->
		</div>
		</div>
		<!-- 로그인 끝 -->
		                   
		                   
		                </div>
		            </div>
		        </div>
          
          
          
         <!-- 구분선 -->
          
		    <div class="row" style="width: 450px;">
		        <div>
		            <div class="panel panel-primary">
		                <div class="panel-heading">
		                    <h3 class="panel-title">
		                        <span class="glyphicon glyphicon-bookmark"></span> Quick Shortcuts</h3>
		                </div>
		                <div class="panel-body">
		                    <div class="row">
		                        <div>
		                          <a href="#" class="btn btn-light btn-lg" role="button"><span class="glyphicon glyphicon-bookmark"></span> <br/>10대기업</a>
		                          <a href="#" class="btn btn-light btn-lg" role="button"><span class="glyphicon glyphicon-list-alt"></span> <br/>공채달력</a>
		                          <a href="#" class="btn btn-light btn-lg" role="button"><span class="glyphicon glyphicon-signal"></span> <br/>TOP10</a>
		                        </div>
		                        <div>
		                         <a href="#" class="btn btn-light btn-lg" role="button"><span class="glyphicon glyphicon-comment"></span> <br/>취업톡톡</a>
		                          <a href="#" class="btn btn-light btn-lg" role="button"><span class="glyphicon glyphicon-file"></span> <br/>자료실</a>
		                          <a href="#" class="btn btn-light btn-lg" role="button"><span class="glyphicon glyphicon-user"></span> <br/>마이페이지</a>
		                        </div>
		                        <div>
		                          <a href="#" class="btn btn-light btn-lg" role="button"><span class="glyphicon glyphicon-user"></span> <br/>이력서관리</a>
		                          <a href="#" class="btn btn-light btn-lg" role="button"><span class="glyphicon glyphicon-picture"></span> <br/>취업뉴스</a>
		                          <a href="#" class="btn btn-light btn-lg" role="button"><span class="glyphicon glyphicon-tag"></span> <br/>공지사항</a>
		                        </div>
		                    </div>
		                </div>
		            </div>
		        </div>
		    </div>
		</div>    
     
     
     <h5>TOP10</h5>
	       	 <div class="content">
				<div id="jquery-accordion-menu" class="jquery-accordion-menu">
					<div class="jquery-accordion-menu-header"><p>Header</p> </div>
					<ul>
						<li class="active"><a href="#" style="font-size: 12pt;"><i class="fa fa-home"></i>NAVER</a><span class="jquery-accordion-menu-label">1 </span></li>
						<li><a href="#" style="font-size: 12pt;"><i class="fa fa-glass"></i>KAKAO</a><span class="jquery-accordion-menu-label">2 </span></li>
						<li><a href="#" style="font-size: 12pt;"><i class="fa fa-file-image-o"></i>LINE </a><span class="jquery-accordion-menu-label">3 </span></li>
						<li><a href="#" style="font-size: 12pt;"><i class="fa fa-cog"></i>COUPANG </a><span class="jquery-accordion-menu-label">4 </span></li>
						<li><a href="#" style="font-size: 12pt;"><i class="fa fa-cog"></i>배달의 민족 </a><span class="jquery-accordion-menu-label">5 </span></li>
						<li><a href="#" style="font-size: 12pt;"><i class="fa fa-newspaper-o"></i>당근마켓 </a><span class="jquery-accordion-menu-label">6 </span></li>
						<li><a href="#" style="font-size: 12pt;"><i class="fa fa-suitcase"></i>TOSS </a><span class="jquery-accordion-menu-label">7 </span></li>
						<li><a href="#" style="font-size: 12pt;"><i class="fa fa-user"></i>NEXON </a><span class="jquery-accordion-menu-label">8 </span></li>
						<li><a href="#" style="font-size: 12pt;"><i class="fa fa-envelope"></i>NC SOFT </a><span class="jquery-accordion-menu-label">9 </span></li>
						<li><a href="#" style="font-size: 12pt;"><i class="fa fa-envelope"></i>SAMSUNG</a><span class="jquery-accordion-menu-label">10 </span></li>
					</ul>
					<div class="jquery-accordion-menu-footer">Footer </div>
				</div>
			</div>
 
      </div>	<!-- column2 end -->
    
   	 
    
   
    <br class="clear" />
    
   <!-- 메인 우측 광고 -->
   <img class="fit-picture" src="main-ad.png" style="
    width: 318px;
    border-left-width: 30px;
    margin-left: 20px;">
    
  </div>
</div>



<!-- 채용공고 부트스트랩 -->

<!-- Team -->
<section id="team" class="pb-5">
    <div class="container">
        <h5 class="section-title h1"></h5>
        <div class="row">
            <!-- Team member -->
            <div class="col-xs-12 col-sm-6 col-md-4">
                <div class="image-flip" >
                    <div class="mainflip flip-0">
                        <div class="frontside">
                            <div class="card">
                                <div class="card-body text-center">
                                    <p><img class=" img-fluid" src="<%=request.getContextPath() %>/image/NAVER2.jpg" alt="card image"></p>
                                    <h3 class="card-title">NAVER</h3>
                                    <p class="card-text">백엔드 개발자 모집</p>
                                    <a href="https://www.fiverr.com/share/qb8D02" class="btn btn-primary btn-sm"></a>
                                </div>
                            </div>
                        </div>
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center mt-4">
                                    <h4 class="card-title">Sunlimetech</h4>
                                    <p class="card-text">This is basic card with image on top, title, description and button.This is basic card with image on top, title, description and button.This is basic card with image on top, title, description and button.</p>
                                    <ul class="list-inline">
                                        <li class="list-inline-item">
                                            <a class="social-icon text-xs-center" target="_blank" href="https://www.fiverr.com/share/qb8D02">
                                                <i class="fa fa-facebook"></i>
                                            </a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a class="social-icon text-xs-center" target="_blank" href="https://www.fiverr.com/share/qb8D02">
                                                <i class="fa fa-twitter"></i>
                                            </a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a class="social-icon text-xs-center" target="_blank" href="https://www.fiverr.com/share/qb8D02">
                                                <i class="fa fa-skype"></i>
                                            </a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a class="social-icon text-xs-center" target="_blank" href="https://www.fiverr.com/share/qb8D02">
                                                <i class="fa fa-google"></i>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ./Team member -->
            <!-- Team member -->
            <div class="col-xs-12 col-sm-6 col-md-4">
                <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                    <div class="mainflip">
                        <div class="frontside">
                            <div class="card">
                                <div class="card-body text-center">
                                    <p><img class=" img-fluid" src="<%=request.getContextPath() %>/image/nexon.jpg" alt="card image"></p>
                                    <h3 class="card-title">NEXON</h3>
                                    <p class="card-text">Frontend Engineer 신입/경력 (React or Vue or Angular, Front)</p>
                                    <a href="https://www.fiverr.com/share/qb8D02" class="btn btn-primary btn-sm"></a>
                                </div>
                            </div>
                        </div>
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center mt-4">
                                    <h4 class="card-title">Sunlimetech</h4>
                                    <p class="card-text">This is basic card with image on top, title, description and button.This is basic card with image on top, title, description and button.This is basic card with image on top, title, description and button.</p>
                                    <ul class="list-inline">
                                        <li class="list-inline-item">
                                            <a class="social-icon text-xs-center" target="_blank" href="https://www.fiverr.com/share/qb8D02">
                                                <i class="fa fa-facebook"></i>
                                            </a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a class="social-icon text-xs-center" target="_blank" href="https://www.fiverr.com/share/qb8D02">
                                                <i class="fa fa-twitter"></i>
                                            </a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a class="social-icon text-xs-center" target="_blank" href="https://www.fiverr.com/share/qb8D02">
                                                <i class="fa fa-skype"></i>
                                            </a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a class="social-icon text-xs-center" target="_blank" href="https://www.fiverr.com/share/qb8D02">
                                                <i class="fa fa-google"></i>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ./Team member -->
            <!-- Team member -->
            <div class="col-xs-12 col-sm-6 col-md-4">
                <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                    <div class="mainflip">
                        <div class="frontside">
                            <div class="card">
                                <div class="card-body text-center">
                                    <p><img class=" img-fluid" src="<%=request.getContextPath() %>/image/toss.png" alt="card image"></p>
                                    <h3 class="card-title">TOSS</h3>
                                    <p class="card-text">Mobile Engineer (Android / iOS / Flutter)</p>
                                    <a href="https://www.fiverr.com/share/qb8D02" class="btn btn-primary btn-sm"></a>
                                </div>
                            </div>
                        </div>
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center mt-4">
                                    <h4 class="card-title">Sunlimetech</h4>
                                    <p class="card-text">This is basic card with image on top, title, description and button.This is basic card with image on top, title, description and button.This is basic card with image on top, title, description and button.</p>
                                    <ul class="list-inline">
                                        <li class="list-inline-item">
                                            <a class="social-icon text-xs-center" target="_blank" href="https://www.fiverr.com/share/qb8D02">
                                                <i class="fa fa-facebook"></i>
                                            </a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a class="social-icon text-xs-center" target="_blank" href="https://www.fiverr.com/share/qb8D02">
                                                <i class="fa fa-twitter"></i>
                                            </a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a class="social-icon text-xs-center" target="_blank" href="https://www.fiverr.com/share/qb8D02">
                                                <i class="fa fa-skype"></i>
                                            </a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a class="social-icon text-xs-center" target="_blank" href="https://www.fiverr.com/share/qb8D02">
                                                <i class="fa fa-google"></i>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ./Team member -->
            <!-- Team member -->
            <div class="col-xs-12 col-sm-6 col-md-4">
                <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                    <div class="mainflip">
                        <div class="frontside">
                            <div class="card">
                                <div class="card-body text-center">
                                    <p><img class=" img-fluid" src="<%=request.getContextPath() %>/image/kakao.jpg" alt="card image"></p>
                                    <h3 class="card-title">KAKAO</h3>
                                    <p class="card-text">Backend Engineer 신입/경력 (Java / Spring)</p>
                                    <a href="https://www.fiverr.com/share/qb8D02" class="btn btn-primary btn-sm"></a>
                                </div>
                            </div>
                        </div>
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center mt-4">
                                    <h4 class="card-title">Sunlimetech</h4>
                                    <p class="card-text">This is basic card with image on top, title, description and button.This is basic card with image on top, title, description and button.This is basic card with image on top, title, description and button.</p>
                                    <ul class="list-inline">
                                        <li class="list-inline-item">
                                            <a class="social-icon text-xs-center" target="_blank" href="https://www.fiverr.com/share/qb8D02">
                                                <i class="fa fa-facebook"></i>
                                            </a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a class="social-icon text-xs-center" target="_blank" href="https://www.fiverr.com/share/qb8D02">
                                                <i class="fa fa-twitter"></i>
                                            </a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a class="social-icon text-xs-center" target="_blank" href="https://www.fiverr.com/share/qb8D02">
                                                <i class="fa fa-skype"></i>
                                            </a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a class="social-icon text-xs-center" target="_blank" href="https://www.fiverr.com/share/qb8D02">
                                                <i class="fa fa-google"></i>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ./Team member -->
            <!-- Team member -->
            <div class="col-xs-12 col-sm-6 col-md-4">
                <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                    <div class="mainflip">
                        <div class="frontside">
                            <div class="card">
                                <div class="card-body text-center">
                                    <p><img class=" img-fluid" src="<%=request.getContextPath() %>/image/line.jpg" alt="card image"></p>
                                    <h3 class="card-title">LINE</h3>
                                    <p class="card-text">모바일 앱 개발자</p>
                                    <a href="https://www.fiverr.com/share/qb8D02" class="btn btn-primary btn-sm"></a>
                                </div>
                            </div>
                        </div>
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center mt-4">
                                    <h4 class="card-title">Sunlimetech</h4>
                                    <p class="card-text">This is basic card with image on top, title, description and button.This is basic card with image on top, title, description and button.This is basic card with image on top, title, description and button.</p>
                                    <ul class="list-inline">
                                        <li class="list-inline-item">
                                            <a class="social-icon text-xs-center" target="_blank" href="https://www.fiverr.com/share/qb8D02">
                                                <i class="fa fa-facebook"></i>
                                            </a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a class="social-icon text-xs-center" target="_blank" href="https://www.fiverr.com/share/qb8D02">
                                                <i class="fa fa-twitter"></i>
                                            </a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a class="social-icon text-xs-center" target="_blank" href="https://www.fiverr.com/share/qb8D02">
                                                <i class="fa fa-skype"></i>
                                            </a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a class="social-icon text-xs-center" target="_blank" href="https://www.fiverr.com/share/qb8D02">
                                                <i class="fa fa-google"></i>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ./Team member -->
            <!-- Team member -->
            <div class="col-xs-12 col-sm-6 col-md-4">
                <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                    <div class="mainflip">
                        <div class="frontside">
                            <div class="card">
                                <div class="card-body text-center">
                                    <p><img class=" img-fluid" src="<%= request.getContextPath() %>/image/coupang.png" alt="card image"></p>
                                    <h3 class="card-title">COUPANG</h3>
                                    <p class="card-text">데이터 분석가 (Data Scientist)</p>
                                    <a href="https://www.fiverr.com/share/qb8D02" class="btn btn-primary btn-sm"></a>
                                </div>
                            </div>
                        </div>
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center mt-4">
                                    <h4 class="card-title">Sunlimetech</h4>
                                    <p class="card-text">This is basic card with image on top, title, description and button.This is basic card with image on top, title, description and button.This is basic card with image on top, title, description and button.</p>
                                    <ul class="list-inline">
                                        <li class="list-inline-item">
                                            <a class="social-icon text-xs-center" target="_blank" href="https://www.fiverr.com/share/qb8D02">
                                                <i class="fa fa-facebook"></i>
                                            </a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a class="social-icon text-xs-center" target="_blank" href="https://www.fiverr.com/share/qb8D02">
                                                <i class="fa fa-twitter"></i>
                                            </a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a class="social-icon text-xs-center" target="_blank" href="https://www.fiverr.com/share/qb8D02">
                                                <i class="fa fa-skype"></i>
                                            </a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a class="social-icon text-xs-center" target="_blank" href="https://www.fiverr.com/share/qb8D02">
                                                <i class="fa fa-google"></i>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ./Team member -->
            
            

        </div>
    </div>
</section>
<!-- Team -->

<!-- ####################################################################################################### -->

</main>






<!-- 광고 팝업창 -->
<body onload="window.open('ad.do','','width=400px, height=400px, left=400px, top=200px, toolbar=0, status=yes, menubars=0, scrollbars=0, resizable=0, location=0, directories=0')">








<!-- ####################################################################################################### -->



<!-- FOOTER -->

<div id="footer">
      	<div class="top-area">
		<div class="inner-wrap">
			<div class="link">
				<a href="#1" class="bg-logo-ei" onclick="fn_moelToken('https://www.ei.go.kr/ei/eih/cm/hm/main.do');">고용보험</a>
				<a href="#2" class="bg-logo-hrd" onclick="fn_moelToken('http://www.hrd.go.kr');">직업훈련포털 HRD-Net</a>
			</div>
			
			
			<div class="right">
				<div class="visit">
					일평균 방문자수 <em>144,970</em>명
				</div>
			
				<div class="link-select">
					<button type="button" class="btn-link-open">패밀리 및 유관기관 사이트</button>
				</div>
			</div>
		</div>
	</div>


	<div class="familySite-area" style="display: block;">
		<ul>
			<li>
				<strong>패밀리사이트</strong>
				<a href="/empInfo/empInfoSrch/list/retriveWorkRegionEmpIntroList.do" title="새창 열림" target="_blank">지역워크넷</a>
				<a href="/ilmoa/jobSearch/retrieveIlmoaJobDetailSearchByMain.do" title="새창 열림" target="_blank">정부지원일자리</a>
				<a href="#1" title="새창 열림" onclick="f_moveUrl('EI')">고용보험</a>
				<a href="#2" title="새창 열림" onclick="f_moveUrl('HRD')">직업능력개발훈련</a>						
			    <a href="#3" title="새창 열림" onclick="f_moveUrl('WT')">장애인고용포털</a>
				<a href="http://www.eps.go.kr" title="새창 열림" target="_blank">외국인고용</a>				
				<a href="#4" title="새창 열림" onclick="f_moveUrl('CM')">사이버진로교육센터</a>
			</li>
			<li>
				<strong>정부기관</strong>
				<a href="http://www.moel.go.kr" title="새창 열림" target="_blank">고용노동부</a>
				<a href="http://www.moef.go.kr" title="새창 열림" target="_blank">기획재정부</a>
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
			<li>
				<strong>유관기관</strong>
				<a href="http://www.kcomwel.or.kr" title="새창 열림" target="_blank">근로복지공단</a>
				<a href="http://www.hrdkorea.or.kr" title="새창 열림" target="_blank">한국산업인력공단</a>
				<a href="http://www.kosha.or.kr" title="새창 열림" target="_blank">안전보건공단</a>
				<a href="http://www.kead.or.kr" title="새창 열림" target="_blank">장애인고용공단</a>
				<a href="http://www.socialenterprise.or.kr" title="새창 열림" target="_blank">한국사회적기업진흥원</a>
				<a href="http://www.kopo.ac.kr" title="새창 열림" target="_blank">한국폴리텍대학</a>
				<a href="http://www.koreatech.ac.kr" title="새창 열림" target="_blank">한국기술교육대학교</a>
				<a href="http://www.kli.re.kr" title="새창 열림" target="_blank">한국노동연구원</a>
				<!-- <a href="http://news.joins.com/retirement?cloc=joongang|home|subsection5" title="새창 열림" target="_blank">중앙일보 반퇴시대 </a> -->
			</li>
		</ul>
	</div>
      	

<!-- 푸터미들 -->
      	
			<div class="middle-area">
				<div class="inner-wrap">
					<div class="link-footer">
						<a href="info.do">일하라 소개</a>
						<a href="infoyakgwan.do">이용약관</a>
						<a href="infomember.do"><b>개인정보처리방침</b></a>
						<a href="infoemail.do">이메일주소무단수집거부</a>
						<a href="infowebaccess.do">웹접근성정책</a>
						<a href="/useInvite/worknetHomepgInvite/cprgtPolicyAsAllianceInq.do">저작권정책 및 제휴문의</a>
						<a href="http://openapi.work.go.kr" target="_blank">Open API</a>
						<a href="infobanner.do">배너 가져가기</a>
						<a href="/useInfo/lieJobadRpt/lieJobadRptList.do">거짓구인광고 신고</a>
					</div>
				</div>
			</div>
	
		<div class="bottom-area">
			<div class="inner-wrap">
				<div class="link-logo">
					<a href="http://www.moel.go.kr/" class="bg-logo-moel" target="_blank" title="새창 열림">고용노동부</a>
					<a href="http://www.keis.or.kr/" class="bg-logo-keis" target="_blank" title="새창 열림">한국고용정보원</a>
				</div>
			
				<div class="info">
					<address class="address">
						서울특별시 마포구 신수동 63-14 비트캠프 신촌센터
					</address>
					<p class="copy">
						Copyright © 2021 <span class="bg-txt-moel">고용노동부</span> <span class="bg-txt-keis">한국고용정보원</span> all rights reserved.
					</p>
					<p class="txt">
						일하라 이용문의 1haramaster@keis.or.kr 1577-7114(유료)
					</p>
				</div>
				<img src="./static/images/mainlogo.png" style="width: 130px;">
				<div class="etc">
					<a href="/images/useInfo/certification_kor2015.jpg" target="_blank" onclick="try { latte.getEvent(event).stop(); } catch (ex) {}; var remote = window.open('https://www.eprivacy.or.kr/front/certifiedSiteMark/certifiedSiteMarkPopup.do?certCmd=E&amp;certNum=2021-E-R001','EPRIVACY','width=527,height=720'); remote.focus(); return false;" title="새창"><img src="./static/images/brn-epriavcy.png" alt="개인정보보호우수사이트 인증서"></a>
								<a href="/html/wauMark2020_worknet.html" onclick="try { latte.getEvent(event).stop(); } catch (ex) {};window.open(this.href,'mark2020','width=605,height=850,scrollbars=no');return false;" title="새창" target="_blank" style="margin-top:-3px"><img src="./static/images/brn-wa-2019.png" alt="과학기술정보통신부 WEB ACCESSIBILITY 마크(웹 접근성 품질인증 마크)"></a>
							
				</div>
			</div>
		</div>
	</div>	
       <!--  <div class="container">
          <div class="row">
            <div class="col-lg-3">
              <h4 class="h6">About Us</h4>
              
              <p class="text-uppercase"><strong>1hara</strong><br>In line with the current situation of not being able to go to the gym The house is enough and comfortable to use The best home training community site in Korea.</p>
              <hr class="d-block d-lg-none">
            </div>
            <div class="col-lg-3">
              <h4 class="h6">고객센터</h4>
              <p><strong>bit210324@gmail.com</strong></p>
              <p>문의사항은 위 이메일 주소로 연락주시면 빠른 시일 내에 회신드리겠습니다. <br>If you have any inquiries, please contact us at the above email address and we will reply as soon as possible.</p>
              <hr class="d-block d-lg-none">
            </div>
            <div class="col-lg-3">
              <h4 class="h6">Contact</h4>
              <p class="text-uppercase"><strong>Universal Ltd.</strong><br>TEL : 070-1234-5678<br>Newtown upon River <br>CONTACT FOR MORE INFOMATION<br>COMPANY: our job <br>BUSINESS LICENSE: 123-45-12345</p>
              <hr class="d-block d-lg-none">
            </div>
            <div class="col-lg-3">
            <h4 class="h6">제휴업체</h4>
            <br>
              <ul class="list-inline photo-stream">
                <li class="list-inline-item"><a href="http://www.bansuksports.com/" target="_blank"><img src="images/bansuk_logo.jpg" alt="..." class="img-fluid"></a></li>
                <li class="list-inline-item"><a href="http://melkinsports.com/" target="_blank"><img src="images/melkin_logo.png" alt="..." class="img-fluid"></a></li>
                <li class="list-inline-item"><a href="http://www.myprotein.co.kr" target="_blank"><img src="images/myprotein_logo.jpg" alt="..." class="img-fluid"></a></li>
                <li class="list-inline-item"><a href="https://www.rankingdak.com/" target="_blank"><img src="images/ranking_logo.png" alt="..." class="img-fluid"></a></li>
              </ul>
            </div>
          </div>
        </div>
        
        <div class="copyrights">
          <div class="container">
            <div class="row">
              <div class="col-lg-4 text-center-md">
                <p>&copy; 2021. 1hara / Personal job</p>
              </div>
              <div class="col-lg-8 text-right text-center-md">
                <p> Contect TEL : <a href="https://bootstrapious.com/snippets">070-1234-5678 </a> & FAX :  <a href="#">050-5678-1234</a></p>
                Please do not remove the backlink to us unless you purchase the Attribution-free License at https://bootstrapious.com/donate. Thank you.
              </div>
            </div>
          </div>
        </div> -->
      <!-- ==============FOOTER END================= -->
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

!-- Channel Plugin Scripts -->
<script>
  (function() {
    var w = window;
    if (w.ChannelIO) {
      return (window.console.error || window.console.log || function(){})('ChannelIO script included twice.');
    }
    var ch = function() {
      ch.c(arguments);
    };
    ch.q = [];
    ch.c = function(args) {
      ch.q.push(args);
    };
    w.ChannelIO = ch;
    function l() {
      if (w.ChannelIOInitialized) {
        return;
      }
      w.ChannelIOInitialized = true;
      var s = document.createElement('script');
      s.type = 'text/javascript';
      s.async = true;
      s.src = 'https://cdn.channel.io/plugin/ch-plugin-web.js';
      s.charset = 'UTF-8';
      var x = document.getElementsByTagName('script')[0];
      x.parentNode.insertBefore(s, x);
    }
    if (document.readyState === 'complete') {
      l();
    } else if (window.attachEvent) {
      window.attachEvent('onload', l);
    } else {
      window.addEventListener('DOMContentLoaded', l, false);
      window.addEventListener('load', l, false);
    }
  })();
  ChannelIO('boot', {
    "pluginKey": "9ec9cb05-626c-49ad-9fcf-67ccef29c08f"
  });

  
  <!-- 685fcbb766340d7c8812f4e0a29a6661 -->

  <!-- 자바스크립트 key를 입력하여 초기화해줌 -->
  window.Kakao.init("685fcbb766340d7c8812f4e0a29a6661");

  function kakaoLogin() {
  	window.Kakao.Auth.login({
  		scope:'profile, account_email, gender, age_range, birthday',
  		success: function(authObj) {
  			alert('success');
  			console.log(authObj);
  			window.Kakao.API.request({
  				url: '/v2/user/me', 
  				success: res => {
  					const kakao_account = res.kakao_account; 
  					console.log(kakao_account);
  					console.log("이름:"+kakao_account.profile.nickname);
  					console.log("생일:"+kakao_account.birthday);
  					console.log("이메일:"+kakao_account.email);
  					console.log("성별:"+kakao_account.gender);
  					console.log("나이대:"+kakao_account.age_range);
  				}
  				
  			});
  		}
  	});
  }
  $("#_btnLogin").click(function () {

		if($("#memberid").val().trim() == ""){
			alert('id를 입력해 주십시오');
			$("#memberid").focus();
		}
		else if($("#pwd").val().trim() == ""){
			alert('패스워드를 입력해 주십시오');
			$("#pwd").focus();
		}
		else{
			$("#_frmFrom").submit();	
		}	
		
	});
  
  function f_logout() {
	  location.href = "logout.do";
  }
  
  </script>
<!-- End Channel Plugin -->


</body>
</html>