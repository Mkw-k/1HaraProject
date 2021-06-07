<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

<!-- <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css"> -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>




<style type="text/css">


#nav-main{
	height: 100 px;
}

nav.top-nav-collapse {
   transition: all 300ms ease-in-out;
   background-color: blue !important;
   color: white !important;
}

white{
	color: white !important;
}



</style>
</head>
<body>
<nav class="navbar navbar-expand-md sticky-top" style="text-shadow: white 0px 0px 0.2px; box-shadow: black 0px 0px 10px;" id="nav-main" ><a class="navbar-brand d-none d-md-block ml-3" href="home.do">
      <img alt="" src="<%=request.getContextPath() %>/image/logo5.gif" height="80" width="160" style="float:left; padding-right: 20px">
     
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
              <button class="btn dropdown-toggle btn-link btn-secondary" data-toggle="dropdown"> 채용공고</button>
              <div class="dropdown-menu"> 
                <a class="dropdown-item" href="javascript:createRecruit()">채용공고 작성</a>
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
              <button class="btn dropdown-toggle btn-link " data-toggle="dropdown">로그인해주세요</button>
              <!-- <button class="btn dropdown-toggle btn-link " data-toggle="dropdown">이주영 님</button> -->
              <div class="dropdown-menu" style=""> <a class="dropdown-item" href="#">Action</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#">Separated link</a>
              </div>
            </div><a class="btn btn-secondary mr-1" href="#">로그인</a>
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
	      } else {
	         $(".sticky-top").removeClass("top-nav-collapse");
	         $(".navbar a").removeClass("text-light");
	         $(".navbar li button").removeClass("text-light");
	         $(".navbar li button a").removeClass("text-dark");
	      }
	   });
	});

  
  </script>

</body>
</html>