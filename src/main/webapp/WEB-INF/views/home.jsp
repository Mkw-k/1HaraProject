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


<style type="text/css">
@import url(//fonts.googleapis.com/earlyaccess/notosanskr.css);

body {
  font-family: "Noto Sans KR", sans-serif !important;
}
</style>

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

 /* Icon */
  .bar {position: relative;}

    .bar:before, 
    .bar:after {
    content: "";
    position: absolute;
    }

    .bar:before, 
    .bar:after, 
    .bar {
    width: 24px;
    height: 3px;
    background: black;
    margin: 3px 0;
    display: block;
    }

    .bar:before { bottom: 100%; } 
    .bar:after { top: 100%; } 
    .bar.active:after { top: 0; } 
    .bar.active:before { bottom: -200%; } 
    .bar.active { background-color: transparent; } 
    .bar, .bar:before, .bar:after { transition: all .25s linear !important; } 
    .bar.active:before,  .bar.active:after { transition-delay: .15s !important; } 
    .bar.active:before { transform: rotate(45deg); } 
    .bar.active:after { transform: rotate(-45deg); } 

.outside {
width: 25%;
min-width: 200px;
max-width: 250px;
height: 100%;
transform: translateX(-101%);
transition: all .5s cubic-bezier(0,0.05,0,1.3);
overflow: hidden;
}

  .in {
  transform: translateX(0);
  transition: 0;
  }

  .inside {
  position: absolute;
  top: 0;
  bottom: 0;
  margin: auto;
  display: block;
  width: 100%;
  height: 100%;
  background: whitesmoke;
  border-right: 1px solid rgba(255,255,255,0.2);
  border-radius: 0 100% 100% 0;
  transition: all .25s cubic-bezier(1,0.05,1,1.5);
  transition-delay: .5s;

  }

  .in .inside {
  border-radius: 0;
  transition-delay: 0s;

  }

/* material animation */
  .inside:before {
  content: "";
  width: 2100px;
  height: 2100px;
  display: block;
  background-color: white;
  position: absolute;
    top: -50%;
    left: -100%;
    z-index: -1;
  transition: all .75s linear;
  transition-delay: .15s;
  transform: scale(0);
  transform-origin: top right;
  border-radius: 1000px;}

    .outside.in .inside:before {
    transform: scale(1);

    }

/* Menu */
ul.menu {
list-style: none;
margin: 0;
padding: 0;
line-height: 2;
}

.menu li {
background: whitesmoke;
opacity: 0;
padding: 12px 22px;
border-bottom: 1px solid rgba(255,255,255,.5);
color: gray;
transition: all .25s linear;
}

.in .menu li {
transform: translateX(0%);
opacity: 1;
}

.in .menu li:nth-child(1) { transition-delay: 1s; } 
.in .menu li:nth-child(2) { transition-delay: 1.15s; } 
.in .menu li:nth-child(3) { transition-delay: 1.25s; } 
.in .menu li:nth-child(4) { transition-delay: 1.35s; } 
.in .menu li:nth-child(5) { transition-delay: 1.45s; } 
.in .menu li:nth-child(6) { transition-delay: 1.55s; } 
.in .menu li:nth-child(7) { transition-delay: 1.65s; } 

/* Animation */

.in .inside {
  -webkit-animation: bounce 1s both;
}


/* Generated with Bounce.js. Edit at https://goo.gl/zdjCb0 */

@-webkit-keyframes bounce { 
 0% { -webkit-transform: matrix3d(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1); transform: matrix3d(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1); }
  27.68% { -webkit-transform: matrix3d(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1); transform: matrix3d(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1); }
  27.78% { -webkit-transform: matrix3d(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, -100, 0, 0, 1); transform: matrix3d(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, -100, 0, 0, 1); }
  29.73% { -webkit-transform: matrix3d(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, -49.785, 0, 0, 1); transform: matrix3d(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, -49.785, 0, 0, 1); }
  31.61% { -webkit-transform: matrix3d(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, -0.659, 0, 0, 1); transform: matrix3d(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, -0.659, 0, 0, 1); }
  33.06% { -webkit-transform: matrix3d(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, -23.527, 0, 0, 1); transform: matrix3d(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, -23.527, 0, 0, 1); }
  34.43% { -webkit-transform: matrix3d(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, -30.089, 0, 0, 1); transform: matrix3d(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, -30.089, 0, 0, 1); }
  36.81% { -webkit-transform: matrix3d(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, -18.067, 0, 0, 1); transform: matrix3d(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, -18.067, 0, 0, 1); }
  39.2% { -webkit-transform: matrix3d(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, -0.115, 0, 0, 1); transform: matrix3d(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, -0.115, 0, 0, 1); }
  42.09% { -webkit-transform: matrix3d(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, -8.347, 0, 0, 1); transform: matrix3d(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, -8.347, 0, 0, 1); }
  46.79% { -webkit-transform: matrix3d(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, -0.013, 0, 0, 1); transform: matrix3d(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, -0.013, 0, 0, 1); }
  49.68% { -webkit-transform: matrix3d(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, -2.316, 0, 0, 1); transform: matrix3d(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, -2.316, 0, 0, 1); }
  54.38% { -webkit-transform: matrix3d(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, -0.002, 0, 0, 1); transform: matrix3d(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, -0.002, 0, 0, 1); }
  57.27% { -webkit-transform: matrix3d(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, -0.643, 0, 0, 1); transform: matrix3d(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, -0.643, 0, 0, 1); }
  62.05% { -webkit-transform: matrix3d(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, -0.007, 0, 0, 1); transform: matrix3d(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, -0.007, 0, 0, 1); }
  64.86% { -webkit-transform: matrix3d(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, -0.178, 0, 0, 1); transform: matrix3d(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, -0.178, 0, 0, 1); }
  69.64% { -webkit-transform: matrix3d(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, -0.002, 0, 0, 1); transform: matrix3d(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, -0.002, 0, 0, 1); }
  72.53% { -webkit-transform: matrix3d(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, -0.049, 0, 0, 1); transform: matrix3d(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, -0.049, 0, 0, 1); }
  77.23% { -webkit-transform: matrix3d(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1); transform: matrix3d(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1); }
  80.12% { -webkit-transform: matrix3d(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, -0.014, 0, 0, 1); transform: matrix3d(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, -0.014, 0, 0, 1); }
  84.82% { -webkit-transform: matrix3d(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1); transform: matrix3d(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1); }
  87.71% { -webkit-transform: matrix3d(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, -0.004, 0, 0, 1); transform: matrix3d(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, -0.004, 0, 0, 1); }
  92.48% { -webkit-transform: matrix3d(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1); transform: matrix3d(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1); }
  95.3% { -webkit-transform: matrix3d(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, -0.001, 0, 0, 1); transform: matrix3d(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, -0.001, 0, 0, 1); }
  100% { -webkit-transform: matrix3d(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1); transform: matrix3d(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1); } 
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

<link href="csss/Newmain.css" rel="stylesheet" type="text/css">
<link href="csss/headerDefa.css" rel="stylesheet" type="text/css">

</head>
<body id="sri_main" onload="window.open('ad.do','','width=400px, height=400px, left=400px, top=200px, toolbar=0, status=yes, menubars=0, scrollbars=0, resizable=0, location=0, directories=0')">

<div id="skipnavigation">
<a href="#search">본문 바로가기</a>
</div>

<header id="sri_header">
<div class="wrap_header">
<h1>
<a href="/" class="bi" aria-label="사람인" onclick="pushDataLayer('ga_lead','main-gnb','global_menu','ci')">
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
<li><a onclick="pushDataLayer('ga_lead','main-gnb','menu','recruit')" href="recuruitlist.do"><span>채용정보</span></a></li>
<li><a onclick="pushDataLayer('ga_lead','main-gnb','menu','company_info')" href="/zf_user/companylab"><span>기업정보</span></a></li>
<li><a onclick="pushDataLayer('ga_lead','main-gnb','menu','status-list')" href="newslist.do"><span>TODAY NEWS📈</span></a></li>
<li><a onclick="pushDataLayer('ga_lead','main-gnb','menu','verification')" href="pdslist.do"><span>자료실</span></a></li>
<li>
<a onclick="pushDataLayer('ga_lead','main-gnb','menu','acceptance')" href="/zf_user/jobs/theme/it-headhunting">
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
<li><a onclick="pushDataLayer('ga_lead','main-gnb','menu','qst-and-ans')" href="Jobtalklist.do"><span>취업톡톡💬</span></a></li>
<li><a onclick="pushDataLayer('ga_lead','main-gnb','menu','contents')" href="FAQ.do"><span>FAQ</span></a></li>
<li><a onclick="pushDataLayer('ga_lead','main-gnb','menu','contents2')" href="notice.do"><span>공지사항</span></a></li>
<li><a onclick="pushDataLayer('ga_lead','main-gnb','menu','jumpit')" href="https://www.jumpit.co.kr" target="_blank"><span class="icon icon_jumpit">점핏</span></a></li>
</ul>
</div>
</div>
<div class="utility">
<button id="search_open" class="btn_search" type="button" onclick="pushDataLayer('ga_lead','main-gnb','global_menu','search')">
<svg class="icon" aria-hidden="true"><use xlink:href="#svg_gnb_search"></use></svg>
<span>궁금한 정보를 검색해보세요</span>
</button>

<!-- 누구누구님 안녕하세요 -->
<ul class="navbar-nav">
 <li class="nav-item">
<c:choose>
       <c:when test="${login.memberid ne null }">
            		<c:choose>
            			 <c:when test="${login.auth == 1}">
             				 <p><b>[개인🧑]${login.name }</b>님</p>
             	 		 </c:when>

             			<c:when test="${login.auth == 2}">
             				<p><b>[사원👨‍💼]${login.name }</b>님</p>
    		 			</c:when>

    					<c:otherwise>
             				<p><b>[관리자👨‍✈️]]${login.name }</b>님</p>
    					</c:otherwise>
    				</c:choose>			
            	 </c:when> 
         	</c:choose>  
      </li>
 </ul>      
 

<!-- 로그인 로그아웃 란 -->
<c:choose>
	<c:when test="${empty login}">
		<a onclick="pushDataLayer('ga_lead','main-gnb','layer_sign','signin')" href="javascript:login()" class="btn_sign signin"><span class="txt">로그인🔑</span></a>
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

 

<a onclick="pushDataLayer('ga_lead','main-gnb','layer_sign','join')" href="regiclick.do" class="btn_sign signup"><span class="txt">회원가입</span></a>
=======
<a onclick="pushDataLayer('ga_lead','main-gnb','layer_sign','join')" href="mypage.do" class="btn_sign signup"><span class="txt">마이페이지</span></a>
</div>
</div>
<div class="navi_total">
<button type="button" class="btn_menu" onclick="pushDataLayer('ga_lead','main-gnb','total_menu','open')">
<svg aria-hidden="true"><use xlink:href="#svg_gnb_total_off"></use></svg>
<svg aria-hidden="true"><use xlink:href="#svg_gnb_total_on"></use></svg>
<span class="blind">전체메뉴</span>
</button>
<div id="sri_index">
<div class="inner">
<div class="menu">
<div class="depth_1">
<span><a onclick="pushDataLayer('ga_lead','main-gnb','total_menu','recruit')" href="recruitlist.do">채용정보</a></span>
<ul class="depth_2">
<li><a onclick="pushDataLayer('ga_lead','main-gnb','total_menu','recruit_area')" href="recruitlist.do">지역별</a></li>
<li><a onclick="pushDataLayer('ga_lead','main-gnb','total_menu','recruit_job')" href="/zf_user/jobs/list/job-category">직업별</a></li>
<li><a onclick="pushDataLayer('ga_lead','main-gnb','total_menu','recruit_hot100')" href="/zf_user/jobs/hot100">HOT100</a></li>
<li><a onclick="pushDataLayer('ga_lead','main-gnb','total_menu','recruit_curation')" href="/zf_user/curation">큐레이션</a></li>
<li><a onclick="pushDataLayer('ga_lead','main-gnb','total_menu','recruit_public')" href="/zf_user/jobs/public/list">공채</a></li>
<li><a onclick="pushDataLayer('ga_lead','main-gnb','total_menu','recruit_upjong')" href="/zf_user/upjikjong-recruit/select-upjikjong/recruitform_type/industrial">산업별</a></li>
<li><a onclick="pushDataLayer('ga_lead','main-gnb','total_menu','recruit_headhunting')" href="/zf_user/jobs/list/headhunting">헤드헌팅</a></li>
<li><a onclick="pushDataLayer('ga_lead','main-gnb','total_menu','recruit_dispatch')" href="/zf_user/jobs/list/dispatch">파견대행</a></li>
<li><a onclick="pushDataLayer('ga_lead','main-gnb','total_menu','recruit_theme')" href="/zf_user/jobs/theme/main">채용관</a></li>
</ul>
</div>
<div class="depth_1">
<span><a onclick="pushDataLayer('ga_lead','main-gnb','total_menu','companylab')" href="/zf_user/companylab">기업정보</a></span>
<ul class="depth_2">
<li><a onclick="pushDataLayer('ga_lead','main-gnb','total_menu','company_review')" href="/zf_user/company-review">기업리뷰</a></li>
<li><a onclick="pushDataLayer('ga_lead','main-gnb','total_menu','company_interview')" href="/zf_user/interview-review">면접후기</a></li>
<li><a onclick="pushDataLayer('ga_lead','main-gnb','total_menu','company_careerinfo')" href="/zf_user/career-information/senior-list">직무인터뷰</a></li>
<li><a onclick="pushDataLayer('ga_lead','main-gnb','total_menu','company_salary')" href="/zf_user/salaries/total-salary/list">연봉정보</a></li>
<li><a onclick="pushDataLayer('ga_lead','main-gnb','total_menu','company_certification')" href="/zf_user/company-info/sri-certification?seq=377">기업큐레이션</a></li>
<li><a onclick="pushDataLayer('ga_lead','main-gnb','total_menu','company_roadmap')" href="/zf_user/company-section/road-map">이직로드맵</a></li>
</ul>
</div>
<div class="depth_1">
<span><a onclick="pushDataLayer('ga_lead','main-gnb','total_menu','talent_person')" href="/zf_user/member/suggest/status-list">TODAY NEWS📈</a></span>
<ul class="depth_2">
<li><a onclick="pushDataLayer('ga_lead','main-gnb','total_menu','talent_status-list')" href="/zf_user/member/suggest/status-list">제안받은 현황<span class="flag">개인</span></a></li>
<li><a onclick="pushDataLayer('ga_lead','main-gnb','total_menu','talent_talent-pool')" href="/zf_user/memcom/talent-pool/main">인재Pool 검색<span class="flag">기업</span></a></li>
</ul>
</div>
<div class="depth_1">
<span><a onclick="pushDataLayer('ga_lead','main-gnb','total_menu','verification')" href="pdslist.do">자료실</a></span>
<ul class="depth_2">
<li><a onclick="pushDataLayer('ga_lead','main-gnb','total_menu','verification_preview')" href="/zf_user/memcom/preview/guide?page_type=manual">preview 소개</a></li>
<li><a onclick="pushDataLayer('ga_lead','main-gnb','total_menu','verification_iam-ground')" href="/zf_user/event/iam-ground-app/app-intro">아이엠그라운드 소개</a></li>
</ul>
</div>
<div class="depth_1">
<span><a onclick="pushDataLayer('ga_lead','main-gnb','total_menu','acceptance')" href="/zf_user/jobs/theme/it-headhunting">합격ㅋㅋ</a></span>
</div>
<div class="depth_1">
<span><a>사람인 서비스</a></span>
<ul class="depth_2">
<li><a onclick="pushDataLayer('ga_lead','main-gnb','total_menu','resume-manage')" href="/zf_user/resume/resume-manage">이력서 관리<span class="flag">개인</span></a></li>
<li><a onclick="pushDataLayer('ga_lead','main-gnb','total_menu','recruit-manage')" href="/zf_user/company/recruit-manage">공고·지원자 관리<span class="flag">기업</span></a></li>
<li><a onclick="pushDataLayer('ga_lead','main-gnb','total_menu','qst-and-ans')" href="/zf_user/company-review-qst-and-ans">취준진담</a></li>
<li><a onclick="pushDataLayer('ga_lead','main-gnb','total_menu','contents')" href="/zf_user/white-paper/office">FAQ<span class="flag">글자수세기</span></a></li>
</ul>
<ul class="depth_2">
<li><a target="_blank" onclick="pushDataLayer('ga_lead','main-gnb','total_menu','jumpit')" href="https://www.jumpit.co.kr" class="icon icon_jumpit">점핏<svg aria-hidden="true"><use xlink:href="#svg_gnb_window_new"></use></svg></a></li>
<li><a target="_blank" onclick="pushDataLayer('ga_lead','main-gnb','total_menu','otwojob')" href="https://www.otwojob.com/main" class="icon icon_otwojob">오투잡<svg aria-hidden="true"><use xlink:href="#svg_gnb_window_new"></use></svg></a></li>
</ul>
</div>
</div>
<ul class="extra">
<li><a onclick="pushDataLayer('ga_lead','main-gnb','total_menu','help')" href="/zf_user/help/help-word/main">고객센터<span>공지/이벤트</span></a></li>
<li><a onclick="pushDataLayer('ga_lead','main-gnb','total_menu','reclist_recommend')" href="/zf_user/member/avatar/list">추천<span>채용공고</span></a></li>
<li><a onclick="pushDataLayer('ga_lead','main-gnb','total_menu','products')" href="/zf_user/service/products">상품 안내<span>유료서비스</span></a></li>
<li><a target="_blank" onclick="pushDataLayer('ga_lead','main-gnb','total_menu','welounge')" href="/zf_user/welounge/main">We.라운지<span>브랜딩</span></a></li>
</ul>
</div>
</div>
</div>
</header>

<div class="all">


 <!-- 메인 검색 창 -->


 <!-- 검색html -->


 <section style="padding: 0">
 <form id="search_form_recruit" onsubmit="event.preventDefault()" style="height: 400px; background-image: url('개발자23.gif'); margin-top: 0px;"">
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
            <svg xmlns="http://www.w3.org/2000/svg" width="28" height="28" viewBox="0 0 28 28" class="bg_search">
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
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 16 16" class="ic_reset">
                <g fill="none" fill-rule="evenodd">
                    <path fill-rule="nonzero" d="M0 0H16V16H0z"></path>
                    <path stroke="#B5BACB" d="M12.828 3.003v3.024H9.804m2.943 3.815c-.845 2.21-3.114 3.534-5.454 3.183-2.34-.35-4.12-2.282-4.281-4.642-.16-2.36 1.342-4.515 3.613-5.18 2.27-.664 4.698.34 5.835 2.415"></path>
                </g>
            </svg>검색 초기화
        </button>
    </div>
</form>
</section>
<!-- 메인검색창 끝 -->


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

<div id="section_contents" class="cont_top">
    <div class="inner">
        <div class="lpop_wrap layer_upgrade" style="display: none;">
            <div class="layer_head"><strong class="blind">브라우저 지원범위 안내</strong></div>
            <div class="layer_cont">
                <a class="desc_upgrade" target="_blank" title="업그레이드 새창알림">
                    원활한 서비스 이용을 위해<br>
                    <strong>최신 익스플로러 브라우저</strong>로<br>
                    <strong>업그레이드</strong> 해주세요
                </a>
            </div>
            <button type="button" class="btn_close"><span class="blind">닫기</span></button>
        </div>
        <div class="wrap_recomm loading" style="display : block">
            <div class="wrap_bigbox person">
                <div class="bigbox person" style="width: 2233px; transform: translateX(-1595px); transition: all 300ms ease 0s;">
                    <div class="slide type_event">
                        <img src="https://www.saraminbanner.co.kr/new/main/2021/03/qpqjor_pit8-2so1qt_A01.png">
                        <a href="https://www.saramin.co.kr/zf_user/curation?inner_source=saramin&amp;inner_medium=banner&amp;inner_campaign=top_box_type_banner_person&amp;inner_term=curation" class="go_link" target="_blank"></a>
                    </div>
                    <div class="slide type_company">
                        <span class="category">추천기업</span>
                        <strong class="title">
                            <a href="/zf_user/company-info/view?csn=RWxFQ0JEWDhqL09Xc3h4dXRyUFpxZz09" data-click-url="http://rcmd-log.saramin.co.kr:9020/so-logging/log/client?custId=0&amp;pcId=16230612419786911889857&amp;nonce=f545d7cea28927b4a53f&amp;dpId=SRI_050_MAIN_SM_CPN&amp;scnId=763&amp;tgId=1&amp;itemSetId=1&amp;itemValue=5298500774&amp;click=1" class="link goto_company_view" onmousedown="loggingEventAndTagManager(['main', 'BIG_com', 'cominfo', ''], ['ga_lead', 'main', 'BIG_com', 'cominfo'])">
                                <span>롯데e커머스</span>
                            </a>
                        </strong>
                        <div class="wrap_list">
                            <dl class="list">
                                <dt class="list_title">기업정보
                                    <svg xmlns="http://www.w3.org/2000/svg" width="7" height="11" viewBox="0 0 7 11" class="ic_arrow">
                                        <path fill="none" fill-rule="evenodd" stroke="#FFF" d="M-2 3L3 8 8 3" opacity=".8" transform="rotate(-90 3 5.5)"></path>
                                    </svg>
                                </dt>
                                <dd class="desc company_info">
                                    - 업종 : 쇼핑몰·오픈마켓<br>- 주소 : 서울 송파구 </dd>
                            </dl>
                            <a href="/zf_user/company-info/view?csn=RWxFQ0JEWDhqL09Xc3h4dXRyUFpxZz09" onmousedown="loggingEventAndTagManager(['main', 'BIG_com', 'cominfo', ''], ['ga_lead', 'main', 'BIG_com', 'cominfo'])" class="list_link"></a>
                        </div>
                        <div class="wrap_list">
                            <dl class="list">
                                <dt class="list_title">진행중 공고
                                    <svg xmlns="http://www.w3.org/2000/svg" width="7" height="11" viewBox="0 0 7 11" class="ic_arrow">
                                        <path fill="none" fill-rule="evenodd" stroke="#FFF" d="M-2 3L3 8 8 3" opacity=".8" transform="rotate(-90 3 5.5)"></path>
                                    </svg>
                                </dt>
                                <dd class="desc">
                                    [TECH팀] DevOps(C 외 4건 </dd>
                            </dl>
                            <a href="/zf_user/company-info/view-inner-recruit?csn=RWxFQ0JEWDhqL09Xc3h4dXRyUFpxZz09" class="list_link" onclick="" onmousedown="loggingEventAndTagManager(['main', 'BIG_com', 'rec', ''], ['ga_lead', 'main', 'BIG_com', 'rec'])"></a>
                        </div>
                        <button type="button" class="btn_link" onclick="window.location.href='/zf_user/company-info/view?csn=RWxFQ0JEWDhqL09Xc3h4dXRyUFpxZz09'" onmousedown="loggingEventAndTagManager(['main', 'BIG_com', 'cominfo', ''], ['ga_lead', 'main', 'BIG_com', 'cominfo'])">
                            <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="18px" height="18px" viewBox="0 0 18 18" version="1.1" class="ic">
                                <title>ico_company</title>
                                <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                    <g transform="translate(-424.000000, -490.000000)">
                                        <g transform="translate(330.000000, 192.000000)">
                                            <g transform="translate(32.000000, 288.000000)">
                                                <g transform="translate(61.000000, 10.000000)">
                                                    <image x="1" y="0" width="18" height="18" xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABIAAAASCAYAAABWzo5XAAAABGdBTUEAALGOfPtRkwAAAERlWElmTU0AKgAAAAgAAYdpAAQAAAABAAAAGgAAAAAAA6ABAAMAAAABAAEAAKACAAQAAAABAAAAEqADAAQAAAABAAAAEgAAAACaqbJVAAADfklEQVQ4EX2TzXLjRBSFT6tbv5bkyHbiBJOahCoWFFWkYMdr8AaseQ/2bNiymuJ5qKIoGEiYIZOfyTixLcuWLPUPRx4Ydthldbu7de+53z0t8M/n+vo63mxeKWMK1y8tFguRZZm9uLjY/Hvm/0bx/Pn3RRwfH56ejL8t1+WXxnqVgxPOiiBIopuH+7df/3p9vXwfZB/2v9it74tcykYl0fCb2z9ffHV7qT/uui7VFrCuFyWglDqVYfRjZHTTRzaWmz7grMeHg5IeEmnDUTH6QZ19dL7wuvrzN4sNAnjQ2qAPs48FeEK4L5I43q9LvqiN2YsLAwXL+Wg4wPDog+/UdHpc3q8a1HaFozzBU9UgCgIGMhDCQ7NrEQ8GeCzXOCpyzFcVjHEoigEubx9xOpvhcFxU6mm5FY4beRwhDn3kVB/4ivL7zB58z0PM7FkSIeT6kGO/E4XhXo0QAmVZeqpuWjyVGzwsar4cY1W16GWTCTFJ1Lsd8jTBI5WQDBY8q1l3P39YrDFlaYICVGc6+EGENPcRhBIxSYVkYXtFnoRTCiGzJwMq5RinHozgnNyGxQgqCCElG2OYWNcbGLLRNoBpOmi+3DPqSzNth86ynG3NdQ292dEc7KyyMJslzFCh6hioT1xZhRW1SCdRQiLibw9bKtQELkSENXsZehEqBiFSnvGxZIIGCnkg+SS6SexBOY3Yt4g4SklL9lI9i9Q3CEQL5XcYuB0k/zsGz5TDLBWIhaFqvAv0wLJeE/Y4CbCsCduX1N7D9lA3NWGnmNNnxxNF6GsY63DMSq5uHnjWR0amvFvAeBBCd4ZtplMJr6+33ZEVa0jIIjBbeCHVdhUOQzKVAe2iMBunPM9kdQ3Vdh3evH3C1f0cRcpWstSknuOX367eO5z25txhx+CzkylWKsPZ+TkuX75GRvVRf11s22JykDI7M3IxJLj5/RY/3a4xzhKUW+KUEr4SeFxWOHl2hmfHUxRZjLPZIY0aYlOW7xTd3N7h91d3OMh5b6hqUozRsmRJf5ntjibglyw6YitGE9zd36GmgKuXf7E0+oxN8aztxGCQYDwaEioDZdnejLqpYHXDjtS8nA2bqznf7m1xkOdIkhiT8YjXit4jaFWWm/rDSbE9SuNty4VBFOPnF384JnBat8J22hneN2O0cM66dVmKzz79RPTMTicHhOeUllH9N/QDw/IGcl6sAAAAAElFTkSuQmCC"></image>
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
                        <span class="category">추천공고</span>
                        <strong class="title"><span>라인비즈플러스(주)</span></strong>
                        <p class="title_recom">
                            <a href="/zf_user/jobs/relay/view?isMypage=no&amp;view_type=list&amp;rec_idx=40378127" class="link goto_recruit_view" data-click-url="http://rcmd-log.saramin.co.kr:9020/so-logging/log/client?custId=&amp;pcId=16230612419786911889857&amp;nonce=56a136eb71e11c3e8ce7&amp;dpId=SRI_050_MAIN_AVA_RCT&amp;scnId=755&amp;tgId=2&amp;itemSetId=1&amp;itemValue=40378127&amp;click=1" onmousedown="loggingEventAndTagManager(['main', 'BIG_rec', 'rec', ''], ['ga_lead', 'main', 'BIG_rec', 'rec'])">
                                <span>LINE Fintech Recruitment 2021 전직군 경력 공개채용</span>
                            </a>
                        </p>
                        <div class="wrap_list">
                            <dl class="list">
                                <dt class="list_title">기업정보
                                    <svg xmlns="http://www.w3.org/2000/svg" width="7" height="11" viewBox="0 0 7 11" class="ic_arrow">
                                        <path fill="none" fill-rule="evenodd" stroke="#FFF" d="M-2 3L3 8 8 3" opacity=".8" transform="rotate(-90 3 5.5)"></path>
                                    </svg>
                                </dt>
                                <dd class="desc">
                                    응용 소프트웨어 개발 및 공급업, 8년차, 경기 성남시 분당구 분당내곡로 </dd>
                            </dl>
                            <a href="/zf_user/company-info/view?csn=bEl4VFRFN051aTFRSEEwYzJscW9wUT09" onmousedown="loggingEventAndTagManager(['main', 'BIG_rec', 'cominfo', ''], ['ga_lead', 'main', 'BIG_rec', 'cominfo'])" class="list_link"></a>
                        </div>
                        <div class="wrap_list">
                            <dl class="list">
                                <dt class="list_title">면접 후기
                                    <svg xmlns="http://www.w3.org/2000/svg" width="7" height="11" viewBox="0 0 7 11" class="ic_arrow">
                                        <path fill="none" fill-rule="evenodd" stroke="#FFF" d="M-2 3L3 8 8 3" opacity=".8" transform="rotate(-90 3 5.5)"></path>
                                    </svg>
                                </dt>
                                <dd class="desc">
                                    IT·인터넷&nbsp;면접 후기 748건
                                </dd>
                            </dl>
                            <a href="/zf_user/interview-review?my=0&amp;page=1&amp;orderby=registration&amp;job_category=4" class="list_link" onmousedown="loggingEventAndTagManager(['main', 'BIG_rec', 'interview-review', ''], ['ga_lead', 'main', 'BIG_rec', 'interview-review'])"></a>
                        </div>
                        <button type="button" class="btn_link" onclick="window.location.href='/zf_user/jobs/relay/view?isMypage=no&amp;view_type=list&amp;rec_idx=40378127'" onmousedown="loggingEventAndTagManager(['main', 'BIG_rec', 'rec', ''], ['ga_lead', 'main', 'BIG_rec', 'rec'])">
                            <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="20px" height="16px" viewBox="0 0 20 16" version="1.1" class="ic">
                                <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                    <g transform="translate(-434.000000, -492.000000)">
                                        <g transform="translate(330.000000, 192.000000)">
                                            <g transform="translate(32.000000, 288.000000)">
                                                <g transform="translate(72.000000, 10.000000)">
                                                    <image x="0" y="2" width="20" height="16" xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABQAAAAQCAYAAAAWGF8bAAAABGdBTUEAALGOfPtRkwAAAERlWElmTU0AKgAAAAgAAYdpAAQAAAABAAAAGgAAAAAAA6ABAAMAAAABAAEAAKACAAQAAAABAAAAFKADAAQAAAABAAAAEAAAAABHXVY9AAADRElEQVQ4EWVUWUhUYRT+5s6Ms2leQguzpk1pcwFbaGFQ6qUhqKDMXvKhNx9ajCIIdwtCeokIKiiTShkwgtQpITWQUiSEtCJsrMacYcLKcu7s472df+S/3uiHe8/2ne3+51wdNKexsbHCarVWRqNRaX5+/npDQ8NrjVllm5qatpBwnrC5oVDocX19/W3VyJmampqr09PTCjvJZFIZGRmR6+rqyrmd09ra2j0DAwMSw7ATCAQUSvyIHoFjQMJBr9ebAmhfXV1dYbLZOZD4JR0dHQtZNUC/369QQacYLhU1PT39kt2u+nF/lJWVWaj1M1xBVZ1wOp25XOY0JycH9FyghGahubk53+FwbOdGLaVEoESHCGhg+uzs7IrMzEwtROVLS0tX6XS6XYIsyztW5uYKPs84ZqY/gzpRQYwpKipap9fr11ZXV1sKCgoKZ2d8+DYxhngs+g+OkkEQhN1C1tKl2z1DT9H78CaObFqPG+eOIJlIqGAC6hKJRB5VtsoqS+KnkT5UOYtxcqsVMz6visvIyAB1lCekxX9ve/m8Bx++x+BNAl2uJxh71asCLRYLqzoj02Zb6W69hgl/EF+DJnwMKGitO/pPR9StaEhG/5jvt/ZATgP0BgGySYb0c0INSBfBnJImszG9v28Qd12DEJcAQRmQ46OgS4PBkPrEzCchmMRl74vXUzAjyCBj/17AXuhQA0qSxBwC0Cvv9uxajSy6EykC7C4GHAeOq8FoGUCfxm/w/Yo9ONt8udIzWIOsFcDGfXexOn+bGnByclIi4WNV1dnZTlH8vmHN6eVGYxCbdx7CZufiggSDQYTD4begkWDD+iMaCSmxaEQzrgtsS0tLH49O2HtUiRIJh/7Dud3uBI3gWoFAc+Pj4+2yokOaycx9U3RqagrU8i2N8g7TmS1WjQqIx+MYGhp6Tmv5JbUpNpvtSmdnp0+LikQiaGtre0Gz9ZjrKflwe3v7vbm5Oa5K0e7u7hDN6kUm6Nmrv78/VFJS8mx0dLRMFMVltNcgxx6j0XiMdjTGMPzQOrqHh4ftZrO5mNrXuVwur8fjKac/0BuG0XEgo6QspTE4TGyY1qiNKlqcHw2Q9HR9OEnY5VRZL8nd3PwX+wS6IUlvDbcAAAAASUVORK5CYII="></image>
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
                        <span class="category">취준진담</span>
                        <strong class="title"><span>34살 신입으로 취업하는 건 이제 포기해야되나요?</span></strong>
                        <span class="recom_category">
                            <span>모든기업</span>
                            <span>모든 직무</span>
                            <span>2021.03.09작성</span>
                        </span>
                        <span class="recom_category">
                            <span>#신입</span>
                        </span>
                        <p class="question">
                            할 수 있는 건 다 한것 같습니다.4년제 공대 졸업 후 빚이 너무 있어서 학자금 대출 상환하고 집안 형편이 어려워 집안을 돕느라4~5년간 전공과 무관한 일을 하다가모두 빚을 상환하고 모은돈으로 다시 전공공부를 했습니다.대학전공과 관련된 기사자격증 2개토익컴활 한능검 공기업인턴전공과 관련된 실무를 쌓기위해 4개월간 학원도 다녓습니다그리고1월부터 현재까지 600곳이상의 회사를 지원했습니다.결과는 모두다 광탈입니다면접은 총 20곳 정도 됫는데다 불합격됬습니다이제 뭘해야될지 모르겟습니다자살이 답일까요? </p>
                        <button type="button" class="btn_link goto_qna" data-value="15009" onmousedown="loggingEventAndTagManager(['main', 'BIG_qna', 'qna', ''], ['ga_lead', 'main', 'BIG_qna', 'qna'])">
                            <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="19px" height="19px" viewBox="0 0 19 19" version="1.1" class="ic">
                                <title>ico_answer</title>
                                <g id="0806" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                    <g transform="translate(-421.000000, -490.000000)">
                                        <g transform="translate(328.000000, 192.000000)">
                                            <g transform="translate(32.000000, 288.000000)">
                                                <g transform="translate(61.000000, 10.000000)">
                                                    <image x="0" y="0" width="19" height="19" xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABMAAAATCAYAAAByUDbMAAAABGdBTUEAALGOfPtRkwAAAERlWElmTU0AKgAAAAgAAYdpAAQAAAABAAAAGgAAAAAAA6ABAAMAAAABAAEAAKACAAQAAAABAAAAE6ADAAQAAAABAAAAEwAAAAAgb1CmAAADN0lEQVQ4EYVUS0tbYRCd5MY8jIkm1b6wkSi1iotSKm0pCBIo7cJVf0F3dpX+BemupRRcdNGuCm6sYsFNNkViMRBQKkqKWEuiRkJioqZG8zKP23NuvSK22g8m3813Z86cOTPfNciZNTExYcaRx2Qy3bfZbD0NDQ3XDAaDvV6vF6vVaqpUKq1VKpX5tra22ODgYBnvVB3CoD+MjIyY+vv7ewDworW19Smc3Y2NjWI2m8VoNArABCACMNnd3c3t7Ox8OTo6Gl1ZWZn3+/1lHUdUVVWmp6efhMPhOBxVBOHo/AVgdX9/X11eXi7MzMw8RzU2gpn4MzU1dQdMPnR1dd1obm4WRVF4fO5CaeJwOMTr9dqQchTJM9g/K8Fg0Iqo1wB6SCCLxSJ0/t+iDw0yKGDpRbmfjIlE4iayPLLb7QLRNQxkYel/GXU7fU5nNEhA4m6xWBwwsmtOp9NNRgSjs55VZ6jvp9/xmYuSoFFG7Pf4c4sdYwa+YODe3p4sLCwIOibIKIuLi9oZAZaWlmR9fV1qtZrWZXaaJDAFHUZQdzPDaTZ0Hhsbk2g0KtBDxsfHJR6PC+aMzZJQKKSNiR5DQCynMjQ09KClpWUApmWgQ1NTk/T19YnH49G61t3dLe3t7VpzOjs7pbe3VyCNJglnL5fLSTqd/mbK5/ORbDYrBwcHWqksmY40LoqOTp8ITzD9nEwxuFIoFGibJkx0CB3ddLvdHWwCF7Whfvqz3kWyplZ8z523gSQymUwNYGEFbc0DyI5gH5tAZgxiAI1AZ01ndHh4SCA25CvA3ygYNhV38gf+XIHdpuOxoJrI/H/WWBoZpVIpQXwUTfIPDw//1GqZm5vL+3y+7xiDx6B7iRpQWL0cBpfLZW1MyIYjE4vFZHV1NYgx8qMB4dnZWfXPyEMc3M0MGPyiFslkUra3tysoew1WhwRulG4AaAUNyyJZBOABPIfwtUlQZup7AoYrddVqtXYQbGtrq4SvxzuXy/UKYAawdIAlb0sJJZWQrByJRApgUyWIvjSwQCBgAatnuBaXMajwTb4EyEd8p0rHjmk94KJdA4MOLpRwfWNj4y1Yvccem5ycrF0U+K93vwFtX0aHbXi7swAAAABJRU5ErkJggg=="></image>
                                                </g>
                                            </g>
                                        </g>
                                    </g>
                                </g>
                            </svg>
                            답변 99건+ 보러가기 </button>
                    </div>
                    <div class="slide type_event">
                        <img src="https://www.saraminbanner.co.kr/new/main/2021/03/qq7cir_wudv-2so1qt_PC.png">
                        <a href="https://www.saramin.co.kr/zf_user/jobs/theme/jump-it?t_ref=main&amp;t_ref_content=platinum_fix_expand&amp;inner_source=saramin&amp;inner_medium=banner&amp;inner_campaign=top_box_type_banner_person&amp;inner_term=jumpit" class="go_link" target="_blank"></a>
                    </div>
                    <div class="slide type_event slide_active">
                        <img src="https://www.saraminbanner.co.kr/new/main/2021/03/qpqjor_pit8-2so1qt_A01.png">
                        <a href="https://www.saramin.co.kr/zf_user/curation?inner_source=saramin&amp;inner_medium=banner&amp;inner_campaign=top_box_type_banner_person&amp;inner_term=curation" class="go_link" target="_blank"></a>
                    </div>
                    <div class="slide type_company">
                        <span class="category">추천기업</span>
                        <strong class="title">
                            <a href="/zf_user/company-info/view?csn=RWxFQ0JEWDhqL09Xc3h4dXRyUFpxZz09" data-click-url="http://rcmd-log.saramin.co.kr:9020/so-logging/log/client?custId=0&amp;pcId=16230612419786911889857&amp;nonce=f545d7cea28927b4a53f&amp;dpId=SRI_050_MAIN_SM_CPN&amp;scnId=763&amp;tgId=1&amp;itemSetId=1&amp;itemValue=5298500774&amp;click=1" class="link goto_company_view" onmousedown="loggingEventAndTagManager(['main', 'BIG_com', 'cominfo', ''], ['ga_lead', 'main', 'BIG_com', 'cominfo'])">
                                <span>롯데e커머스</span>
                            </a>
                        </strong>
                        <div class="wrap_list">
                            <dl class="list">
                                <dt class="list_title">기업정보
                                    <svg xmlns="http://www.w3.org/2000/svg" width="7" height="11" viewBox="0 0 7 11" class="ic_arrow">
                                        <path fill="none" fill-rule="evenodd" stroke="#FFF" d="M-2 3L3 8 8 3" opacity=".8" transform="rotate(-90 3 5.5)"></path>
                                    </svg>
                                </dt>
                                <dd class="desc company_info">
                                    - 업종 : 쇼핑몰·오픈마켓<br>- 주소 : 서울 송파구 </dd>
                            </dl>
                            <a href="/zf_user/company-info/view?csn=RWxFQ0JEWDhqL09Xc3h4dXRyUFpxZz09" onmousedown="loggingEventAndTagManager(['main', 'BIG_com', 'cominfo', ''], ['ga_lead', 'main', 'BIG_com', 'cominfo'])" class="list_link"></a>
                        </div>
                        <div class="wrap_list">
                            <dl class="list">
                                <dt class="list_title">진행중 공고
                                    <svg xmlns="http://www.w3.org/2000/svg" width="7" height="11" viewBox="0 0 7 11" class="ic_arrow">
                                        <path fill="none" fill-rule="evenodd" stroke="#FFF" d="M-2 3L3 8 8 3" opacity=".8" transform="rotate(-90 3 5.5)"></path>
                                    </svg>
                                </dt>
                                <dd class="desc">
                                    [TECH팀] DevOps(C 외 4건 </dd>
                            </dl>
                            <a href="/zf_user/company-info/view-inner-recruit?csn=RWxFQ0JEWDhqL09Xc3h4dXRyUFpxZz09" class="list_link" onclick="" onmousedown="loggingEventAndTagManager(['main', 'BIG_com', 'rec', ''], ['ga_lead', 'main', 'BIG_com', 'rec'])"></a>
                        </div>
                        <button type="button" class="btn_link" onclick="window.location.href='/zf_user/company-info/view?csn=RWxFQ0JEWDhqL09Xc3h4dXRyUFpxZz09'" onmousedown="loggingEventAndTagManager(['main', 'BIG_com', 'cominfo', ''], ['ga_lead', 'main', 'BIG_com', 'cominfo'])">
                            <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="18px" height="18px" viewBox="0 0 18 18" version="1.1" class="ic">
                                <title>ico_company</title>
                                <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                    <g transform="translate(-424.000000, -490.000000)">
                                        <g transform="translate(330.000000, 192.000000)">
                                            <g transform="translate(32.000000, 288.000000)">
                                                <g transform="translate(61.000000, 10.000000)">
                                                    <image x="1" y="0" width="18" height="18" xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABIAAAASCAYAAABWzo5XAAAABGdBTUEAALGOfPtRkwAAAERlWElmTU0AKgAAAAgAAYdpAAQAAAABAAAAGgAAAAAAA6ABAAMAAAABAAEAAKACAAQAAAABAAAAEqADAAQAAAABAAAAEgAAAACaqbJVAAADfklEQVQ4EX2TzXLjRBSFT6tbv5bkyHbiBJOahCoWFFWkYMdr8AaseQ/2bNiymuJ5qKIoGEiYIZOfyTixLcuWLPUPRx4Ydthldbu7de+53z0t8M/n+vo63mxeKWMK1y8tFguRZZm9uLjY/Hvm/0bx/Pn3RRwfH56ejL8t1+WXxnqVgxPOiiBIopuH+7df/3p9vXwfZB/2v9it74tcykYl0fCb2z9ffHV7qT/uui7VFrCuFyWglDqVYfRjZHTTRzaWmz7grMeHg5IeEmnDUTH6QZ19dL7wuvrzN4sNAnjQ2qAPs48FeEK4L5I43q9LvqiN2YsLAwXL+Wg4wPDog+/UdHpc3q8a1HaFozzBU9UgCgIGMhDCQ7NrEQ8GeCzXOCpyzFcVjHEoigEubx9xOpvhcFxU6mm5FY4beRwhDn3kVB/4ivL7zB58z0PM7FkSIeT6kGO/E4XhXo0QAmVZeqpuWjyVGzwsar4cY1W16GWTCTFJ1Lsd8jTBI5WQDBY8q1l3P39YrDFlaYICVGc6+EGENPcRhBIxSYVkYXtFnoRTCiGzJwMq5RinHozgnNyGxQgqCCElG2OYWNcbGLLRNoBpOmi+3DPqSzNth86ynG3NdQ292dEc7KyyMJslzFCh6hioT1xZhRW1SCdRQiLibw9bKtQELkSENXsZehEqBiFSnvGxZIIGCnkg+SS6SexBOY3Yt4g4SklL9lI9i9Q3CEQL5XcYuB0k/zsGz5TDLBWIhaFqvAv0wLJeE/Y4CbCsCduX1N7D9lA3NWGnmNNnxxNF6GsY63DMSq5uHnjWR0amvFvAeBBCd4ZtplMJr6+33ZEVa0jIIjBbeCHVdhUOQzKVAe2iMBunPM9kdQ3Vdh3evH3C1f0cRcpWstSknuOX367eO5z25txhx+CzkylWKsPZ+TkuX75GRvVRf11s22JykDI7M3IxJLj5/RY/3a4xzhKUW+KUEr4SeFxWOHl2hmfHUxRZjLPZIY0aYlOW7xTd3N7h91d3OMh5b6hqUozRsmRJf5ntjibglyw6YitGE9zd36GmgKuXf7E0+oxN8aztxGCQYDwaEioDZdnejLqpYHXDjtS8nA2bqznf7m1xkOdIkhiT8YjXit4jaFWWm/rDSbE9SuNty4VBFOPnF384JnBat8J22hneN2O0cM66dVmKzz79RPTMTicHhOeUllH9N/QDw/IGcl6sAAAAAElFTkSuQmCC"></image>
                                                </g>
                                            </g>
                                        </g>
                                    </g>
                                </g>
                            </svg>
                            기업정보 보러가기
                        </button>
                    </div>
                </div>
                <div class="wrap_slide_btns person" style="display: block">
                    <div class="pager person"><button type="button" class="pager_item" data-index="0">1</button><button type="button" class="pager_item" data-index="1">1</button><button type="button" class="pager_item" data-index="2">1</button><button type="button" class="pager_item" data-index="3">1</button><button type="button" class="pager_item active" data-index="4">1</button></div>
                    <div class="controll_auto play">
                        <button type="button" class="btn_play">
                            <svg width="6px" height="8px" viewBox="0 0 6 8" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" class="btn">
                                <title>슬라이드 시작 버튼</title>
                                <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                    <g transform="translate(-615.000000, -535.000000)" fill="#FFFFFF">
                                        <g transform="translate(330.000000, 192.000000)">
                                            <g transform="translate(229.000000, 343.000000)">
                                                <g transform="translate(56.000000, 0.000000)">
                                                    <polygon points="0 5.69266856e-14 0 8 6 4"></polygon>
                                                </g>
                                            </g>
                                        </g>
                                    </g>
                                </g>
                            </svg>
                        </button>
                        <button type="button" class="btn_pause">
                            <svg width="6px" height="6px" viewBox="0 0 6 6" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" class="btn">
                                <title>슬라이드 정지 버튼</title>
                                <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                    <g transform="translate(-615.000000, -536.000000)" fill="#FFFFFF" fill-rule="nonzero">
                                        <g transform="translate(330.000000, 192.000000)">
                                            <g transform="translate(229.000000, 344.000000)">
                                                <g transform="translate(56.000000, 0.000000)">
                                                    <rect x="0" y="0" width="1.5" height="6"></rect>
                                                    <rect x="4.5" y="0" width="1.5" height="6"></rect>
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
            <div class="recomm_content">
                <div class="wrap_box_news person">
                    <div class="box_news person" style="width: 2232px; transform: translateX(-558px);">
                        <div class="slide">
                            <div class="item">
                                <span class="title type_curation">기업큐레이션</span>
                                <p class="desc">서비스 업종★스타트업</p>
                                <span class="hashtag"><span>#(주)쏘카 #(주)커리어포커스</span></span>
                                <span class="wrap_thumb">
                                    <img src="//www.saraminimage.co.kr/sri/main/thumb/cu_8.jpg" alt="기업큐레이션 이미지" class="thumb">
                                </span>
                                <a href="/zf_user/company-info/sri-certification?seq=502" class="link" onmousedown="loggingEventAndTagManager(['main', 'CONTENTS', 'certification', ''], ['ga_lead', 'main', 'CONTENTS', 'certification'])"></a>
                            </div>
                            <div class="item">
                                <span class="title type_review">면접후기</span>
                                <p class="desc">이력서 사실확인과 간단한 중국어 회화, 작문 실력 테스트 진행. 이력서 확인은 한국인 대표님과 진행하였고 중국어평가는 중국인 직원분들과 진행. </p>
                                <span class="hashtag"><span>#직무·인성 면접 #직무·인성 면접 #기타</span></span>
                                <span class="wrap_thumb">
                                    <img src="//www.saraminimage.co.kr/sri/main/thumb/interview_8.jpg" alt="면접후기 이미지" class="thumb">
                                </span>
                                <a href="/zf_user/interview-review?my=0&amp;page=1&amp;orderby=registration&amp;career_cd=1&amp;job_category=5" class="link" onmousedown="loggingEventAndTagManager(['main', 'CONTENTS', 'interview-review', ''], ['ga_lead', 'main', 'CONTENTS', 'interview-review'])"></a>
                            </div>
                            <div class="item">
                                <span class="title type_choice">초이스</span>
                                <p class="desc">이건 좀... 자제해 주세요!
                                </p>
                                <span class="wrap_thumb">
                                    <img src="//www.saraminimage.co.kr/sri/main/thumb/choice_1.jpg" alt="초이스 이미지" class="thumb">
                                </span>
                                <a href="/zf_user/company-review-qst-and-ans" class="link" onmousedown="loggingEventAndTagManager(['main', 'CONTENTS', 'choice', ''], ['ga_lead', 'main', 'CONTENTS', 'choice'])"></a>
                            </div>
                            <div class="item">
                                <span class="title type_qna">취준진담</span>
                                <p class="desc">연봉이 비슷하다는 조건하에 퇴직금 포함(거리 가까움)vs 퇴직금 별도(거리 멈)</p>
                                <span class="hashtag"><span>#퇴직금 #거리 #선택</span></span>
                                <span class="wrap_thumb">
                                    <img src="//www.saraminimage.co.kr/sri/main/thumb/review_1.jpg" alt="취준진담 이미지" class="thumb">
                                </span>
                                <a href="/zf_user/company-review-qst-and-ans/detail-page?qust_idx=22614" class="link" onmousedown="loggingEventAndTagManager(['main', 'CONTENTS', 'qna', ''], ['ga_lead', 'main', 'CONTENTS', 'qna'])"></a>
                            </div>
                        </div>
                        <div class="slide slide_active">
                            <div class="item">
                                <span class="title type_review">면접후기</span>
                                <p class="desc">면접은 코로나때문에 비대면으로 실시됐습니다.
                                    지원자 6에 면접관 5였던걸로 기억합니다.
                                    면접은 인성과 끈기, 가치관 위주로 물어봤습니다.
                                    저한테만 상이한 질문하여서 합격했다는 느낌을 받았습니다.
                                    상이한 질문은 저한테만 사는곳이 여긴데 어디서도 근무가능하냐는 질문이었습니다.</p>
                                <span class="hashtag"><span>#직무·인성 면접</span></span>
                                <span class="wrap_thumb">
                                    <img src="//www.saraminimage.co.kr/sri/main/thumb/interview_6.jpg" alt="면접후기 이미지" class="thumb">
                                </span>
                                <a href="/zf_user/interview-review?my=0&amp;page=1&amp;orderby=registration&amp;career_cd=1&amp;job_category=10" class="link" onmousedown="loggingEventAndTagManager(['main', 'CONTENTS', 'interview-review', ''], ['ga_lead', 'main', 'CONTENTS', 'interview-review'])"></a>
                            </div>
                            <div class="item">
                                <span class="title type_interview">직무인터뷰</span>
                                <p class="desc">진정성을 바탕으로 소통하는 채용 컨설턴트</p>
                                <span class="hashtag"><span>#로버트월터스코리아</span></span>
                                <span class="wrap_thumb">
                                    <img src="https://pds.saramin.co.kr/career-information/asset_thumbnail/202105/25/qtndz8_b5sd-2so1r1_asset.jpg" alt="직무인터뷰 이미지" class="thumb">
                                </span>
                                <a href="/zf_user/career-information/senior-view?doc_idx=21980&amp;page=1" class="link" onmousedown="loggingEventAndTagManager(['main', 'CONTENTS', 'job-interview', ''], ['ga_lead', 'main', 'CONTENTS', 'job-interview'])"></a>
                            </div>
                            <div class="item">
                                <span class="title type_live">취업뉴스</span>
                                <p class="desc">사람인HR, (주)두산과 함께 중소기업 채용 돕는다</p>
                                <span class="wrap_thumb">
                                    <img src="//www.saraminimage.co.kr/sri/main/thumb/new_p_6.jpg" alt="취업뉴스 이미지" class="thumb">
                                </span>
                                <a href="/zf_user/help/live/view?idx=108297&amp;list_idx=0&amp;listType=news&amp;category=10&amp;keyword=&amp;menu=1&amp;page=1" class="link" onmousedown="loggingEventAndTagManager(['main', 'CONTENTS', 'job-news', ''], ['ga_lead', 'main', 'CONTENTS', 'job-news'])"></a>
                            </div>
                            <div class="item">
                                <span class="title type_curation">기업큐레이션</span>
                                <p class="desc">일하기 좋은in경기도</p>
                                <span class="hashtag"><span>#(주)고운세상코스메틱 #(주)아프리카티비</span></span>
                                <span class="wrap_thumb">
                                    <img src="//www.saraminimage.co.kr/sri/main/thumb/cu_6.jpg" alt="기업큐레이션 이미지" class="thumb">
                                </span>
                                <a href="/zf_user/company-info/sri-certification?seq=995" class="link" onmousedown="loggingEventAndTagManager(['main', 'CONTENTS', 'certification', ''], ['ga_lead', 'main', 'CONTENTS', 'certification'])"></a>
                            </div>
                        </div>
                        <div class="slide">
                            <div class="item">
                                <span class="title type_curation">기업큐레이션</span>
                                <p class="desc">서비스 업종★스타트업</p>
                                <span class="hashtag"><span>#(주)쏘카 #(주)커리어포커스</span></span>
                                <span class="wrap_thumb">
                                    <img src="//www.saraminimage.co.kr/sri/main/thumb/cu_8.jpg" alt="기업큐레이션 이미지" class="thumb">
                                </span>
                                <a href="/zf_user/company-info/sri-certification?seq=502" class="link" onmousedown="loggingEventAndTagManager(['main', 'CONTENTS', 'certification', ''], ['ga_lead', 'main', 'CONTENTS', 'certification'])"></a>
                            </div>
                            <div class="item">
                                <span class="title type_review">면접후기</span>
                                <p class="desc">이력서 사실확인과 간단한 중국어 회화, 작문 실력 테스트 진행. 이력서 확인은 한국인 대표님과 진행하였고 중국어평가는 중국인 직원분들과 진행. </p>
                                <span class="hashtag"><span>#직무·인성 면접 #직무·인성 면접 #기타</span></span>
                                <span class="wrap_thumb">
                                    <img src="//www.saraminimage.co.kr/sri/main/thumb/interview_8.jpg" alt="면접후기 이미지" class="thumb">
                                </span>
                                <a href="/zf_user/interview-review?my=0&amp;page=1&amp;orderby=registration&amp;career_cd=1&amp;job_category=5" class="link" onmousedown="loggingEventAndTagManager(['main', 'CONTENTS', 'interview-review', ''], ['ga_lead', 'main', 'CONTENTS', 'interview-review'])"></a>
                            </div>
                            <div class="item">
                                <span class="title type_choice">초이스</span>
                                <p class="desc">이건 좀... 자제해 주세요!
                                </p>
                                <span class="wrap_thumb">
                                    <img src="//www.saraminimage.co.kr/sri/main/thumb/choice_1.jpg" alt="초이스 이미지" class="thumb">
                                </span>
                                <a href="/zf_user/company-review-qst-and-ans" class="link" onmousedown="loggingEventAndTagManager(['main', 'CONTENTS', 'choice', ''], ['ga_lead', 'main', 'CONTENTS', 'choice'])"></a>
                            </div>
                            <div class="item">
                                <span class="title type_qna">취준진담</span>
                                <p class="desc">연봉이 비슷하다는 조건하에 퇴직금 포함(거리 가까움)vs 퇴직금 별도(거리 멈)</p>
                                <span class="hashtag"><span>#퇴직금 #거리 #선택</span></span>
                                <span class="wrap_thumb">
                                    <img src="//www.saraminimage.co.kr/sri/main/thumb/review_1.jpg" alt="취준진담 이미지" class="thumb">
                                </span>
                                <a href="/zf_user/company-review-qst-and-ans/detail-page?qust_idx=22614" class="link" onmousedown="loggingEventAndTagManager(['main', 'CONTENTS', 'qna', ''], ['ga_lead', 'main', 'CONTENTS', 'qna'])"></a>
                            </div>
                        </div>
                        <div class="slide">
                            <div class="item">
                                <span class="title type_review">면접후기</span>
                                <p class="desc">면접은 코로나때문에 비대면으로 실시됐습니다.
                                    지원자 6에 면접관 5였던걸로 기억합니다.
                                    면접은 인성과 끈기, 가치관 위주로 물어봤습니다.
                                    저한테만 상이한 질문하여서 합격했다는 느낌을 받았습니다.
                                    상이한 질문은 저한테만 사는곳이 여긴데 어디서도 근무가능하냐는 질문이었습니다.</p>
                                <span class="hashtag"><span>#직무·인성 면접</span></span>
                                <span class="wrap_thumb">
                                    <img src="//www.saraminimage.co.kr/sri/main/thumb/interview_6.jpg" alt="면접후기 이미지" class="thumb">
                                </span>
                                <a href="/zf_user/interview-review?my=0&amp;page=1&amp;orderby=registration&amp;career_cd=1&amp;job_category=10" class="link" onmousedown="loggingEventAndTagManager(['main', 'CONTENTS', 'interview-review', ''], ['ga_lead', 'main', 'CONTENTS', 'interview-review'])"></a>
                            </div>
                            <div class="item">
                                <span class="title type_interview">직무인터뷰</span>
                                <p class="desc">진정성을 바탕으로 소통하는 채용 컨설턴트</p>
                                <span class="hashtag"><span>#로버트월터스코리아</span></span>
                                <span class="wrap_thumb">
                                    <img src="https://pds.saramin.co.kr/career-information/asset_thumbnail/202105/25/qtndz8_b5sd-2so1r1_asset.jpg" alt="직무인터뷰 이미지" class="thumb">
                                </span>
                                <a href="/zf_user/career-information/senior-view?doc_idx=21980&amp;page=1" class="link" onmousedown="loggingEventAndTagManager(['main', 'CONTENTS', 'job-interview', ''], ['ga_lead', 'main', 'CONTENTS', 'job-interview'])"></a>
                            </div>
                            <div class="item">
                                <span class="title type_live">취업뉴스</span>
                                <p class="desc">사람인HR, (주)두산과 함께 중소기업 채용 돕는다</p>
                                <span class="wrap_thumb">
                                    <img src="//www.saraminimage.co.kr/sri/main/thumb/new_p_6.jpg" alt="취업뉴스 이미지" class="thumb">
                                </span>
                                <a href="/zf_user/help/live/view?idx=108297&amp;list_idx=0&amp;listType=news&amp;category=10&amp;keyword=&amp;menu=1&amp;page=1" class="link" onmousedown="loggingEventAndTagManager(['main', 'CONTENTS', 'job-news', ''], ['ga_lead', 'main', 'CONTENTS', 'job-news'])"></a>
                            </div>
                            <div class="item">
                                <span class="title type_curation">기업큐레이션</span>
                                <p class="desc">일하기 좋은in경기도</p>
                                <span class="hashtag"><span>#(주)고운세상코스메틱 #(주)아프리카티비</span></span>
                                <span class="wrap_thumb">
                                    <img src="//www.saraminimage.co.kr/sri/main/thumb/cu_6.jpg" alt="기업큐레이션 이미지" class="thumb">
                                </span>
                                <a href="/zf_user/company-info/sri-certification?seq=995" class="link" onmousedown="loggingEventAndTagManager(['main', 'CONTENTS', 'certification', ''], ['ga_lead', 'main', 'CONTENTS', 'certification'])"></a>
                            </div>
                        </div>
                    </div>
                    <div class="wrap_slide_btns" style="display: block">
                        <button type="button" class="btn_slide btn_prev">
                            <svg xmlns="http://www.w3.org/2000/svg" width="6" height="10" viewBox="0 0 6 10" class="btn">
                                <g fill="none" fill-rule="evenodd">
                                    <path fill-rule="nonzero" d="M0 0L6 0 6 10 0 10z"></path>
                                    <path stroke="#9398AA" stroke-width="1.2" d="M-1 3L3 7 7 3" transform="rotate(90 3 5)" class="change"></path>
                                </g>
                            </svg>
                        </button>
                        <button type="button" class="btn_slide btn_next">
                            <svg xmlns="http://www.w3.org/2000/svg" width="6" height="10" viewBox="0 0 6 10" class="btn">
                                <g fill="none" fill-rule="evenodd">
                                    <path fill-rule="nonzero" d="M0 0L6 0 6 10 0 10z"></path>
                                    <path stroke="#9398AA" stroke-width="1.2" d="M-1 3L3 7 7 3" transform="matrix(0 1 1 0 -2 2)" class="change"></path>
                                </g>
                            </svg>
                        </button>
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
                        <p class="desc1">구직자의 입사지원은 물론,<br>맞춤형 인재추천까지!</p>
                        <p class="desc2">
                            지금!<br>채용공고를 등록하세요! </p>
                        <button type="button" class="btn_link" onclick="document.location.href='/zf_user/recruit-manage';" onmousedown="">채용공고 등록하기</button>
                    </div>
                    <div class="slide type_hr">
                        <img src="https://www.saraminbanner.co.kr/new/main/2020/09/qhel6d_eyqc-2so1qt_032.png">
                        <a href="http://www.saramin.co.kr/zf_user/memcom/talent-pool/main/recommend?inner_source=saramin&amp;inner_medium=banner&amp;inner_campaign=top_box_type_banner_company&amp;inner_term=new_talent-pool" class="go_link" target="_blank"></a>
                    </div>
                    <div class="slide type_hr slide_active">
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
                        <p class="desc1">구직자의 입사지원은 물론,<br>맞춤형 인재추천까지!</p>
                        <p class="desc2">
                            지금!<br>채용공고를 등록하세요! </p>
                        <button type="button" class="btn_link" onclick="document.location.href='/zf_user/recruit-manage';" onmousedown="">채용공고 등록하기</button>
                    </div>
                </div>
                <div class="wrap_slide_btns company" style="display: block">
                    <div class="pager company"><button type="button" class="pager_item" data-index="0">1</button><button type="button" class="pager_item" data-index="1">1</button><button type="button" class="pager_item active" data-index="2">1</button></div>
                    <div class="controll_auto play">
                        <button type="button" class="btn_play">
                            <svg width="6px" height="8px" viewBox="0 0 6 8" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" class="btn">
                                <title>슬라이드 시작 버튼</title>
                                <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                    <g transform="translate(-615.000000, -535.000000)" fill="#FFFFFF">
                                        <g transform="translate(330.000000, 192.000000)">
                                            <g transform="translate(229.000000, 343.000000)">
                                                <g transform="translate(56.000000, 0.000000)">
                                                    <polygon points="0 5.69266856e-14 0 8 6 4"></polygon>
                                                </g>
                                            </g>
                                        </g>
                                    </g>
                                </g>
                            </svg>
                        </button>
                        <button type="button" class="btn_pause">
                            <svg width="6px" height="6px" viewBox="0 0 6 6" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" class="btn">
                                <title>슬라이드 정지 버튼</title>
                                <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                    <g transform="translate(-615.000000, -536.000000)" fill="#FFFFFF" fill-rule="nonzero">
                                        <g transform="translate(330.000000, 192.000000)">
                                            <g transform="translate(229.000000, 344.000000)">
                                                <g transform="translate(56.000000, 0.000000)">
                                                    <rect x="0" y="0" width="1.5" height="6"></rect>
                                                    <rect x="4.5" y="0" width="1.5" height="6"></rect>
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
            <div class="recomm_content">
                <div class="wrap_box_news company">
                    <div class="box_news company">
                        <div class="slide type2">
                            <div class="item">
                                <strong class="title">HR매거진</strong>
                                <p class="desc">논란을 줄이는 회사 문화 구축 방법</p>
                                <p class="desc2">바로가기</p>
                                <span class="wrap_thumb">
                                    <img src="//www.saraminimage.co.kr/sri/main/thumb/hr_1_l.jpg" alt="HR매거진 이미지" class="thumb">
                                </span>
                                <a href="/zf_user/hr-magazine/view?hr_idx=810&amp;magazine_join_type=subject" class="link" onmousedown="loggingEventAndTagManager(['main', 'CONTENTS', 'hr-magazine', ''], ['ga_lead', 'main', 'CONTENTS', 'hr-magazine'])"></a>
                            </div>
                            <div class="item">
                                <strong class="title">인재POOL</strong>
                                <p class="desc">딱 맞는 인재추천부터 입사제의를 제한없이 편리하게 이용해보세요.</p>
                                <p class="desc2">빠르게 인재구하기</p>
                                <span class="wrap_thumb">
                                    <img src="//www.saraminimage.co.kr/sri/main/thumb/rec_pool_1_l.jpg" alt="인재POOL 이미지" class="thumb">
                                </span>
                                <a href="/zf_user/memcom/talent-pool/main#/recommend" class="link" onmousedown="loggingEventAndTagManager(['main', 'CONTENTS', 'talent-manage', ''], ['ga_lead', 'main', 'CONTENTS', 'talent-manage'])"></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="wrap_my_area">
            <div class="top_login" style="display:block">
                <input type="hidden" id="top_login_tab" name="top_login_tab" value="p">
                
                
                	<ul>
 						<li>
					<c:choose>
     					  <c:when test="${login.memberid ne null }">
            		<c:choose>
            			 <c:when test="${login.auth == 1}">
            			 	<img src="./upload/${login.userpic}">
             				 <p><b>[개인🧑]${login.name }</b>님 안녕하세요.</p>
             	 		 </c:when>

             			<c:when test="${login.auth == 2}">
             				<p><b>[사원👨‍💼]${login.name }</b>님 안녕하세요.</p>
    		 			</c:when>
    					<c:otherwise>
             				<p><b>[관리자👨‍✈️]]${login.name }</b>님 안녕하세요.</p>
    					</c:otherwise>
    				</c:choose>			
            	 </c:when> 
         	</c:choose>  
      </li>
 </ul>      
                
              <!--  -->
                
				<c:choose>
					<c:when test="${empty login}">
                <ul class="area_login">
                    <li class="on"><button type="button" id="login_tab_person" class="track_event" data-track_event="login|pc_main_per|tab_per"><strong>로그인 ✔</strong></button></li>
                </ul>
                </c:when>
				<c:otherwise>
				
				
				<c:choose>
					<c:when test="${login.auth==1 || login.auth==3}">
						<ul class="area_login">
                    	<li class="on"><button type="button" id="login_tab_person" class="track_event" data-track_event="login|pc_main_per|tab_per"><strong>로그아웃</strong></button></li>
                		</ul>
					</c:when>
				<c:otherwise>
						<ul class="area_login">
                    	<li class="on"><button type="button" id="login_tab_person" class="track_event" data-track_event="login|pc_main_per|tab_per"><strong>로그아웃</strong></button></li>
               			 </ul>
				</c:otherwise>
				</c:choose>
				</c:otherwise>
				</c:choose>
               

                
                
                
                <a href="searchidpwd.do" class="link_id_password track_event" data-track_event="login|pc_main_per|find|">아이디/비번찾기</a>
                <a href="regiclick.do" onclick="return false;" class="link_join track_event" data-track_event="login|pc_main_per|join|">회원가입</a>
            </div>
            <div class="area_recom recruit_card" style="display : block">
                <div class="top">
                    <strong class="sub_title">추천공고</strong>
                    <button type="button" class="more_list" onmousedown="loggingEventAndTagManager(['Recommend-main', 'avata', 'card-view', ''], ['ga_lead', 'Recommend-main', 'avata', 'card-view'])" data-gtm-vis-recent-on-screen-6226168_1540="63" data-gtm-vis-first-on-screen-6226168_1540="64" data-gtm-vis-total-visible-time-6226168_1540="100" data-gtm-vis-has-fired-6226168_1540="1">전체보기</button>
                </div>
                <div class="list_recom">
                    <div class="list">
                        <strong class="rec_name" title="(주)감정평가법인세종">(주)감정평가법인세종</strong>
                        <a href="/zf_user/jobs/relay/pop-view?rec_idx=40402200&amp;t_ref_content=SRI_070_MAIN_ACT_RCT_AVATAR&amp;t_ref_scnid=752" class="rec_desc" data-click-url="http://rcmd-log.saramin.co.kr:9020/so-logging/log/client?custId=&amp;pcId=16230612419786911889857&amp;nonce=06e0165939df192a672a&amp;dpId=null&amp;scnId=752&amp;tgId=2&amp;itemSetId=1&amp;itemValue=40402200&amp;click=1" onmousedown="loggingEventAndTagManager(['Recommend-main-main', 'avata', '(주)감정평가법인세종-Java 개발자 모집', ''], ['ga_lead', 'Recommend-main-main', 'avata', '(주)감정평가법인세종-Java 개발자 모집'])">Java 개발자 모집</a>
                        <p class="hashtag" title=" #웹개발 #강남구"> #웹개발 #강남구</p>
                        <button type="button" class="spr_scrap btn_scrap" data-value="40402200"><span class="blind">스크랩</span></button>
                        <button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('40402200','','t_category=main&amp;t_content=SRI_070_MAIN_ACT_RCT_AVATAR&amp;t_scnid=752', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>
                    </div>
                    <div class="list">
                        <strong class="rec_name" title="(주)네이처뉴트리션">(주)네이처뉴트리션</strong>
                        <a href="/zf_user/jobs/relay/pop-view?rec_idx=40184967&amp;t_ref_content=SRI_070_MAIN_ACT_RCT_AVATAR&amp;t_ref_scnid=752" class="rec_desc" data-click-url="http://rcmd-log.saramin.co.kr:9020/so-logging/log/client?custId=&amp;pcId=16230612419786911889857&amp;nonce=06e0165939df192a672a&amp;dpId=null&amp;scnId=752&amp;tgId=2&amp;itemSetId=1&amp;itemValue=40184967&amp;click=1" onmousedown="loggingEventAndTagManager(['Recommend-main-main', 'avata', '(주)네이처뉴트리션-1년만에 2,000% 성장 네이처뉴트리션 상반기 각부문 신입/경력', ''], ['ga_lead', 'Recommend-main-main', 'avata', '(주)네이처뉴트리션-1년만에 2,000% 성장 네이처뉴트리션 상반기 각부문 신입/경력'])">1년만에 2,000% 성장 네이처뉴트리션 상반기 각부문 신입/경력</a>
                        <p class="hashtag" title=" #웹개발 #강남구"> #웹개발 #강남구</p>
                        <button type="button" class="spr_scrap btn_scrap" data-value="40184967"><span class="blind">스크랩</span></button>
                        <button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('40184967','','t_category=main&amp;t_content=SRI_070_MAIN_ACT_RCT_AVATAR&amp;t_scnid=752', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>
                    </div>
                </div>
            </div>
            <div class="area_recom live" style="display:none">
                <div class="top">
                    <strong class="sub_title">요즘, 취업 동향</strong>
                    <a href="/zf_user/help/live?category=10" class="more_list" onmousedown="loggingEventAndTagManager(['main', 'job-news', 'more-job-news', ''], ['ga_lead', 'main', 'job-news', 'more-job-news'])">
                        더보기
                        <svg xmlns="http://www.w3.org/2000/svg" width="6" height="10" viewBox="0 0 7 11" class="ic_arrow">
                            <path fill="none" fill-rule="evenodd" stroke="#949494" d="M-2 3L3 8 8 3" transform="rotate(-90 3 5.5)"></path>
                        </svg>
                    </a>
                </div>
                <ul class="list_info">
                    <li><a href="/zf_user/help/live/view?idx=108296&amp;list_idx=0&amp;listType=news&amp;category=10&amp;keyword=&amp;menu=1&amp;page=1" target="_blank" onmousedown="loggingEventAndTagManager(['main', 'job-news', 'go-job-news', ''], ['ga_lead', 'main', 'job-news', 'go-job-news'])"><strong class="title">경기회복 기대감, 주요기업 신입사원 채용 나서</strong><span class="date">2021-06-03</span></a></li>
                    <li><a href="/zf_user/help/live/view?idx=108293&amp;list_idx=0&amp;listType=news&amp;category=10&amp;keyword=&amp;menu=1&amp;page=1" target="_blank" onmousedown="loggingEventAndTagManager(['main', 'job-news', 'go-job-news', ''], ['ga_lead', 'main', 'job-news', 'go-job-news'])"><strong class="title">기업 절반, “MZ세대 조기 퇴사 비율 높다”… 평균 5개월 이내 퇴사 </strong><span class="date">2021-06-02</span></a></li>
                    <li><a href="/zf_user/help/live/view?idx=108282&amp;list_idx=0&amp;listType=news&amp;category=10&amp;keyword=&amp;menu=1&amp;page=1" target="_blank" onmousedown="loggingEventAndTagManager(['main', 'job-news', 'go-job-news', ''], ['ga_lead', 'main', 'job-news', 'go-job-news'])"><strong class="title">기업 절반, MZ세대 잡기 위해 노력 중!</strong><span class="date">2021-05-24</span></a></li>
                </ul>
            </div>
            <div class="wrap_float_login" style="display:none">
                <form name="login_frm" id="login_frm" method="post" action="https://www.saramin.co.kr/zf_user/auth/login">
                    <input type="hidden" id="url" name="url" value="/zf_user/">
                    <input type="hidden" id="seq" name="seq" value="0">
                    <input type="hidden" id="encid" name="encid" value="">
                    <input type="hidden" id="encpw" name="encpw" value="">
                    <input type="hidden" id="login_tab" name="login_tab" value="p">
                    <fieldset>
                        <ul class="btn_logins">
                            <li class="on"><button type="button" id="login_layer_tab_person" class="track_event" data-track_event="login|pc_main_per|tab_per">로그인</button></li>
                            
                        </ul>
                        <div class="area_login">
                            <div class="sns_login" id="wrap_sns_login">
                                <a href="/zf_user/auth/sign-in-with?provider=naver.com&amp;display=popup&amp;url=%2Fzf_user%2F" onclick="return false;" class="link_sns link_naver track_event tag_manager" data-track_event="login|pc_main_per|social_login|naver"><span class="blind">네이버 아이디 로그인</span></a>
                                <a href="/zf_user/auth/sign-in-with?provider=kakao.com&amp;display=popup&amp;url=%2Fzf_user%2F" onclick="return false;" class="link_sns link_kakaotalk track_event tag_manager" data-track_event="login|pc_main_per|social_login|kakao"><span class="blind">카카오톡 아이디 로그인</span></a>
                                <a href="/zf_user/auth/sign-in-with?provider=facebook.com&amp;display=popup&amp;url=%2Fzf_user%2F" onclick="return false;" class="link_sns link_facebook track_event tag_manager" data-track_event="login|pc_main_per|social_login|facebook"><span class="blind">페이스북 아이디 로그인</span></a>
                                <a href="/zf_user/auth/sign-in-with?provider=google.com&amp;display=popup&amp;url=%2Fzf_user%2F" onclick="return false;" class="link_sns link_google track_event tag_manager" data-track_event="login|pc_main_per|social_login|google"><span class="blind">구글 아이디 로그인</span></a>
                                <a href="/zf_user/auth/sign-in-with?provider=apple.com&amp;display=popup&amp;&amp;url=%2Fzf_user%2F" onclick="return false;" class="link_sns link_apple track_event tag_manager" data-track_event="login|pc_main_per|social_login|apple"><span class="blind">애플로그인</span></a>
                            </div>
                            <div class="login_input person" style="display: block;">
                                <strong class="blind">개인회원 로그인</strong>
                                <span class="box_typo id"><label for="login_person_id" class="blind">아이디</label><input type="text" name="id" id="login_person_id" class="inpTypo" value="" placeholder="아이디" title="아이디 입력"></span>
                                <span class="box_typo password"><label for="login_person_pwd" class="blind">비밀번호</label><input type="password" name="password" id="login_person_pwd" class="inpTypo" placeholder="비밀번호" title="비밀번호 입력"></span>
                            </div>
                            <div class="login_input company" style="display: none;">
                                <strong class="blind">기업회원 로그인</strong>
                                <span class="box_typo id"></span>
                                <span class="box_typo password"></span>
                            </div>
                            <div class="login_etc">
                                <button type="submit" class="btn_login track_event log_fb_pixel_login tag_manager" data-track_event="login|pc_main_per|login|">로그인</button>
                                <span class="inpChk small">
                                    <input type="checkbox" name="autologin" id="autoLogin">
                                    <label for="autoLogin" class="lbl autologin" data-track_event="login|pc_main_per|auto_login|">로그인 유지</label>
                                </span>
                                <span class="inpChk small">
                                    <input type="checkbox" name="id_save" id="id_save">
                                    <label for="id_save" class="lbl track_event" data-track_event="login|pc_main_per|id_save|">아이디 저장</label>
                                </span>
                                <span class="txt_safety">
                                    <input type="checkbox" name="ssl_login" id="ssl_login" checked="checked" class="inp_safety track_event" data-track_event="login|pc_main_per|security|OFF">
                                    <label for="ssl_login" class="lab_safety">&nbsp;보안</label>
                                </span>
                                <a href="/zf_user/applicant/rater/login-form" class="link_rater track_event" data-track_event="" style="display: none;">협업자 로그인</a>
                            </div>
                            <div class="wrap_join_find">
                                <a href="regiclick.do" onclick="return false;" class="link_join login_layer_link_join track_event" data-track_event="login|pc_main_per|join|">회원가입</a>
                                <a href="searchidpw.do" class="link_id_password login_layer_link_id_password track_event" data-track_event="login|pc_main_per|find|">아이디/비번찾기</a>
                            </div>
                            <button type="button" class="btn_layer_close"><span class="blind">닫기</span></button>
                        </div>
                    </fieldset>
                </form>
            </div>
            <div class="list_slide live_notify">
                <span class="category"><a href="/zf_user/help/live?listType=notice&amp;mem_type=a">공지</a></span>
                <ul class="wrap_notice" style="transform: translateY(-132px); transition: all 300ms ease 0s;">
                    <li class="list">
                        <a href="/zf_user/help/live/view?list_idx=0&amp;listType=notice&amp;keyword=&amp;menu=1&amp;mem_type=a&amp;page=1&amp;idx=108262" onmousedown="loggingEventAndTagManager(['main', 'Notice', 'notice_view', ''], ['ga_lead', 'main', 'Notice', 'notice_view'])">IE 9, 10 버전에 대한 사람인 PC 서비스 대응 종료 안내 (5월 21일 이후)</a>
                    </li>
                    <li class="list">
                        <a href="/zf_user/help/live/view?list_idx=0&amp;listType=notice&amp;keyword=&amp;menu=1&amp;mem_type=a&amp;page=1&amp;idx=108273" onmousedown="loggingEventAndTagManager(['main', 'Notice', 'notice_view', ''], ['ga_lead', 'main', 'Notice', 'notice_view'])">지금, 문 엽니다 We.라운지 </a>
                    </li>
                    <li class="list">
                        <a href="/zf_user/help/live/view?list_idx=0&amp;listType=notice&amp;keyword=&amp;menu=1&amp;mem_type=a&amp;page=1&amp;idx=108287" onmousedown="loggingEventAndTagManager(['main', 'Notice', 'notice_view', ''], ['ga_lead', 'main', 'Notice', 'notice_view'])">고객님의 소중한 의견이 반영되었습니다. &lt;#04&gt;</a>
                    </li>
                    <li class="list slide_active">
                        <a href="/zf_user/help/live/view?list_idx=0&amp;listType=notice&amp;keyword=&amp;menu=1&amp;mem_type=a&amp;page=1&amp;idx=108279" onmousedown="loggingEventAndTagManager(['main', 'Notice', 'notice_view', ''], ['ga_lead', 'main', 'Notice', 'notice_view'])">AI면접 솔루션 아이엠그라운드 대학교 제휴서비스 안내</a>
                    </li>
                    <li class="list">
                        <a href="/zf_user/help/live/view?list_idx=0&amp;listType=notice&amp;keyword=&amp;menu=1&amp;mem_type=a&amp;page=1&amp;idx=108262" onmousedown="loggingEventAndTagManager(['main', 'Notice', 'notice_view', ''], ['ga_lead', 'main', 'Notice', 'notice_view'])">IE 9, 10 버전에 대한 사람인 PC 서비스 대응 종료 안내 (5월 21일 이후)</a>
                    </li>
                    <li class="list">
                        <a href="/zf_user/help/live/view?list_idx=0&amp;listType=notice&amp;keyword=&amp;menu=1&amp;mem_type=a&amp;page=1&amp;idx=108273" onmousedown="loggingEventAndTagManager(['main', 'Notice', 'notice_view', ''], ['ga_lead', 'main', 'Notice', 'notice_view'])">지금, 문 엽니다 We.라운지 </a>
                    </li>
                </ul>
                <button type="button" class="btn_prev">
                    <svg xmlns="http://www.w3.org/2000/svg" width="10" height="6" viewBox="0 0 11 6">
                        <title>이전글보기</title>
                        <path fill="none" fill-rule="evenodd" stroke="#949494" d="M0 0L4.5 4 9 0" opacity=".5" transform="matrix(1 0 0 -1 1 5)" class="change"></path>
                    </svg>
                </button>
                <button type="button" class="btn_next">
                    <svg xmlns="http://www.w3.org/2000/svg" width="10" height="6" viewBox="0 0 11 6">
                        <title>다음글보기</title>
                        <path fill="none" fill-rule="evenodd" stroke="#949494" d="M0 0L4.5 4 9 0" opacity=".5" transform="translate(1 1)" class="change"></path>
                    </svg>
                </button>
            </div>
        </div>
        <div id="wrap_float_recom_recruit" class="wrap_float_recom">
            <div class="top">
                <strong class="title"><span class="txt_emph">사람인 추천</span> 공고를 확인하세요 <a href="/zf_user/member/avatar/list" class="link_more" onmousedown="pushDataLayer('ga_lead', 'main', 'Recommend-rec', 'more')">공고 더보기 <svg xmlns="http://www.w3.org/2000/svg" width="7" height="11" viewBox="0 0 7 11" class="ic_arrow">
                            <path fill="none" fill-rule="evenodd" stroke="#949494" d="M-2 3L3 8 8 3" transform="rotate(-90 3 5.5)"></path>
                        </svg></a></strong>
                <span class="txt_alram_recom">
                    <button type="button" class="btn_alarm avatar_mail">추천공고 알림 받기<span class="ico_onoff">OFF</span></button>
                </span>
                <button type="button" class="btn_close"><span class="blind">레이어닫기</span></button>
            </div>
            <div class="wrap_list person">
                <div class="list">
                    <a href="/zf_user/jobs/relay/pop-view?rec_idx=40402200&amp;t_ref_content=SRI_070_MAIN_ACT_RCT_AVATAR&amp;t_ref_scnid=752" class="link_recomm" data-click-url="http://rcmd-log.saramin.co.kr:9020/so-logging/log/client?custId=&amp;pcId=16230612419786911889857&amp;nonce=06e0165939df192a672a&amp;dpId=null&amp;scnId=752&amp;tgId=2&amp;itemSetId=1&amp;itemValue=40402200&amp;click=1" onmousedown="loggingEventAndTagManager(['Recommend-main', 'avata', '(주)감정평가법인세종-Java 개발자 모집', ''], ['ga_lead', 'Recommend-main', 'avata', '(주)감정평가법인세종-Java 개발자 모집'])"></a>
                    <strong class="rec_name">(주)감정평가법인세종</strong>
                    <span class="rec_desc">Java 개발자 모집</span>
                    <span class="hashtag"> #웹개발 #강남구</span>
                    <button type="button" class="spr_scrap btn_scrap" data-value="40402200"><span class="blind">스크랩</span></button>
                    <button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('40402200','','t_category=main&amp;t_content=SRI_070_MAIN_ACT_RCT_AVATAR&amp;t_scnid=752', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button> </div>
                <div class="list">
                    <a href="/zf_user/jobs/relay/pop-view?rec_idx=40184967&amp;t_ref_content=SRI_070_MAIN_ACT_RCT_AVATAR&amp;t_ref_scnid=752" class="link_recomm" data-click-url="http://rcmd-log.saramin.co.kr:9020/so-logging/log/client?custId=&amp;pcId=16230612419786911889857&amp;nonce=06e0165939df192a672a&amp;dpId=null&amp;scnId=752&amp;tgId=2&amp;itemSetId=1&amp;itemValue=40184967&amp;click=1" onmousedown="loggingEventAndTagManager(['Recommend-main', 'avata', '(주)네이처뉴트리션-1년만에 2,000% 성장 네이처뉴트리션 상반기 각부문 신입/경력', ''], ['ga_lead', 'Recommend-main', 'avata', '(주)네이처뉴트리션-1년만에 2,000% 성장 네이처뉴트리션 상반기 각부문 신입/경력'])"></a>
                    <strong class="rec_name">(주)네이처뉴트리션</strong>
                    <span class="rec_desc">1년만에 2,000% 성장 네이처뉴트리션 상반기 각부문 신입/경력</span>
                    <span class="hashtag"> #웹개발 #강남구</span>
                    <button type="button" class="spr_scrap btn_scrap" data-value="40184967"><span class="blind">스크랩</span></button>
                    <button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('40184967','','t_category=main&amp;t_content=SRI_070_MAIN_ACT_RCT_AVATAR&amp;t_scnid=752', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button> </div>
                <div class="list">
                    <a href="/zf_user/jobs/relay/pop-view?rec_idx=38783890&amp;t_ref_content=SRI_070_MAIN_ACT_RCT_AVATAR&amp;t_ref_scnid=659" class="link_recomm" data-click-url="http://rcmd-log.saramin.co.kr:9020/so-logging/log/client?custId=&amp;pcId=16230612419786911889857&amp;nonce=06e0165939df192a672a&amp;dpId=SRI_070_MAIN_ACT_RCT_AVATAR&amp;scnId=659&amp;tgId=2&amp;itemSetId=1&amp;itemValue=38783890&amp;click=1" onmousedown="loggingEventAndTagManager(['Recommend-main', 'avata', '현대무벡스(주)-현대무벡스㈜ 부문별 경력사원 상시 모집', ''], ['ga_lead', 'Recommend-main', 'avata', '현대무벡스(주)-현대무벡스㈜ 부문별 경력사원 상시 모집'])"></a>
                    <strong class="rec_name">현대무벡스(주)</strong>
                    <span class="rec_desc">현대무벡스㈜ 부문별 경력사원 상시 모집</span>
                    <span class="hashtag"> #웹개발 #서울전체</span>
                    <button type="button" class="spr_scrap btn_scrap" data-value="38783890"><span class="blind">스크랩</span></button>
                </div>
                <div class="list">
                    <a href="/zf_user/jobs/relay/pop-view?rec_idx=39990399&amp;t_ref_content=SRI_070_MAIN_ACT_RCT_AVATAR&amp;t_ref_scnid=659" class="link_recomm" data-click-url="http://rcmd-log.saramin.co.kr:9020/so-logging/log/client?custId=&amp;pcId=16230612419786911889857&amp;nonce=06e0165939df192a672a&amp;dpId=SRI_070_MAIN_ACT_RCT_AVATAR&amp;scnId=659&amp;tgId=2&amp;itemSetId=4&amp;itemValue=39990399&amp;click=1" onmousedown="loggingEventAndTagManager(['Recommend-main', 'avata', '(주)베네통코리아-[베네통코리아] 온라인MD/상품개발/IT웹 개발자 채용', ''], ['ga_lead', 'Recommend-main', 'avata', '(주)베네통코리아-[베네통코리아] 온라인MD/상품개발/IT웹 개발자 채용'])"></a>
                    <strong class="rec_name">(주)베네통코리아</strong>
                    <span class="rec_desc">[베네통코리아] 온라인MD/상품개발/IT웹 개발자 채용</span>
                    <span class="hashtag"> #웹개발 #서울전체</span>
                    <button type="button" class="spr_scrap btn_scrap" data-value="39990399"><span class="blind">스크랩</span></button>
                    <button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('39990399','','t_category=main&amp;t_content=SRI_070_MAIN_ACT_RCT_AVATAR&amp;t_scnid=659', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button> </div>
                <div class="list">
                    <a href="/zf_user/jobs/relay/pop-view?rec_idx=40340923&amp;t_ref_content=SRI_070_MAIN_ACT_RCT_AVATAR&amp;t_ref_scnid=659" class="link_recomm" data-click-url="http://rcmd-log.saramin.co.kr:9020/so-logging/log/client?custId=&amp;pcId=16230612419786911889857&amp;nonce=06e0165939df192a672a&amp;dpId=SRI_070_MAIN_ACT_RCT_AVATAR&amp;scnId=659&amp;tgId=2&amp;itemSetId=5&amp;itemValue=40340923&amp;click=1" onmousedown="loggingEventAndTagManager(['Recommend-main', 'avata', '(주)애큐온캐피탈-리테일 시스템 개발 및 운영', ''], ['ga_lead', 'Recommend-main', 'avata', '(주)애큐온캐피탈-리테일 시스템 개발 및 운영'])"></a>
                    <strong class="rec_name">(주)애큐온캐피탈</strong>
                    <span class="rec_desc">리테일 시스템 개발 및 운영</span>
                    <span class="hashtag"> #웹개발 #강남구</span>
                    <button type="button" class="spr_scrap btn_scrap" data-value="40340923"><span class="blind">스크랩</span></button>
                    <button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('40340923','','t_category=main&amp;t_content=SRI_070_MAIN_ACT_RCT_AVATAR&amp;t_scnid=659', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button> </div>
                <div class="list">
                    <a href="/zf_user/jobs/relay/pop-view?rec_idx=40363191&amp;t_ref_content=SRI_070_MAIN_ACT_RCT_AVATAR&amp;t_ref_scnid=659" class="link_recomm" data-click-url="http://rcmd-log.saramin.co.kr:9020/so-logging/log/client?custId=&amp;pcId=16230612419786911889857&amp;nonce=06e0165939df192a672a&amp;dpId=SRI_070_MAIN_ACT_RCT_AVATAR&amp;scnId=659&amp;tgId=2&amp;itemSetId=6&amp;itemValue=40363191&amp;click=1" onmousedown="loggingEventAndTagManager(['Recommend-main', 'avata', 'SBI저축은행-2021년 상반기 경력직 수시채용', ''], ['ga_lead', 'Recommend-main', 'avata', 'SBI저축은행-2021년 상반기 경력직 수시채용'])"></a>
                    <strong class="rec_name">SBI저축은행</strong>
                    <span class="rec_desc">2021년 상반기 경력직 수시채용</span>
                    <span class="hashtag"> #응용프로그램개발 #강남구</span>
                    <button type="button" class="spr_scrap btn_scrap" data-value="40363191"><span class="blind">스크랩</span></button>
                    <button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('40363191','','t_category=main&amp;t_content=SRI_070_MAIN_ACT_RCT_AVATAR&amp;t_scnid=659', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button> </div>
                <div class="list">
                    <a href="/zf_user/jobs/relay/pop-view?rec_idx=40399200&amp;t_ref_content=SRI_070_MAIN_ACT_RCT_AVATAR&amp;t_ref_scnid=659" class="link_recomm" data-click-url="http://rcmd-log.saramin.co.kr:9020/so-logging/log/client?custId=&amp;pcId=16230612419786911889857&amp;nonce=06e0165939df192a672a&amp;dpId=SRI_070_MAIN_ACT_RCT_AVATAR&amp;scnId=659&amp;tgId=2&amp;itemSetId=7&amp;itemValue=40399200&amp;click=1" onmousedown="loggingEventAndTagManager(['Recommend-main', 'avata', '(주)스마트스코어-[골프IT선두기업] 2021 상반기 대규모 경력직 채용', ''], ['ga_lead', 'Recommend-main', 'avata', '(주)스마트스코어-[골프IT선두기업] 2021 상반기 대규모 경력직 채용'])"></a>
                    <strong class="rec_name">(주)스마트스코어</strong>
                    <span class="rec_desc">[골프IT선두기업] 2021 상반기 대규모 경력직 채용</span>
                    <span class="hashtag"> #웹개발 #강남구</span>
                    <button type="button" class="spr_scrap btn_scrap" data-value="40399200"><span class="blind">스크랩</span></button>
                    <button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('40399200','','t_category=main&amp;t_content=SRI_070_MAIN_ACT_RCT_AVATAR&amp;t_scnid=659', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button> </div>
                <div class="list">
                    <a href="/zf_user/jobs/relay/pop-view?rec_idx=39529547&amp;t_ref_content=SRI_070_MAIN_ACT_RCT_AVATAR&amp;t_ref_scnid=659" class="link_recomm" data-click-url="http://rcmd-log.saramin.co.kr:9020/so-logging/log/client?custId=&amp;pcId=16230612419786911889857&amp;nonce=06e0165939df192a672a&amp;dpId=SRI_070_MAIN_ACT_RCT_AVATAR&amp;scnId=659&amp;tgId=2&amp;itemSetId=8&amp;itemValue=39529547&amp;click=1" onmousedown="loggingEventAndTagManager(['Recommend-main', 'avata', '이제너두(주)-복지몰/강남 [영업,재무회계,개발,인프라,MD,헬스케어] 모집공고', ''], ['ga_lead', 'Recommend-main', 'avata', '이제너두(주)-복지몰/강남 [영업,재무회계,개발,인프라,MD,헬스케어] 모집공고'])"></a>
                    <strong class="rec_name">이제너두(주)</strong>
                    <span class="rec_desc">복지몰/강남 [영업,재무회계,개발,인프라,MD,헬스케어] 모집공고</span>
                    <span class="hashtag"> #웹개발 #강남구</span>
                    <button type="button" class="spr_scrap btn_scrap" data-value="39529547"><span class="blind">스크랩</span></button>
                    <button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('39529547','','t_category=main&amp;t_content=SRI_070_MAIN_ACT_RCT_AVATAR&amp;t_scnid=659', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button> </div>
                <div class="list">
                    <a href="/zf_user/jobs/relay/pop-view?rec_idx=40293837&amp;t_ref_content=SRI_070_MAIN_ACT_RCT_AVATAR&amp;t_ref_scnid=659" class="link_recomm" data-click-url="http://rcmd-log.saramin.co.kr:9020/so-logging/log/client?custId=&amp;pcId=16230612419786911889857&amp;nonce=06e0165939df192a672a&amp;dpId=SRI_070_MAIN_ACT_RCT_AVATAR&amp;scnId=659&amp;tgId=2&amp;itemSetId=9&amp;itemValue=40293837&amp;click=1" onmousedown="loggingEventAndTagManager(['Recommend-main', 'avata', '로크웰오토메이션코리아(주)-각 부문 경력직원 모집', ''], ['ga_lead', 'Recommend-main', 'avata', '로크웰오토메이션코리아(주)-각 부문 경력직원 모집'])"></a>
                    <strong class="rec_name">로크웰오토메이션코리아(주)</strong>
                    <span class="rec_desc">각 부문 경력직원 모집</span>
                    <span class="hashtag"> #응용프로그램개발 #강남구</span>
                    <button type="button" class="spr_scrap btn_scrap" data-value="40293837"><span class="blind">스크랩</span></button>
                    <button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('40293837','','t_category=main&amp;t_content=SRI_070_MAIN_ACT_RCT_AVATAR&amp;t_scnid=659', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button> </div>
                <div class="list">
                    <a href="/zf_user/jobs/relay/pop-view?rec_idx=40069730&amp;t_ref_content=SRI_070_MAIN_ACT_RCT_AVATAR&amp;t_ref_scnid=659" class="link_recomm" data-click-url="http://rcmd-log.saramin.co.kr:9020/so-logging/log/client?custId=&amp;pcId=16230612419786911889857&amp;nonce=06e0165939df192a672a&amp;dpId=SRI_070_MAIN_ACT_RCT_AVATAR&amp;scnId=659&amp;tgId=2&amp;itemSetId=10&amp;itemValue=40069730&amp;click=1" onmousedown="loggingEventAndTagManager(['Recommend-main', 'avata', '(주)푸드테크-푸드테크 IT부문 채용', ''], ['ga_lead', 'Recommend-main', 'avata', '(주)푸드테크-푸드테크 IT부문 채용'])"></a>
                    <strong class="rec_name">(주)푸드테크</strong>
                    <span class="rec_desc">푸드테크 IT부문 채용</span>
                    <span class="hashtag"> #웹개발 #강남구</span>
                    <button type="button" class="spr_scrap btn_scrap" data-value="40069730"><span class="blind">스크랩</span></button>
                    <button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('40069730','','t_category=main&amp;t_content=SRI_070_MAIN_ACT_RCT_AVATAR&amp;t_scnid=659', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button> </div>
                <div class="list">
                    <a href="/zf_user/jobs/relay/pop-view?rec_idx=40413259&amp;t_ref_content=SRI_070_MAIN_ACT_RCT_AVATAR&amp;t_ref_scnid=757" class="link_recomm" data-click-url="http://rcmd-log.saramin.co.kr:9020/so-logging/log/client?custId=&amp;pcId=16230612419786911889857&amp;nonce=06e0165939df192a672a&amp;dpId=SRI_070_MAIN_ACT_RCT_AVATAR&amp;scnId=757&amp;tgId=2&amp;itemSetId=4&amp;itemValue=40413259&amp;click=1" onmousedown="loggingEventAndTagManager(['Recommend-main', 'avata', '선진정공(주)-2021년 당진사업장 각 부문별 정규직 모집', ''], ['ga_lead', 'Recommend-main', 'avata', '선진정공(주)-2021년 당진사업장 각 부문별 정규직 모집'])"></a>
                    <strong class="rec_name">선진정공(주)</strong>
                    <span class="rec_desc">2021년 당진사업장 각 부문별 정규직 모집</span>
                    <span class="hashtag"> #웹개발 #경기전체</span>
                    <button type="button" class="spr_scrap btn_scrap" data-value="40413259"><span class="blind">스크랩</span></button>
                    <button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('40413259','','t_category=main&amp;t_content=SRI_070_MAIN_ACT_RCT_AVATAR&amp;t_scnid=757', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button> </div>
                <div class="list">
                    <a href="/zf_user/jobs/relay/pop-view?rec_idx=40387901&amp;t_ref_content=SRI_070_MAIN_ACT_RCT_AVATAR&amp;t_ref_scnid=757" class="link_recomm" data-click-url="http://rcmd-log.saramin.co.kr:9020/so-logging/log/client?custId=&amp;pcId=16230612419786911889857&amp;nonce=06e0165939df192a672a&amp;dpId=SRI_070_MAIN_ACT_RCT_AVATAR&amp;scnId=757&amp;tgId=2&amp;itemSetId=5&amp;itemValue=40387901&amp;click=1" onmousedown="loggingEventAndTagManager(['Recommend-main', 'avata', '지지무역(주)-[서울본사 및 해외] 2021년 경력직 채용(해외영업, PPIC(생산기획), 품질관리)', ''], ['ga_lead', 'Recommend-main', 'avata', '지지무역(주)-[서울본사 및 해외] 2021년 경력직 채용(해외영업, PPIC(생산기획), 품질관리)'])"></a>
                    <strong class="rec_name">지지무역(주)</strong>
                    <span class="rec_desc">[서울본사 및 해외] 2021년 경력직 채용(해외영업, PPIC(생산기획), 품질관리)</span>
                    <span class="hashtag"> #영업·고객상담 #서울전체</span>
                    <button type="button" class="spr_scrap btn_scrap" data-value="40387901"><span class="blind">스크랩</span></button>
                    <button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('40387901','','t_category=main&amp;t_content=SRI_070_MAIN_ACT_RCT_AVATAR&amp;t_scnid=757', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button> </div>
            </div>
        </div>
        <div class="ad_google" style="">
            <div id="div-gpt-ad-1594859543669-0" class="wrap_banner" style="">
                <div id="div-gpt-ad-1594859543669-0-wrapper">
                    <a href="http://www.saramin.co.kr/avatar-branding/?inner_source=saramin&amp;inner_medium=banner&amp;inner_campaign=Waiting_Main_BigBanner&amp;inner_term=avatar_introduce" target="_blank" class="google-standby-banner" rel="nofollow"><img src="https://www.saraminbanner.co.kr/adserver/default/2020/08/qfc9h9_1m6o-2rxicl_.png" alt="인공지능 취업플랫폼 사람인"></a>
                </div>
                <div id="div-gpt-ad-1594859543669-0-inner" style="display: none;">
                    <div id="div-gpt-ad-1594859543669-0">
                    </div>
                </div>
                <div id="google_ads_iframe_/61280259/Main-Big_468x60_0__container__" style="border: 0pt none; width: 468px; height: 0px;"></div>
            </div>
        </div>
    </div>
</div>


<br><br><br>


<div id="section_contents" class="cont_top">
    <div class="inner">
        <div class="lpop_wrap layer_upgrade" style="display: none;">
            <div class="layer_head"><strong class="blind">브라우저 지원범위 안내</strong></div>
            <div class="layer_cont">
                <a class="desc_upgrade" target="_blank" title="업그레이드 새창알림">
                    원활한 서비스 이용을 위해<br>
                    <strong>최신 익스플로러 브라우저</strong>로<br>
                    <strong>업그레이드</strong> 해주세요
                </a>
            </div>
            <button type="button" class="btn_close"><span class="blind">닫기</span></button>
        </div>
        <div class="wrap_recomm loading" style="display : block">
            <div class="wrap_bigbox person" style="
    width: 400px;
">

                
                
            <div id="jquery-accordion-menu" class="jquery-accordion-menu">
					
					<ul>
						<li class="active"><a href="#" style="font-size: 12pt;"><i class="fa fa-home"></i>NAVER</a><span class="jquery-accordion-menu-label">1 </span><li><a href="#" style="font-size: 12pt;"><i class="fa fa-glass"></i>KAKAO</a><span class="jquery-accordion-menu-label">2 </span></li></li>
						<li><a href="#" style="font-size: 12pt;"><i class="fa fa-glass"></i>KAKAO</a><span class="jquery-accordion-menu-label">2 </span></li>
						<li><a href="#" style="font-size: 12pt;"><i class="fa fa-file-image-o"></i>LINE </a><span class="jquery-accordion-menu-label">3 </span></li>
						<li><a href="#" style="font-size: 12pt;"><i class="fa fa-cog"></i>COUPANG </a><span class="jquery-accordion-menu-label">4 </span></li>
						<li><a href="#" style="font-size: 12pt;"><i class="fa fa-cog"></i>배달의 민족 </a><span class="jquery-accordion-menu-label">5 </span></li>
						
						
						
						
						
					</ul>
					
				</div></div>
            <div class="recomm_content" style="
    padding-top: 0px;
    padding-left: 0px;
    width: 400px;
">
                
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
			            <img alt="second" class="d-block w-100" src="/sample10/image/dg.png" height="300px" width="200px">

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
			</div></div>
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
                        <p class="desc1">구직자의 입사지원은 물론,<br>맞춤형 인재추천까지!</p>
                        <p class="desc2">
                            지금!<br>채용공고를 등록하세요! </p>
                        <button type="button" class="btn_link" onclick="document.location.href='/zf_user/recruit-manage';" onmousedown="">채용공고 등록하기</button>
                    </div>
                    <div class="slide type_hr">
                        <img src="https://www.saraminbanner.co.kr/new/main/2020/09/qhel6d_eyqc-2so1qt_032.png">
                        <a href="http://www.saramin.co.kr/zf_user/memcom/talent-pool/main/recommend?inner_source=saramin&amp;inner_medium=banner&amp;inner_campaign=top_box_type_banner_company&amp;inner_term=new_talent-pool" class="go_link" target="_blank"></a>
                    </div>
                    <div class="slide type_hr slide_active">
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
                        <p class="desc1">구직자의 입사지원은 물론,<br>맞춤형 인재추천까지!</p>
                        <p class="desc2">
                            지금!<br>채용공고를 등록하세요! </p>
                        <button type="button" class="btn_link" onclick="document.location.href='/zf_user/recruit-manage';" onmousedown="">채용공고 등록하기</button>
                    </div>
                </div>
                <div class="wrap_slide_btns company" style="display: block">
                    <div class="pager company"><button type="button" class="pager_item" data-index="0">1</button><button type="button" class="pager_item" data-index="1">1</button><button type="button" class="pager_item active" data-index="2">1</button></div>
                    <div class="controll_auto play">
                        <button type="button" class="btn_play">
                            <svg width="6px" height="8px" viewBox="0 0 6 8" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" class="btn">
                                <title>슬라이드 시작 버튼</title>
                                <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                    <g transform="translate(-615.000000, -535.000000)" fill="#FFFFFF">
                                        <g transform="translate(330.000000, 192.000000)">
                                            <g transform="translate(229.000000, 343.000000)">
                                                <g transform="translate(56.000000, 0.000000)">
                                                    <polygon points="0 5.69266856e-14 0 8 6 4"></polygon>
                                                </g>
                                            </g>
                                        </g>
                                    </g>
                                </g>
                            </svg>
                        </button>
                        <button type="button" class="btn_pause">
                            <svg width="6px" height="6px" viewBox="0 0 6 6" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" class="btn">
                                <title>슬라이드 정지 버튼</title>
                                <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                    <g transform="translate(-615.000000, -536.000000)" fill="#FFFFFF" fill-rule="nonzero">
                                        <g transform="translate(330.000000, 192.000000)">
                                            <g transform="translate(229.000000, 344.000000)">
                                                <g transform="translate(56.000000, 0.000000)">
                                                    <rect x="0" y="0" width="1.5" height="6"></rect>
                                                    <rect x="4.5" y="0" width="1.5" height="6"></rect>
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
            <div class="recomm_content">
                <div class="wrap_box_news company">
                    <div class="box_news company">
                        <div class="slide type2">
                            <div class="item">
                                <strong class="title">HR매거진</strong>
                                <p class="desc">논란을 줄이는 회사 문화 구축 방법</p>
                                <p class="desc2">바로가기</p>
                                <span class="wrap_thumb">
                                    <img src="//www.saraminimage.co.kr/sri/main/thumb/hr_1_l.jpg" alt="HR매거진 이미지" class="thumb">
                                </span>
                                <a href="/zf_user/hr-magazine/view?hr_idx=810&amp;magazine_join_type=subject" class="link" onmousedown="loggingEventAndTagManager(['main', 'CONTENTS', 'hr-magazine', ''], ['ga_lead', 'main', 'CONTENTS', 'hr-magazine'])"></a>
                            </div>
                            <div class="item">
                                <strong class="title">인재POOL</strong>
                                <p class="desc">딱 맞는 인재추천부터 입사제의를 제한없이 편리하게 이용해보세요.</p>
                                <p class="desc2">빠르게 인재구하기</p>
                                <span class="wrap_thumb">
                                    <img src="//www.saraminimage.co.kr/sri/main/thumb/rec_pool_1_l.jpg" alt="인재POOL 이미지" class="thumb">
                                </span>
                                <a href="/zf_user/memcom/talent-pool/main#/recommend" class="link" onmousedown="loggingEventAndTagManager(['main', 'CONTENTS', 'talent-manage', ''], ['ga_lead', 'main', 'CONTENTS', 'talent-manage'])"></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="wrap_my_area" style="
    width: 401px;
">
            
            
            
            
            
        <div class="row" style="width: 450px;">
		        <div>
		            <div class="panel panel-primary">
		                <div class="panel-heading" style="width: 400px;">
		                    <h3 class="panel-title">
		                        <span class="glyphicon glyphicon-bookmark"></span> Quick Shortcuts</h3>
		                </div>
		                <div class="panel-body">
		                    <div class="row" style="
    width: 400px;
">
		                        <div>
		                          <a href="#" class="btn btn-light btn-lg" role="button"><span class="glyphicon glyphicon-bookmark"></span> <br>10대기업</a>
		                          <a href="calendarlist.do" class="btn btn-light btn-lg" role="button"><span class="glyphicon glyphicon-list-alt"></span> <br>공채달력</a>
		                          <a href="#" class="btn btn-light btn-lg" role="button"><span class="glyphicon glyphicon-signal"></span> <br>TOP10</a>
		                        </div>
		                        <div>
		                         <a href="Jobtalklist.do" class="btn btn-light btn-lg" role="button"><span class="glyphicon glyphicon-comment"></span> <br>취업톡톡💬</a>
		                          <a href="#" class="btn btn-light btn-lg" role="button"><span class="glyphicon glyphicon-file"></span> <br>자료실</a>
		                          <a href="mypage.do" class="btn btn-light btn-lg" role="button"><span class="glyphicon glyphicon-user"></span> <br>마이페이지</a>
		                        </div>
		                        <div>
		                          <a href="#" class="btn btn-light btn-lg" role="button"><span class="glyphicon glyphicon-user"></span> <br>이력서관리</a>
		                          <a href="#" class="btn btn-light btn-lg" role="button"><span class="glyphicon glyphicon-picture"></span> <br>취업뉴스</a>
		                          <a href="#" class="btn btn-light btn-lg" role="button"><span class="glyphicon glyphicon-tag"></span> <br>공지사항</a>
		                        </div>
		                    </div>
		                </div>
		            </div>
		        </div>
		    </div></div>
        
        
    </div>
<div id="section_contents" class="cont_top">
    <div class="inner">
        <div class="lpop_wrap layer_upgrade" style="display: none;">
            <div class="layer_head"><strong class="blind">브라우저 지원범위 안내</strong></div>
            <div class="layer_cont">
                <a class="desc_upgrade" target="_blank" title="업그레이드 새창알림">
                    원활한 서비스 이용을 위해<br>
                    <strong>최신 익스플로러 브라우저</strong>로<br>
                    <strong>업그레이드</strong> 해주세요
                </a>
            </div>
            <button type="button" class="btn_close"><span class="blind">닫기</span></button>
        </div>
        <div class="wrap_recomm loading" style="display : block">
            <div class="wrap_bigbox person" style="
    width: 400px;
">



<button class="close" style="position: absolute;
top: 0;
right: 0;
background-color: white;
border: 0;
padding: 22px;
z-index: 10;"><span class="bar"></span></button>
<div class="outside"> 
  <div class="inside">
    <ul class="menu">
      <li><span class="fa fa-dashboard"></span>일하라 소개</li>
      <li><span class="fa fa-shopping-basket"></span>이용약관</li>
      <li><span class="fa fa-shopping-cart"></span>개인정보처리방침</li>
      <li><span class="fa fa-info-circle"></span>이메일주소무단수집거부</li>
      <li><span class="fa fa-credit-card"></span>웹접근성정책</li>
      <li><span class="fa fa-leaf"></span>배너가져가기</li>
    </ul>
  </div>
</div>

<script type="text/javascript">
$(".close").click(function(){
	  $('.outside').toggleClass('in');
	  $('.bar').toggleClass('active');
	  $(this).toggleClass('is-showing');
	});
</script>
                
                
            </div>
            <div class="recomm_content" style="
    padding-top: 0px;
    padding-left: 0px;
    width: 400px;
">
                
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
                        <p class="desc1">구직자의 입사지원은 물론,<br>맞춤형 인재추천까지!</p>
                        <p class="desc2">
                            지금!<br>채용공고를 등록하세요! </p>
                        <button type="button" class="btn_link" onclick="document.location.href='/zf_user/recruit-manage';" onmousedown="">채용공고 등록하기</button>
                    </div>
                    <div class="slide type_hr">
                        <img src="https://www.saraminbanner.co.kr/new/main/2020/09/qhel6d_eyqc-2so1qt_032.png">
                        <a href="http://www.saramin.co.kr/zf_user/memcom/talent-pool/main/recommend?inner_source=saramin&amp;inner_medium=banner&amp;inner_campaign=top_box_type_banner_company&amp;inner_term=new_talent-pool" class="go_link" target="_blank"></a>
                    </div>
                    <div class="slide type_hr slide_active">
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
                        <p class="desc1">구직자의 입사지원은 물론,<br>맞춤형 인재추천까지!</p>
                        <p class="desc2">
                            지금!<br>채용공고를 등록하세요! </p>
                        <button type="button" class="btn_link" onclick="document.location.href='/zf_user/recruit-manage';" onmousedown="">채용공고 등록하기</button>
                    </div>
                </div>
                <div class="wrap_slide_btns company" style="display: block">
                    <div class="pager company"><button type="button" class="pager_item" data-index="0">1</button><button type="button" class="pager_item" data-index="1">1</button><button type="button" class="pager_item active" data-index="2">1</button></div>
                    <div class="controll_auto play">
                        <button type="button" class="btn_play">
                            <svg width="6px" height="8px" viewBox="0 0 6 8" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" class="btn">
                                <title>슬라이드 시작 버튼</title>
                                <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                    <g transform="translate(-615.000000, -535.000000)" fill="#FFFFFF">
                                        <g transform="translate(330.000000, 192.000000)">
                                            <g transform="translate(229.000000, 343.000000)">
                                                <g transform="translate(56.000000, 0.000000)">
                                                    <polygon points="0 5.69266856e-14 0 8 6 4"></polygon>
                                                </g>
                                            </g>
                                        </g>
                                    </g>
                                </g>
                            </svg>
                        </button>
                        <button type="button" class="btn_pause">
                            <svg width="6px" height="6px" viewBox="0 0 6 6" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" class="btn">
                                <title>슬라이드 정지 버튼</title>
                                <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                    <g transform="translate(-615.000000, -536.000000)" fill="#FFFFFF" fill-rule="nonzero">
                                        <g transform="translate(330.000000, 192.000000)">
                                            <g transform="translate(229.000000, 344.000000)">
                                                <g transform="translate(56.000000, 0.000000)">
                                                    <rect x="0" y="0" width="1.5" height="6"></rect>
                                                    <rect x="4.5" y="0" width="1.5" height="6"></rect>
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
            <div class="recomm_content">
                <div class="wrap_box_news company">
                    <div class="box_news company">
                        <div class="slide type2">
                            <div class="item">
                                <strong class="title">HR매거진</strong>
                                <p class="desc">논란을 줄이는 회사 문화 구축 방법</p>
                                <p class="desc2">바로가기</p>
                                <span class="wrap_thumb">
                                    <img src="//www.saraminimage.co.kr/sri/main/thumb/hr_1_l.jpg" alt="HR매거진 이미지" class="thumb">
                                </span>
                                <a href="/zf_user/hr-magazine/view?hr_idx=810&amp;magazine_join_type=subject" class="link" onmousedown="loggingEventAndTagManager(['main', 'CONTENTS', 'hr-magazine', ''], ['ga_lead', 'main', 'CONTENTS', 'hr-magazine'])"></a>
                            </div>
                            <div class="item">
                                <strong class="title">인재POOL</strong>
                                <p class="desc">딱 맞는 인재추천부터 입사제의를 제한없이 편리하게 이용해보세요.</p>
                                <p class="desc2">빠르게 인재구하기</p>
                                <span class="wrap_thumb">
                                    <img src="//www.saraminimage.co.kr/sri/main/thumb/rec_pool_1_l.jpg" alt="인재POOL 이미지" class="thumb">
                                </span>
                                <a href="/zf_user/memcom/talent-pool/main#/recommend" class="link" onmousedown="loggingEventAndTagManager(['main', 'CONTENTS', 'talent-manage', ''], ['ga_lead', 'main', 'CONTENTS', 'talent-manage'])"></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="wrap_my_area" style="
    width: 401px;
">
            
            
            
            
            
        <div class="row" style="width: 450px;">
		        <div>
		            <div class="panel panel-primary">
		                <div class="panel-heading" style="width: 400px;">
		                    <h3 class="panel-title">
		                        <span class="glyphicon glyphicon-bookmark"></span> Quick Shortcuts</h3>
		                </div>
		                <div class="panel-body">
		                    <div class="row" style="
    width: 400px;
">
		                        <div>
		                          <a href="#" class="btn btn-light btn-lg" role="button"><span class="glyphicon glyphicon-bookmark"></span> <br>10대기업</a>
		                          <a href="calendarlist.do" class="btn btn-light btn-lg" role="button"><span class="glyphicon glyphicon-list-alt"></span> <br>공채달력</a>
		                          <a href="#" class="btn btn-light btn-lg" role="button"><span class="glyphicon glyphicon-signal"></span> <br>TOP10</a>
		                        </div>
		                        <div>
		                         <a href="Jobtalklist.do" class="btn btn-light btn-lg" role="button"><span class="glyphicon glyphicon-comment"></span> <br>취업톡톡💬</a>
		                          <a href="#" class="btn btn-light btn-lg" role="button"><span class="glyphicon glyphicon-file"></span> <br>자료실</a>
		                          <a href="mypage.do" class="btn btn-light btn-lg" role="button"><span class="glyphicon glyphicon-user"></span> <br>마이페이지</a>
		                        </div>
		                        <div>
		                          <a href="#" class="btn btn-light btn-lg" role="button"><span class="glyphicon glyphicon-user"></span> <br>이력서관리</a>
		                          <a href="#" class="btn btn-light btn-lg" role="button"><span class="glyphicon glyphicon-picture"></span> <br>취업뉴스</a>
		                          <a href="#" class="btn btn-light btn-lg" role="button"><span class="glyphicon glyphicon-tag"></span> <br>공지사항</a>
		                        </div>
		                    </div>
		                </div>
		            </div>
		        </div>
		    </div></div>
        
        
    </div>
</div></div>


		        </main></div>
		     

         <!-- 구분선 -->

		   
		


     
	       	 

     	<!-- column2 end -->




    <br class="clear">

   <!-- 메인 우측 광고 -->
   

  



<!--채용공고-->

<div class="cont_product cont_prime">

<div class="top_poduct"><button class="btn_product" data-banner="prime"><span class="track_event" data-track_event="main|Ads_click_guide|prime|layer_click">상품안내</span></button></div>
<ul class="list_product" id="_primePlus" style=""><li class="open" data-rec_idx="40317898"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40317898" class="link_box track_event" data-track_event="main|Ads_click|prime_plus_fix_expand|1" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2017/03/on51mv_t60v-2rxeei_specialgold4812003.png" alt="(주)세화" class="img"></span> <strong class="poduct_tit">(주)세화</strong> <em class="product_desc">2021년 각 부문 신입/경력 채용공고</em> <em class="product_desc open"><span class="txt">2021년 각 부문</span><span class="txt">신입/경력 채용공고</span></em> <span class="thumb_product"><img data-src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2021/05/qtnd37_mscv-2rxefd_.png" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus_fix_expand"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-10</span> </span> <span class="bg"></span> </div> </li> <li class="open" data-rec_idx="40291797"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40291797" class="link_box track_event" data-track_event="main|Ads_click|prime_plus_fix_expand|2" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2016/04/1459486638_specialgold6946614koinfra2.png" alt="한국인프라관리㈜" class="img"></span> <strong class="poduct_tit">한국인프라관리㈜</strong> <em class="product_desc">토목부문 신입사원 채용</em> <em class="product_desc open"><span class="txt">2021년 토목부문</span><span class="txt">신입사원 채용</span></em> <span class="wrap_desc"><span class="txt_desc">2010년 설립 (11년차)</span><span class="txt_desc">매출액 573억 8천만원 <span class="base_year">(2020년)</span></span><span class="txt_desc">사원수 68명 <span class="base_year">(2020년)</span></span></span> <span class="thumb_product"><img class="img" alt="" rel="nofollow" src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2021/05/qtn5cg_1c2h-2rxefi_2.png"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus_fix_expand"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-8</span> </span> <span class="bg"></span> </div> </li> <li class="open" data-rec_idx="39900344"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=39900344" class="link_box track_event" data-track_event="main|Ads_click|prime_plus_fix_expand|3" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2020/05/qb19lz_97dr-2rxeff_specialgold7805082hancomacademylogo.jpg" alt="㈜한컴아카데미" class="img"></span> <strong class="poduct_tit">㈜한컴아카데미</strong> <em class="product_desc">취업연계 과정 교육생 모집</em> <em class="product_desc open"><span class="txt">인공지능 전문인력</span><span class="txt">임베디드 SW개발자</span></em> <span class="thumb_product"><img data-src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2021/05/qtl4xy_t7f6-2rxefj_111.png" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus_fix_expand"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-2</span> <button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('39900344','','t_category=main&amp;t_content=prime_plus_fix_expand', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately track_event" data-track_event="main|Ads_quick_apply|prime_plus_fix_expand|3">입사지원</span></button> </span> <span class="bg"></span> </div> </li> <li class="open" data-rec_idx="40162888"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40162888" class="link_box track_event" data-track_event="main|Ads_click|prime_plus_fix_expand|4" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2021/03/qqcwr4_p8uv-2rxefm_specialgold7423228logo.png" alt="㈜우아한청년들" class="img"></span> <strong class="poduct_tit">㈜우아한청년들</strong> <em class="product_desc">B마트 지점관리 매니저 모집</em> <em class="product_desc open"><span class="txt">B마트 서울/인천/경기</span><span class="txt">지점관리 매니저 모집</span></em> <span class="thumb_product"><img data-src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2021/05/qtliqv_eoct-2rxefi_.png" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus_fix_expand"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-4</span> </span> <span class="bg"></span> </div> </li> <li class="open" data-rec_idx="40269207"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40269207" class="link_box track_event" data-track_event="main|Ads_click|prime_plus_fix_expand|5" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2021/05/qtfp20_kdl6-2rxefi_specialgold5575651logosg.png" alt="경북산업직업전문학교" class="img"></span> <strong class="poduct_tit">경북산업직업전문학교</strong> <em class="product_desc">[국비무료]취업연계 교육생모집</em> <em class="product_desc open"><span class="txt">[국비무료]100%취업연계 </span><span class="txt">직업훈련 교육생 모집</span></em> <span class="wrap_desc"><span class="txt_desc">매출액 51억 5천만원 <span class="base_year">(2019년)</span></span><span class="txt_desc">사원수 50명 <span class="base_year">(2005년)</span></span></span> <span class="thumb_product"><img data-src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2021/05/qtac95_6der-2rxefe_1pl.png" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus_fix_expand"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-23</span> </span> <span class="bg"></span> </div> </li> <li class="open" data-rec_idx="40233287"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40233287" class="link_box track_event" data-track_event="main|Ads_click|prime_plus_fix_expand|6" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2017/01/ok2pdq_lhm0-2rxeef_specialgold6347540vvv.png" alt="정선하이캐슬리조트" class="img"></span> <strong class="poduct_tit">정선하이캐슬리조트</strong> <em class="product_desc">2021년도 새롭게 오픈하는 경력 및 신입[정규직] 사원 채용</em> <em class="product_desc open"><span class="txt">2021년도 새롭게 오픈하는</span><span class="txt">경력/신입[정규직] 채용</span></em> <span class="wrap_desc"><span class="txt_desc">2000년 설립 (21년차)</span><span class="txt_desc">매출액 36억 9천만원 <span class="base_year">(2019년)</span></span><span class="txt_desc">사원수 36명 <span class="base_year">(2020년)</span></span></span> <span class="thumb_product"><img class="img" alt="" rel="nofollow" src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2021/05/qt0ucf_hqg7-2rxefi_.png"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus_fix_expand"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-8</span> <button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('40233287','','t_category=main&amp;t_content=prime_plus_fix_expand', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately track_event" data-track_event="main|Ads_quick_apply|prime_plus_fix_expand|6">입사지원</span></button> </span> <span class="bg"></span> </div> </li> <li class="open" data-rec_idx="40236467"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40236467" class="link_box track_event" data-track_event="main|Ads_click|prime_plus_fix_expand|7" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2016/03/1458868568_specialgold6372238nrf.png" alt="한국연구재단" class="img"></span> <strong class="poduct_tit">한국연구재단</strong> <em class="product_desc">체험형 청년인턴 채용 공고</em> <em class="product_desc open"><span class="txt">2021년도 체험형</span><span class="txt">청년인턴 채용 공고</span></em> <span class="wrap_desc"><span class="txt_desc">2009년 설립 (12년차)</span><span class="txt_desc">매출액 4조 3,581억 4천만원 <span class="base_year">(2016년)</span></span><span class="txt_desc">사원수 313명 <span class="base_year">(2016년)</span></span></span> <span class="thumb_product"><img data-src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2021/05/qt14ro_h7j3-2rxefd_qsq5rfdijb2rxefn35.png" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus_fix_expand"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-1</span> </span> <span class="bg"></span> </div> </li> <li class="open" data-rec_idx="40110933"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40110933" class="link_box track_event" data-track_event="main|Ads_click|prime_plus_fix_expand|8" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2021/01/qmg8bu_mwga-2rxic3_specialgold7874744tj210105logo.png" alt="주식회사 트리플제이엔터" class="img"></span> <strong class="poduct_tit">주식회사 트리플제이엔터</strong> <em class="product_desc">전국지점 증권/주식 TM영업채용</em> <em class="product_desc open"><span class="txt">전국지점 증권/주식 TM</span><span class="txt">영업인재 공개채용</span></em> <span class="thumb_product"><img data-src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2021/05/qso8j6_iue4-2rxefj_2.png" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus_fix_expand"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-5</span> <button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('40110933','','t_category=main&amp;t_content=prime_plus_fix_expand', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately track_event" data-track_event="main|Ads_quick_apply|prime_plus_fix_expand|8">입사지원</span></button> </span> <span class="bg"></span> </div> </li> <li class="open" data-rec_idx="40237160"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40237160" class="link_box track_event" data-track_event="main|Ads_click|prime_plus_fix_expand|9" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2021/05/qt1ai9_lowy-2rxeff_specialgold87945.png" alt="남서울대학교" class="img"></span> <strong class="poduct_tit">남서울대학교</strong> <em class="product_desc">등록금無 빅데이터인공지능 석사</em> <em class="product_desc open"><span class="txt">빅데이터인공지능 학과</span><span class="txt">석사과정 모집</span></em> <span class="thumb_product"><img data-src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2021/05/qt1aor_jy1q-2rxeff_.png" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus_fix_expand"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-15</span> </span> <span class="bg"></span> </div> </li> <li class="open" data-rec_idx="40287428"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40287428" class="link_box track_event" data-track_event="main|Ads_click|prime_plus_fix_expand|10" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2021/05/qtfklp_b4la-2rxefk_specialgold7858130.jpg" alt="(주)에스엘정보" class="img"></span> <strong class="poduct_tit">(주)에스엘정보</strong> <em class="product_desc">정보처리산업기사 교육생 모집</em> <em class="product_desc open"><span class="txt">정보처리산업기사 취득</span><span class="txt">교육생 모집(전액무료)</span></em> <span class="thumb_product"><img data-src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2021/05/qtfksl_txgq-2rxefk_1.jpg" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus_fix_expand"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-9</span> <button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('40287428','','t_category=main&amp;t_content=prime_plus_fix_expand', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately track_event" data-track_event="main|Ads_quick_apply|prime_plus_fix_expand|10">입사지원</span></button> </span> <span class="bg"></span> </div> </li> <li class="open" data-rec_idx="40155119"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40155119" class="link_box track_event" data-track_event="main|Ads_click|prime_plus_fix_expand|11" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2020/06/qcay5u_8i51-2rxefj_specialgold7402689.png" alt="대한상공회의소 서울기술교육센터" class="img"></span> <strong class="poduct_tit">대한상공회의소 서울기술교육센터</strong> <em class="product_desc">[국비지원] 미래유망분야 전문기술 교육생 모집</em> <em class="product_desc open"><span class="txt">[국비지원] 미래유망분야</span><span class="txt">전문기술 교육생 모집</span></em> <span class="thumb_product"><img data-src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2021/05/qsibo6_h4ud-2rxefd_qs78qt1yqy2rxefc.png" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus_fix_expand"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-8</span> </span> <span class="bg"></span> </div> </li> <li class="open" data-rec_idx="40282221"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40282221" class="link_box track_event" data-track_event="main|Ads_click|prime_plus_fix_expand|12" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2017/04/oocayf_uu1l-2rxeeh_specialgold4984518.png" alt="두산매거진" class="img"></span> <strong class="poduct_tit">두산매거진</strong> <em class="product_desc">2021년 경력사원 채용</em> <em class="product_desc open"><span class="txt">2021년 </span><span class="txt">경력사원 채용</span></em> <span class="thumb_product"><img data-src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2021/05/qtg55x_g2zj-2rxefb_1.png" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus_fix_expand"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-5</span> </span> <span class="bg"></span> </div> </li> <li class="open" data-rec_idx="40255925"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40255925" class="link_box track_event" data-track_event="main|Ads_click|prime_plus_fix_expand|13" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2020/08/qezwgm_7oq0-2rxefo_specialgold4969360logo.png" alt="롯데렌탈㈜" class="img"></span> <strong class="poduct_tit">롯데렌탈㈜</strong> <em class="product_desc">2021년 각 부문 신입/경력사원 채용</em> <em class="product_desc open"><span class="txt">2021년 각 부문</span><span class="txt">신입/경력사원 채용</span></em> <span class="wrap_desc"><span class="txt_desc">2005년 설립 (16년차)</span><span class="txt_desc">사원수 1,111명 <span class="base_year">(2021년)</span></span></span> <span class="thumb_product"><img data-src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2021/05/qt89sf_4e4z-2rxefc_qonsfzejjl2rxefl.png" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus_fix_expand"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-2</span> </span> <span class="bg"></span> </div> </li> <li class="open" data-rec_idx="40290967"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40290967" class="link_box track_event" data-track_event="main|Ads_click|prime_plus_fix_expand|14" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2017/01/ojhlsv_481y-2rxeeh_specialgold6950067gs.png" alt="㈜GS동해전력" class="img"></span> <strong class="poduct_tit">㈜GS동해전력</strong> <em class="product_desc">GS동해전력 경력사원 채용</em> <em class="product_desc open"><span class="txt">GS동해전력 경력사원 채용</span><span class="txt"></span></em> <span class="thumb_product"><img data-src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2021/05/qtfqjq_z014-2rxefj_.png" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus_fix_expand"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-8</span> </span> <span class="bg"></span> </div> </li> <li class="open" data-rec_idx="40274728"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40274728" class="link_box track_event" data-track_event="main|Ads_click|prime_plus_fix_expand|15" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2018/09/pf6azs_df7h-2rxee5_specialgold7646953hdit.png" alt="현대IT&amp;E" class="img"></span> <strong class="poduct_tit">현대IT&amp;E</strong> <em class="product_desc">채용확정형 2기 교육생모집</em> <em class="product_desc open"><span class="txt">채용확정형 2기</span><span class="txt">교육생모집</span></em> <span class="thumb_product"><img data-src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2021/05/qtlu1c_db8o-2rxefl_ITE.png" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus_fix_expand"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-4</span> </span> <span class="bg"></span> </div> </li> <li class="open" data-rec_idx="40258375"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40258375" class="link_box track_event" data-track_event="main|Ads_click|prime_plus_fix_expand|16" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2018/12/pjcxqj_h1vu-2rxgco_specialgold7661862.png" alt="에스케이트리켐(주)" class="img"></span> <strong class="poduct_tit">에스케이트리켐(주)</strong> <em class="product_desc">부문별 경력/신입 채용</em> <em class="product_desc open"><span class="txt">21년도 상반기</span><span class="txt">부문별 경력/신입 채용</span></em> <span class="wrap_desc"><span class="txt_desc">2016년 설립 (5년차)</span><span class="txt_desc">매출액 1,505억 2천만원 <span class="base_year">(2020년)</span></span><span class="txt_desc">사원수 131명 <span class="base_year">(2020년)</span></span></span> <span class="thumb_product"><img data-src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2021/05/qta20v_2hnh-2rxefe_17pl.png" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus_fix_expand"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">상시</span> </span> <span class="bg"></span> </div> </li> <li class="open" data-rec_idx="40194234"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40194234" class="link_box track_event" data-track_event="main|Ads_click|prime_plus_fix_expand|17" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2019/09/py9oxt_o3rr-2rxef8_specialgold7714474mul.png" alt="(주)멀티캠퍼스" class="img"></span> <strong class="poduct_tit">(주)멀티캠퍼스</strong> <em class="product_desc">100% 취업연계 AI 서비스 개발 양성과정</em> <em class="product_desc open"><span class="txt">100% 취업연계</span><span class="txt">AI 서비스 개발 양성과정</span></em> <span class="wrap_desc"><span class="txt_desc">2000년 설립 (21년차)</span><span class="txt_desc">사원수 847명 <span class="base_year">(2021년)</span></span></span> <span class="thumb_product"><img data-src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2021/05/qsq8zw_51yx-2rxefe_01.png" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus_fix_expand"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-11</span> </span> <span class="bg"></span> </div> </li> <li class="open" data-rec_idx="40310845"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40310845" class="link_box track_event" data-track_event="main|Ads_click|prime_plus_fix_expand|18" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2021/05/qtlrq1_pfry-2rxefn_specialgold7923675.png" alt="기술보증기금" class="img"></span> <strong class="poduct_tit">기술보증기금</strong> <em class="product_desc">지식재산공제파트너(모집인) 공모 안내</em> <em class="product_desc open"><span class="txt">지식재산공제파트너</span><span class="txt">(모집인) 공모 안내</span></em> <span class="wrap_desc"><span class="txt_desc">1989년 설립 (32년차)</span><span class="txt_desc">매출액 3,396억 8천만원 <span class="base_year">(2019년)</span></span><span class="txt_desc">사원수 1,355명 <span class="base_year">(2020년)</span></span></span> <span class="thumb_product"><img data-src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2021/05/qtlrqr_x0s4-2rxefn_36.png" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus_fix_expand"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-13</span> <button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('40310845','','t_category=main&amp;t_content=prime_plus_fix_expand', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately track_event" data-track_event="main|Ads_quick_apply|prime_plus_fix_expand|18">입사지원</span></button> </span> <span class="bg"></span> </div> </li> <li class="open" data-rec_idx="40263721"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40263721" class="link_box track_event" data-track_event="main|Ads_click|prime_plus_fix_expand|19" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2014/10/1412120623_specialgold2671079.png" alt="한솔테크닉스㈜" class="img"></span> <strong class="poduct_tit">한솔테크닉스㈜</strong> <em class="product_desc">연구/개발부문 경력사원 모집</em> <em class="product_desc open"><span class="txt">연구/개발부문</span><span class="txt">경력사원 모집</span></em> <span class="thumb_product"><img data-src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2021/05/qt8seh_6isu-2rxefe_1.png" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus_fix_expand"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-5</span> </span> <span class="bg"></span> </div> </li> <li class="open" data-rec_idx="40311040"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40311040" class="link_box track_event" data-track_event="main|Ads_click|prime_plus_fix_expand|20" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2019/01/plb5sx_trch-2rxehi_specialgold7510537.png" alt="대한상공회의소 경기인력개발원" class="img"></span> <strong class="poduct_tit">대한상공회의소 경기인력개발원</strong> <em class="product_desc">[국비무료]4차산업 교육생</em> <em class="product_desc open"><span class="txt">[국비무료] 4차산업</span><span class="txt">취업연계 교육생모집</span></em> <span class="thumb_product"><img data-src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2021/05/qtlrkz_kbx9-2rxefc_.png" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus_fix_expand"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-12</span> </span> <span class="bg"></span> </div> </li> <li class="open" data-rec_idx="40273163"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40273163" class="link_box track_event" data-track_event="main|Ads_click|prime_plus_fix_expand|21" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2021/05/qtajtv_vr9o-2rxefe_specialgold7867054logosp.png" alt="한화솔루션(주)" class="img"></span> <strong class="poduct_tit">한화솔루션(주)</strong> <em class="product_desc">[큐셀] 고려대 산학장학생 모집</em> <em class="product_desc open"><span class="txt">[한화큐셀] 고려대</span><span class="txt">산학장학생(석사) 모집</span></em> <span class="thumb_product"><img data-src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2021/05/qtajv7_d9nn-2rxefe_15pl.png" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus_fix_expand"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-7</span> </span> <span class="bg"></span> </div> </li> <li class="open" data-rec_idx="40282242"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40282242" class="link_box track_event" data-track_event="main|Ads_click|prime_plus_fix_expand|22" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2020/01/q3vc7a_bw0i-2rxefe_specialgold29995kma.png" alt="㈔한국능률협회" class="img"></span> <strong class="poduct_tit">㈔한국능률협회</strong> <em class="product_desc">2021년 상반기(5월) 경력직 채용</em> <em class="product_desc open"><span class="txt">2021년 상반기(5월)</span><span class="txt">경력직 수시채용</span></em> <span class="wrap_desc"><span class="txt_desc">매출액 502억 7천만원 <span class="base_year">(2018년)</span></span><span class="txt_desc">사원수 200명 <span class="base_year">(2018년)</span></span></span> <span class="thumb_product"><img data-src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2021/05/qte22s_1wij-2rxefd_.png" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus_fix_expand"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-4</span> </span> <span class="bg"></span> </div> </li> <li class="open" data-rec_idx="40305809"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40305809" class="link_box track_event" data-track_event="main|Ads_click|prime_plus_fix_expand|23" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2021/05/qtlbg5_8c2r-2rxeff_specialgold5662249wooriat.png" alt="우리자산신탁㈜" class="img"></span> <strong class="poduct_tit">우리자산신탁㈜</strong> <em class="product_desc">2021년 인턴사원 모집 공고</em> <em class="product_desc open"><span class="txt">2021년</span><span class="txt">인턴사원 모집 공고</span></em> <span class="thumb_product"><img data-src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2021/05/qtlbhx_fbqr-2rxeff_ddddd.png" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus_fix_expand"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-4</span> </span> <span class="bg"></span> </div> </li> <li class="open" data-rec_idx="40163210"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40163210" class="link_box track_event" data-track_event="main|Ads_click|prime_plus_fix_expand|24" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2019/02/pnlzqj_8154-2rxefe_specialgold6142271gepa.png" alt="(재)경상북도경제진흥원" class="img"></span> <strong class="poduct_tit">(재)경상북도경제진흥원</strong> <em class="product_desc">경북지역 기술 교육 훈련생 모집</em> <em class="product_desc open"><span class="txt">김천 • 구미 • 칠곡지역</span><span class="txt">기술 교육 훈련생 모집</span></em> <span class="wrap_desc"><span class="txt_desc">1997년 설립 (24년차)</span><span class="txt_desc">사원수 62명 <span class="base_year">(2019년)</span></span></span> <span class="thumb_product"><img data-src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2021/05/qsiyf7_zi3l-2rxefk_.png" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus_fix_expand"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-10</span> </span> <span class="bg"></span> </div> </li> <li class="open" data-rec_idx="40282617"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40282617" class="link_box track_event" data-track_event="main|Ads_click|prime_plus_fix_expand|25" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2020/09/qgs7pg_vtrh-2rxiby_specialgold7847993koreasg.png" alt="한국바이오연구조합" class="img"></span> <strong class="poduct_tit">한국바이오연구조합</strong> <em class="product_desc">바이오 데이터 엔지니어</em> <em class="product_desc open"><span class="txt">바이오 데이터 엔지니어</span><span class="txt">양성사업 청년 미취업자</span></em> <span class="wrap_desc"><span class="txt_desc">2000년 설립 (21년차)</span><span class="txt_desc">매출액 52억 1천만원 <span class="base_year">(2019년)</span></span><span class="txt_desc">사원수 16명 <span class="base_year">(2009년)</span></span></span> <span class="thumb_product"><img data-src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2021/05/qte2ib_8htt-2rxefg_qk19os8pk62rxefd1.png" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus_fix_expand"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-35</span> </span> <span class="bg"></span> </div> </li> <li class="open" data-rec_idx="32982567"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=32982567" class="link_box track_event" data-track_event="main|Ads_click|prime_plus_fix_expand|26" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2020/06/qcawn8_a36a-2rxgco_specialgold39634huonsg200622spg2.png" alt="㈜휴온스글로벌" class="img"></span> <strong class="poduct_tit">㈜휴온스글로벌</strong> <em class="product_desc">휴온스 그룹 수시채용</em> <em class="product_desc open"><span class="txt">글로벌 헬스케어그룹</span><span class="txt">휴온스 그룹 수시채용</span></em> <span class="thumb_product"><img data-src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2020/06/qc63qb_5my5-2rxefn_.png" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus_fix_expand"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-5</span> </span> <span class="bg"></span> </div> </li> <li class="open" data-rec_idx="40229236"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40229236" class="link_box track_event" data-track_event="main|Ads_click|prime_plus_fix_expand|27" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2015/10/1444894299_specialgold3030001safety1.png" alt="㈔대한산업안전협회" class="img"></span> <strong class="poduct_tit">㈔대한산업안전협회</strong> <em class="product_desc">2021년도 수시 공개채용 공고</em> <em class="product_desc open"><span class="txt">2021년도 수시</span><span class="txt">공개채용 공고</span></em> <span class="wrap_desc"><span class="txt_desc">1964년 설립 (57년차)</span><span class="txt_desc">매출액 1,278억 3천만원 <span class="base_year">(2019년)</span></span><span class="txt_desc">사원수 1,077명 <span class="base_year">(2020년)</span></span></span> <span class="thumb_product"><img data-src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2021/05/qszhxz_etro-2rxefd_1.png" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus_fix_expand"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-6</span> </span> <span class="bg"></span> </div> </li> <li class="open" data-rec_idx="40140922"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40140922" class="link_box track_event" data-track_event="main|Ads_click|prime_plus_fix_expand|28" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2020/10/qi4q6k_vy1w-2rxefg_specialgold7399668logo.png" alt="쿠팡풀필먼트서비스" class="img"></span> <strong class="poduct_tit">쿠팡풀필먼트서비스</strong> <em class="product_desc">물류,엔지니어,경영지원 경력모집</em> <em class="product_desc open"><span class="txt">물류,엔지니어,</span><span class="txt">경영지원 경력</span></em> <span class="wrap_desc"><span class="txt_desc">2016년 설립 (5년차)</span><span class="txt_desc">사원수 19,662명 <span class="base_year">(2020년)</span></span></span> <span class="thumb_product"><img data-src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2021/04/qscsox_wvyz-2rxefe_.png" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus_fix_expand"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-5</span> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40247727"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40247727" class="link_box track_event" data-track_event="main|Ads_click|prime_plus|29" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2017/11/ozhmpq_obka-2rxee8_specialgold303984514438.png" alt="㈜썬앳푸드" class="img"></span> <strong class="poduct_tit">㈜썬앳푸드</strong> <em class="product_desc">SERVICE 및 COOK 외식 인재 모집</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday"><span class="num_dday last">오늘마감</span></span> <button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('40247727','','t_category=main&amp;t_content=prime_plus', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately track_event" data-track_event="main|Ads_quick_apply|prime_plus|29">입사지원</span></button> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40309838"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40309838" class="link_box track_event" data-track_event="main|Ads_click|prime_plus|30" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2020/01/q4y8gw_9zij-2rxefg_specialgold5198189.png" alt="대보건설㈜/대보실업㈜" class="img"></span> <strong class="poduct_tit">대보건설㈜/대보실업㈜</strong> <em class="product_desc">각 부문 경력직 수시채용</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-5</span> <button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('40309838','','t_category=main&amp;t_content=prime_plus', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately track_event" data-track_event="main|Ads_quick_apply|prime_plus|30">입사지원</span></button> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40311893"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40311893" class="link_box track_event" data-track_event="main|Ads_click|prime_plus|31" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2019/05/prmgj0_bxwi-2rxefd_specialgold7605436tmax.png" alt="티맥스그룹" class="img"></span> <strong class="poduct_tit">티맥스그룹</strong> <em class="product_desc">2021년 상반기 특별채용</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-11</span> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40284889"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40284889" class="link_box track_event" data-track_event="main|Ads_click|prime_plus|32" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2020/07/qdec1g_7vxk-2rxefc_specialgold15395logo.png" alt="㈜테스" class="img"></span> <strong class="poduct_tit">㈜테스</strong> <em class="product_desc">상반기 각 부문 신입/경력 채용</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-1</span> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="38825093"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=38825093" class="link_box track_event" data-track_event="main|Ads_click|prime_plus|33" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2020/07/qd55se_j6ui-2rxefb_sourcetik.png" alt="TikTok" class="img"></span> <strong class="poduct_tit">TikTok</strong> <em class="product_desc">각 부문별 인턴 및 전문가 채용</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-5</span> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40293649"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40293649" class="link_box track_event" data-track_event="main|Ads_click|prime_plus|34" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2019/07/puvr1c_upnm-2rxefj_specialgold5706578keic190719logo.jpg" alt="한국전자산업협동조합" class="img"></span> <strong class="poduct_tit">한국전자산업협동조합</strong> <em class="product_desc">[무료/인턴쉽연계] 반도체제어</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-15</span> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40093997"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40093997" class="link_box track_event" data-track_event="main|Ads_click|prime_plus|35" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2021/04/qs92jh_cj9g-2rxefl_specialgold77207582.png" alt="원전현장인력양성원" class="img"></span> <strong class="poduct_tit">원전현장인력양성원</strong> <em class="product_desc">[전액무료] 2021년 교육생 모집</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-25</span> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40286171"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40286171" class="link_box track_event" data-track_event="main|Ads_click|prime_plus|36" rel="sponsored, nofollow"></a> <span class="product_logo"><img src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2018/10/ph76s3_ob8u-2rxeec_specialgold5696956.png" alt="JB 우리캐피탈(주)" class="img"></span> <strong class="poduct_tit">JB 우리캐피탈(주)</strong> <em class="product_desc">2021년 상반기 IT부문 정규직 채용</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-5</span> </span> <span class="bg"></span> </div> </li></ul>
<ul class="list_product basic" id="_prime" style="height: 1557px"><li class="open" data-rec_idx="40317312"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40317312" class="link_box track_event" data-track_event="main|Ads_click|prime_fix_expand|1" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2021/05/qsptdd_znvu-2rxefg_specialgold66171kbcsg.png">㈜KBC Company</span> <strong class="poduct_tit">㈜KBC Company</strong> <em class="product_desc">각 부문별 신입 및 경력 채용 공고</em> <em class="product_desc open"><span class="txt">각 부문별</span><span class="txt">신입/경력사원 채용</span></em> <span class="thumb_product"><img data-src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2021/05/qtn6m0_yo8d-2rxefk_4.png" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_fix_expand"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-7</span> <button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('40317312','','t_category=main&amp;t_content=prime_fix_expand', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately track_event" data-track_event="main|Ads_quick_apply|prime_fix_expand|1">입사지원</span></button> </span> <span class="bg"></span> </div> </li> <li class="open" data-rec_idx="40292637"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40292637" class="link_box track_event" data-track_event="main|Ads_click|prime_fix_expand|2" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2021/05/qtl8wb_xcre-2rxefi_specialgold7452347logo.png">(주)새하컴즈</span> <strong class="poduct_tit">(주)새하컴즈</strong> <em class="product_desc">화상회의/교육 전문기업 인재채용</em> <em class="product_desc open"><span class="txt">android / java 웹개발자</span><span class="txt">고객관리 및 사업지원</span></em> <span class="wrap_desc"><span class="txt_desc">2009년 설립 (12년차)</span><span class="txt_desc">매출액 88억원 <span class="base_year">(2020년)</span></span><span class="txt_desc">사원수 29명 <span class="base_year">(2021년)</span></span></span> <span class="thumb_product"><img data-src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2021/05/qtfxb8_p6u4-2rxefj_.png" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_fix_expand"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-11</span> <button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('40292637','','t_category=main&amp;t_content=prime_fix_expand', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately track_event" data-track_event="main|Ads_quick_apply|prime_fix_expand|2">입사지원</span></button> </span> <span class="bg"></span> </div> </li> <li class="open" data-rec_idx="40281844"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40281844" class="link_box track_event" data-track_event="main|Ads_click|prime_fix_expand|3" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2021/01/qmt3nm_tixe-2rxefk_specialgold7748476.png">㈜제이와이피엔터테인먼트</span> <strong class="poduct_tit">㈜제이와이피엔터테인먼트</strong> <em class="product_desc">2021년 2분기 경력사원 특별채용</em> <em class="product_desc open"><span class="txt">2021년 2분기</span><span class="txt">경력사원 특별 채용</span></em> <span class="wrap_desc"><span class="txt_desc">1997년 설립 (24년차)</span><span class="txt_desc">매출액 253억 5천만원 <span class="base_year">(2012년)</span></span></span> <span class="thumb_product"><img data-src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2021/05/qtebjb_rldz-2rxefb_jj.png" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_fix_expand"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-11</span> </span> <span class="bg"></span> </div> </li> <li class="open" data-rec_idx="40289652"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40289652" class="link_box track_event" data-track_event="main|Ads_click|prime_fix_expand|4" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2019/09/px8iey_st0n-2rxefj_specialgold42425logo.png">㈜케이엠더블유</span> <strong class="poduct_tit">㈜케이엠더블유</strong> <em class="product_desc">미국법인 부문별 채용안내</em> <em class="product_desc open"><span class="txt">미국법인</span><span class="txt">부문별 채용안내</span></em> <span class="wrap_desc"><span class="txt_desc">1994년 설립 (27년차)</span><span class="txt_desc">사원수 409명 <span class="base_year">(2021년)</span></span></span> <span class="thumb_product"><img data-src="https://www.saraminbanner.co.kr/banner_logo/company/logo_banner/2021/05/qtfnsa_af4q-2rxefe_.png" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_fix_expand"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-35</span> <button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('40289652','','t_category=main&amp;t_content=prime_fix_expand', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately track_event" data-track_event="main|Ads_quick_apply|prime_fix_expand|4">입사지원</span></button> </span> <span class="bg"></span> </div> </li> <li class="open" data-rec_idx="39978218"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=39978218" class="link_box track_event" data-track_event="main|Ads_click|prime_fix_expand|5" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2020/05/qad16k_ly43-2rxefg_specialgold64568.png">대한상공회의소 충남인력개발원</span> <strong class="poduct_tit">대한상공회의소 충남인력개발원</strong> <em class="product_desc">[국비무료] CAD/CAM,스마트팩</em> <em class="product_desc open"><span class="txt">충남인력개발원</span><span class="txt">[국비무료] CAD/CAM,스마</span></em> <span class="thumb_product"><img data-src="https://www2.saraminbanner.co.kr/banner_logo/company/logo_banner/2021/04/qr6sq8_yp6j-2rxefk_cnd.png" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_fix_expand"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-11</span> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40234646"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40234646" class="link_box track_event" data-track_event="main|Ads_click|prime|6" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2021/03/qpfbvm_6ylx-2rxefn_specialgold3909032simpac.png">SIMPAC그룹</span> <strong class="poduct_tit">SIMPAC그룹</strong> <em class="product_desc">각 부문 신입/경력 채용</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-1</span> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40279307"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40279307" class="link_box track_event" data-track_event="main|Ads_click|prime|7" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2020/01/q4flgc_y008-2rxef8_specialgold3944604hyoil.png">현대오일뱅크㈜</span> <strong class="poduct_tit">현대오일뱅크㈜</strong> <em class="product_desc">경영기획 분야 경력사원 채용</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-5</span> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40281816"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40281816" class="link_box track_event" data-track_event="main|Ads_click|prime|8" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2015/11/1446444155_specialgold4439162dowls2015102681.jpg">더북컴퍼니</span> <strong class="poduct_tit">더북컴퍼니</strong> <em class="product_desc">2021년 상반기 신입 및 경력 채용</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-5</span> <button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('40281816','','t_category=main&amp;t_content=prime', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately track_event" data-track_event="main|Ads_quick_apply|prime|8">입사지원</span></button> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40271159"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40271159" class="link_box track_event" data-track_event="main|Ads_click|prime|9" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2020/04/q99sv3_olbq-2rxeff_specialgold7757098KSA.png">한국표준협회</span> <strong class="poduct_tit">한국표준협회</strong> <em class="product_desc">[부산] 풀스택 개발자 교육생 모집</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-16</span> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40219850"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40219850" class="link_box track_event" data-track_event="main|Ads_click|prime|10" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2020/04/q9jk7n_ii18-2rxefm_specialgold7761815hyundaichemical.png">㈜현대케미칼</span> <strong class="poduct_tit">㈜현대케미칼</strong> <em class="product_desc">현대케미칼 엔지니어 경력</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-6</span> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40112082"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40112082" class="link_box track_event" data-track_event="main|Ads_click|prime|11" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2021/03/qq3nvn_7fyu-2rxefn_specialgold7738814fsdfasfd.png">포스탑</span> <strong class="poduct_tit">포스탑</strong> <em class="product_desc">각 부문별 신입/경력 모집</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-7</span> <button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('40112082','','t_category=main&amp;t_content=prime', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately track_event" data-track_event="main|Ads_quick_apply|prime|11">입사지원</span></button> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40285287"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40285287" class="link_box track_event" data-track_event="main|Ads_click|prime|12" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2017/11/ozr7pc_dygg-2rxgdg_specialgold73996681422.png">쿠팡풀필먼트서비스</span> <strong class="poduct_tit">쿠팡풀필먼트서비스</strong> <em class="product_desc">[목천센터] 상,하차 계약직 채용</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-20</span> <button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('40285287','','t_category=main&amp;t_content=prime', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately track_event" data-track_event="main|Ads_quick_apply|prime|12">입사지원</span></button> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40295045"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40295045" class="link_box track_event" data-track_event="main|Ads_click|prime|13" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2017/11/oz4mjz_fbll-2rxgdd_specialgold7470378KFCKOREA.png">(주)KFC KOREA</span> <strong class="poduct_tit">(주)KFC KOREA</strong> <em class="product_desc">정규직 신입 매니저 모집</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-4</span> <button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('40295045','','t_category=main&amp;t_content=prime', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately track_event" data-track_event="main|Ads_quick_apply|prime|13">입사지원</span></button> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40289549"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40289549" class="link_box track_event" data-track_event="main|Ads_click|prime|14" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2019/12/q2saiy_gkb7-2rxefc_specialgold5968036lng.png">보령엘엔지터미널㈜</span> <strong class="poduct_tit">보령엘엔지터미널㈜</strong> <em class="product_desc">21년 하반기 공개채용</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-4</span> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40274411"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40274411" class="link_box track_event" data-track_event="main|Ads_click|prime|15" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2015/02/1424044448_specialgold4151474kicc.gif">한국정보통신㈜</span> <strong class="poduct_tit">한국정보통신㈜</strong> <em class="product_desc">일반관리/연구개발 각 부문 채용</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-7</span> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40288871"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40288871" class="link_box track_event" data-track_event="main|Ads_click|prime|16" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2017/03/onmcqs_zagb-2rxeej_specialgold7381732mynavilogosg.png">(주)마이나비코리아</span> <strong class="poduct_tit">(주)마이나비코리아</strong> <em class="product_desc">[일본근무]기업별 신입/경력 모집</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-22</span> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40314628"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40314628" class="link_box track_event" data-track_event="main|Ads_click|prime|17" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2021/03/qpogzo_vfr0-2rxefl_specialgold3597217lblogo.jpg">LB그룹</span> <strong class="poduct_tit">LB그룹</strong> <em class="product_desc">대규모 수시채용 및 인턴채용</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-10</span> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40236668"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40236668" class="link_box track_event" data-track_event="main|Ads_click|prime|18" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2014/11/1417075138_specialgold5724649m2i01.jpg">㈜엠투아이코퍼레이션</span> <strong class="poduct_tit">㈜엠투아이코퍼레이션</strong> <em class="product_desc">개발 및 영업부문 신입/경력 채용</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-5</span> <button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('40236668','','t_category=main&amp;t_content=prime', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately track_event" data-track_event="main|Ads_quick_apply|prime|18">입사지원</span></button> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40274864"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40274864" class="link_box track_event" data-track_event="main|Ads_click|prime|19" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2019/09/pxlp8s_q3wc-2rxefd_specialgold3927389katri.png">한국의류시험연구원</span> <strong class="poduct_tit">한국의류시험연구원</strong> <em class="product_desc">정규직 전환형 직원 채용공고</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-4</span> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40245899"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40245899" class="link_box track_event" data-track_event="main|Ads_click|prime|20" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2019/11/q0y1a9_7rgj-2rxefe_specialgold5694175dbcpt.png">DB캐피탈㈜</span> <strong class="poduct_tit">DB캐피탈㈜</strong> <em class="product_desc">DB캐피탈 경력직원 채용 공고</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-4</span> <button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('40245899','','t_category=main&amp;t_content=prime', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately track_event" data-track_event="main|Ads_quick_apply|prime|20">입사지원</span></button> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40293837"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40293837" class="link_box track_event" data-track_event="main|Ads_click|prime|21" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2018/11/pivtim_tgzh-2rxehp_specialgold5938553rock1128.png">로크웰오토메이션코리아(주)</span> <strong class="poduct_tit">로크웰오토메이션코리아(주)</strong> <em class="product_desc">각 부문 경력직원 모집</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-35</span> <button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('40293837','','t_category=main&amp;t_content=prime', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately track_event" data-track_event="main|Ads_quick_apply|prime|21">입사지원</span></button> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40319071"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40319071" class="link_box track_event" data-track_event="main|Ads_click|prime|22" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2018/02/p4e395_8o8v-2rxeec_specialgold4252354.png">㈜보나비</span> <strong class="poduct_tit">㈜보나비</strong> <em class="product_desc">아티지움 배송기사 모집</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-5</span> <button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('40319071','','t_category=main&amp;t_content=prime', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately track_event" data-track_event="main|Ads_quick_apply|prime|22">입사지원</span></button> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40309780"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40309780" class="link_box track_event" data-track_event="main|Ads_click|prime|23" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2020/09/qgtzag_z073-2rxefd_specialgold6247186dhlsg.png">DHL KOREA</span> <strong class="poduct_tit">DHL KOREA</strong> <em class="product_desc">Finance 회계팀 정규직 채용</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-5</span> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40314427"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40314427" class="link_box track_event" data-track_event="main|Ads_click|prime|24" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2015/05/1432276417_specialgold3025586.png">대상㈜</span> <strong class="poduct_tit">대상㈜</strong> <em class="product_desc">경영지원부문 경력사원 모집</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-5</span> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40274705"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40274705" class="link_box track_event" data-track_event="main|Ads_click|prime|25" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2021/03/qpu1wk_ex0w-2rxefj_specialgold6746834.png">공팔리터</span> <strong class="poduct_tit">공팔리터</strong> <em class="product_desc">영업 신입/경력직 공개채용</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-5</span> <button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('40274705','','t_category=main&amp;t_content=prime', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately track_event" data-track_event="main|Ads_quick_apply|prime|25">입사지원</span></button> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40315799"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40315799" class="link_box track_event" data-track_event="main|Ads_click|prime|26" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2020/09/qgtzag_z073-2rxefd_specialgold6247186dhlsg.png">DHL KOREA</span> <strong class="poduct_tit">DHL KOREA</strong> <em class="product_desc">[수도권센터] 배송/물류/간선운송</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-7</span> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40296324"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40296324" class="link_box track_event" data-track_event="main|Ads_click|prime|27" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2021/01/qnmhno_uhxj-2rxefc_specialgold5473199.png">행복나래주식회사</span> <strong class="poduct_tit">행복나래주식회사</strong> <em class="product_desc">SCM/IT 신입/경력 채용</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-7</span> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40238409"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40238409" class="link_box track_event" data-track_event="main|Ads_click|prime|28" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2020/09/qgmh01_v2w3-2rxefg_specialgold7471537jbcorporation.png">JB(주)</span> <strong class="poduct_tit">JB(주)</strong> <em class="product_desc">2021년 신입/경력직원 채용 </em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-2</span> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40137228"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40137228" class="link_box track_event" data-track_event="main|Ads_click|prime|29" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2020/07/qe7klg_9i24-2rxefh_specialgold5200096dhsgsglogo200729.png">대한상공회의소 부산인력개발원</span> <strong class="poduct_tit">대한상공회의소 부산인력개발원</strong> <em class="product_desc">2021년 상반기 취업교육생 모집</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-1</span> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40286472"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40286472" class="link_box track_event" data-track_event="main|Ads_click|prime|30" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2018/02/p4e395_8o8v-2rxeec_specialgold4252354.png">㈜보나비</span> <strong class="poduct_tit">㈜보나비</strong> <em class="product_desc">아티제 조리/베이커리/홀 파트</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-5</span> <button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('40286472','','t_category=main&amp;t_content=prime', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately track_event" data-track_event="main|Ads_quick_apply|prime|30">입사지원</span></button> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40246332"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40246332" class="link_box track_event" data-track_event="main|Ads_click|prime|31" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www2.saraminbanner.co.kr/banner_logo//company/logo_banner/2015/08/1438825324_specialgold4415119nexplus.png">(주)넥스플러스</span> <strong class="poduct_tit">(주)넥스플러스</strong> <em class="product_desc">[㈜넥스플러스] 2021년 상반기</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-1</span> <button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('40246332','','t_category=main&amp;t_content=prime', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately track_event" data-track_event="main|Ads_quick_apply|prime|31">입사지원</span></button> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40218217"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40218217" class="link_box track_event" data-track_event="main|Ads_click|prime|32" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2020/09/qgtzag_z073-2rxefd_specialgold6247186dhlsg.png">DHL KOREA</span> <strong class="poduct_tit">DHL KOREA</strong> <em class="product_desc">인천공항 공항업무팀 정규직 신입 채용</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-15</span> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40160298"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40160298" class="link_box track_event" data-track_event="main|Ads_click|prime|33" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2017/02/ol2yrx_au85-2rxee9_specialgold4353538.png">대한상공회의소 광주인력개발원</span> <strong class="poduct_tit">대한상공회의소 광주인력개발원</strong> <em class="product_desc">AI/CAD·CAM/전기/자동화(PLC) 취업연계 전문기술교육과정 모집</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-40</span> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40274871"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40274871" class="link_box track_event" data-track_event="main|Ads_click|prime|34" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2018/02/p4e395_8o8v-2rxeec_specialgold4252354.png">㈜보나비</span> <strong class="poduct_tit">㈜보나비</strong> <em class="product_desc">쿠차라 정규직 오픈멤버 채용</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-15</span> <button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('40274871','','t_category=main&amp;t_content=prime', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately track_event" data-track_event="main|Ads_quick_apply|prime|34">입사지원</span></button> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40279274"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40279274" class="link_box track_event" data-track_event="main|Ads_click|prime|35" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2020/10/qi6fzz_qbtx-2rxefl_specialgold7427870.png">㈜스카이랩스</span> <strong class="poduct_tit">㈜스카이랩스</strong> <em class="product_desc">각 부문별 신입 및 경력 채용</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-8</span> <button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('40279274','','t_category=main&amp;t_content=prime', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately track_event" data-track_event="main|Ads_quick_apply|prime|35">입사지원</span></button> </span> <span class="bg"></span> </div> </li> <li data-rec_idx="40244165"> <div class="box_product"> <a href="/zf_user/jobs/relay/pop-view?rec_idx=40244165" class="link_box track_event" data-track_event="main|Ads_click|prime|36" rel="sponsored, nofollow"></a> <span class="product_logo lazy" data-src="https://www.saraminbanner.co.kr/banner_logo//company/logo_banner/2018/05/p8ftz3_ktbj-2rxgdd_specialgold103799.png">㈜디티에스아이</span> <strong class="poduct_tit">㈜디티에스아이</strong> <em class="product_desc">디지털 퍼포먼스 마케터 채용</em> <span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span> <button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime"><span class="blind">스크랩</span></button> <span class="recruit_func"> <span class="blind">공고 마감일</span> <span class="num_dday">D-5</span> <button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('40244165','','t_category=main&amp;t_content=prime', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately track_event" data-track_event="main|Ads_quick_apply|prime|36">입사지원</span></button> </span> <span class="bg"></span> </div> </li></ul>

</div>
<!--  -->





<!-- 광고 팝업창 -->


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

!-- Channel Plugin Scripts --&gt;
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

           		//	alert('카카오 로그인성공')
           		},
           		error: function(){
           			alert("birth:" + birth);
           			alert('성공');
           		}
           	  })

            }

         });
      }
   });
}
</script>





<div id="ch-plugin"><div id="ch-plugin-core"><style data-styled="active" data-styled-version="5.1.1"></style><style data-styled="active" data-styled-version="5.1.1"></style><div data-ch-testid="full-screen-push-message" hidden="" class="FullScreenPushMessagestyled__Wrapper-nxoc25-13 kkSXuR PushMessagestyled__PCPopupMessage-vqm8p7-1 gnkQzw" style="z-index: 100000000 !important;"><div class="FullScreenPushMessagestyled__MainWrapper-nxoc25-12 gNRDiC"><div class="FullScreenPushMessagestyled__SVGIconWrapper-nxoc25-0 kmAVFX"><div name="cancel" size="16" width="24" height="24" class="SVGIconstyled__SVGIcon-sc-15isf0b-0 cQJNXd"></div></div><div class="FullScreenPushMessagestyled__Header-nxoc25-7 bDhUju"><div class="FullScreenPushMessagestyled__AvatarWrapper-nxoc25-1 hDPlJg"><div size="24" radius="8px" class="Avatarstyled__Avatar-yfy5xq-0 jUtegZ"></div></div><div class="FullScreenPushMessagestyled__Name-nxoc25-3 idyZLa">(알 수 없음)</div><div class="FullScreenPushMessagestyled__HeaderContent-nxoc25-2 CmXCx"><div class="FullScreenPushMessagestyled__Time-nxoc25-6 hPulhM">9:00 AM</div></div></div><div class="FullScreenPushMessagestyled__Content-nxoc25-11 rXAbU"><div class="FullScreenPushMessagestyled__Text-nxoc25-8 hVIZBL"></div></div></div></div><div size="300" class="Screenstyled__Screen-sc-3ge3qf-0 gNcrUK"></div><div data-ch-testid="launcher" class="Launcherstyled__Wrapper-oef45p-0 kyEsUG"><div class="Launcherstyled__TextLauncher-oef45p-1 lbMRR"><div class="Launcherstyled__TextLauncherContent-oef45p-2 cEtkaf textLauncherContent">채팅 상담</div><div class="Launcherstyled__TextLauncherIcon-oef45p-3 ldDAM textLauncherIcon"><div data-ch-testid="badge" hidden="" class="Badgestyled__Badge-sc-1ztqq4-0 Launcherstyled__Badge-oef45p-5 bZpFRQ">0</div></div></div></div></div><div id="ch-plugin-script" style="display:none" class="ch-messenger-hidden"><iframe id="ch-plugin-script-iframe" style="position:relative!important;height:100%!important;width:100%!important;border:none!important;"></iframe></div></div><style data-styled="active" data-styled-version="5.1.1"></style></body>
</html>
