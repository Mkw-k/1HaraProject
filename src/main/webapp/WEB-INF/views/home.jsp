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
<!-- 카카오 로그인 -->
<script type="text/javascript" src="https://developers.kakao.com/sdk/js/kakao.js"></script>
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
<script type="text/javascript" src="//www.saraminimage.co.kr/js/libs/jquery-1.11.1.min.js"></script>

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


</style>
</head>
<body>

<div class="all">

<header>	
 <!-- 메인 검색 창 -->

<header>

 <!-- 검색html -->


 <section style="padding: 0">
 <form id="search_form_recruit" onsubmit="event.preventDefault()" style="height: 400px; background-image: url('개발자23.gif');">
    <div class="main_search" style="top: 160px;">
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
<<<<<<< HEAD
<!-- 메인검색창 끝 -->
</header>

<!-- 상단 네비바 -->
<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">  
  <div>
	 <a href=""><img alt="" src="<%=request.getContextPath() %>/image/logo5.gif" height="80" width="160" style="float:left; padding-right: 20px"></a>
  </div>
=======
 <!--  -->

</header>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
  <!-- Links -->


  	<div>
	 <a href=""><img alt="" src="<%=request.getContextPath() %>/image/logo5.gif" height="80" width="160" style="float:left; padding-right: 20px"></a>
	</div>

<!-- Dropdown -->


<ul class="navbar-nav">
	 <li class="nav-item">
            <c:choose>
            	<c:when test="${login.memberid ne null }">
            		<c:choose>
            			 <c:when test="${login.auth == 1}">
             				 <p><b>[개인]${login.name }</b>님</p>
             	 		 </c:when>

             			<c:when test="${login.auth == 2}">
             				<p><b>[사원]${login.name }</b>님</p>
    		 			</c:when>

    					<c:otherwise>
             				<p><b>[관리자]]${login.name }</b>님</p>
    					</c:otherwise>
    				</c:choose>			
            	 </c:when> 
         	 </c:choose>  
      </li>
         	<%--  <c:choose>
         	 	<c:when test="${login1.memberid ne null }">
         	 		<c:when test="${login1.auth == 2}">
             			<p><b>[사원]${login1.name }</b>님</p>
    		 		</c:when>
         	 	</c:when>
    		 </c:choose> --%>
<!-- 전체보기 드롭다운 메뉴 -->
    <li class="nav-item dropdown" style="padding-top: 5px;">
     <div class="dropdown">
		  <button class="dropbtn" style="color:#2186eb; background-color: #fff;">전체보기</button>
		  <div class="dropdown-content">
		    <a href="#">채용공고</a>
		    <a href="#">기업정보</a>
		    <a href="jobtalklist.do">취업톡톡</a>
		    <a href="calendarlist.do">공채달력</a>
		    <a href="#">자료실</a>
		    <a href="notice.do">공지사항</a>
		  </div>
		</div>
    </li>
<!-- 전체보기 드롭다운 메뉴 끝 -->
    <li class="nav-item">
      <a class="nav-link bgc" href="recuruitlist.do" style="color:#2186eb">채용공고</a>
    </li>
    <li class="nav-item">
      <a class="nav-link bgc" href="#" style="color:#2186eb">기업정보</a>
    </li>
    <li class="nav-item">
      <a class="nav-link bgc" href="Jobtalklist.do" style="color:#2186eb">취업톡톡</a>
    </li>
    <li class="nav-item">
      <a class="nav-link bgc" href="calendarlist.do" style="color:#2186eb">공채달력</a>
    </li>
    <li class="nav-item">
      <a class="nav-link bgc" href="#" style="color:#2186eb">자료실</a>
    </li>
    <li class="nav-item">
      <a class="nav-link bgc" href="notice.do" style="color:#2186eb">공지사항</a>
    </li>
    <li class="nav-item">
      <a class="nav-link bgc" href="companywrite.do" style="color:#2186eb">기업등록하기(company)</a>
    </li>
    <li class="nav-item">
      <a class="nav-link bgc" href="companyupdate.do" style="color:#2186eb">기업업데이트하기(company)</a>
    </li>
    
     <li class="nav-item">
      <a class="nav-link bgc" href="companydetail.do" style="color:#2186eb">기업디테일(company)</a>
    </li>



    <li class="nav-item">
     	 <a class="nav-link bgc" href="resumeMain.do" style="color: #2186eb;background-color: #fff;">이력서관리</a>
    </li>    
    <li class="nav-item">
       <c:if test="${login.auth==3}">
          <a class="nav-link bgc" href="memberlist.do" style="color: #2186eb;background-color: #fff;">회원관리</a>
      </c:if>
   </li>
   <li class="nav-item">
   	  <c:choose>
   	  	<c:when test="${empty login}">
   	 	 	<a class="nav-link bgc" href="javascript:login()" style="color: #2186eb;background-color: #fff;">로그인</a>
   	 	 </c:when>
     	 <c:otherwise>
     	 	<c:choose>
     	 		<c:when test="${login.auth==1 || login.auth==3}">
     	 			<a href="logout.do" class="nav-link bgc" style="color: #2186eb;background-color: #fff;"><i class="fa fa-user"></i>로그아웃</a>
     	    		<a href="memberDelete.do" class="nav-link bgc" style="color: #2186eb;background-color: #fff;">회원탈퇴</a>    	 		
     	 		</c:when>
     	 		<c:otherwise>
     	 			<a href="logout.do" class="nav-link bgc" style="color: #2186eb;background-color: #fff;"><i class="fa fa-user"></i>로그아웃</a>
     	 			<a href="businessDelete.do" class="nav-link bgc" style="color: #2186eb;background-color: #fff;">회원탈퇴</a>
     	 		</c:otherwise>
     	 	</c:choose>
     	 </c:otherwise>
      </c:choose>
   </li>
  </ul>
</nav>

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
           <!--    <form action="loginAf.do" method="post" id="_frmFrom"> -->
             <!--     <input type="hidden" name="param" value="loginAf.do"> -->
              <form id="login_frm" name="login_frm" method="post" action="loginAf.do">
            		<input type="hidden" name="page_url" value="">
        			<input type="hidden" name="FrameKey" value="">
        			<input type="hidden" name="login_tab" value="p" id="login_tab">

        			<ul class="tab_member_type">
                		    <li class="t_per t_on"><a href="##">개인회원</a></li>
                		    <li class="t_com"><a href="##">기업회원</a></li>
               	    </ul>

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
		                        <span class="glyphicon glyphicon-bookmark"></span> 일하라와 함께하고 싶다면? 
		                    </h3>
		                </div>
		                <div class="panel-body"> <!-- 컨테이너 바디 -->

		                    <div class="main-login" style="width: 358px;">
			<!-- 로그인 전 -->
					<!-- 로그인 전 -->

				<div class="before">
						<c:if test="${ empty login }">
						<p class="txt">일하라를 더 안전하고 편리하게 이용하세요.</p>

						<a href="login1.do" class="login-worknet">일하라 로그인</a>

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
					<!-- <div class="main-login"> -->
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
							<!-- //개인 로그인 후 -->


						<ul class="menu-link">
							<li><a href="/indivMemberSrv/seekApplyAdmin/resumeMng/resumeMngMain.do">내게 딱! 맞는 일자리 찾기<br><strong>구직신청</strong></a></li>
							<li><a href="/coMemberSrv/wantedInfoAdmin/wantedAdmin.do">우리 회사 맞춤인재 채용<br><strong>구인신청</strong></a></li>
							<!-- <li><a href="/consltJobCarpa/jobPsyExamNew/jobPsyExamYouthList.do">로그인 없이 간편하게!<br><strong>청소년 심리검사</strong></a></li> -->
						</ul>
					</div>
					<!-- //로그인 전 -->
		<!-- 로그인영역 -->
		<!-- </div> -->
		</div>
		<!-- 로그인 끝 -->


		                </div>
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
		                          <a href="calendarlist.do" class="btn btn-light btn-lg" role="button"><span class="glyphicon glyphicon-list-alt"></span> <br/>공채달력</a>
		                          <a href="#" class="btn btn-light btn-lg" role="button"><span class="glyphicon glyphicon-signal"></span> <br/>TOP10</a>
		                        </div>
		                        <div>
		                         <a href="Jobtalklist.do" class="btn btn-light btn-lg" role="button"><span class="glyphicon glyphicon-comment"></span> <br/>취업톡톡</a>
		                          <a href="#" class="btn btn-light btn-lg" role="button"><span class="glyphicon glyphicon-file"></span> <br/>자료실</a>
		                          <a href="mypage.do" class="btn btn-light btn-lg" role="button"><span class="glyphicon glyphicon-user"></span> <br/>마이페이지</a>
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

     	<!-- column2 end -->




    <br class="clear" />

   <!-- 메인 우측 광고 -->
   <img class="fit-picture" src="main-ad.png" style="
    width: 318px;
    border-left-width: 30px;
    margin-left: 20px;">

  </div>
