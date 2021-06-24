<!DOCTYPE html>

<%@page import="bit.com.a.dto.FAQDto"%>
<%@page import="java.util.List"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
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

<!-- 제이쿼리 -->
<script src="//https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


<!-- footer -->
<link rel="shortcut icon" href="/images/common/ico/w_favicon.ico" type="image/x-icon">
<link rel="stylesheet" href="static/css/import.css" media="all">


<!------ Ajax ---------->
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- 부트스트랩 -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>

<link href="csss/header.css" rel="stylesheet" type="text/css">


<style type="text/css">
  
/* 모달 */
#login-modal {
margin-right : 450px;
}

.newsletter {
padding: 20px 0;
background: #2186eb;
}

.newsletter .content {
max-width: 650px;
margin: 0 auto;
text-align: center;
position: relative;
z-index: 2; }
.newsletter .content h2 {
color: #243c4f;
margin-bottom: 40px; }
.newsletter .content .form-control {
height: 50px;
border-color: #ffffff;
border-radius:0;
}
.newsletter .content.form-control:focus {
box-shadow: none;
border: 2px solid #243c4f;
}
.newsletter .content .btn {
min-height: 50px; 
border-radius:0;
background: #243c4f;
color: #fff;
font-weight:600;
}

/* 3가지 FAQ링크 */


/* :root {
    font-size: 10px;
} */

.faqnav ul {
    padding: 0;
    list-style-type: none;
}

.faqnav li {
    width: 20rem;
    height: 7rem;
    font-size: 20px;
    text-align: center;
    line-height: 7rem;
    font-family: sans-serif;
    text-transform: uppercase;
    letter-spacing: 1px;
    position: relative;
    transition: 0.3s;
    margin: 2rem;
    background-color: #eee;
}

.faqnav li::before,
.faqnav li::after {
    content: '';
    position: absolute;
    width: inherit;
    height: inherit;
    top: 0;
    left: 0;
    transition: 0.3s;
}

.faqnav li::before {
    background-color: #eee;
    z-index: -1;
    box-shadow: 0.2rem 0.2rem 0.5rem rgba(0, 0, 0, 0.2);
}

.faqnav li::after {
    background-color: #2186eb;
    transform: translate(1.5rem, 1.5rem);
    z-index: -2;
}

.faqnav li:hover {
    transform: translate(1.5rem, 1.5rem);
    color: black;
}

.faqnav li:hover::before {
    background-color: #2186eb;
}

.faqnav li:hover::after {
    background-color: #2186eb;
    transform: translate(-1.5rem, -1.5rem);
}

/* 테이블 css */
.pb-100 {
	padding-bottom: 100px;
}
.pt-100 {
	padding-top: 100px;
}
a{
    text-decoration:none;
}
.section-title h4 {
  font-size: 14px;
  font-weight: 500;
  color: #777;
}
.section-title h2 {
	font-size: 32px;
	text-transform: capitalize;
	margin: 15px 0;
	display: inline-block;
	position: relative;
	font-weight: 700;
	padding-bottom: 15px;
	letter-spacing: 1px;
	text-transform: uppercase;
}
.section-title p {
	font-weight: 300;
	font-size: 14px;
}
.black-bg .section-title h2, .black-bg .section-title h4, .black-bg .section-title p {
  color:#fff
}
.section-title h2:before {
  position: absolute;
  content: "";
  width: 150px;
  height: 1px;
  background-color: #777;
  bottom: 0;
  left: 50%;
  margin-left: -75px;
}
.section-title h2:after {
  position: absolute;
  content: "";
  width: 80px;
  height: 3px;
  background-color: #e16038;
  border: darkblue;
  bottom: -1px;
  left: 50%;
  margin-left: -40px;
}
.section-title {
  margin-bottom: 70px;
}
.single-price {
	text-align: center;
	padding: 30px;
	box-shadow: 0px 0px 2px rgba(0, 0, 0, 0.2);
}
.price-title h4 {
  font-size: 24px;
  text-transform: uppercase;
  font-weight: 600;
}
.price-tag {
  margin: 30px 0;
}
.price-tag {
	margin: 30px 0;
	background-color: #fafafa;
	color: #000;
	padding: 10px 0;
}
.center.price-tag {
	background-color: tomato;
	color:#fff
}
.price-tag h2 {
	font-size: 45px;
	font-weight: 600;
	font-family: poppins;
}
.price-tag h2 span {
  font-weight: 300;
  font-size: 16px;
  font-style: italic;
}
.price-item ul {
  margin: 0;
  padding: 0;
  list-style: none;
}
.price-item ul li {
  font-size: 14px;
  padding: 5px 0;
  border-bottom: 1px dashed #eee;
  margin: 5px 0;
}
.price-item ul li:last-child {
  border-bottom: 0;
}
.single-price a {
  margin-top: 15px;
}
a.box-btn {
	background-color: #2186eb;
	padding: 5px 20px;
	display: inline-block;
	color: #fff;
	text-transform: capitalize;
	border-radius: 3px;
	font-size: 15px;
	transition: .3s;
}
a.box-btn:hover, a.border-btn:hover {
	background-color: #2186eb;
}

