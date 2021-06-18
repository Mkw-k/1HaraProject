<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
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
</style>



</head>


<nav class="navbar navbar-expand-md sticky-top" style="text-shadow: white 0px 0px 0.2px; box-shadow: black 0px 0px 10px;" id="nav-main" ><a class="navbar-brand d-none d-md-block ml-3" href="home.do">
      <img alt="" src="<%=request.getContextPath() %>/image/흰로고다.gif" id="_logo" height="80" width="160" style="float:left; padding-right: 20px" >
     
    </a>
    <div class="container-fluid"> <button class="navbar-toggler navbar-toggler-right border-0" type="button" data-toggle="collapse" data-target="#navbar19" style="">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbar19">
        <ul class="navbar-nav mx-auto">
          <li class="nav-item">
            <div class="btn-group">
              <button class="btn dropdown-toggle btn-link" data-toggle="dropdown"> 전체보기</button>
              <div class="dropdown-menu" style=""> 
                <a class="dropdown-item" href="#">Action</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#">Separated link</a>
              </div>
            </div>
          </li>
          
		<li class="nav-item">
            <div class="btn-group">
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
          <li class="nav-item font-weight-bold"> <a class="nav-link active" href="#">공채달력</a> </li>
          <li class="nav-item font-weight-bold"> <a class="nav-link active" href="#">자료실</a> </li>
          <li class="nav-item font-weight-bold"> <a class="nav-link active" href="#">이력서관리</a> </li>
          <li class="nav-item font-weight-bold"> <a class="nav-link active" href="#">기업관리</a> </li>

        </ul>
        <ul class="navbar-nav">
          <li class="nav-item"> <a class="nav-link" href="#">
              <i class="fa fa-twitter fa-fw text-primary"></i>
            </a> </li>
          <li class="nav-item">
            <div class="btn-group">
           		<c:choose>
           			 <c:when test="${login.memberid == null}">
            			  <button class="btn dropdown-toggle btn-link " onclick="login()">로그인해주세요</button>
         				  <a class="btn" style="background-color: #000000; color: #fff !important;" href="login1.do">로그인</a>
        	 		</c:when>
              		<c:otherwise>
              		 	 <button class="btn dropdown-toggle btn-link " data-toggle="dropdown">이주영 님</button>
              		</c:otherwise>
          		</c:choose>		
         	</div>
          </li>
          
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

