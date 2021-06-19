<%@page import="bit.com.a.dto.Resume_Portfolio"%>
<%@page import="bit.com.a.dto.MemberDto"%>
<%@page import="bit.com.a.dto.ResumeDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="bit.com.a.dto.RecruitDto"%>

<%
RecruitDto recuDto = (RecruitDto)request.getAttribute("dto");

%>

<%
List<ResumeDto> resumelist = null;
if(request.getAttribute("resumelist") != null){
	resumelist =(List<ResumeDto>) request.getAttribute("resumelist");
}
System.out.println("resumelist" +resumelist);

List<Resume_Portfolio> portlist =(List<Resume_Portfolio>) request.getAttribute("portlist");
System.out.println("portlist****************************************" +portlist);
%>

<%-- <%
Object ologin = session.getAttribute("login");
String logincheck = (String)(request.getAttribute("logincheck"));
MemberDto mem = null;

if(ologin == null){
   %>
   <script>
   alert('로그인 해 주십시오');
   location.href="login1.do"

   </script>
   <%
}
else{
   mem = (MemberDto)ologin;
   request.setAttribute("mem", mem);
}


if(logincheck != null) {
	if(logincheck.equals("NO")) {
%>
		<script>
			alert('아이디, 패드워드가 맞지 않습니다.');
		</script>
<%
	}
}
%>
 --%>
<!DOCTYPE html>
<html>

<head>
  <!-- CK-editor -->
<link rel="stylesheet" href="ckeditor5/sample/styles.css">
<script src="ckeditor5/build/ckeditor.js"></script>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">


  <!-- <link rel="stylesheet" href="static/csss/bootstrap.css" media="all"> -->

 <link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">
  <!-- 카카오맵스 -->
  <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  <!-- 카카오맵스 -->
  <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=685fcbb766340d7c8812f4e0a29a6661&libraries=services"></script>
	<link href="csss/gnb.css" rel="stylesheet" type="text/css">
	<link href="csss/view.css" rel="stylesheet" type="text/css">
	
<<<<<<< HEAD
	
<!-- <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css"> -->
 <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script> 
<!-- <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>	 -->
	
	
=======
>>>>>>> ea5487e962cdef91cc58cd53173764c7b177e657

 <!-- 전체 공통 스크립트 임포트 -->
  <c:import url="script.jsp" charEncoding="utf-8"/>
  
  <!-- 캐러셀 탑텐 -->




<style type="text/css">
.star-on {
  color: gray;
}
.star-off {
  color: #7cccc2;
}
</style>

</head>

<style>
.modal {
  text-align: center;
}

@media screen and (min-width: 768px) {
  .modal:before {
    display: inline-block;
    vertical-align: middle;
    content: " ";
    height: 100%;
  }
}

.modal-dialog {
  display: inline-block;
  text-align: left;
  vertical-align: middle;
}

p{
 font-weight: bold;
}

.companydetail{
display: flex;
}

.jobtitle{
font-weight: bold;
}


.titles{

font-weight: bold;

}

.table .thead-dark th {
    color: #fff;
    background-color: #2186eb;
    border-color: #eee;
}


