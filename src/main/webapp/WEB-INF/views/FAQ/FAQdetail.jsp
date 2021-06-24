<!DOCTYPE html>
<%@page import="bit.com.a.dto.MemberDto"%>
<%@page import="bit.com.a.dto.FAQDto"%>
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

.faqtable{
	border: 1px;
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
</style>



<style type="text/css">
@import url(//fonts.googleapis.com/earlyaccess/notosanskr.css);

body {
  font-family: "Noto Sans KR", sans-serif !important;
}

header {
    height: 0px;
    background: white;
    padding-top: 0;
}
</style>
</head>

<body>

<c:import url="../header2.jsp" charEncoding="utf-8"/> 



<main>
<%
FAQDto dto =(FAQDto) request.getAttribute("dto");
System.out.println("dto" +dto.toString());
%>


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
					<form name="frmForm" id="_frmForm" action="writeAfFAQ.do" method="post" enctype="multipart/form-data">
 
							<table class="faqtable" border="1">
							 <colgroup><col width="200px"><col width="auto"></colgroup>
							<tr>
							    <th>질문</th>
							    <td style="text-align: left;">
							        ${dto.question }
							    </td>
							</tr>
							 
							<tr>
							    <th>업로드된 파일</th>
							    <td style="text-align: left;">
							       ${dto.filename }
							    </td>
							</tr>
							<tr>
							    <th>파일 다운로드</th>
							    <td style="text-align: left;">
							    <% if(dto.getNewFilename()!=null && dto.getNewFilename()!="" ){
							    	
							    %>
							       <input type="button" name="btnDown" value="다운로드" onclick="filedown('<%=dto.getNewFilename() %>', '<%=dto.getFaqseq() %>', '<%=dto.getFilename()%>')">
							    <% 
							    }
							    %>
							    </td>
							</tr> 
							<tr>
							    <th>답변</th>
							    <td style="text-align: left; height: 500px">
							       ${dto.faqanswer }
							    </td>
							</tr>
							 
<!-- 							<tr>
							    <td colspan="2" style="height: 50px; text-align: center;">
							        <a href="#none" id="_btnPds" title="자료올리기">
							            <img alt="" src="image/bwrite.png">
							        </a>
							    </td>
							</tr> -->
							<tr>
							<td colspan="2">
							    <a href="FAQ.do" class="box-btn">글목록</a>
							    

                                                  <%
MemberDto mem = (MemberDto)request.getSession().getAttribute("login");

%>




<% 
if(mem != null){
if( mem.getAuth()==3 ){ %> 
<a href="updateFAQ.do?seq=<%=dto.getFaqseq() %>" class="box-btn">수정</a>
<a href="deleteFAQ.do?seq=<%=dto.getFaqseq() %>" class="box-btn">삭제</a>

 <% } else {%> 

 <%  }
 
 }%> 

							</td>
							</tr> 
							</table>
							</form>
							
				  </div>
				 	
			   </div>
			   </div>
            </div>
		</div>
	  </section>

<!-- 다운로드 버튼을 클릭시 -->
<form name="file_Down" action="FAQfileDownload.do" method="post">
    <input type="hidden" name="newfilename">
    <input type="hidden" name="filename">
    <input type="hidden" name="faqseq">
</form>





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

<!-- 이미지 볼수있게 해주는 스크립트 -->
 <script>
  $("#FAQimg").change(function(){
   if(this.files && this.files[0]) {
    var reader = new FileReader;
    reader.onload = function(data) {
     $(".select_img img").attr("src", data.target.result).width(500);        
    }
    reader.readAsDataURL(this.files[0]);
   }
  });
 </script>
 
 <script type="text/javascript">
 function getSelectValue()
 {
		//  alert('getSelectValue');
	 
	    let selIndex = document.getElementById('fieldnum').selectedIndex;
	//    alert(selIndex);
	    
	    let faqnum = document.getElementById('fieldnum').options[selIndex].value;
	 //   alert(faqnum);
	    document.getElementById('fieldnum').value = faqnum;
	    alert(document.getElementById('fieldnum').value);
		
 }
 
 
 function filedown(newfilename, faqseq, filename) {
	alert("filedown")
    let doc = document.file_Down;
    doc.newfilename.value = newfilename;
    doc.filename.value = filename;
    doc.faqseq.value = faqseq;
    doc.submit();
}
 
 </script>
 

</body>
</html>