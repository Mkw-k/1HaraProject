<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="csss/common.css" media="all">
<link rel="stylesheet" href="csss/top.css" media="all">
<link rel="stylesheet" href="csss/reset.css" media="all">

</head>
<body>


<header id="header">
	<div class="top-area">
		<div class="inner-wrap">
			<div class="link-out">
				<a href="home.do" target="_blank" title="새창 열림">지역일하라</a>
				<a href="https://www.workplus.go.kr/intro/about.do" target="" title="새창">고용복지<sup></sup>센터</a>
				<a href="https://www.worktogether.or.kr/main.do" title="새창 열림" onclick="f_moveUrl('WT')">장애인고용포털</a>
			</div>
			<div class="util">
				<!-- 로그인 전 -->

				<!--// 로그인 전 -->
				<!-- 로그인 후 -->

				<!-- S : 2018-09-28 추가 -->

					<div class="login-mypage">
						<!-- a href="#">
								<span>[개인]</span>
							  님
						</a> -->
						<c:choose>
       						<c:when test="${login.memberid ne null }">
            			<c:choose>
            				 <c:when test="${login.auth == 1}">
             					 <p><b>[개인🧑]${login.name }</b>님</p>
             	 			 </c:when>
             			<c:when test="${login.auth == 2}">
             					<p><b>[기업👨‍💼]${login.name }</b>님</p>
    		 			</c:when>
    						<c:otherwise>
             					<p><b>[관리자👨‍✈️]${login.name }</b>님</p>
    						</c:otherwise>
		    				</c:choose>
		            	 </c:when>
		         	</c:choose>
								
						
						<ul>
								<!-- 개인 -->
								<li><a href="/indivMemberSrv/main/indivMemberSrvMain.do">마이페이지 홈</a></li>
								<li><a href="/indivMemberSrv/custInfoAdmin/retrieveIndivCustInfo.do">회원정보관리</a></li>
								<li><a href="/indivMemberSrv/seekApplyAdmin/resumeMng/resumeMngMain.do">구직신청관리</a></li>
								<li><a href="#" onclick="worknet.popup.popCenterSuppAgree(); return false;" target="_blank" title="새창">고객지원</a></li>
						</ul>
					</div>
					<a href="logout.do" onclick="f_logout();" class="font-blue">로그아웃</a>

				<!-- E : 2018-09-28 추가 -->
				<!--// 로그인 후 -->

				<!-- 공통 -->
				<a href="#" class="worknet-chatbot-start-button-for-client">챗봇</a>
				<a href="Jobtalklist.do">취업톡톡</a><img src="static/images/common/ico/ico-gnb-new.png" style="width:15px;height:15px;margin-top: 8px;" class="va-m" alt="new">
				<!-- <a href="/useInfo/worknetInfo/useWorknetGuide.do">이용안내</a>
				<a href="info.do">고객센터</a>
				<a href="/useInvite/worknetHomepgInvite/sitemap.do">사이트맵</a> -->
				<!-- 20201022 추가 -->
				<!-- //20201022 추가 -->
<!--<div class="font-control"> -->
<!--<p>글자크기</p> -->
<!--<button type="button" class="big">글자 크게 하기</button> -->
<!--<button type="button" class="small">글자 작게 하기</button> -->
<!--<button type="button" class="reset">글자 초기화</button> -->
<!--</div> -->
<!--// 공통 -->
			</div>
		</div>
	</div>

	<div class="middle-area">
		<div class="inner-wrap">
			<h1 class="top-logoWorknet">
				<a href="home.do"><img src="static/images/common/bg/bg-top-logo.png" style="width:130px; height:60px" alt="일하라"></a>
			</h1>
			<form id="searchFrm" name="searchFrm" action="/wnSearch/unifSrch.do" method="post" onsubmit="return false">
				<div class="header-search">
					


					<div id="searchWord" class="auto-complete">
						<ul>
							<li><a href="#"><em class="word">사회복지</em> 관련 관리자</a></li>
						</ul>

						<button type="button" class="btn-input-reset">자동완성 닫기</button>
					</div>

					
				</div>
			<div>
				<input type="hidden" name="_csrf" value="40c07236-ce2a-46f9-b046-8fbf7137e0fa">
			</div>
		</form>

		
	</div>
</div>

	<nav id="gnb" style="height:50px; width: 2000px;">
		<ul>
			<li><a href="recuruitlist.do" class="menu"><span>채용정보</span></a>
				</li>
				<li>
					<a href="newslist.do" class="menu"><span>기업뉴스</span></a>
					
					</li>
					<li>
						<a href="pdslist.do" title="새창" class="menu"><span>자료실</span></a>
						
			</li>
			<li class=""><a href="calendarlist1.do" title="새창" class="menu"><span>공채달력</span></a>
				
			</li>
			<li style="
    width: 150px;
">
			<a href="notice.do" class="menu"><span>공지사항</span></a>
				
			</li>
		</ul>
	</nav>
</header>
    <!-- 헤더 -->

</body>
</html>