.applybtn{
width: max-content;

.JobSumData{
	font-weight: bold;

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
  
<<<<<<< HEAD

/* carousel */
.blog_section {
  padding-top: 5rem;
  padding-bottom: 3rem;
}
.blog_section .blog_content .blog_item {
  margin-bottom: 30px;
  box-shadow: 0 0 11px 0 rgba(6, 22, 58, 0.14);
  position: relative;
  border-radius: 2px;
  overflow: hidden;
}
.blog_section .blog_content .blog_item:hover .blog_image img {
  transform: scale(1.1);
}
.blog_section .blog_content .blog_item .blog_image {
  overflow: hidden;
  padding: 0;
}
.blog_section .blog_content .blog_item .blog_image img {

  transition: transform 0.5s ease-in-out;
  height: 300px!important;
}
.blog_section .blog_content .blog_item .blog_image span i {
  position: absolute;
  z-index: 2;
  color: #fff;
  font-size: 18px;
  width: 38px;
  height: 45px;
  padding-top: 7px;
  text-align: center;
  right: 20px;
  top: 0;
  -webkit-clip-path: polygon(0 0, 100% 0, 100% 100%, 50% 79%, 0 100%);
  clip-path: polygon(0 0, 100% 0, 100% 100%, 50% 79%, 0 100%);
  background-color: #ff5e14;
}
.blog_section .blog_content .blog_item .blog_details {
  padding: 25px 20px 30px 20px;
}
.blog_section .blog_content .blog_item .blog_details .blog_title h5 a {
  color: #020d26;
  margin-top: 0;
  margin-bottom: 10px;
  font-size: 25px;
  line-height: 32px;
  font-weight: 400;
  transition: all 0.3s;
  text-decoration: none;
}
.blog_section .blog_content .blog_item .blog_details .blog_title h5 a:hover {
  color: #ff5e14;
}
.blog_section .blog_content .blog_item .blog_details ul {
  padding: 0 3px 10px 0;
  margin: 0;
}
.blog_section .blog_content .blog_item .blog_details ul li {
  display: inline-block;
  padding-right: 15px;
  position: relative;
  color: #7f7f7f;
}
.blog_section .blog_content .blog_item .blog_details ul li i {
  padding-right: 7px;
}
.blog_section .blog_content .blog_item .blog_details p {
  border-top: 1px solid #e5e5e5;
  margin-top: 4px;
  padding: 20px 0 4px;
}
.blog_section .blog_content .blog_item .blog_details a {
  font-size: 16px;
  display: inline-block;
  color: #ff5e14;
  font-weight: 600;
  text-decoration: none;
  transition: all 0.3s;
}
.blog_section .blog_content .blog_item .blog_details a:hover {
  color: #020d26;
}
.blog_section .blog_content .blog_item .blog_details a i {
  vertical-align: middle;
  font-size: 20px;
}
.blog_section .blog_content .owl-nav {
  display: block;
}
.blog_section .blog_content .owl-nav .owl-prev {
  position: absolute;
  left: -27px;
  top: 33%;
  border: 5px solid #fff;
  text-align: center;
  z-index: 5;
  width: 40px;
  height: 40px;
  border-radius: 50%;
  outline: 0;
  background: #ff5e14;
  transition: all 0.3s;
  color: #fff;
}
.blog_section .blog_content .owl-nav .owl-prev span {
  font-size: 25px;
  margin-top: -6px;
  display: inline-block;
}
.blog_section .blog_content .owl-nav .owl-prev:hover {
  background: #fff;
  border-color: #ff5e14;
  color: #ff5e14;
}
.blog_section .blog_content .owl-nav .owl-next {
  position: absolute;
  right: -27px;
  top: 33%;
  border: 5px solid #fff;
  text-align: center;
  z-index: 5;
  width: 40px;
  height: 40px;
  border-radius: 50%;
  outline: 0;
  background: #ff5e14;
  color: #fff;
  transition: all 0.3s;
}
.blog_section .blog_content .owl-nav .owl-next span {
  font-size: 25px;
  margin-top: -6px;
  display: inline-block;
}
.blog_section .blog_content .owl-nav .owl-next:hover {
  background: #fff;
  border-color: #ff5e14;
  color: #ff5e14;
}

@media only screen and (max-width: 577px) {
  .blog_section .owl-nav .owl-prev {
    left: -17px !important;
  }
  .blog_section .owl-nav .owl-next {
    right: -17px !important;
  }
}

.owl-carousel .owl-item img {
    display: block;
    width: 300px!important;
    height: 200px;
}
=======
  
  
  
  
>>>>>>> ea5487e962cdef91cc58cd53173764c7b177e657

</style>



<body>




  <div class="py-0 pt-3" style="background-color: #2186eb; color: white; height: 174px;">
    <div class="container">
      <div class="row">
        <div class="col-md-10">
	        <div>
	          <p class="" style="color: #eee;">${dto.companyname}&nbsp; &nbsp;&nbsp;</p>
			</div>

			<div>
			  <h3 class="jobtitle">
	           <c:if test="${login.auth==1}">
	          	<c:choose>
	          		<c:when test="${dto.favoriteCom >0 and dto.favoriteCom != null }">
	          					<a style="color:red" class="btn btn-secondary red" href="javascript:dropFavoriteCom(${dto.jobSeq }, '${dto.companyId }', '${login.memberid }')">
	          					<i class="fa fa-star icon-gray fa-fw fa-1x py-1"></i></a>
	          		</c:when>
	          		<c:otherwise>
	          					<a class="btn btn-secondary red" href="javascript:comFavorite(${dto.jobSeq }, '${dto.companyId }', '${login.memberid }')">
	          					<i class="fa fa-star icon-gray fa-fw fa-1x py-1"></i></a>
	          		</c:otherwise>
	          	</c:choose>
				</c:if>
	          ${dto.jobTitle}
	         </h3>
	         </div>

        </div>
        <div class="col-md-2 text-right" style="margin-top: 45px;">

		 	<c:if test="${login.auth==1 }">
         		 <button type="button" class="btn btn-primary" id="_apply" data-toggle="modal" data-target="#exampleModal">입사지원</button>
			</c:if>

          	<c:choose>
          		<c:when test="${login.auth == 1 }">
          			<c:choose>
          				<c:when test="${dto.favoriteJob >0 and dto.favoriteCom != null }">
          					<a style="color:red" class="btn btn-secondary" href="javascript:dropFavoriteJob(${dto.jobSeq }, '${login.memberid }')">
				          		<i class="fa fa-star icon-gray fa-fw fa-1x py-1"></i>
				          	</a>
          				</c:when>
          				<c:otherwise>
          					<a class="btn btn-secondary" href="javascript:jobFavorite(${dto.jobSeq }, '${login.memberid }')">
				         	   <i class="fa fa-star icon-gray fa-fw fa-1x py-1"></i>
				            </a>
          				</c:otherwise>
          			</c:choose>
          		</c:when>
          	</c:choose>

			<c:choose>
				<c:when test="${login.auth == 2 or login.auth == 3}">
 					<c:if test="${login.memberid == dto.companyId or login.auth == 3}">
          				<a class="btn btn-secondary" href="javascript:updateRecruit(${dto.jobSeq })">수정하기</a>
          				<a class="btn btn-secondary" href="javascript:deleteRecruit(${dto.jobSeq })">삭제</a>
          			</c:if>
          		</c:when>
          	</c:choose>
          </div>
       </div>



			<!-- 입사지원 모달 -->
			 <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			  <div class="modal-dialog" role="document" style="width: -webkit-fill-available;">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h5 class="modal-title" id="exampleModalLabel" style="width: 700px; color: black;">입사지원</h5>
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			          <span aria-hidden="true">×</span>
			        </button>
			      </div>
			      <div class="modal-body">
			       <table>
			       <colgroup>
			       <col width="400"><col width="50">

						<tr><td colspan="2" style="color: black">이력서list</td></tr>

            <%
            if(request.getAttribute("resumelist") != null){

            %>
                <%
      					for(int i=0; i<resumelist.size(); i++){
      					%>

						<tr>
					  <td><a href="Resumedetail.do?seq=<%=resumelist.get(i).getResumeseq()%>"><%=resumelist.get(i).getResumetitle() %></a><input type="hidden" value="" id="portfolioseq"></td>
						<td><button type="button" class="btn btn-primary applybtn" onclick="javascript:jobApply('${dto.jobSeq}','${login.memberid }','<%=resumelist.get(i).getResumeseq()%>')">지원하기</button></td>
						</tr>
      					<%
      					}
             }
      					%>

					<tr><td colspan="2" style="color: black">포트폴리오 첨부</td></tr>
					<%
					if(portlist != null){
					for(int i=0; i<portlist.size(); i++){
					%>

						<tr>
						<td style="color: black">
						<select id="portseq" onchange="getportseq('<%=portlist.get(i).getPortfolioseq() %>')">
						<option>첨부없음</option>
						<option><%=portlist.get(i).getPortfolioname() %></option>
						</select>
						</td>
						<td><button type="button" class="btn btn-primary">첨부</button></td>
						</tr>
					<%
						}
					}
					%>


				</table>
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
			      </div>
			    </div>
			  </div>
			</div>


      </div>
      <div class="row">

      </div>
    </div>
  	<div class="" style="margin-top: 20px;">
    	<div class="container">
      		<div class="row">
        		<div class="col-md-6">
        		  <li class="companydetail"><p>경력</p>&nbsp; &nbsp; &nbsp; &nbsp; <font class="JobSumData">${dto.career_Desc }</font>
          		  </li>
          		  <li class="companydetail"><p>학력</p>&nbsp; &nbsp; &nbsp; &nbsp; <font class="JobSumData">${dto.eduname }</font>
         		  </li>
        		</div>
        		<div class="col-md-6">
        		  <li class="companydetail"><p>근무형태</p>&nbsp; &nbsp; &nbsp;&nbsp;<font class="JobSumData">${dto.emp_name }</font>
        		  </li>
          		  <li class="companydetail"><p>직군</p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
          			<span>
          				<c:forTokens var="item" items="${dto.busname}" delims=":">
						    <font class="JobSumData">${item}</font>
						</c:forTokens>
          			</span>
          		</li>
          		<li class="companydetail"><p>채용인원</p>&nbsp; &nbsp; &nbsp; <font class="JobSumData">${dto.jobVolumn }</font></li>
          		<li class="companydetail"><p>급여</p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<font class="JobSumData">${dto.salary }&nbsp;만원</font>
          		</li>
          		<li class="companydetail"><p>근무지역</p>&nbsp; &nbsp; &nbsp;&nbsp;<font class="JobSumData">${dto.area1Name }&nbsp;${dto.area2Name }</font>
          			<input type="hidden" id="regdate" value="${dto.regdate }">
          			<input type="hidden" id="regdate" value="${dto.buscode }">
          		</li>
        	</div>
      	</div>
    </div>
  </div>
  <div class="">
    <div class="container">
      <div class="row">
        <div class="col-md-12" style="float:left;">
        <hr class="mb-12">
          <li class="text-right mb-3">조회수&nbsp;&nbsp;<font>${dto.readcount }</font>
          </li>
        </div>
      </div>
    </div>
  </div>
  <div class="py-5" style="" >
    <div class="container">
      <div class="row">
        <div class="col-md-12">
				<div class="editor" >
	              	${dto.jobContent }
	            </div>
		</div>
      </div>
    </div>
  </div>

  <div class="py-5">
    <div class="container">
	  <h3 class="titles">접수기간 및 방법</h3><br>
      <div class="row">
        <div class="col-md-4 bg-light border-right" style="">
          <dl class="info_period">
            <dt>남은시간</dt>
            <dd><em id="timeDeal"></em></dd>
            <dt>시작일</dt>
            <dd>${dto.jobStart }</dd>
            <dt class="end">마감일</dt>
            <dd>${dto.jobEnd }</dd>
             <dd>
             	<c:if test="${login.auth==1 }">
         			 <button type="button" class="btn btn-primary" id="_apply" data-toggle="modal" data-target="#exampleModal">입사지원</button>
				</c:if>
			</dd>
          </dl>
        </div>
        <div class="col-md-8 bg-light" style="">
          <div class="companydetail"> <p>지원방법</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;일하라 입사지원 </div>

          <div>
           <!--  <a class="btn btn-secondary" href="#" id="_apply">입사지원</a> -->
          </div>
        </div>
        <div class="text-primary" style=""> 마감일은 기업의 사정에 따라 조기 마감될수 있습니다.
        	<a class="btn btn-secondary" href="recuruitlist.do">목록으로</a>
        </div>
      </div>
    </div>
  </div>
  <div class="py-5">
    <div class="container">
	  <h3 class="titles">지원현황</h3>
      <div class="row">
        <div class="col-md-12"> 지원현황(선택) </div>
      </div>
    </div>
  </div>
  <div class="py-5">
    <div class="container">
	  <h3 class="titles">근무지</h3>
      <div class="row">
        <div class="col-md-4 bg-light border-right" style="">
          <dl class="info_period">
          	<p>담당자 및 근무지</p>
            <dt id="keyword1">${dto.area1Name } ${dto.area2Name } ${dto.detailAdress1 } ${dto.detailAdress2 }</dt>
            <dd>

            	<p style="margin-top:-12px">
			    <em class="link">


			    </em>
			</p>
			<div id="map" style="width:100%;height:350px;"></div>
            </dd>
          </dl>
        </div>
        <div class="col-md-8 bg-light" style="" id="_mgData">
          <div class="companydetail"> <p>담당자명</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${dto.mgName }</div>
          <div class="companydetail"> <p>담당자연락처</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${dto.mgPhone }</div>
          <div class="companydetail"> <p>담당자이메일주소</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${dto.mgEmail }</div>
        </div>
        	<c:if test="${dto.companyId == login.memberid or login.auth == 3}">
        <div class="text-primary" style=""> 담당자 정보 수정을 원하시면 버튼을 클릭하세요 &nbsp;&nbsp;&nbsp;
        	<a class="btn btn-secondary" href="javascript:mgUpdate()">담당자 정보수정</a>
        	</c:if>
        </div>
      </div>
    </div>
  </div>
  
  <div class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-4 bg-light" >
        	
          <img src="upload/${bsdto.newfilename}" alt="디폴트이미지" width="100%" >
        </div>
        <div class="col-md-4 bg-light">
          <ul>
	          <li style=" list-style: none;"><h3>${com.companyname }</h3></li>
	          <li style=" list-style: none;"><span>기업형태</span>&nbsp;&nbsp;<span>${com.companytype }</span></li>
	          <li style=" list-style: none;"><span>업력</span>&nbsp;&nbsp;<span>${com.comyear }</span></li>
	          <li style=" list-style: none;"><span>대표자명</span>&nbsp;&nbsp;<span>${com.ceoname }</span></li>
	          <li style=" list-style: none;"><span>업종</span>&nbsp;&nbsp;<span>${com.content }</span></li>
          </ul>
        </div>
        <div class="col-md-4 bg-light">
	        <ul>
	          <li style=" list-style: none;"></li><br><br>
	          <li style=" list-style: none;"><span>직원수</span>&nbsp;&nbsp;<span>${com.empcount }</span></li>
	          <li style=" list-style: none;"><span>총매출</span>&nbsp;&nbsp;<span>${com.totalsale }</span></li>
	          <li style=" list-style: none;"><span>평균연봉</span>&nbsp;&nbsp;<span>${com.salaryavg }</span></li>
	          <li style=" list-style: none;"><span>홈페이지주소</span>&nbsp;&nbsp;<span>${com.website }</span></li>
	        </ul>
        </div>
      </div>
    </div>
  </div>
  
  
  
  
  
  
  
  
         <!--   Google font
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Titillium+Web:400,400i,600,600i,700,700i,900">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:400,400i,600,600i,700,700i,800,800i"> -->
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <!-- icofont
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionic/1.3.2/css/ionic.css"> -->
     <!--    carousel -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.css"> 
      <!-- Jquery -->
     <!--    <script src="https://code.jquery.com/jquery-3.3.1.js"></script> -->
        <!-- bootstrap -->
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.0/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
        <!-- carousel -->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.js"></script>
  
  
  
 
  
  <section class="blog_section">
            <div class="container">
                <div class="blog_content">
                    <div class="owl-carousel owl-theme">
                        <div class="blog_item">
                            <div class="blog_image">
                                <img class="img-fluid" src="./image/naver2.png" alt="images not found" style="width: 300px;height: 200px;">
                                <span><i class="icon ion-md-create"></i></span>
                            </div>
                            <div class="blog_details">
                                <div class="blog_title">
                                    <h5 style="text-align: center"><a href="#">네이버 신입공채</a></h5>
                                </div>
                                <ul>
                                    <li><i class="icon ion-md-person"></i>Alex</li>
                                    <li><i class="icon ion-md-calendar"></i>August 1, 2018</li>
                                </ul>
                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem...</p>
                                <a href="#">Read More<i class="icofont-long-arrow-right"></i></a>
                            </div>
                        </div>                        
                        <div class="blog_item">
                            <div class="blog_image">
                                <img class="img-fluid" src="./image/kakao.jpg" alt="images not found" style="width: 300px;height: 200px;">
                                <span><i class="icon ion-md-create"></i></span>
                            </div>
                            <div class="blog_details">
                                <div class="blog_title">
                                    <h5 style="text-align: center"><a href="#">카카오 개발자 모집</a></h5>
                                </div>
                                <ul>
                                    <li><i class="icon ion-md-person"></i>Alex</li>
                                    <li><i class="icon ion-md-calendar"></i>August 1, 2018</li>
                                </ul>
                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem...</p>
                                <a href="#">Read More<i class="icofont-long-arrow-right"></i></a>
                            </div>
                        </div>                        
                        <div class="blog_item">
                            <div class="blog_image">
                                <img class="img-fluid" src="./image/coupang.png" alt="images not found" style="width: 300px;height: 200px;">
                                <span><i class="icon ion-md-create"></i></span>
                            </div>
                            <div class="blog_details">
                                <div class="blog_title">
                                    <h5 style="text-align: center"><a href="#">쿠팡친구 전국 모집</a></h5>
                                </div>
                                <ul>
                                    <li><i class="icon ion-md-person"></i>Alex</li>
                                    <li><i class="icon ion-md-calendar"></i>August 1, 2018</li>
                                </ul>
                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem...</p>
                                <a href="#">Read More<i class="icofont-long-arrow-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
  
  

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  <div class="py-5">
    <div class="container">
      <div class="row"> 인기공고 HOT10
      <div class="col-md-12">
         <table class="table table-hover col-sm-12 " style="" id="table">
            <thead class="thead-dark">
               <tr>
                  <th></th>

                  <th>회사명</th>
                  <th>공고제목</th>
                  <th>지원자격(학력·경력)</th>
                  <th>채용인원</th>
                  <th>근무조건</th>
                  <th>마감일·등록일</th>
               </tr>
            </thead>
         </table>
         <p></p>
       </div>
      </div>
    </div>
  </div>
  


  <div class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-12"> 광고 </div>
      </div>
    </div>
  </div>
  




  <input type="hidden" id="phonenumber">


<script>
getTop10List();

//인기 탑텐 HOT10 가져오기 
function getTop10List() {

    $.ajax({
         type : 'get',
         url : './getTop10List.do',
         error: function(xhr, status, error){
             alert("에러발생");
         },
         success:function(list){
 			//alert('success');
 			//alert(list);

 			$(".list_col").remove();

 			var memberid = '<c:out value="${login.memberid}"/>';

 			$.each(list, function(i, val){
 				//alert(val.jobSeq);
 				let app = "<tr class= 'list_col'>"
 							+"<td>" + val.rnum +"</td>";

 							if(val.del==0){

 								"<td>"
								+ "<a href='companydetail.do?companyid=" + val.companyId  + "'>" + val.companyname+"</a>"
							    + "</td>"
 								/* let empT = "";
 								if(val.empType == 3){
 									empT = "정규직";
 								} */
 								app +="<td>"
 									+ "<a href='companydetail.do?companyid=" + val.companyId  + "'>" + val.companyname + "</a>"
 									+ "</td>"
 									+"<td style='text-align:left'>"
 									//+ arrow(val.depth)
 									+"<a href='RecruitDetail.do?jobseq=" + val.jobSeq +"&memberid="+memberid+"'>" + val.jobTitle+ "</a>"
 									+"</td>"
 									+"<td>" + val.eduname +"<br>"+val.career_Desc + "</td>"
 									+"<td>" + val.jobVolumn + "</td>"
 									+"<td>" + val.emp_name +"<br>"+ val.area1Name+" " + val.area2Name +"<br>"+val.salary+" 만원"+ "</td>"
 									+"<td>" + val.jobEnd +"<br>"+val.regdate;
 									
 									if(val.companyId == memberid || auth == 3){
 		 								app += "<input type='button' class='btn btn-primary' value='공고삭제' onClick='deleteRecruit("+val.jobSeq +")' >"
 		 									}

 		 								app += "</td>";

 		 							}

 		 							else{
 		 								app += "<td style='text-align:left' colspan='6'>"
 		 										+"<font color='#ff0000'>********* 이 글은 작성자에 의해서 삭제되었습니다</font>"
 		 										+"</td>";
 		 							}

 		 							+"</tr>";
 									
					$("#table").append(app);
 			});
 		},
 		error:function(){
 			alert('error');
 		}
     });

}



function jobApply(jobseq, memberid, resumeseq) {

	   alert("jobApply");
	   //alert(jobseq);
	   //alert(memberid);
	   //alert(resumeseq);
	   // alert(phonenum);


	   portseq = document.getElementById('portfolioseq').value;
	   
	    location.href = "jobApply.do?jobseq="+jobseq+"&memberid="+memberid+"&resumeseq="+resumeseq+"&portfolioseq="+portseq;

	}
</script>

<script type="text/javascript">

function deleteRecruit(jobSeq) {
	location.href="deleteRecruit.do?jobSeq="+jobSeq;
}
function updateRecruit(jobSeq) {
	location.href ="RecruitUpdate.do?jobSeq="+jobSeq;
}
function mgUpdate() {
	$("#_mgData *").remove(); //내부 요소만 삭제

	var app = "";

	app +=  "<form  id='_mgFrm'  method='get'>"+
			"<input type='text' id='sample6_postcode' placeholder='우편번호'>"+
			"<input type='button' onclick='sample6_execDaumPostcode()' value='우편번호 찾기'><br>"+
			"<input type='text' name='area1Name' id='sample6_address' placeholder='주소' value='"+"${dto.area1Name } ${dto.area2Name} ${dto.detailAdress1 }"+"'><br>"+
			"<input type='text' name='area2Name' id='sample6_detailAddress' placeholder='상세주소' value='"+"${dto.detailAdress2 }"+"'>"+
			"<input type='hidden' name='jobSeq'   value='"+"${dto.jobSeq }"+"'>"+
			"<input type='text' id='sample6_extraAddress' placeholder='참고항목'>"+
			"<input type='text' class='form-control' name='mgName' value='"+"${dto.mgName }"+"' id='_manager' placeholder='담당자명' > "+
     		"<input type='text' class='form-control' name='mgPhone' value='"+"${dto.mgPhone }"+"' id='_managerPhone' placeholder='담당자연락처' >"+
     		"<input type='email' class='form-control' name='mgEmail' value='"+"${dto.mgEmail }"+"' id='_managerEmail' placeholder='you@example.com'>"+
       		"<input type='datetime-local' value='"+"${dto.jobStart }"+"' name='jobStart' class='form-control' id='_jobStart' placeholder='공고시작일' required=''>"+
     		"<input type='datetime-local' value='"+"${dto.jobEnd }"+"' name='jobEnd' class='form-control' id='_jobEnd' placeholder='공고종료일' required=''>";
    app += "<button type='button' value='수정하기' onclick='mgUpdateAf()'>수정하기</button>";

     		$("#_mgData").append(app);

     var start = "${dto.jobStart}";
     var end = "${dto.jobEnd}";

     start = start.replace(" ", "T");
     end = end.replace(" ", "T");
     alert(start);
     alert(end);

     $("#_jobStart").val(start);
     $("#_jobEnd").val(end);


}



function mgUpdateAf() {



	$("#_mgFrm").attr("action", "mgDetailUpdate.do").submit();

	location.reload();
}
</script>


<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div
    mapOption = {
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

// 지도를 생성합니다
var map = new kakao.maps.Map(mapContainer, mapOption);

// 주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();

var dAdress = '${dto.area1Name }' + ' ' + '${dto.area2Name }' + ' ' + '${dto.detailAdress1 }';

// 주소로 좌표를 검색합니다
geocoder.addressSearch(dAdress, function(result, status) {

    // 정상적으로 검색이 완료됐으면
     if (status === kakao.maps.services.Status.OK) {

        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker = new kakao.maps.Marker({
            map: map,
            position: coords
        });

        // 인포윈도우로 장소에 대한 설명을 표시합니다
        var infowindow = new kakao.maps.InfoWindow({
            content: '<div style="width:150px;text-align:center;padding:6px 0;">근무지</div>'
        });
        infowindow.open(map, marker);

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
    }
});



function sample6_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
            if(data.userSelectedType === 'R'){
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                }
                // 조합된 참고항목을 해당 필드에 넣는다.
                document.getElementById("sample6_extraAddress").value = extraAddr;

            } else {
                document.getElementById("sample6_extraAddress").value = '';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('sample6_postcode').value = data.zonecode;
            document.getElementById("sample6_address").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("sample6_detailAddress").focus();
        }
    }).open();
}



