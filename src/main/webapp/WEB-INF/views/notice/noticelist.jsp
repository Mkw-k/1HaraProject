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
<div class="all">


<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
  <!-- Links -->
  <ul class="navbar-nav">
  		
<!-- Dropdown -->
    <li class="nav-item dropdown">
     <div class="dropdown">
     	<a href="home.do"><img alt="" src="<%=request.getContextPath() %>/image/logo5.gif" height="80" width="150" style="float:left; padding-right: 20px"></a>
		  <button class="dropbtn">전체보기</button>
		  <div class="dropdown-content">
		    <a href="#">채용공고</a>
		    <a href="#">기업정보</a>
		    <a href="#">취업톡톡</a>
		    <a href="#">공채달력</a>
		    <a href="#">자료실</a>
		    <a href="#">공지사항</a>
		  </div>
		</div>
    </li>

    <li class="nav-item">
      <a class="nav-link bgc" href="#" style="color:white">채용공고</a>
    </li>
    <li class="nav-item">
      <a class="nav-link bgc" href="#" style="color:white">기업정보</a>
    </li>
    <li class="nav-item">
      <a class="nav-link bgc" href="#" style="color:white">취업톡톡</a>
    </li>
    <li class="nav-item">
      <a class="nav-link bgc" href="#" style="color:white">공채달력</a>
    </li>
    <li class="nav-item">
      <a class="nav-link bgc" href="#" style="color:white">자료실</a>
    </li>
    <li class="nav-item">
      <a class="nav-link bgc" href="notice.do" style="color:white">공지사항</a>
    </li>
    </ul>
    
   
   <ul class="navbar-nav navbar-nav2">
     <li class="nav-item">
      <!-- a class="nav-link bgc" id="_btnRegi" href="#" style="color: white;background-color: #2186eb;">로그인</a> -->
       <a href="javascript:login()" id="login-btn" class="nav-link bgc" style="color: white;background-color: #2186eb;">로그인</a>
    </li>
    <li class="nav-item">
      <a class="nav-link bgc" href="#" style="color: white;background-color: #2186eb;">이력서관리</a>
    </li>
  

  </ul>
</nav>
<br>




<!-- 검색 -->
<div class="box_border" style="margin-top: 5px; margin-bottom: 10px">

<table style="margin-left: auto; margin-right: auto; margin-top: 3px; margin-bottom: 3px">
<tr>
	<td>검색</td>
	<td style="padding-left: 5px">
		<select id="_choice" name="choice">
			<option value="" selected="selected">선택</option>
			<option value="title">제목</option>
			<option value="content">내용</option>
			<option value="writer">작성자</option>
		</select>
	</td>
	<td style="padding-left: 5px">
		<input type="text" id="_searchWord" name="searchWord">
	</td>
	<td style="padding-left: 5px">
		<span class="button blue">
			<button type="button" id="btnSearch">검색</button>
		</span>
	</td>
</tr>
</table>
<br><br><br><br>
</div>
    


<h1>공지사항</h1>
<table class="list_table" style="width: 100%" id="_list_table">
<colgroup>
	<col style="width:140px">
	<col style="width:300px">
	<col style="width:140px">
	<col style="width:140px">
	<col style="width:140px">
</colgroup>	


<tr>
	<th>번호</th><th>제목</th><th>작성자</th><th>등록일</th><th>조회수</th>
</tr>

<%-- <tbody>
	<c:forEach var="notice" items="${noticelist }" varStatus="i">
		<tr>
			<th>${i.count }</th> --%>		<!-- 번호 -->
			<%-- !-- <td style="text-align: left;"> -->	<!-- 제목(클릭시 디테일페이지로 넘어감) -->
				<a href="noticedetail.do?seq=${noticelist.seq }">
					${noticelist.title }
				</a>
			</td>
			<th>${ noticelist.Memberid}</th>	 --%>		<!-- 작성자 -->
			<%-- <td>${ noticelist.regdate}</td>		 --%>		<!-- 등록일 -->
			<%-- <th>${ noticelist.readcount}</th> --%>			<!-- 조회수 -->
			
	<%-- 	</tr>
	
	</c:forEach>

</tbody> --%>

<%-- 
<c:if test="${empty bbslist }">
<tr>
	<td colspan="3">작성된 글이 없습니다</td>
