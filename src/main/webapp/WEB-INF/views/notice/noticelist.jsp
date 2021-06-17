<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



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
  <link rel="shortcut icon" href="/images/common/ico/w_favicon.ico" type="image/x-icon">
  <!-- TO_BE CSS.. -->
  <link rel="stylesheet" href="static/css/import.css" media="all">
  <!-- 링크!  -->
	<link href="csss/common.css" rel="stylesheet" type="text/css">
	<link href="csss/reset.css" rel="stylesheet" type="text/css">
	<!-- 링크!  -->


  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <!-- jQuery Modal -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
  <script type="text/javascript" src="./jquery/jquery.twbsPagination.min.js"></script>

  <!-- footer -->


<!-- 네비바 -->
<!-- carousel -->
<!-- <link rel="stylesheet" href="//https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"> -->

<!-- <script src="//https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
 -->
  <!-- 검색 부트스트랩 -->
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<!-- <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->

 <!-- 전체 css -->

<link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
<!-- <script type="text/javascript" src="layout/scripts/jquery.min.js"></script> -->
<script type="text/javascript" src="layout/scripts/featured_slide.js"></script>

<!-- 부트스트랩 -->
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

<!-- 링크!  -->
<link href="csss/common.css" rel="stylesheet" type="text/css">
<link href="csss/reset.css" rel="stylesheet" type="text/css">
<link href="csss/tables.css" rel="stylesheet" type="text/css">
<!-- 링크!  -->


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
    background-color: #2186eb!important;
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

td._hover_tr:hover {

  background-color: #f0f5ff;
  }


/* 메인css */

nav { width:100%;height:80px; text-align:center;top:0;left:0;}
.all {display:flex; flex-flow: row wrap; min-width:100px;}
header {flex:1 1 100%; height:120px; background:white; }
main {flex: 1 1 100%;height:1500px; background:gray;}
footer{flex: 1 1 100%;height:200px;text-align:center;background:white;}



/* 제목아래 라인 */
#homecontent h5 {
    border-bottom: 2px solid #eee;
    font-size: 14pt;
    text-align: center;
    padding: 5px 0 5px 0;
    font-family: inherit;
}

#homecontent .fl_right p.readmore {

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

#homecontent h5 {
    background-color: #eee;
    border-bottom: 1px solid #eee;
    text-align: center;
}

p{
	font-size: 9pt;
}

body{
	padding-top: 100px;
}

#homecontent .fl_right img {
    float: left;
    width: 150px;
    height: 75px;
    margin: 0 10px 0 0;
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
    /* padding-top: 30px; */
    margin-bottom: 10px;
}

.logoarea {
	clear: both;
}

.navbar-nav{
	background-color: #2186eb;
}