function comFavorite(jobSeq, companyId, memberid) {
	//alert("회사좋아요 등록");
	//alert(companyId);
	//alert(memberid);
	location.href = "favoriteCom.do?jobSeq="+jobSeq+"&companyId="+companyId+"&memberid="+memberid;
}

function dropFavoriteCom(jobSeq, companyId, memberid) {
	//alert("회사좋아요 해제");
	//alert(companyId);
	//alert(memberid);

	location.href = "dropFavoriteCom.do?jobSeq="+jobSeq+"&companyId="+companyId+"&memberid="+memberid;

	//setTimeout("location.reload()", 15);

	//location.href = "RecruitDetail.do?jobseq=" +jobSeq;
}





function jobFavorite(jobSeq, memberid) {
	//alert("즐겨찾기등록");
	//alert(jobSeq);
	//alert(memberid);

	let endDate = '${dto.jobEnd}';
	var reserve = charchen(endDate);
	alert("이게 예약시간 : "+ reserve);

	var phone = getPhonenum(memberid);
	alert("이게 연락처"+phone);

	var title = '${dto.jobTitle}';



	$.ajax({
        type : 'get',
        url : './reserveSendSms.do',
        data:{phonenum: phone, reserveDate : reserve, title : title },
       success:function(suc){
			alert("예약문자성공");
			alert(suc);

		},
		error:function(){
			alert('error');
		}
    });



	location.href = "favoriteJob.do?jobSeq="+jobSeq+"&memberid="+memberid;

	//setTimeout("location.reload()", 15);

	//location.href = "RecruitDetail.do?jobseq=" +jobSeq;

}

