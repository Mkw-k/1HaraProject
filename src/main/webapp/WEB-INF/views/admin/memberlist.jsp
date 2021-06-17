<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">

table thead th {
    color: #FFFFFF;
    background-color: #cccccc;
    border: 1px solid #CCCCCC;
    border-collapse: collapse;
    text-align: center;
    table-layout: auto;
    vertical-align: middle;
}

.table-bordered {
border: 1px solid #dddddd;
border-collapse: separate;
border-left: 0;
-webkit-border-radius: 4px;
-moz-border-radius: 4px;
border-radius: 4px;
}

.table {
width: 100%;
margin-bottom: 20px;
background-color: transparent;
border-collapse: collapse;
border-spacing: 0;
display: table;
}

.widget.widget-table .table {
margin-bottom: 0;
border: none;
}

.widget.widget-table .widget-content {
padding: 0;
}

.widget .widget-header + .widget-content {
border-top: none;
-webkit-border-top-left-radius: 0;
-webkit-border-top-right-radius: 0;
-moz-border-radius-topleft: 0;
-moz-border-radius-topright: 0;
border-top-left-radius: 0;
border-top-right-radius: 0;
}

.widget .widget-content {
padding: 20px 15px 15px;
background: #FFF;
border: 1px solid #D5D5D5;
-moz-border-radius: 5px;
-webkit-border-radius: 5px;
border-radius: 5px;
}