/* 네비바 반응형 */
* {
  margin: 0px;
  padding: 0px;
  box-sizing: border-box;
}

nav {
  display: flex;
  justify-content: space-around;
  align-items: center;
  background-color: #fff;
  font-family: "Poppins", sans-serif;
}

.logo {
  color: rgb(226, 226, 226);
  text-transform: uppercase;
  /* 각 글자 2px씩 간격을 줌*/
  letter-spacing: 2px;
  font-size: 18px;
}

.nav-links {
  width: 40%;
  /* display: flex; */
  justify-content: space-around;
}

.nav-links li {
  list-style: none;
}

.nav-links a {
  color: rgb(226, 226, 226);
  text-decoration: none;
  letter-spacing: 3px;
  font-weight: bold;
  font-size: 14px;
}

.burger {
  display: none;
  cursor: pointer;
}

.burger div {
  width: 25px;
  height: 3px;
  background-color: rgb(226, 226, 226);
  margin: 5px;
  transition: all 0.3s ease;
}

@media screen and (max-width: 1024px) {
  .nav-links {
    width: 60%;
  }
}

@media screen and (max-width: 768px) {
  body {
    overflow-x: hidden;
  }
  .nav-links {
    position: absolute;
    top: 8vh;
    right: 0;
    height: 92vh;
    background-color: #fff;
    flex-direction: column;
    align-items: center;
    width: 50%;
    transform: translateX(100%);
  }
  .nav-links li {
    opacity: 0;
  }
  .burger {
    display: block;
  }

  .nav-active {
    transform: translateX(0%);
  }

  @keyframes navLinkFade {
    from {
      opacity: 0;
      transform: translateX(5px);
    }
    to {
      opacity: 1;
      transform: translateX(0);
    }
  }
}

.toggle .line1 {
  transform: rotate(-45deg) translate(-5px, 6px);
}

.toggle .line2 {
  opacity: 0;
}

.toggle .line3 {
  transform: rotate(45deg) translate(-5px, -6px);
}
/* 네비바 */
.createRecruitBtn{
	cursor: pointer;
}
/* .wrapper{
width:200px;
padding:20px;
height: 150px;
} */
#nav-main{
	height: 100 px;
}
nav.top-nav-collapse {
   transition: all 300ms ease-in-out;
   background-color: #036cde !important;
   color: white !important;
}
white{
	color: white !important;
}

.navbar-nav {
   background-color: rgba( 255, 255, 255, 0 );
  }
  
header {
    height: 0px;
    background: white;
    padding-top: 0;
}
</style>



<style type="text/css">
@import url(//fonts.googleapis.com/earlyaccess/notosanskr.css);

body {
  font-family: "Noto Sans KR", sans-serif !important;
} 
 
</style>
</head>

<body>


<c:import url="../header2.jsp" charEncoding="utf-8"/> 


<main>


<!-- 검색창 -->
<section class="newsletter">
<div class="container" style="
    margin-left: auto;
    margin-right: auto;
    padding-top: 200px;
">
<div class="row">
<div class="col-sm-12">
	<div class="content">
		<h2 style="color:#fff">FAQ</h2>
	<div class="input-group">
         <input type="email" class="form-control" placeholder="검색어 입력" id="_searchBtn">
         <span class="input-group-btn">
         <button class="btn" type="submit" id="searchBtn">SEARCH</button>
         </span>
          </div>
	</div>
</div>
</div>
</div>
</section>

<%
List<FAQDto> companylist =(List<FAQDto>) request.getAttribute("companylist");
%>

<div style="margin-left:350px;">
<nav class="faqnav" style="height: auto;">
  <ul style="display: flex;margin-right: 180px;">
    <li><a href="memberFAQ.do" class="nav-links">지원자 FAQ</a></li>
    <li style="background-color: #2186eb"  class="nav-links">기업 FAQ</li>
     <li><a href="commonFAQ.do"  class="nav-links">일반 FAQ</a></li>
  </ul>
</nav>
</div>

<link href="https://fonts.googleapis.com/css?family=Poppins:400,500,600,800,900%7cRaleway:300,400,500,600,700" rel="stylesheet">
<section class="pricing-area pt-100 pb-100" id="pricing" style="padding-top: 0px;">
		<div class="container" style="
    margin-left: auto;
    margin-right: auto;
">
			<div class="row">
               <div class="col-xl-12">
				<div class="single-price">
				  <div class="price-item">
					<ul>
						<% 
						for(FAQDto dto : companylist){
						%>
							<li><a href="FAQdetail.do?seq=<%=dto.getFaqseq()%>"><%=dto.getQuestion() %></a></li>
						<% 	
						}
						%>
					</ul>
				  </div>
			   </div>
			   </div>	   
          </div>
	</div>
</section>





</main>



<c:import url="../footer.jsp" charEncoding="utf-8"/> 






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

</script>

<!-- Channel Plugin Scripts  -->
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
</script>
<!-- End Channel Plugin -->

<!-- 검색 -->
<script>
$("#searchBtn").click(function () {
    
	alert("searchBtn click")
	/* 검색어 */
	let search = document.getElementById("_searchBtn").value;
    
    location.href = "searchFAQ.do?search=" + search;
});
</script>



</body>
</html>