function dropFavoriteJob(jobSeq, memberid) {
	//alert("즐겨찾기해제");
	//alert(jobSeq);
	//alert(memberid);
	if('${login.memberid}' == 'null'){
		alert('로그인해주십시오');
		location.href="login1.do";
	}
	else{
	location.href = "dropFavoriteJob.do?jobSeq="+jobSeq+"&memberid="+memberid;

	//setTimeout("location.reload()", 15);

	//location.href = "RecruitDetail.do?jobseq=" +jobSeq;
	}

}


function CountDownTimer(dt, id) {
    var end = new Date(dt);
    var _second = 1000;
    var _minute = _second * 60;
    var _hour = _minute * 60;
    var _day = _hour * 24;
    var timer;
    function showRemaining() {
        var now = new Date();
        var distance = end - now;


       var dEnd = end.getDate();
       var dNow = now.getDate();
       var leftDay = dEnd - dNow;




        if (distance < 0) {

            clearInterval(timer);
            document.getElementById(id).innerHTML = '공고 기한이 만료되었습니다';
            //$("#_apply").hide();
            //location.reload();
            return;
        }
        var days = Math.floor(distance / _day);
        var hours = Math.floor((distance % _day) / _hour);
        var minutes = Math.floor((distance % _hour) / _minute);
        var seconds = Math.floor((distance % _minute) / _second);
        document.getElementById(id).innerHTML = days + '일 ';
        document.getElementById(id).innerHTML += hours + '시간 ';
        document.getElementById(id).innerHTML += minutes + '분 ';
        document.getElementById(id).innerHTML += seconds + '초';
    }
    timer = setInterval(showRemaining, 1000);
}
CountDownTimer('${dto.jobEnd}', 'timeDeal'); // 2020-12-06 오후10시 50분까지