.widget .widget-header {
position: relative;
height: 40px;
line-height: 40px;
background: #E9E9E9;
background: -moz-linear-gradient(top, #fafafa 0%, #e9e9e9 100%);
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #fafafa), color-stop(100%, #e9e9e9));
background: -webkit-linear-gradient(top, #fafafa 0%, #e9e9e9 100%);
background: -o-linear-gradient(top, #fafafa 0%, #e9e9e9 100%);
background: -ms-linear-gradient(top, #fafafa 0%, #e9e9e9 100%);
background: linear-gradient(top, #fafafa 0%, #e9e9e9 100%);
text-shadow: 0 1px 0 #fff;
border-radius: 5px 5px 0 0;
box-shadow: 0 2px 5px rgba(0,0,0,0.1),inset 0 1px 0 white,inset 0 -1px 0 rgba(255,255,255,0.7);
border-bottom: 1px solid #bababa;
filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#FAFAFA', endColorstr='#E9E9E9');
-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr='#FAFAFA', endColorstr='#E9E9E9')";
border: 1px solid #D5D5D5;
-webkit-border-top-left-radius: 4px;
-webkit-border-top-right-radius: 4px;
-moz-border-radius-topleft: 4px;
-moz-border-radius-topright: 4px;
border-top-left-radius: 4px;
border-top-right-radius: 4px;
-webkit-background-clip: padding-box;
}

thead {
display: table-header-group;
vertical-align: middle;
border-color: inherit;
}

.widget .widget-header h3 {
top: 2px;
position: relative;
left: 10px;
display: inline-block;
margin-right: 3em;
font-size: 14px;
font-weight: 600;
color: #555;
line-height: 18px;
text-shadow: 1px 1px 2px rgba(255, 255, 255, 0.5);
}

.widget .widget-header [class^="icon-"], .widget .widget-header [class*=" icon-"] {
display: inline-block;
margin-left: 13px;
margin-right: -2px;
font-size: 16px;
color: #555;
vertical-align: middle;
}

.headcolor{
	background-color: #2186eb;
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



<!-- 제이쿼리 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

 <!-- 전체 css -->
<!-- <link rel="stylesheet" href="layout/styles/layout.css" type="text/css" /> -->
<!-- <script type="text/javascript" src="layout/scripts/jquery.min.js"></script>
<script type="text/javascript" src="layout/scripts/featured_slide.js"></script> -->
<!-- 부트스트랩 -->
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

<link rel="shortcut icon" href="/images/common/ico/w_favicon.ico" type="image/x-icon">
<!-- TO_BE CSS.. -->

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<link href="csss/header.css" rel="stylesheet" type="text/css">


<link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>





</head>
<body>


<nav class="navbar navbar-expand-md sticky-top" style="text-shadow: white 0px 0px 0.2px; box-shadow: black 0px 0px 10px;" id="nav-main"><a class="navbar-brand d-none d-md-block ml-3" href="home.do">
      <img alt="" src="/sample10/image/흰로고다.gif" id="_logo" height="80" width="160" style="float:left; padding-right: 20px">

    </a>
    <div class="container-fluid" style="margin-left: 0px;"> <button class="navbar-toggler navbar-toggler-right border-0" type="button" data-toggle="collapse" data-target="#navbar19" style="">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbar19" style="margin-right: 50px;left: 300px;">
        <ul class="navbar-nav mx-auto">
          <li class="nav-item">
            <div style="position: relative; text-align: right;">
              <button class="btn dropdown-toggle btn-link" data-toggle="dropdown"> 전체보기</button>
              <div class="dropdown-menu" style="">
                <a class="dropdown-item" href="#">Action</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#">Separated link</a>
              </div>
            </div>
          </li>

		<li class="nav-item">
            <div style="position: relative;
    text-align: right;">
              <button class="btn dropdown-toggle btn-link" data-toggle="dropdown"> 채용공고</button>
              <div class="dropdown-menu">
                <a class="dropdown-item" href="recuruitlist.do">채용공고 목록으로</a>
               <!--  <div class="dropdown-divider"></div> -->
                <a class="dropdown-item" href="javascript:createRecruitNew()">채용공고 작성 New</a>
              </div>
            </div>
          </li>


          <li class="nav-item font-weight-bold"> <a class="nav-link active" href="#">기업정보</a> </li>
          <li class="nav-item font-weight-bold"> <a class="nav-link active" href="#">취업톡톡</a> </li>
          <li class="nav-item font-weight-bold"> <a class="nav-link active" href="calendarlist1.do">공채달력</a> </li>
          <li class="nav-item font-weight-bold"> <a class="nav-link active" href="#">자료실</a> </li>
          <li class="nav-item font-weight-bold"> <a class="nav-link active" href="#">이력서관리</a> </li>
          <li class="nav-item font-weight-bold"> <a class="nav-link active" href="#">기업관리</a> </li>

        </ul>
        <ul class="navbar-nav">
          <li class="nav-item"> <a class="nav-link" href="#">
              <i class="fa fa-twitter fa-fw text-primary"></i>
            </a> </li>
        </ul>
      </div>
    </div>
  </nav>


<script type="text/javascript">
$(function() {
	   $(window).scroll(function() {
	      //ADD CLASS
	      if ($(".navbar").offset().top > 90) {
	         //바탕색상변경
	    	 $(".sticky-top").addClass("top-nav-collapse");
	         //폰트색상 변경
	         $(".navbar a").addClass("text-light");
	         //드랍다운색상 변경
	         $(".navbar li button").addClass("text-light");
	         //드랍다운 밑에 있는 a태그도 변경
	         $(".navbar li button a").addClass("text-dark");
	         //이미지 변경
	         $("#_logo").attr("src", "<%=request.getContextPath() %>/image/흰 로고 반전.gif");
	      } else {
	         $(".sticky-top").removeClass("top-nav-collapse");
	         $(".navbar a").removeClass("text-light");
	         $(".navbar li button").removeClass("text-light");
	         $(".navbar li button a").removeClass("text-dark");
	         $("#_logo").attr("src", "<%=request.getContextPath() %>/image/흰로고다.gif");
	      }
	   });
	});
</script>



<h1 style="text-align: center;"><i class="fa fa-id-card-o" aria-hidden="true"></i> 일반 회원 정보</h1>
       
       
       
       
       
       
     <div class="span7" style="margin-left: 600px;">   
<div class="widget stacked widget-table action-table">
    				
				<div class="widget-header">
					<i class="icon-th-list"></i>
					<!-- <h3>Table</h3> -->
				</div> <!-- /widget-header -->
				
				<div class="widget-content">
					
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
								<th class="headcolor">아이디</th>
								<th class="headcolor">비밀번호</th>
								<th class="headcolor">이름</th>
								<th class="headcolor">이메일</th>
							</tr>
						</thead>
						<tbody>



						<c:forEach items="${member}" var="mb">
							<tr>
								<td class="td-actions "><c:out value="${mb.memberid}"></c:out></td>
								<td class="td-actions "><c:out value="${mb.pwd}"></c:out></td>
								<td class="td-actions "><c:out value="${mb.name}"></c:out></td>
								<td class="td-actions "><c:out value="${mb.email}"></c:out></td>
							</tr>
						</c:forEach>

							</tbody>
						</table>
					
				</div> <!-- /widget-content -->
			
			</div> <!-- /widget -->
            </div>  
       
       

<table style="width: auto;">
<tr>
<td width="300px" style="background-color: aliceblue;">
<form action ="memberdeletemerong.do" method = "post">
-회원 아이디- <input type = "text" name="memberid" placeholder="탈퇴시킬 회원의 아이디를 입력하세요."><br><br>
<button type = "submit" name = "submit" > 회원 강제 탈퇴</button>
</form>
<br>
<br>
<input type="button" value="메인으로" class="btn" onclick="location.href='home.do'">
</td>
</tr>
</table>	

</body>


<!-- 로그인 실패나 성공시 메시지를 받아서 출력하는 자바스크립트 구문 -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script>
    $(function(){
        var responseMessage = "<c:out value="${message}" />";
        if (responseMessage != ""){
            alert(responseMessage);
        }
    })
</script>
</html>