.bgc{
 color: white;
 background-color: #2186eb;

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



</style>
</head>
<body>



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


<header>

 <!-- 검색html -->

<section style="padding: 0">
    <div id="carouselExampleFade" class="carousel slide carousel-fade" data-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="<%=request.getContextPath() %>/image/개발자메인로고.gif" class="d-block w-100" height="300">
            </div>

            <!--https://upload.wikimedia.org/wikipedia/commons/8/8d/Yarra_Night_Panorama%2C_Melbourne_-_Feb_2005.jpg-->
        </div>
    </div>
</section>
<section class="search-sec">

        <form action="#" method="post" novalidate="novalidate">
            <div class="row">
                <div class="col-lg-8">
                    <div class="row">
                        <div class="col-lg-3 col-md-3 col-sm-12 p-0">
                            <select class="form-control search-slt" id="exampleFormControlSelect1" style="font-size: 12pt">
                                <option>지역</option>
                                <option>Example one</option>
                                <option>Example one</option>
                                <option>Example one</option>
                                <option>Example one</option>
                                <option>Example one</option>
                                <option>Example one</option>
                            </select>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-12 p-0">
                            <select class="form-control search-slt" id="exampleFormControlSelect1" style="font-size: 12pt">
                                <option>분야</option>
                                <option>Example one</option>
                                <option>Example one</option>
                                <option>Example one</option>
                                <option>Example one</option>
                                <option>Example one</option>
                                <option>Example one</option>
                            </select>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-12 p-0">
                            <input type="text" class="form-control search-slt" placeholder="회사명" style="font-size: 12pt">
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-12 p-0">
                            <button type="button" class="btn btn-secondary wrn-btn">Search</button>
                        </div>
                    </div>
                </div>
            </div>
        </form>

</section>

</header>



<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
  <!-- Links -->

  <div>
	 <a href="home.do"><img alt="" src="<%=request.getContextPath() %>/image/logo5.gif" height="80" width="160" style="float:left; padding-right: 20px"></a>
	</div>

  <ul class="navbar-nav">
<!-- Dropdown -->
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
      <a class="nav-link bgc" href="#" style="color:#2186eb">채용공고</a>
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
            <c:choose>
            	<c:when test="${login.memberid ne null }">
            		<c:choose>
            			 <c:when test="${login.auth == 1}">
             				 <p><b>${login.name }</b>님</p>
             	 		 </c:when>
             			<%-- <%-- <c:when test="${login ne null }">
         				<p><b>${login.name }</b>님 반갑습니다. 사원으로 입장하셨습니다.</p>
         				</c:when> --%>
             			<%-- <c:when test="${login.auth == 3}">
             				<p><b>${login.name }</b>님</p>
    					</c:when> --%>
    					<c:otherwise>
             				<p><b>${login.name }</b>님</p>
    					</c:otherwise>
    				</c:choose>
            	 </c:when>
         	 </c:choose>
        <div class="col-md-6">
           <div class="">
              <div class="login">
              	<c:if test="${ empty login }">
                       <a href="javascript:login()" id="login-btn" class="nav-link bgc" style="color: #2186eb;background-color: #fff;" >로그인</a>
                    <!--    <a href="regi.jsp" class="signup-btn"><i class="fa fa-user"></i><span class="d-none d-md-inline-block">회원가입</span></a> -->
                </c:if>
              </div>
			</div>
		</div>
    </li>
    <li class="nav-item">
     	 <a class="nav-link bgc" href="#" style="color: #2186eb;background-color: #fff;">이력서관리</a>
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


<div class="container">
<section id="contents">

	<div class="tit-util">
		<h2 class="tit">공지사항</h2>
		<div class="page-util">
			<span class="hide-location" id="navi_1">고객센터</span>
		    <span class="hide-location" id="navi_2">고객센터 게시판</span>
		    <span class="hide-location" id="navi_3">공지사항</span>
			<!-- 기능 버튼 들어갈 예정 -->
		</div>
	</div>

	<div class="sub-visual-noline">
		<p class="img-area"><img src="static/images/img-UI-EWP-W02A01L.png" alt=""></p>
		<dl class="ml20">
			<dt><span class="font-blue2">1hara</span>의 새로운 소식!</dt>
			<dd>1hara의 새로운 소식을 알려드립니다.</dd>
		</dl>
	</div>
<!--
	<form id="empBoardSrchVO" name="searchForm" action="/ntNewsData/ntMatter/retrieveNtMatterListPost.do" method="post" onsubmit="return f_checkForm(this);">
		<input type="hidden" name="pageUnit" value="10">
		<input type="hidden" name="srch" value="srch">
		<input type="hidden" name="boardFlag" value="0">
		<input type="hidden" name="jobyoung" value="">

		<input type="hidden" name="pageIndex" id="pageIndex1" value="1">


		<div class="board-list-search">
			<div class="line">
				<div class="float-l w480px">
					<label for="startDt" class="label w60px">등록일</label>
					<input type="text" id="startDt" name="startDt" title="등록일 시작 날짜 선택" class="datepicker hasDatepicker" readonly="readonly" value="2020.05.22" placeholder="yyyy.mm.dd" maxlength="10"><button type="button" class="ui-datepicker-trigger">등록일 시작 날짜 선택 버튼</button>
					~
					<input type="text" id="endDt" name="endDt" title="등록일 끝 날짜 선택" class="datepicker hasDatepicker" readonly="readonly" value="2021.05.21" placeholder="yyyy.mm.dd" maxlength="10"><button type="button" class="ui-datepicker-trigger">등록일 끝 날짜 선택 버튼</button>

					<button type="button" class="button ml05" onclick="document.searchForm.startDt.value='';document.searchForm.endDt.value='';">재설정</button>
				</div>

				<div class="float-l w390px">
					<label for="searchText" class="label w60px">키워드</label>
					<input type="search" id="searchText" name="searchText" placeholder="키워드를 입력하세요" class="input-text w300px" value="" maxlength="47">
				</div>
			</div>

			<div class="btn-group">
				<button type="submit" class="button navy">검색</button>
			</div>
		</div>
	<div>
<input type="hidden" name="_csrf" value="f9429a24-06a6-4e86-9fb8-413ddf249c96">
</div>
</form>
-->
	<form id="empBoardSrchVO1" name="listRangeForm" action="/ntNewsData/ntMatter/retrieveNtMatterListPost.do" method="post">
	<input type="hidden" name="regDtm" value="">
	<input type="hidden" name="srch" value="">
	<input type="hidden" name="startDt" value="20200522">
	<input type="hidden" name="endDt" value="20210521">
	<input type="hidden" name="searchText" value="">
	<input type="hidden" name="jobyoung" value="">
	<input type="hidden" name="pageIndex" id="pageIndex" value="1">
		<div class="board-list-count mt40">
			<div class="util">
				<div class="range-view">

					<select name="pageUnit" id="pageUnit" title="보기 갯수" class="w100px">
						<option value="10" selected="selected">10 개씩</option>
						<option value="30">30 개씩</option>
						<option value="50">50 개씩</option>
					</select>
					<button type="button" onclick="fn_search(1)" class="button gray">보기</button>
				</div>
			</div>
		</div>
	<div>
<input type="hidden" name="_csrf" value="f9429a24-06a6-4e86-9fb8-413ddf249c96">
</div></form>

	<div class="table-wrap">
		<table class="board-list" summary="이 표는 번호, 제목, 자료출처, 등록일, 조회 등 공지사항 목록에 대한 정보를 제공합니다.">
			<caption>공지사항 목록 표</caption>
			<colgroup>
				<col style="width:80px;">
				<col>
				<col style="width:120px;">
				<col style="width:120px;">
				<col style="width:100px;">
			</colgroup>
			<thead>
				<tr>
					<th scope="col">번호</th>
					<th scope="col">제목</th>
					<th scope="col">작성자</th>
					<!-- <th scope="col">자료출처</th> -->
					<th scope="col">등록일</th>
					<th scope="col">조회</th>
				</tr>
			</thead>
			<c:forEach var="notice" items="${noticelist }" varStatus="i">
			<tbody>

				<tr>
					<th>${i.count }</th>
					<td class="a-l">
						<a href="noticedetail.do?seq=${notice.noticeseq }">
							${notice.title }
						</a>
					</td>
					<td>${notice.memberid }</td>
					<%-- <td>${login.name }</td> --%>
					<td>${notice.regdate.substring(0,10)}</td>
					<td>${notice.readcount}</td>
				</tr>
				</tbody>
			</c:forEach>
		</table>
	</div>
	<div class="btn-group center">

		<c:if test="${login.auth==3 }">
			<a href="noticewrite.do" class="button navy">
				글추가
			</a>
		</c:if>
	</div>


		<!-- <nav class="pagination">
			 <a href="#" class="control first" onclick="fn_search(1); return false;">first</a>&nbsp;<a href="#" class="control prev" onclick="fn_search(1); return false;">prev</a>&nbsp;<strong class="active">1</strong>&nbsp;<a href="#" onclick="fn_search(2); return false;">2</a>&nbsp;<a href="#" onclick="fn_search(3); return false;">3</a>&nbsp;<a href="#" onclick="fn_search(4); return false;">4</a>&nbsp;<a href="#" onclick="fn_search(5); return false;">5</a>&nbsp;<a href="#" onclick="fn_search(6); return false;">6</a>&nbsp;<a href="#" onclick="fn_search(7); return false;">7</a>&nbsp;<a href="#" onclick="fn_search(8); return false;">8</a>&nbsp;<a href="#" onclick="fn_search(9); return false;">9</a>&nbsp;<a href="#" onclick="fn_search(10); return false;">10</a>&nbsp;<a href="#" class="control next" onclick="fn_search(11); return false;">next</a>&nbsp;<a href="#" class="control last" onclick="fn_search(31); return false;">last</a>&nbsp;

		</nav> -->

	<div class="manager-info">
		<div class="left"><b class="font-bold">담당부서</b> : 1hara팀</div>
		<div class="right"><b class="font-bold">문의</b> : 1577-7114</div>
	</div>
</section>

</div>

<script>

//getNoticeListData(0);
getNoticeListCount();

//검색
$("#btnSearch").click(function(){
	//getNoticeListData(0);
	getNoticeListCount();
});

// Noticelist을 취득
/* function getNoticeListData( pNumber ) {

	$.ajax({
		url:"./noticelistData.do",
		type:"get",
		data:{ page:pNumber, choice:$("#_choice").val(), search:$("#_searchWord").val() },
		success:function( list ){
		//	alert('success');
		//	alert(list);

			$(".list_col").remove();

			$.each(list, function (i, val) {
				let app = "<tr class='list_col'>"
							+ "<td>" + (i + 1) + "</td>"
							+ "<td class='_hover_tr' style='text-align:left'>"
						 	+ getArrow( val.depth ); 	// 댓글이미지
					if(val.del == 0){	// 삭제되지 않은 글
						app += "<a href='noticedetail.do?seq=" + val.noticeseq + "'>&nbsp;" + val.title + "</a>";
					}else{				// 삭제된 글
						app += "<font color='#ff0000'>* 이 글은 작성자에 의해서 삭제되었습니다 *</font>";
					}
					app += "</td>"
						+ "<td>" + val.memberid + "</td>"
						+ "<th>" + val.regdate.substring(0,10) + "</th>"
						+ "<td>" + val.readcount + "</td>"
						+ "</tr>";

				$("#_list_table").append(app);
				//alert(val.regdate);
				//alert(val.notice_title);
			});
		},
		error:function(){
			alert('error');
		}
	});
}
 */

// 글의 총수를 취득
function getNoticeListCount() {

	$.ajax({
		url:"./noticelistCount.do",
		type:"get",
		data:{ page:0, choice:$("#_choice").val(), search:$("#_searchWord").val() },
		success:function( count ){
		//	alert('success');
		//	alert(count);
			loadPage(count);
		},
		error:function(){
			alert('error');
		}
	});
}




// paging 처리
function loadPage( totalCount ) {

	let pageSize = 10;
	let nowPage = 1;

	let _totalPages = totalCount / pageSize;
	if(totalCount % pageSize > 0){
		_totalPages++;
	}

	/*  $("#pagination").twbsPagination('destroy'); */	// 페이지 갱신 : 페이징을 갱신해 줘야 번호가 재설정된다.

	$("#pagination").twbsPagination({
	//	startPage: 1,
		totalPages: _totalPages,
		visiblePages: 10,
		first:'<span sria-hidden="true">«</span>',
		prev:"이전",
		next:"다음",
		last:'<span sria-hidden="true">»</span>',
		initiateStartPageClick:false,		// onPageClick 자동 실행되지 않도록 한다
		onPageClick:function(event, page){
			nowPage = page;
		//	alert('nowPage:' + page);
		//	 getNoticeListData( page - 1 );
		}
	});
}

//댓글 이미지 처리
function getArrow( depth ) {
	let rs = "<img src='./image/arrow.png' width='10px' height='10px'/>";
	let nbsp = "&nbsp;&nbsp;&nbsp;&nbsp;";

	let ts = "";
	for(i = 0;i < depth; i++) {
		ts += nbsp;
	}

	return depth==0?"":ts + rs;
}

// 공지사항 작성
$("#btn_noticewrite").click(function(){
	location.href="noticewrite.do";
});





</script>

</body>