function charchen(endDate) {
endDate = new Date(endDate);
var rest = endDate - 86400000;
var sendDate = getReserveDate(rest);
sendDate = sendDate.slice(0, -2);
alert(sendDate);

return sendDate;
}



function getReserveDate(rest)
{
    var date = new Date(rest);
    var year = date.getFullYear().toString();

    var month = date.getMonth() + 1;
    month = month < 10 ? '0' + month.toString() : month.toString();

    var day = date.getDate();
    day = day < 10 ? '0' + day.toString() : day.toString();

    var hour = date.getHours();
    hour = hour < 10 ? '0' + hour.toString() : hour.toString();

    var minites = date.getMinutes();
    minites = minites < 10 ? '0' + minites.toString() : minites.toString();

    var seconds = date.getSeconds();
    seconds = seconds < 10 ? '0' + seconds.toString() : seconds.toString();

    return year + month + day + hour + minites + seconds;
}


function jobApply(jobseq, memberid, resumeseq) {

	alert("jobApply");
	//alert(jobseq);
	//alert(memberid);
	//alert(resumeseq);
	// alert(phonenum);


	portseq = document.getElementById('portfolioseq').value;
	
	if(portseq == ""){
		portseq = 0;
	}
	
    location.href = "jobApply.do?jobseq="+jobseq+"&memberid="+memberid+"&resumeseq="+resumeseq+"&portfolioseq="+portseq;

}