</tr>
</c:if>

<c:forEach items="${bbslist }" var="bbs" varStatus="vs">

	<tr>
		<td>${vs.count }</td>
	
		<td style="text-align: left;">
			<a href="bbsdetail.do?seq=${bbs.seq }">
				${bbs.title }
			</a>
		</td>
		
		<td>${bbs.id }
	</tr>
	
</c:forEach>
 --%>
</table>

<br><br>

<div class="container">
	<nav aria-label="Page navigation">
		<ul class="pagination" id="pagination" style="justify-content:center;"></ul>
	</nav>
	<br><br>
</div>

<button type="button" class="btn btn-info">글쓰기</button>


<br><br>


<!-- ==============FOOTER================= -->
      <footer class="main-footer">
      	<div id="footer">
			<div class="middle-area">
				<div class="inner-wrap">
					<div class="link-footer">
						<a href="/useInvite/worknetHomepgInvite/worknetIntro.do">일하라 소개</a>
						<a href="/useInvite/worknetHomepgInvite/useClause1.do">이용약관</a>
						<a href="/useInvite/worknetHomepgInvite/indivInfoPrtecPolicy.do"><b>개인정보처리방침</b></a>
						<a href="/useInvite/worknetHomepgInvite/emailAddrWonoticeGatherRefuse.do">이메일주소무단수집거부</a>
						<a href="/useInvite/worknetHomepgInvite/webAccessPlcy.do">웹접근성정책</a>
						<a href="/useInvite/worknetHomepgInvite/cprgtPolicyAsAllianceInq.do">저작권정책 및 제휴문의</a>
						<a href="http://openapi.work.go.kr" target="_blank">Open API</a>
						<a href="/contents.do?relAddr=/useInvite/worknetHomepgInvite/workBanner&amp;titleId=UIFG000001">배너 가져가기</a>
						<a href="/useInfo/lieJobadRpt/lieJobadRptList.do">거짓구인광고 신고</a>
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
				<img src="./static/images/mainlogo.png">
				<div class="etc">
					<a href="/images/useInfo/certification_kor2015.jpg" target="_blank" onclick="try { latte.getEvent(event).stop(); } catch (ex) {}; var remote = window.open('https://www.eprivacy.or.kr/front/certifiedSiteMark/certifiedSiteMarkPopup.do?certCmd=E&amp;certNum=2021-E-R001','EPRIVACY','width=527,height=720'); remote.focus(); return false;" title="새창"><img src="./static/images/brn-epriavcy.png" alt="개인정보보호우수사이트 인증서"></a>
								<a href="/html/wauMark2020_worknet.html" onclick="try { latte.getEvent(event).stop(); } catch (ex) {};window.open(this.href,'mark2020','width=605,height=850,scrollbars=no');return false;" title="새창" target="_blank" style="margin-top:-3px"><img src="./static/images/brn-wa-2019.png" alt="과학기술정보통신부 WEB ACCESSIBILITY 마크(웹 접근성 품질인증 마크)"></a>
							
				</div>
			</div>
		</div>
	</div>	
   </footer>
      <!-- ==============FOOTER END================= -->
</div>
 


<script>

getNoticeListData(0);
getNoticeListCount();

//검색
$("#btnSearch").click(function(){
	getNoticeListData(0);
	getNoticeListCount();
});

// Noticelist을 취득
function getNoticeListData( pNumber ) {
	
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
						/* 	+ getArrow( val.depth ); */	// 댓글이미지
					if(val.del == 0){	// 삭제되지 않은 글	
						app += "<a href='noticedetail.do?noticeseq=" + val.noticeseq + "'>&nbsp;" + val.notice_title + "</a>";
					}else{				// 삭제된 글
						app += "<font color='#ff0000'>* 이 글은 작성자에 의해서 삭제되었습니다 *</font>";
					}
					app += "</td>"
						+ "<td>" + val.Memberid + "</td>"
						+ "<td>" + val.regdate + "</td>"
						+ "<td>" + val.readcount + "</td>"
						+ "</tr>";
						
				$("#_list_table").append(app);	
			});		
		},
		error:function(){
			alert('error');
		}
	});
}


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
			 getNoticeListData( page - 1 );
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
</script>
