<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
  <link href="csss/common.css" rel="stylesheet" type="text/css">
  <link href="csss/reset.css" rel="stylesheet" type="text/css">
  
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
<script type="text/javascript" src="layout/scripts/jquery.min.js"></script>
<script type="text/javascript" src="layout/scripts/featured_slide.js"></script>

<!-- 부트스트랩 -->
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    
    
    
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



<c:import url="../header2.jsp" charEncoding="utf-8"/>

<div class="container" style="
    margin-left: auto;
    margin-right: auto;
    margin-bottom: auto;
">

<form name="frmForm" id="_frmForm" action="noticeupload.do" method="post" enctype="multipart/form-data">

<section id="contents" >
<h2>공지사항 작성 📝</h2>
<br>
	<section class="board-view" style="border-style: outset; background-color: #1b82ea2e;">
		<div class="tit-area">
			<p class="tit"style="width: 90px;">제목</p>
			<input type="text" name="title" size="50">
		</div>
		<div class="info">
			<p class="tit">작성자</p>
			<input type="text" name="memberid" readonly="readonly" value="${login.memberid }" size="50" style="
    width: 104px; margin-top: 13px;

">
		</div>
		<div class="info">
			<p class="tit">파일업로드</p>
			<p class="add-file">
			<input type="file" id="_fileload" name="fileload" style="width: 400px">	
			</p>
		</div>
		
		<div class="cont">
				<p class="tit">내용</p>
			   	<textarea rows="10" cols="50" name="content" style="
    width: 802px;
"></textarea>
			
		</div>
		
		<a href="#none" id="_btnNotice" title="자료올리기" style="border-style: outset; margin-left: 400px;">
			글쓰기
		</a>
	</section>
</section>
</form>
</div>



<c:import url="../footer.jsp" charEncoding="utf-8"/>


<script>
$("#_btnNotice").click(function () {
	alert($("#_fileload").val());
	// 제목, 내용
	
	$("#_frmForm").submit();
});
</script>
</body>