</div>


<!--채용공고-->
<h1>채용공고</h1>
</div><div class="cont_product cont_prime">

<div class="top_poduct"><strong class="tit_cont">현재 채용중인 기업</strong><button class="btn_product" data-banner="prime"><span class="track_event" data-track_event="main|Ads_click_guide|prime|layer_click">상품안내</span></button></div>
<ul class="list_product" id="_primePlus" style=""><li class="open" data-rec_idx="40317898"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40317898" class="link_box track_event" data-track_event="main|Ads_click|prime_plus_fix_expand|1" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2017/03/on51mv_t60v-2rxeei_specialgold4812003.png" alt="(주)세화" class="img"></span> <strong class="poduct_tit">(주)세화</strong> <em class="product_desc">2021년 각 부문 신입/경력 채용공고</em> <em class="product_desc open"><span class="txt">2021년 각 부문</span><span class="txt">신입/경력 채용공고</span></em> <span class="thumb_product"><img data-src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2021/05/qtnd37_mscv-2rxefd_.png" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus_fix_expand"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-10</span> </span> <span class="bg"></span> </div> </li> <li class="open" data-rec_idx="40291797"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40291797" class="link_box track_event" data-track_event="main|Ads_click|prime_plus_fix_expand|2" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2016/04/1459486638_specialgold6946614koinfra2.png" alt="한국인프라관리㈜" class="img"></span> <strong class="poduct_tit">한국인프라관리㈜</strong> <em class="product_desc">토목부문 신입사원 채용</em> <em class="product_desc open"><span class="txt">2021년 토목부문</span><span class="txt">신입사원 채용</span></em> <span class="wrap_desc"><span class="txt_desc">2010년 설립 (11년차)</span><span class="txt_desc">매출액 573억 8천만원 <span class="base_year">(2020년)</span></span><span class="txt_desc">사원수 68명 <span class="base_year">(2020년)</span></span></span> <span class="thumb_product"><img class="img" alt="" rel="nofollow" src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2021/05/qtn5cg_1c2h-2rxefi_2.png"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus_fix_expand"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-8</span> </span> <span class="bg"></span> </div> </li> <li class="open" data-rec_idx="39900344"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=39900344" class="link_box track_event" data-track_event="main|Ads_click|prime_plus_fix_expand|3" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2020/05/qb19lz_97dr-2rxeff_specialgold7805082hancomacademylogo.jpg" alt="㈜한컴아카데미" class="img"></span> <strong class="poduct_tit">㈜한컴아카데미</strong> <em class="product_desc">취업연계 과정 교육생 모집</em> <em class="product_desc open"><span class="txt">인공지능 전문인력</span><span class="txt">임베디드 SW개발자</span></em> <span class="thumb_product"><img data-src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2021/05/qtl4xy_t7f6-2rxefj_111.png" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus_fix_expand"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-2</span> <button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('39900344','','t_category=main&amp;t_content=prime_plus_fix_expand', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately track_event" data-track_event="main|Ads_quick_apply|prime_plus_fix_expand|3">입사지원</span></button> </span> <span class="bg"></span> </div> </li> <li class="open" data-rec_idx="40162888"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40162888" class="link_box track_event" data-track_event="main|Ads_click|prime_plus_fix_expand|4" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2021/03/qqcwr4_p8uv-2rxefm_specialgold7423228logo.png" alt="㈜우아한청년들" class="img"></span> <strong class="poduct_tit">㈜우아한청년들</strong> <em class="product_desc">B마트 지점관리 매니저 모집</em> <em class="product_desc open"><span class="txt">B마트 서울/인천/경기</span><span class="txt">지점관리 매니저 모집</span></em> <span class="thumb_product"><img data-src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2021/05/qtliqv_eoct-2rxefi_.png" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus_fix_expand"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-4</span> </span> <span class="bg"></span> </div> </li> <li class="open" data-rec_idx="40269207"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40269207" class="link_box track_event" data-track_event="main|Ads_click|prime_plus_fix_expand|5" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2021/05/qtfp20_kdl6-2rxefi_specialgold5575651logosg.png" alt="경북산업직업전문학교" class="img"></span> <strong class="poduct_tit">경북산업직업전문학교</strong> <em class="product_desc">[국비무료]취업연계 교육생모집</em> <em class="product_desc open"><span class="txt">[국비무료]100%취업연계 </span><span class="txt">직업훈련 교육생 모집</span></em> <span class="wrap_desc"><span class="txt_desc">매출액 51억 5천만원 <span class="base_year">(2019년)</span></span><span class="txt_desc">사원수 50명 <span class="base_year">(2005년)</span></span></span> <span class="thumb_product"><img data-src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2021/05/qtac95_6der-2rxefe_1pl.png" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus_fix_expand"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-23</span> </span> <span class="bg"></span> </div> </li> <li class="open" data-rec_idx="40233287"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40233287" class="link_box track_event" data-track_event="main|Ads_click|prime_plus_fix_expand|6" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2017/01/ok2pdq_lhm0-2rxeef_specialgold6347540vvv.png" alt="정선하이캐슬리조트" class="img"></span> <strong class="poduct_tit">정선하이캐슬리조트</strong> <em class="product_desc">2021년도 새롭게 오픈하는 경력 및 신입[정규직] 사원 채용</em> <em class="product_desc open"><span class="txt">2021년도 새롭게 오픈하는</span><span class="txt">경력/신입[정규직] 채용</span></em> <span class="wrap_desc"><span class="txt_desc">2000년 설립 (21년차)</span><span class="txt_desc">매출액 36억 9천만원 <span class="base_year">(2019년)</span></span><span class="txt_desc">사원수 36명 <span class="base_year">(2020년)</span></span></span> <span class="thumb_product"><img class="img" alt="" rel="nofollow" src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2021/05/qt0ucf_hqg7-2rxefi_.png"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus_fix_expand"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-8</span> <button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('40233287','','t_category=main&amp;t_content=prime_plus_fix_expand', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately track_event" data-track_event="main|Ads_quick_apply|prime_plus_fix_expand|6">입사지원</span></button> </span> <span class="bg"></span> </div> </li> <li class="open" data-rec_idx="40236467"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40236467" class="link_box track_event" data-track_event="main|Ads_click|prime_plus_fix_expand|7" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2016/03/1458868568_specialgold6372238nrf.png" alt="한국연구재단" class="img"></span> <strong class="poduct_tit">한국연구재단</strong> <em class="product_desc">체험형 청년인턴 채용 공고</em> <em class="product_desc open"><span class="txt">2021년도 체험형</span><span class="txt">청년인턴 채용 공고</span></em> <span class="wrap_desc"><span class="txt_desc">2009년 설립 (12년차)</span><span class="txt_desc">매출액 4조 3,581억 4천만원 <span class="base_year">(2016년)</span></span><span class="txt_desc">사원수 313명 <span class="base_year">(2016년)</span></span></span> <span class="thumb_product"><img data-src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2021/05/qt14ro_h7j3-2rxefd_qsq5rfdijb2rxefn35.png" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus_fix_expand"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-1</span> </span> <span class="bg"></span> </div> </li> <li class="open" data-rec_idx="40110933"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40110933" class="link_box track_event" data-track_event="main|Ads_click|prime_plus_fix_expand|8" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2021/01/qmg8bu_mwga-2rxic3_specialgold7874744tj210105logo.png" alt="주식회사 트리플제이엔터" class="img"></span> <strong class="poduct_tit">주식회사 트리플제이엔터</strong> <em class="product_desc">전국지점 증권/주식 TM영업채용</em> <em class="product_desc open"><span class="txt">전국지점 증권/주식 TM</span><span class="txt">영업인재 공개채용</span></em> <span class="thumb_product"><img data-src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2021/05/qso8j6_iue4-2rxefj_2.png" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus_fix_expand"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-5</span> <button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('40110933','','t_category=main&amp;t_content=prime_plus_fix_expand', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately track_event" data-track_event="main|Ads_quick_apply|prime_plus_fix_expand|8">입사지원</span></button> </span> <span class="bg"></span> </div> </li> <li class="open" data-rec_idx="40237160"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40237160" class="link_box track_event" data-track_event="main|Ads_click|prime_plus_fix_expand|9" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2021/05/qt1ai9_lowy-2rxeff_specialgold87945.png" alt="남서울대학교" class="img"></span> <strong class="poduct_tit">남서울대학교</strong> <em class="product_desc">등록금無 빅데이터인공지능 석사</em> <em class="product_desc open"><span class="txt">빅데이터인공지능 학과</span><span class="txt">석사과정 모집</span></em> <span class="thumb_product"><img data-src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2021/05/qt1aor_jy1q-2rxeff_.png" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus_fix_expand"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-15</span> </span> <span class="bg"></span> </div> </li> <li class="open" data-rec_idx="40287428"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40287428" class="link_box track_event" data-track_event="main|Ads_click|prime_plus_fix_expand|10" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2021/05/qtfklp_b4la-2rxefk_specialgold7858130.jpg" alt="(주)에스엘정보" class="img"></span> <strong class="poduct_tit">(주)에스엘정보</strong> <em class="product_desc">정보처리산업기사 교육생 모집</em> <em class="product_desc open"><span class="txt">정보처리산업기사 취득</span><span class="txt">교육생 모집(전액무료)</span></em> <span class="thumb_product"><img data-src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2021/05/qtfksl_txgq-2rxefk_1.jpg" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus_fix_expand"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-9</span> <button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('40287428','','t_category=main&amp;t_content=prime_plus_fix_expand', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately track_event" data-track_event="main|Ads_quick_apply|prime_plus_fix_expand|10">입사지원</span></button> </span> <span class="bg"></span> </div> </li> <li class="open" data-rec_idx="40155119"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40155119" class="link_box track_event" data-track_event="main|Ads_click|prime_plus_fix_expand|11" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2020/06/qcay5u_8i51-2rxefj_specialgold7402689.png" alt="대한상공회의소 서울기술교육센터" class="img"></span> <strong class="poduct_tit">대한상공회의소 서울기술교육센터</strong> <em class="product_desc">[국비지원] 미래유망분야 전문기술 교육생 모집</em> <em class="product_desc open"><span class="txt">[국비지원] 미래유망분야</span><span class="txt">전문기술 교육생 모집</span></em> <span class="thumb_product"><img data-src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2021/05/qsibo6_h4ud-2rxefd_qs78qt1yqy2rxefc.png" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus_fix_expand"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-8</span> </span> <span class="bg"></span> </div> </li> <li class="open" data-rec_idx="40282221"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40282221" class="link_box track_event" data-track_event="main|Ads_click|prime_plus_fix_expand|12" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2017/04/oocayf_uu1l-2rxeeh_specialgold4984518.png" alt="두산매거진" class="img"></span> <strong class="poduct_tit">두산매거진</strong> <em class="product_desc">2021년 경력사원 채용</em> <em class="product_desc open"><span class="txt">2021년 </span><span class="txt">경력사원 채용</span></em> <span class="thumb_product"><img data-src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2021/05/qtg55x_g2zj-2rxefb_1.png" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus_fix_expand"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-5</span> </span> <span class="bg"></span> </div> </li> <li class="open" data-rec_idx="40255925"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40255925" class="link_box track_event" data-track_event="main|Ads_click|prime_plus_fix_expand|13" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2020/08/qezwgm_7oq0-2rxefo_specialgold4969360logo.png" alt="롯데렌탈㈜" class="img"></span> <strong class="poduct_tit">롯데렌탈㈜</strong> <em class="product_desc">2021년 각 부문 신입/경력사원 채용</em> <em class="product_desc open"><span class="txt">2021년 각 부문</span><span class="txt">신입/경력사원 채용</span></em> <span class="wrap_desc"><span class="txt_desc">2005년 설립 (16년차)</span><span class="txt_desc">사원수 1,111명 <span class="base_year">(2021년)</span></span></span> <span class="thumb_product"><img data-src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2021/05/qt89sf_4e4z-2rxefc_qonsfzejjl2rxefl.png" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus_fix_expand"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-2</span> </span> <span class="bg"></span> </div> </li> <li class="open" data-rec_idx="40290967"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40290967" class="link_box track_event" data-track_event="main|Ads_click|prime_plus_fix_expand|14" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2017/01/ojhlsv_481y-2rxeeh_specialgold6950067gs.png" alt="㈜GS동해전력" class="img"></span> <strong class="poduct_tit">㈜GS동해전력</strong> <em class="product_desc">GS동해전력 경력사원 채용</em> <em class="product_desc open"><span class="txt">GS동해전력 경력사원 채용</span><span class="txt"></span></em> <span class="thumb_product"><img data-src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2021/05/qtfqjq_z014-2rxefj_.png" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus_fix_expand"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-8</span> </span> <span class="bg"></span> </div> </li> <li class="open" data-rec_idx="40274728"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40274728" class="link_box track_event" data-track_event="main|Ads_click|prime_plus_fix_expand|15" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2018/09/pf6azs_df7h-2rxee5_specialgold7646953hdit.png" alt="현대IT&amp;E" class="img"></span> <strong class="poduct_tit">현대IT&amp;E</strong> <em class="product_desc">채용확정형 2기 교육생모집</em> <em class="product_desc open"><span class="txt">채용확정형 2기</span><span class="txt">교육생모집</span></em> <span class="thumb_product"><img data-src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2021/05/qtlu1c_db8o-2rxefl_ITE.png" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus_fix_expand"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-4</span> </span> <span class="bg"></span> </div> </li> <li class="open" data-rec_idx="40258375"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40258375" class="link_box track_event" data-track_event="main|Ads_click|prime_plus_fix_expand|16" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2018/12/pjcxqj_h1vu-2rxgco_specialgold7661862.png" alt="에스케이트리켐(주)" class="img"></span> <strong class="poduct_tit">에스케이트리켐(주)</strong> <em class="product_desc">부문별 경력/신입 채용</em> <em class="product_desc open"><span class="txt">21년도 상반기</span><span class="txt">부문별 경력/신입 채용</span></em> <span class="wrap_desc"><span class="txt_desc">2016년 설립 (5년차)</span><span class="txt_desc">매출액 1,505억 2천만원 <span class="base_year">(2020년)</span></span><span class="txt_desc">사원수 131명 <span class="base_year">(2020년)</span></span></span> <span class="thumb_product"><img data-src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2021/05/qta20v_2hnh-2rxefe_17pl.png" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus_fix_expand"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">상시</span> </span> <span class="bg"></span> </div> </li> <li class="open" data-rec_idx="40194234"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40194234" class="link_box track_event" data-track_event="main|Ads_click|prime_plus_fix_expand|17" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2019/09/py9oxt_o3rr-2rxef8_specialgold7714474mul.png" alt="(주)멀티캠퍼스" class="img"></span> <strong class="poduct_tit">(주)멀티캠퍼스</strong> <em class="product_desc">100% 취업연계 AI 서비스 개발 양성과정</em> <em class="product_desc open"><span class="txt">100% 취업연계</span><span class="txt">AI 서비스 개발 양성과정</span></em> <span class="wrap_desc"><span class="txt_desc">2000년 설립 (21년차)</span><span class="txt_desc">사원수 847명 <span class="base_year">(2021년)</span></span></span> <span class="thumb_product"><img data-src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2021/05/qsq8zw_51yx-2rxefe_01.png" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus_fix_expand"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-11</span> </span> <span class="bg"></span> </div> </li> <li class="open" data-rec_idx="40310845"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40310845" class="link_box track_event" data-track_event="main|Ads_click|prime_plus_fix_expand|18" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2021/05/qtlrq1_pfry-2rxefn_specialgold7923675.png" alt="기술보증기금" class="img"></span> <strong class="poduct_tit">기술보증기금</strong> <em class="product_desc">지식재산공제파트너(모집인) 공모 안내</em> <em class="product_desc open"><span class="txt">지식재산공제파트너</span><span class="txt">(모집인) 공모 안내</span></em> <span class="wrap_desc"><span class="txt_desc">1989년 설립 (32년차)</span><span class="txt_desc">매출액 3,396억 8천만원 <span class="base_year">(2019년)</span></span><span class="txt_desc">사원수 1,355명 <span class="base_year">(2020년)</span></span></span> <span class="thumb_product"><img data-src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2021/05/qtlrqr_x0s4-2rxefn_36.png" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus_fix_expand"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-13</span> <button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('40310845','','t_category=main&amp;t_content=prime_plus_fix_expand', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately track_event" data-track_event="main|Ads_quick_apply|prime_plus_fix_expand|18">입사지원</span></button> </span> <span class="bg"></span> </div> </li> <li class="open" data-rec_idx="40263721"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40263721" class="link_box track_event" data-track_event="main|Ads_click|prime_plus_fix_expand|19" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2014/10/1412120623_specialgold2671079.png" alt="한솔테크닉스㈜" class="img"></span> <strong class="poduct_tit">한솔테크닉스㈜</strong> <em class="product_desc">연구/개발부문 경력사원 모집</em> <em class="product_desc open"><span class="txt">연구/개발부문</span><span class="txt">경력사원 모집</span></em> <span class="thumb_product"><img data-src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2021/05/qt8seh_6isu-2rxefe_1.png" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus_fix_expand"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-5</span> </span> <span class="bg"></span> </div> </li> <li class="open" data-rec_idx="40311040"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40311040" class="link_box track_event" data-track_event="main|Ads_click|prime_plus_fix_expand|20" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2019/01/plb5sx_trch-2rxehi_specialgold7510537.png" alt="대한상공회의소 경기인력개발원" class="img"></span> <strong class="poduct_tit">대한상공회의소 경기인력개발원</strong> <em class="product_desc">[국비무료]4차산업 교육생</em> <em class="product_desc open"><span class="txt">[국비무료] 4차산업</span><span class="txt">취업연계 교육생모집</span></em> <span class="thumb_product"><img data-src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2021/05/qtlrkz_kbx9-2rxefc_.png" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus_fix_expand"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-12</span> </span> <span class="bg"></span> </div> </li> <li class="open" data-rec_idx="40273163"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40273163" class="link_box track_event" data-track_event="main|Ads_click|prime_plus_fix_expand|21" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2021/05/qtajtv_vr9o-2rxefe_specialgold7867054logosp.png" alt="한화솔루션(주)" class="img"></span> <strong class="poduct_tit">한화솔루션(주)</strong> <em class="product_desc">[큐셀] 고려대 산학장학생 모집</em> <em class="product_desc open"><span class="txt">[한화큐셀] 고려대</span><span class="txt">산학장학생(석사) 모집</span></em> <span class="thumb_product"><img data-src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2021/05/qtajv7_d9nn-2rxefe_15pl.png" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus_fix_expand"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-7</span> </span> <span class="bg"></span> </div> </li> <li class="open" data-rec_idx="40282242"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40282242" class="link_box track_event" data-track_event="main|Ads_click|prime_plus_fix_expand|22" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2020/01/q3vc7a_bw0i-2rxefe_specialgold29995kma.png" alt="㈔한국능률협회" class="img"></span> <strong class="poduct_tit">㈔한국능률협회</strong> <em class="product_desc">2021년 상반기(5월) 경력직 채용</em> <em class="product_desc open"><span class="txt">2021년 상반기(5월)</span><span class="txt">경력직 수시채용</span></em> <span class="wrap_desc"><span class="txt_desc">매출액 502억 7천만원 <span class="base_year">(2018년)</span></span><span class="txt_desc">사원수 200명 <span class="base_year">(2018년)</span></span></span> <span class="thumb_product"><img data-src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2021/05/qte22s_1wij-2rxefd_.png" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus_fix_expand"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-4</span> </span> <span class="bg"></span> </div> </li> <li class="open" data-rec_idx="40305809"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40305809" class="link_box track_event" data-track_event="main|Ads_click|prime_plus_fix_expand|23" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2021/05/qtlbg5_8c2r-2rxeff_specialgold5662249wooriat.png" alt="우리자산신탁㈜" class="img"></span> <strong class="poduct_tit">우리자산신탁㈜</strong> <em class="product_desc">2021년 인턴사원 모집 공고</em> <em class="product_desc open"><span class="txt">2021년</span><span class="txt">인턴사원 모집 공고</span></em> <span class="thumb_product"><img data-src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2021/05/qtlbhx_fbqr-2rxeff_ddddd.png" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus_fix_expand"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-4</span> </span> <span class="bg"></span> </div> </li> <li class="open" data-rec_idx="40163210"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40163210" class="link_box track_event" data-track_event="main|Ads_click|prime_plus_fix_expand|24" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2019/02/pnlzqj_8154-2rxefe_specialgold6142271gepa.png" alt="(재)경상북도경제진흥원" class="img"></span> <strong class="poduct_tit">(재)경상북도경제진흥원</strong> <em class="product_desc">경북지역 기술 교육 훈련생 모집</em> <em class="product_desc open"><span class="txt">김천 • 구미 • 칠곡지역</span><span class="txt">기술 교육 훈련생 모집</span></em> <span class="wrap_desc"><span class="txt_desc">1997년 설립 (24년차)</span><span class="txt_desc">사원수 62명 <span class="base_year">(2019년)</span></span></span> <span class="thumb_product"><img data-src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2021/05/qsiyf7_zi3l-2rxefk_.png" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus_fix_expand"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-10</span> </span> <span class="bg"></span> </div> </li> <li class="open" data-rec_idx="40282617"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40282617" class="link_box track_event" data-track_event="main|Ads_click|prime_plus_fix_expand|25" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2020/09/qgs7pg_vtrh-2rxiby_specialgold7847993koreasg.png" alt="한국바이오연구조합" class="img"></span> <strong class="poduct_tit">한국바이오연구조합</strong> <em class="product_desc">바이오 데이터 엔지니어</em> <em class="product_desc open"><span class="txt">바이오 데이터 엔지니어</span><span class="txt">양성사업 청년 미취업자</span></em> <span class="wrap_desc"><span class="txt_desc">2000년 설립 (21년차)</span><span class="txt_desc">매출액 52억 1천만원 <span class="base_year">(2019년)</span></span><span class="txt_desc">사원수 16명 <span class="base_year">(2009년)</span></span></span> <span class="thumb_product"><img data-src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2021/05/qte2ib_8htt-2rxefg_qk19os8pk62rxefd1.png" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus_fix_expand"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-35</span> </span> <span class="bg"></span> </div> </li> <li class="open" data-rec_idx="32982567"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=32982567" class="link_box track_event" data-track_event="main|Ads_click|prime_plus_fix_expand|26" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2020/06/qcawn8_a36a-2rxgco_specialgold39634huonsg200622spg2.png" alt="㈜휴온스글로벌" class="img"></span> <strong class="poduct_tit">㈜휴온스글로벌</strong> <em class="product_desc">휴온스 그룹 수시채용</em> <em class="product_desc open"><span class="txt">글로벌 헬스케어그룹</span><span class="txt">휴온스 그룹 수시채용</span></em> <span class="thumb_product"><img data-src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2020/06/qc63qb_5my5-2rxefn_.png" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus_fix_expand"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-5</span> </span> <span class="bg"></span> </div> </li> <li class="open" data-rec_idx="40229236"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40229236" class="link_box track_event" data-track_event="main|Ads_click|prime_plus_fix_expand|27" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2015/10/1444894299_specialgold3030001safety1.png" alt="㈔대한산업안전협회" class="img"></span> <strong class="poduct_tit">㈔대한산업안전협회</strong> <em class="product_desc">2021년도 수시 공개채용 공고</em> <em class="product_desc open"><span class="txt">2021년도 수시</span><span class="txt">공개채용 공고</span></em> <span class="wrap_desc"><span class="txt_desc">1964년 설립 (57년차)</span><span class="txt_desc">매출액 1,278억 3천만원 <span class="base_year">(2019년)</span></span><span class="txt_desc">사원수 1,077명 <span class="base_year">(2020년)</span></span></span> <span class="thumb_product"><img data-src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2021/05/qszhxz_etro-2rxefd_1.png" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus_fix_expand"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-6</span> </span> <span class="bg"></span> </div> </li> <li class="open" data-rec_idx="40140922"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40140922" class="link_box track_event" data-track_event="main|Ads_click|prime_plus_fix_expand|28" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2020/10/qi4q6k_vy1w-2rxefg_specialgold7399668logo.png" alt="쿠팡풀필먼트서비스" class="img"></span> <strong class="poduct_tit">쿠팡풀필먼트서비스</strong> <em class="product_desc">물류,엔지니어,경영지원 경력모집</em> <em class="product_desc open"><span class="txt">물류,엔지니어,</span><span class="txt">경영지원 경력</span></em> <span class="wrap_desc"><span class="txt_desc">2016년 설립 (5년차)</span><span class="txt_desc">사원수 19,662명 <span class="base_year">(2020년)</span></span></span> <span class="thumb_product"><img data-src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2021/04/qscsox_wvyz-2rxefe_.png" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus_fix_expand"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-5</span> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40247727"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40247727" class="link_box track_event" data-track_event="main|Ads_click|prime_plus|29" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2017/11/ozhmpq_obka-2rxee8_specialgold303984514438.png" alt="㈜썬앳푸드" class="img"></span> <strong class="poduct_tit">㈜썬앳푸드</strong> <em class="product_desc">SERVICE 및 COOK 외식 인재 모집</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday"><span class="num_dday last">오늘마감</span></span> <button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('40247727','','t_category=main&amp;t_content=prime_plus', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately track_event" data-track_event="main|Ads_quick_apply|prime_plus|29">입사지원</span></button> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40309838"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40309838" class="link_box track_event" data-track_event="main|Ads_click|prime_plus|30" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2020/01/q4y8gw_9zij-2rxefg_specialgold5198189.png" alt="대보건설㈜/대보실업㈜" class="img"></span> <strong class="poduct_tit">대보건설㈜/대보실업㈜</strong> <em class="product_desc">각 부문 경력직 수시채용</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-5</span> <button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('40309838','','t_category=main&amp;t_content=prime_plus', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately track_event" data-track_event="main|Ads_quick_apply|prime_plus|30">입사지원</span></button> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40311893"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40311893" class="link_box track_event" data-track_event="main|Ads_click|prime_plus|31" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2019/05/prmgj0_bxwi-2rxefd_specialgold7605436tmax.png" alt="티맥스그룹" class="img"></span> <strong class="poduct_tit">티맥스그룹</strong> <em class="product_desc">2021년 상반기 특별채용</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-11</span> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40284889"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40284889" class="link_box track_event" data-track_event="main|Ads_click|prime_plus|32" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2020/07/qdec1g_7vxk-2rxefc_specialgold15395logo.png" alt="㈜테스" class="img"></span> <strong class="poduct_tit">㈜테스</strong> <em class="product_desc">상반기 각 부문 신입/경력 채용</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-1</span> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="38825093"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=38825093" class="link_box track_event" data-track_event="main|Ads_click|prime_plus|33" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2020/07/qd55se_j6ui-2rxefb_sourcetik.png" alt="TikTok" class="img"></span> <strong class="poduct_tit">TikTok</strong> <em class="product_desc">각 부문별 인턴 및 전문가 채용</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-5</span> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40293649"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40293649" class="link_box track_event" data-track_event="main|Ads_click|prime_plus|34" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2019/07/puvr1c_upnm-2rxefj_specialgold5706578keic190719logo.jpg" alt="한국전자산업협동조합" class="img"></span> <strong class="poduct_tit">한국전자산업협동조합</strong> <em class="product_desc">[무료/인턴쉽연계] 반도체제어</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-15</span> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40093997"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40093997" class="link_box track_event" data-track_event="main|Ads_click|prime_plus|35" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2021/04/qs92jh_cj9g-2rxefl_specialgold77207582.png" alt="원전현장인력양성원" class="img"></span> <strong class="poduct_tit">원전현장인력양성원</strong> <em class="product_desc">[전액무료] 2021년 교육생 모집</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-25</span> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40286171"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40286171" class="link_box track_event" data-track_event="main|Ads_click|prime_plus|36" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2018/10/ph76s3_ob8u-2rxeec_specialgold5696956.png" alt="JB 우리캐피탈(주)" class="img"></span> <strong class="poduct_tit">JB 우리캐피탈(주)</strong> <em class="product_desc">2021년 상반기 IT부문 정규직 채용</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-5</span> </span> <span class="bg"></span> </div> </li></ul>
<ul class="list_product basic" id="_prime" style="height: 1557px"><li class="open" data-rec_idx="40317312"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40317312" class="link_box track_event" data-track_event="main|Ads_click|prime_fix_expand|1" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2021/05/qsptdd_znvu-2rxefg_specialgold66171kbcsg.png">㈜KBC Company</span> <strong class="poduct_tit">㈜KBC Company</strong> <em class="product_desc">각 부문별 신입 및 경력 채용 공고</em> <em class="product_desc open"><span class="txt">각 부문별</span><span class="txt">신입/경력사원 채용</span></em> <span class="thumb_product"><img data-src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2021/05/qtn6m0_yo8d-2rxefk_4.png" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_fix_expand"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-7</span> <button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('40317312','','t_category=main&amp;t_content=prime_fix_expand', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately track_event" data-track_event="main|Ads_quick_apply|prime_fix_expand|1">입사지원</span></button> </span> <span class="bg"></span> </div> </li> <li class="open" data-rec_idx="40292637"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40292637" class="link_box track_event" data-track_event="main|Ads_click|prime_fix_expand|2" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2021/05/qtl8wb_xcre-2rxefi_specialgold7452347logo.png">(주)새하컴즈</span> <strong class="poduct_tit">(주)새하컴즈</strong> <em class="product_desc">화상회의/교육 전문기업 인재채용</em> <em class="product_desc open"><span class="txt">android / java 웹개발자</span><span class="txt">고객관리 및 사업지원</span></em> <span class="wrap_desc"><span class="txt_desc">2009년 설립 (12년차)</span><span class="txt_desc">매출액 88억원 <span class="base_year">(2020년)</span></span><span class="txt_desc">사원수 29명 <span class="base_year">(2021년)</span></span></span> <span class="thumb_product"><img data-src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2021/05/qtfxb8_p6u4-2rxefj_.png" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_fix_expand"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-11</span> <button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('40292637','','t_category=main&amp;t_content=prime_fix_expand', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately track_event" data-track_event="main|Ads_quick_apply|prime_fix_expand|2">입사지원</span></button> </span> <span class="bg"></span> </div> </li> <li class="open" data-rec_idx="40281844"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40281844" class="link_box track_event" data-track_event="main|Ads_click|prime_fix_expand|3" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2021/01/qmt3nm_tixe-2rxefk_specialgold7748476.png">㈜제이와이피엔터테인먼트</span> <strong class="poduct_tit">㈜제이와이피엔터테인먼트</strong> <em class="product_desc">2021년 2분기 경력사원 특별채용</em> <em class="product_desc open"><span class="txt">2021년 2분기</span><span class="txt">경력사원 특별 채용</span></em> <span class="wrap_desc"><span class="txt_desc">1997년 설립 (24년차)</span><span class="txt_desc">매출액 253억 5천만원 <span class="base_year">(2012년)</span></span></span> <span class="thumb_product"><img data-src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2021/05/qtebjb_rldz-2rxefb_jj.png" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_fix_expand"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-11</span> </span> <span class="bg"></span> </div> </li> <li class="open" data-rec_idx="40289652"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40289652" class="link_box track_event" data-track_event="main|Ads_click|prime_fix_expand|4" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2019/09/px8iey_st0n-2rxefj_specialgold42425logo.png">㈜케이엠더블유</span> <strong class="poduct_tit">㈜케이엠더블유</strong> <em class="product_desc">미국법인 부문별 채용안내</em> <em class="product_desc open"><span class="txt">미국법인</span><span class="txt">부문별 채용안내</span></em> <span class="wrap_desc"><span class="txt_desc">1994년 설립 (27년차)</span><span class="txt_desc">사원수 409명 <span class="base_year">(2021년)</span></span></span> <span class="thumb_product"><img data-src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2021/05/qtfnsa_af4q-2rxefe_.png" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_fix_expand"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-35</span> <button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('40289652','','t_category=main&amp;t_content=prime_fix_expand', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately track_event" data-track_event="main|Ads_quick_apply|prime_fix_expand|4">입사지원</span></button> </span> <span class="bg"></span> </div> </li> <li class="open" data-rec_idx="39978218"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=39978218" class="link_box track_event" data-track_event="main|Ads_click|prime_fix_expand|5" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2020/05/qad16k_ly43-2rxefg_specialgold64568.png">대한상공회의소 충남인력개발원</span> <strong class="poduct_tit">대한상공회의소 충남인력개발원</strong> <em class="product_desc">[국비무료] CAD/CAM,스마트팩</em> <em class="product_desc open"><span class="txt">충남인력개발원</span><span class="txt">[국비무료] CAD/CAM,스마</span></em> <span class="thumb_product"><img data-src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2021/04/qr6sq8_yp6j-2rxefk_cnd.png" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_fix_expand"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-11</span> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40234646"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40234646" class="link_box track_event" data-track_event="main|Ads_click|prime|6" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2021/03/qpfbvm_6ylx-2rxefn_specialgold3909032simpac.png">SIMPAC그룹</span> <strong class="poduct_tit">SIMPAC그룹</strong> <em class="product_desc">각 부문 신입/경력 채용</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-1</span> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40279307"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40279307" class="link_box track_event" data-track_event="main|Ads_click|prime|7" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2020/01/q4flgc_y008-2rxef8_specialgold3944604hyoil.png">현대오일뱅크㈜</span> <strong class="poduct_tit">현대오일뱅크㈜</strong> <em class="product_desc">경영기획 분야 경력사원 채용</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-5</span> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40281816"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40281816" class="link_box track_event" data-track_event="main|Ads_click|prime|8" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2015/11/1446444155_specialgold4439162dowls2015102681.jpg">더북컴퍼니</span> <strong class="poduct_tit">더북컴퍼니</strong> <em class="product_desc">2021년 상반기 신입 및 경력 채용</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-5</span> <button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('40281816','','t_category=main&amp;t_content=prime', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately track_event" data-track_event="main|Ads_quick_apply|prime|8">입사지원</span></button> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40271159"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40271159" class="link_box track_event" data-track_event="main|Ads_click|prime|9" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2020/04/q99sv3_olbq-2rxeff_specialgold7757098KSA.png">한국표준협회</span> <strong class="poduct_tit">한국표준협회</strong> <em class="product_desc">[부산] 풀스택 개발자 교육생 모집</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-16</span> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40219850"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40219850" class="link_box track_event" data-track_event="main|Ads_click|prime|10" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2020/04/q9jk7n_ii18-2rxefm_specialgold7761815hyundaichemical.png">㈜현대케미칼</span> <strong class="poduct_tit">㈜현대케미칼</strong> <em class="product_desc">현대케미칼 엔지니어 경력</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-6</span> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40112082"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40112082" class="link_box track_event" data-track_event="main|Ads_click|prime|11" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2021/03/qq3nvn_7fyu-2rxefn_specialgold7738814fsdfasfd.png">포스탑</span> <strong class="poduct_tit">포스탑</strong> <em class="product_desc">각 부문별 신입/경력 모집</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-7</span> <button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('40112082','','t_category=main&amp;t_content=prime', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately track_event" data-track_event="main|Ads_quick_apply|prime|11">입사지원</span></button> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40285287"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40285287" class="link_box track_event" data-track_event="main|Ads_click|prime|12" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2017/11/ozr7pc_dygg-2rxgdg_specialgold73996681422.png">쿠팡풀필먼트서비스</span> <strong class="poduct_tit">쿠팡풀필먼트서비스</strong> <em class="product_desc">[목천센터] 상,하차 계약직 채용</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-20</span> <button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('40285287','','t_category=main&amp;t_content=prime', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately track_event" data-track_event="main|Ads_quick_apply|prime|12">입사지원</span></button> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40295045"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40295045" class="link_box track_event" data-track_event="main|Ads_click|prime|13" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2017/11/oz4mjz_fbll-2rxgdd_specialgold7470378KFCKOREA.png">(주)KFC KOREA</span> <strong class="poduct_tit">(주)KFC KOREA</strong> <em class="product_desc">정규직 신입 매니저 모집</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-4</span> <button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('40295045','','t_category=main&amp;t_content=prime', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately track_event" data-track_event="main|Ads_quick_apply|prime|13">입사지원</span></button> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40289549"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40289549" class="link_box track_event" data-track_event="main|Ads_click|prime|14" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2019/12/q2saiy_gkb7-2rxefc_specialgold5968036lng.png">보령엘엔지터미널㈜</span> <strong class="poduct_tit">보령엘엔지터미널㈜</strong> <em class="product_desc">21년 하반기 공개채용</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-4</span> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40274411"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40274411" class="link_box track_event" data-track_event="main|Ads_click|prime|15" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2015/02/1424044448_specialgold4151474kicc.gif">한국정보통신㈜</span> <strong class="poduct_tit">한국정보통신㈜</strong> <em class="product_desc">일반관리/연구개발 각 부문 채용</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-7</span> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40288871"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40288871" class="link_box track_event" data-track_event="main|Ads_click|prime|16" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2017/03/onmcqs_zagb-2rxeej_specialgold7381732mynavilogosg.png">(주)마이나비코리아</span> <strong class="poduct_tit">(주)마이나비코리아</strong> <em class="product_desc">[일본근무]기업별 신입/경력 모집</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-22</span> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40314628"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40314628" class="link_box track_event" data-track_event="main|Ads_click|prime|17" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2021/03/qpogzo_vfr0-2rxefl_specialgold3597217lblogo.jpg">LB그룹</span> <strong class="poduct_tit">LB그룹</strong> <em class="product_desc">대규모 수시채용 및 인턴채용</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-10</span> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40236668"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40236668" class="link_box track_event" data-track_event="main|Ads_click|prime|18" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2014/11/1417075138_specialgold5724649m2i01.jpg">㈜엠투아이코퍼레이션</span> <strong class="poduct_tit">㈜엠투아이코퍼레이션</strong> <em class="product_desc">개발 및 영업부문 신입/경력 채용</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-5</span> <button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('40236668','','t_category=main&amp;t_content=prime', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately track_event" data-track_event="main|Ads_quick_apply|prime|18">입사지원</span></button> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40274864"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40274864" class="link_box track_event" data-track_event="main|Ads_click|prime|19" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2019/09/pxlp8s_q3wc-2rxefd_specialgold3927389katri.png">한국의류시험연구원</span> <strong class="poduct_tit">한국의류시험연구원</strong> <em class="product_desc">정규직 전환형 직원 채용공고</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-4</span> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40245899"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40245899" class="link_box track_event" data-track_event="main|Ads_click|prime|20" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2019/11/q0y1a9_7rgj-2rxefe_specialgold5694175dbcpt.png">DB캐피탈㈜</span> <strong class="poduct_tit">DB캐피탈㈜</strong> <em class="product_desc">DB캐피탈 경력직원 채용 공고</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-4</span> <button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('40245899','','t_category=main&amp;t_content=prime', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately track_event" data-track_event="main|Ads_quick_apply|prime|20">입사지원</span></button> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40293837"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40293837" class="link_box track_event" data-track_event="main|Ads_click|prime|21" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2018/11/pivtim_tgzh-2rxehp_specialgold5938553rock1128.png">로크웰오토메이션코리아(주)</span> <strong class="poduct_tit">로크웰오토메이션코리아(주)</strong> <em class="product_desc">각 부문 경력직원 모집</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-35</span> <button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('40293837','','t_category=main&amp;t_content=prime', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately track_event" data-track_event="main|Ads_quick_apply|prime|21">입사지원</span></button> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40319071"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40319071" class="link_box track_event" data-track_event="main|Ads_click|prime|22" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2018/02/p4e395_8o8v-2rxeec_specialgold4252354.png">㈜보나비</span> <strong class="poduct_tit">㈜보나비</strong> <em class="product_desc">아티지움 배송기사 모집</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-5</span> <button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('40319071','','t_category=main&amp;t_content=prime', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately track_event" data-track_event="main|Ads_quick_apply|prime|22">입사지원</span></button> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40309780"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40309780" class="link_box track_event" data-track_event="main|Ads_click|prime|23" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2020/09/qgtzag_z073-2rxefd_specialgold6247186dhlsg.png">DHL KOREA</span> <strong class="poduct_tit">DHL KOREA</strong> <em class="product_desc">Finance 회계팀 정규직 채용</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-5</span> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40314427"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40314427" class="link_box track_event" data-track_event="main|Ads_click|prime|24" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2015/05/1432276417_specialgold3025586.png">대상㈜</span> <strong class="poduct_tit">대상㈜</strong> <em class="product_desc">경영지원부문 경력사원 모집</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-5</span> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40274705"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40274705" class="link_box track_event" data-track_event="main|Ads_click|prime|25" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2021/03/qpu1wk_ex0w-2rxefj_specialgold6746834.png">공팔리터</span> <strong class="poduct_tit">공팔리터</strong> <em class="product_desc">영업 신입/경력직 공개채용</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-5</span> <button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('40274705','','t_category=main&amp;t_content=prime', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately track_event" data-track_event="main|Ads_quick_apply|prime|25">입사지원</span></button> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40315799"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40315799" class="link_box track_event" data-track_event="main|Ads_click|prime|26" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2020/09/qgtzag_z073-2rxefd_specialgold6247186dhlsg.png">DHL KOREA</span> <strong class="poduct_tit">DHL KOREA</strong> <em class="product_desc">[수도권센터] 배송/물류/간선운송</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-7</span> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40296324"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40296324" class="link_box track_event" data-track_event="main|Ads_click|prime|27" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2021/01/qnmhno_uhxj-2rxefc_specialgold5473199.png">행복나래주식회사</span> <strong class="poduct_tit">행복나래주식회사</strong> <em class="product_desc">SCM/IT 신입/경력 채용</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-7</span> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40238409"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40238409" class="link_box track_event" data-track_event="main|Ads_click|prime|28" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2020/09/qgmh01_v2w3-2rxefg_specialgold7471537jbcorporation.png">JB(주)</span> <strong class="poduct_tit">JB(주)</strong> <em class="product_desc">2021년 신입/경력직원 채용 </em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-2</span> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40137228"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40137228" class="link_box track_event" data-track_event="main|Ads_click|prime|29" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2020/07/qe7klg_9i24-2rxefh_specialgold5200096dhsgsglogo200729.png">대한상공회의소 부산인력개발원</span> <strong class="poduct_tit">대한상공회의소 부산인력개발원</strong> <em class="product_desc">2021년 상반기 취업교육생 모집</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-1</span> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40286472"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40286472" class="link_box track_event" data-track_event="main|Ads_click|prime|30" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2018/02/p4e395_8o8v-2rxeec_specialgold4252354.png">㈜보나비</span> <strong class="poduct_tit">㈜보나비</strong> <em class="product_desc">아티제 조리/베이커리/홀 파트</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-5</span> <button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('40286472','','t_category=main&amp;t_content=prime', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately track_event" data-track_event="main|Ads_quick_apply|prime|30">입사지원</span></button> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40246332"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40246332" class="link_box track_event" data-track_event="main|Ads_click|prime|31" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2015/08/1438825324_specialgold4415119nexplus.png">(주)넥스플러스</span> <strong class="poduct_tit">(주)넥스플러스</strong> <em class="product_desc">[㈜넥스플러스] 2021년 상반기</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-1</span> <button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('40246332','','t_category=main&amp;t_content=prime', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately track_event" data-track_event="main|Ads_quick_apply|prime|31">입사지원</span></button> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40218217"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40218217" class="link_box track_event" data-track_event="main|Ads_click|prime|32" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2020/09/qgtzag_z073-2rxefd_specialgold6247186dhlsg.png">DHL KOREA</span> <strong class="poduct_tit">DHL KOREA</strong> <em class="product_desc">인천공항 공항업무팀 정규직 신입 채용</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-15</span> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40160298"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40160298" class="link_box track_event" data-track_event="main|Ads_click|prime|33" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2017/02/ol2yrx_au85-2rxee9_specialgold4353538.png">대한상공회의소 광주인력개발원</span> <strong class="poduct_tit">대한상공회의소 광주인력개발원</strong> <em class="product_desc">AI/CAD·CAM/전기/자동화(PLC) 취업연계 전문기술교육과정 모집</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-40</span> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40274871"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40274871" class="link_box track_event" data-track_event="main|Ads_click|prime|34" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2018/02/p4e395_8o8v-2rxeec_specialgold4252354.png">㈜보나비</span> <strong class="poduct_tit">㈜보나비</strong> <em class="product_desc">쿠차라 정규직 오픈멤버 채용</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-15</span> <button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('40274871','','t_category=main&amp;t_content=prime', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately track_event" data-track_event="main|Ads_quick_apply|prime|34">입사지원</span></button> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40279274"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40279274" class="link_box track_event" data-track_event="main|Ads_click|prime|35" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2020/10/qi6fzz_qbtx-2rxefl_specialgold7427870.png">㈜스카이랩스</span> <strong class="poduct_tit">㈜스카이랩스</strong> <em class="product_desc">각 부문별 신입 및 경력 채용</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-8</span> <button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('40279274','','t_category=main&amp;t_content=prime', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately track_event" data-track_event="main|Ads_quick_apply|prime|35">입사지원</span></button> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40244165"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40244165" class="link_box track_event" data-track_event="main|Ads_click|prime|36" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2018/05/p8ftz3_ktbj-2rxgdd_specialgold103799.png">㈜디티에스아이</span> <strong class="poduct_tit">㈜디티에스아이</strong> <em class="product_desc">디지털 퍼포먼스 마케터 채용</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-5</span> <button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('40244165','','t_category=main&amp;t_content=prime', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately track_event" data-track_event="main|Ads_quick_apply|prime|36">입사지원</span></button> </span> <span class="bg"></span> </div> </li></ul>

</div>
<!--  -->



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
						<a href="infocopyright.do">저작권정책 및 제휴문의</a>
						<a href="infobanner.do">배너 가져가기</a>
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

	alert('c');

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
  window.Kakao.init("8a32aafcf70137a891ba6d0b02c48e38");

  function kakaoLogin() {
  	window.Kakao.Auth.login({
  		scope:'profile, account_email, birthday',
  		success: function(authObj) {
  			alert('success');
  			console.log(authObj);
  			window.Kakao.API.request({
  				url: '',
  				success: res => {
  					const kakao_account = res.kakao_account;
  					console.log(kakao_account);
  					console.log("이름:"+kakao_account.profile.name);
  					console.log("생일:"+kakao_account.birth);
  					console.log("이메일:"+kakao_account.email);
   					/* console.log("성별:"+kakao_account.gender);
  					console.log("나이대:"+kakao_account.age_range);  */
  				}

  			});
  		}
  	});
  }

  function f_logout() {
	  location.href = "logout.do";
  }

	  //<!--
    jQuery(function() {
    var $ = jQuery;
    $('.login_page_wrap')
        .on('click', '.t_per', function() {
            if( !$(this).hasClass('t_on') ) {
                $(this).addClass('t_on').next().removeClass('t_on');
                $('#lbl_autologin').show();
                $('.link_rater').hide();
                $('#login_tab').val('p');
               	alert('들어옴?');
                $('#login_frm').attr('action', 'loginAf.do');
            }
        })
        .on('click', '.t_com', function() {
            if( !$(this).hasClass('t_on') ) {
                $(this).addClass('t_on').prev().removeClass('t_on');
                $('#lbl_autologin').hide();
                $('.link_rater').show();
                $('#login_tab').val('c');
                $('#login_frm').attr('action', 'businessloginAf.do');
           }
        })
      
});
//-->


//<!--

var $j = jQuery.noConflict();

function checkLoginValue() {
$j('#memberid, #pwd').each(function (index, el) {
$j(el).siblings('label').hide();

if($j(el).val() == '') {
$j(el).siblings('label').show();
}

if ($j(el).css('background-color') == 'rgb(250, 255, 189)') {
$j('#id-label, #password-label').hide();
}
});
}


$j(document).ready(function () {



window.setTimeout(function () {
checkLoginValue();

$j('#memberid').focus();

if ('' != $j('#memberid').val()) {
$j('#pwd').focus();
}
}, 100);

$j('#memberid, #pwd').on('focus blur keyup change', function () {
checkLoginValue();
});

$j('#label_type').on('click',function () {
$j('#label_type').toggleClass('on');
});
$j('span.frm_checkbox > input[type=checkbox]').on('change', function() {
var chkbox =$j(this);
chkbox.closest('span.frm_checkbox').toggleClass('checked');
})

var security_btn =  $j('#security_btn'),
ssl_login = $j('#ssl_login');
security_btn.on('click', function () {
var ssl_login_val = ssl_login[0].value;
if (ssl_login_val == 1) {
ssl_login[0].value = 0;
security_btn.text('OFF');
security_btn.addClass('off');
} else {
ssl_login[0].value = 1;
security_btn.text('ON');
security_btn.removeClass('off');
}
});
$j('#security_btn').off('dblclick');

$j('.tab_member_type')
.on('click', '.t_per', function () {
saraminEffect('person');
})
.on('click', '.t_com', function () {
saraminEffect('compnay');
});

$j('#wrap_social_login').on('click', 'a', function (e) {
e.preventDefault();
e.stopPropagation();

var link =  $j(e.currentTarget).attr('href'),
loginType = $j('.t_com').hasClass('t_on') === true ? 'c' : 'p' ,
provider = $j(e.currentTarget).data('provider'),
label = loginType === 'c' ? 'com_login_'+provider :  'per_login_'+provider;

var isIe10Check = false;
if((navigator.userAgent.toLowerCase().indexOf("msie") !== -1) && provider === 'apple'){
if(confirm('IE10이하 버전의 인터넷 익스플로러에서는 Apple 로그인이 정상 작동하지 않을 수 있습니다.\n' +
'인터넷 익스플로러를 최신 버전으로 업데이트 해주세요'))
{
loggingEventAndTagManager(['login','pc_login_page',label,''],['ga_lead','login','pc_login_page',label]);
window.open(link+'&login_type='+loginType, '_blank', 'width=480,height=640');
}
return;
}

loggingEventAndTagManager(['login','pc_login_page',label,''],['ga_lead','login','pc_login_page',label]);
window.open(link+'&login_type='+loginType, '_blank', (!$j(this).hasClass('sl_phone') ? 'width=480,height=640' : ''));
});

if ($j('.t_com').hasClass('t_on') === true) {
saraminEffect('compnay');
} else {
saraminEffect('person');
}

function saraminEffect(memberType) {
if (memberType === 'compnay') {
$j('.wrap_member_info').show();
} else {
$j('.wrap_member_info').hide();
}
}
});

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
 
<script type="text/javascript">
<!-- d59485d594506fb0185f34b5e6b7b114 -->

<!-- 자바스크립트 key를 입력하여 초기화해줌 -->
$(document).ready(function(){   
   Kakao.init('8a32aafcf70137a891ba6d0b02c48e38');
   Kakao.isInitialized();
});

function kakaoLogin() {
   window.Kakao.Auth.login({
      scope:'profile, account_email, birthday',
      success: function(authObj) {
     //    alert('success');
         console.log(authObj);
         window.Kakao.API.request({
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
           		dataType: "text",
           		success: function (data) {	
           				
           		//	alert('카카오 씨발 로그인성공')
           		},
           		error: function(){
           			alert("birth:" + birth);
           			alert('ㅋㅋ썽공 구라징');
           		}
           	  })
               
            }
            
         });
      }
   });
}
</script> 



</body>
</html>