//회원 아이디로 전화번호를 가지고 올수 있는 메서드
function getPhonenum(memberid) {
	var pnumber = "";

	 $.ajax({
	     url : "./getPhonenum.do",
	     type : "get",
	     async: false,
	     data: {"memberid": memberid},
	     success:function(phonenumber){
	        alert('success');
	        alert(phonenumber);
	        phoneNum = phonenumber;
	        $("#phonenumber").val(phonenumber);

			},
	     error:function(){
	        alert('error');
	     }

	   });

	 pnumber = phoneNum;

	 return pnumber;

}





</script>



<script>BalloonEditor
	.create( document.querySelector( '.editor' ), {

		toolbar: {
			items: [
				'heading',
				'|',
				'bold',
				'italic',
				'link',
				'bulletedList',
				'numberedList',
				'|',
				'outdent',
				'indent',
				'|',
				'imageUpload',
				'blockQuote',
				'insertTable',
				'fontColor',
				'fontSize',
				'fontBackgroundColor',
				'fontFamily',
				'highlight',
				'imageInsert',
				'mediaEmbed',
				'undo',
				'redo'
			]
		},
		language: 'ko',
		image: {
			toolbar: [
				'imageTextAlternative',
				'imageStyle:full',
				'imageStyle:side',
				'linkImage'
			]
		},
		table: {
			contentToolbar: [
				'tableColumn',
				'tableRow',
				'mergeTableCells'
			]
		},
		licenseKey: '',


	} )
	.then( editor => {
		window.editor = editor;

		//읽기전용으로 셋팅 (디테일페이지에서 사용)
		editor.isReadOnly = true;

		//editor.setData();



	} )
	.catch( error => {
		console.error( 'Oops, something went wrong!' );
		console.error( 'Please, report the following error on https://github.com/ckeditor/ckeditor5/issues with the build id and the error stack trace:' );
		console.warn( 'Build id: x1h6xk4rd95i-65gjhojljtvk' );
		console.error( error );
	} );


// 댓글 입력
var processing = false;
$('.devBtnComtWrite').click(function () {
    if (processing === false) {
        processing = true;
        //비회원 체크 여부
        if ($isLogin != 1) {
            JKLoginLayer.open();
            processing = false;
            return false;
        }

        var $this = $(this);
        var answerNo = $this.closest('li').find('.devComtRoot').data('answerno');
        var cntnt = $this.closest('form').find('textarea').val();

        if (typeof cntnt === 'undefined' || cntnt === '') {
            alert('댓글 내용을 입력해 주세요.');
            processing = false;
            return false;
        }

        $.ajax({
            url: '/User/Qstn/ComtWrite',
            dataType: 'html',
            method: 'POST',
            data: {
                answerNo: answerNo,
                cntnt: cntnt,
                qstnNo: $('#hdnQstnNo').val()
            },
            success: function (html) {
                if (html !== '') {
                    html = html.replace('&lt;', '<').replace('&gt;', '>');
                    if ($this, html.match(/문자를 입력할 수 없습니다/) === null) {
                        fncComtCountChange($this, 1);
                        $this.closest('form').find('textarea').val('');
                        $this.closest('div.qnaFormBx').addClass('case');
                        $this.closest('.cmtWrite').siblings('.replyWrap').append(html);
                    }
                    else {
                        fncComtCountChange($this, 0);
                    }
                }
            },
            complete: function () {
                processing = false;
            }
        });
    }
});



  </script>

  <script type="text/javascript">
  function getportseq(portseq) {
	alert(portseq);
	document.getElementById('portfolioseq').value = portseq;

}
  



  </script>
  <!-- carousel -->
  <script type="text/javascript">
  $('.owl-carousel').owlCarousel({
	    loop:true,
	    margin:10,
	    dots:false,
	    nav:true,
	    autoplay:true,   
	    smartSpeed: 3000, 
	    autoplayTimeout:7000,
	    responsive:{
	        0:{
	            items:1
	        },
	        600:{
	            items:2
	        },
	        1000:{
	            items:3
	        }
	    }
	})
  
  </script>


</body>
</html>
