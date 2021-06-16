<!DOCTYPE html>
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
  <link rel="shortcut icon" href="/images/common/ico/w_favicon.ico" type="image/x-icon">
  <!-- TO_BE CSS.. -->

  <link rel="stylesheet" href="static/css/import.css" media="all">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <!-- jQuery Modal -->

  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
  <!-- footer -->


<!-- 네비바 -->
<!-- carousel -->
<link rel="stylesheet" href="//https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="//https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="//https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>




 <!-- 전체 css -->

<script type="text/javascript" src="layout/scripts/jquery.min.js"></script>
<script type="text/javascript" src="layout/scripts/featured_slide.js"></script>
<link href="csss/top.css" rel="stylesheet" type="text/css">
<link href="csss/common.css" rel="stylesheet" type="text/css">
        <link href="csss/reset.css" rel="stylesheet" type="text/css">


<style type="text/css">
@import url(//fonts.googleapis.com/earlyaccess/notosanskr.css);

body {
  font-family: "Noto Sans KR", sans-serif !important;
}
</style>


</head>

 <body id="sub_layout">

     <div class="wrapper">
<!--  -->
<header id="header">
	<div class="top-area">
		<div class="inner-wrap">
			<div class="link-out">
				<a href="/empInfo/empInfoSrch/list/retriveWorkRegionEmpIntroList.do" target="_blank" title="새창 열림">지역일하라</a>
				<a href="/useInfo/empCenterInfo/useEmpIntroList.do" target="" title="새창">고용복지<sup></sup>센터</a>
				<a href="#3" title="새창 열림" onclick="f_moveUrl('WT')">장애인고용포털</a>
			</div>
			<div class="util">
				<!-- 로그인 전 -->

				<!--// 로그인 전 -->
				<!-- 로그인 후 -->

				<!-- S : 2018-09-28 추가 -->

					<div class="login-mypage">
						<a href="#">
								<span>[개인]</span>
							  ${login.name}님
						</a>
						<ul>

								<!-- 개인 -->
								<li><a href="/indivMemberSrv/main/indivMemberSrvMain.do">마이페이지 홈</a></li>
								<li><a href="/indivMemberSrv/custInfoAdmin/retrieveIndivCustInfo.do">회원정보관리</a></li>
								<li><a href="/indivMemberSrv/seekApplyAdmin/resumeMng/resumeMngMain.do">구직신청관리</a></li>
								<li><a href="#" onclick="worknet.popup.popCenterSuppAgree(); return false;" target="_blank" title="새창">고객지원</a></li>


						</ul>
					</div>
					<a href="#" onclick="f_logout();" class="font-blue">로그아웃</a>

				<!-- E : 2018-09-28 추가 -->
				<!--// 로그인 후 -->

				<!-- 공통 -->
				<a href="#" class="worknet-chatbot-start-button-for-client">챗봇</a>
				<a href="jobtalk.do">취업톡톡<img src="static/images/common/ico/ico-gnb-new.png" style="width:15px; height:15px" class="va-m" alt="new"></a>
				<a href="/useInfo/worknetInfo/useWorknetGuide.do">이용안내</a>
				<a href="info.do">고객센터</a>
				<a href="http://as82.kr/keis" target="_blank" title="새창">원격지원</a>
				<a href="/useInvite/worknetHomepgInvite/sitemap.do">사이트맵</a>
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
					<div class="searc-area">
						<input type="search" id="topQuery" name="topQuery" onclick="if(event.keyCode == '13'){goWnSearch();}" maxlength="50" onfocus="input_limit_string(this,'/kor,/eng,/d,/symbol6,/s');" class="input-text" autocomplete="off" title="검색어를 입력해주세요.">
						<button type="button" onclick="goWnSearch()" class="btn-search">검색</button>
					</div>


					<div id="searchWord" class="auto-complete">
						<ul>
							<li><a href="#"><em class="word">사회복지</em> 관련 관리자</a></li>
						</ul>

						<button type="button" class="btn-input-reset">자동완성 닫기</button>
					</div>

					<a href="javascript:f_job_search()" class="button">일자리 검색</a>
				</div>
			<div>
				<input type="hidden" name="_csrf" value="40c07236-ce2a-46f9-b046-8fbf7137e0fa">
			</div>
		</form>

		<div class="link-special">
			<a href="/jobyoung/main.do">청년</a> <a href="/woman/main/main.do">여성</a> <a href="/senior/main/main.do">장년</a>
		</div>
	</div>
</div>

	<nav id="gnb">
		<ul>
			<li><a href="/empInfo/empInfoSrch/list/dtlEmpSrchMain.do" class="menu"><span>채용정보</span></a>
				<div class="sub">
					<dl>
						<dt>채용정보</dt>
						<dd>
							<p>
								<a href="/empInfo/empInfoSrch/list/dtlEmpSrchMain.do">채용정보 홈</a>
							</p>
							<p>
								<a href="/empInfo/empInfoSrch/list/dtlEmpSrchList.do?moreCon=more">채용정보 상세검색</a>
							</p>
							<p>
								<a href="/empInfo/empInfoSrch/calendar/empCalendarMonth.do">채용캘린더</a>
							</p>
							<!-- 2018-11-27 -->
							<!-- 20190807 추가 -->
							<p><a href="/empInfo/empInfoSrch/list/openEmpSpecCalendarList.do?thisMenuId=M201400343">공채 </a></p><!-- 20200212 수정 -->
							<p><a href="/empInfo/indRev/indRevMain.do">4차산업혁명 <img src="/static/images/common/ico/ico-gnb-new.png" class="va-m" alt="new"></a></p>
							<p><a href="/empInfo/empInfoSrch/list/retriveEnEmpSrchList.do">e-채용마당</a></p>
							<p><a href="/empInfo/totBusiInfo/busiSearchList.do">통합기업정보&nbsp;<img src="/static/images/common/ico/ico-gnb-new.png" class="va-m" alt="new"></a></p><!-- 20200408 추가 -->
							<!-- //20190807 추가 -->
						</dd>
					</dl>

					<ul>
						<li><b><a href="/empInfo/empInfoSrch/list/retriveJobsEmpIntroList.do?webIsOut=job">직종별</a></b>
							<ul>
								<li><a href="/empInfo/empInfoSrch/list/dtlEmpSrchList.do?webIsOut=job&amp;occupation=08">건설·채굴직</a></li>
								<li><a href="/empInfo/empInfoSrch/list/dtlEmpSrchList.do?webIsOut=job&amp;occupation=01">경영·사무·금융·보험직</a></li>
								<li><a href="/empInfo/empInfoSrch/list/dtlEmpSrchList.do?webIsOut=job&amp;occupation=03">교육·법률·사회복지·경찰·소방직
										및 군인직</a></li>
								<li><a href="/empInfo/empInfoSrch/list/dtlEmpSrchList.do?webIsOut=job&amp;occupation=13">농림어업직</a></li>
								<li><a href="/empInfo/empInfoSrch/list/dtlEmpSrchList.do?webIsOut=job&amp;occupation=06">미용·여행·숙박·음식·경비·돌봄·청소직</a></li>
								<li><a href="/empInfo/empInfoSrch/list/dtlEmpSrchList.do?webIsOut=job&amp;occupation=04">보건·의료직</a></li>
								<li><a href="javascript:void(0);">설치·정비·생산직</a>
									<ul class="depth2">
										<li><a href="/empInfo/empInfoSrch/list/dtlEmpSrchList.do?webIsOut=job&amp;occupation=09">기계·금속·재료</a></li>
										<li><a href="/empInfo/empInfoSrch/list/dtlEmpSrchList.do?webIsOut=job&amp;occupation=12">인쇄·목재·공예
												및 제조 단순</a></li>
										<li><a href="/empInfo/empInfoSrch/list/dtlEmpSrchList.do?webIsOut=job&amp;occupation=10">전기·전자·정보통신</a></li>
										<li><a href="/empInfo/empInfoSrch/list/dtlEmpSrchList.do?webIsOut=job&amp;occupation=11">화학·환경·섬유·의복·식품가공</a></li>
									</ul></li>
								<li><a href="/empInfo/empInfoSrch/list/dtlEmpSrchList.do?webIsOut=job&amp;occupation=02">연구
										및 공학기술직</a></li>
								<li><a href="/empInfo/empInfoSrch/list/dtlEmpSrchList.do?webIsOut=job&amp;occupation=07">영업·판매·운전·운송직</a></li>
								<li><a href="/empInfo/empInfoSrch/list/dtlEmpSrchList.do?webIsOut=job&amp;occupation=05">예술·디자인·방송·스포츠직</a></li>
							</ul></li>
						<li><b><a href="/empInfo/empInfoSrch/list/retriveWorkRegionEmpIntroList.do">지역별</a></b>
							<ul>
								<li class="group mb10">
									<a href="/empInfo/empInfoSrch/list/dtlEmpSrchList.do?webIsOut=region">전체</a>
									<a href="/empInfo/empInfoSrch/list/dtlEmpSrchList.do?webIsOut=region&amp;region=11000">서울</a>
									<a href="/empInfo/empInfoSrch/list/dtlEmpSrchList.do?webIsOut=region&amp;region=26000">부산</a>
									<a href="/empInfo/empInfoSrch/list/dtlEmpSrchList.do?webIsOut=region&amp;region=28000">인천</a>
									<a href="/empInfo/empInfoSrch/list/dtlEmpSrchList.do?webIsOut=region&amp;region=27000">대구</a><br>
									<a href="/empInfo/empInfoSrch/list/dtlEmpSrchList.do?webIsOut=region&amp;region=30000">대전</a>
									<a href="/empInfo/empInfoSrch/list/dtlEmpSrchList.do?webIsOut=region&amp;region=29000">광주</a>
									<a href="/empInfo/empInfoSrch/list/dtlEmpSrchList.do?webIsOut=region&amp;region=31000">울산</a>
									<a href="/empInfo/empInfoSrch/list/dtlEmpSrchList.do?webIsOut=region&amp;region=36110">세종</a>
									<a href="/empInfo/empInfoSrch/list/dtlEmpSrchList.do?webIsOut=region&amp;region=41000">경기</a><br>
									<a href="/empInfo/empInfoSrch/list/dtlEmpSrchList.do?webIsOut=region&amp;region=44000">충남</a>
									<a href="/empInfo/empInfoSrch/list/dtlEmpSrchList.do?webIsOut=region&amp;region=43000">충북</a>
									<a href="/empInfo/empInfoSrch/list/dtlEmpSrchList.do?webIsOut=region&amp;region=48000">경남</a>
									<a href="/empInfo/empInfoSrch/list/dtlEmpSrchList.do?webIsOut=region&amp;region=47000">경북</a>
									<a href="/empInfo/empInfoSrch/list/dtlEmpSrchList.do?webIsOut=region&amp;region=46000">전남</a><br>
									<a href="/empInfo/empInfoSrch/list/dtlEmpSrchList.do?webIsOut=region&amp;region=45000">전북</a>
									<a href="/empInfo/empInfoSrch/list/dtlEmpSrchList.do?webIsOut=region&amp;region=42000">강원</a>
									<a href="/empInfo/empInfoSrch/list/dtlEmpSrchList.do?webIsOut=region&amp;region=50000">제주</a>
								</li>
								<li>
									<a href="/empInfo/empInfoSrch/list/aroundMeEmpInfoList.do">내주변 채용정보</a>
								</li>
								<li><a href="/empInfo/empInfoSrch/list/worldJobEmpSrchList.do">해외지역(K-Move)</a></li>
								<!--
								<li>
									<br/>
									<div class="a-l">
										<a href="/event/eventContent.do?eventNo=533">
										<img src="/static/images/event/workRenewal/workRenewalBann.png" alt="2020년 새로워진 워크넷 서비스! 20개 경품이 와르르~~ 3월23일(월)~4월24일(수)" />
										</a>
									</div>
									</li>
								 -->
							</ul>
							</li>
							<li><b><a href="/empInfo/themeEmp/themeEmpInfoSrchListForGnb.do">테마별</a></b>

								<div class="bann">
									<img src="/static/images/common/img-gnb-ban.png" alt="">
									<p>
										정책, 지역별로<br>제공되는 다양한<br><em>테마별 채용정보</em>를<br>경험하세요.
										<span class="center"><a href="/empInfo/themeEmp/themeEmpInfoSrchListForGnb.do" class="button s-small round"><img src="/static/images/common/ico/ico-add-copy-sm.png" class="inline-block" alt="">&nbsp;바로가기</a></span>
									</p>
								</div>

						<!-- 	<ul>
								<li><a
									href="/empInfo/empInfoSrch/list/openEmpSpecCalendarList.do?thisMenuId=M201400343">공채기업관</a></li>
								<li><a href="/smallGiants/empInfoSrch/empInfoSrchList.do">청년친화강소기업</a></li>
								<li><a
									href="/smallGiants/empInfoSrch/empInfoSrchList.do?coGbCd=small">강소기업</a></li>
								<li><a href="/empInfo/indRev/indRevMain.do">4차산업혁명 채용관
										<img src="/static/images/common/ico/ico-gnb-new.png" alt="new">
								</a></li>
																		NCS 채용관 오픈 이후 런칭 대상
																		<li><a href="#">NCS 채용관</a></li>
								<li><a
									href="/ilmoa/jobSearch/retrieveIlmoaJobDetailSearchByMain.do">정부지원일자리</a></li>
								<li><a
									href="/empInfo/tsjEmpInfo/retrieveTsjEmpAllSrchList.do">시간선택제
										일자리</a></li>
								<li><a href="/empInfo/subEmpHopeInfo/subEmpHopeSrchList.do">대체인력</a></li>
								<li><a
									href="/empInfo/empInfoSrch/list/retriveEnEmpSrchList.do">e-채용마당</a></li>
								<li><a
									href="/empInfo/themeEmp/themeEmpInfoSrchListForGnb.do">테마별 채용관</a></li>
																		<li><a href="#" class="worknet-chatbot-start-button-for-client">워크넷 챗봇(시범)</a></li>
							</ul>
									<ul class="dir">
										<li><a href="#" class="worknet-chatbot-start-button-for-client">워크넷 챗봇(시범)</a></li>
									</ul>
									 -->
								<!-- <p class="eve_link"><a href="https://www.work.go.kr/event/eventContent.do?eventNo=530">[이벤트] 당신의 구직 테마는?</a></p> 20190903 추가 -->

						</li>
					</ul>
				</div>
			</li>
			<li>
				<a href="/jobMain.do" class="menu"><span>직업·진로</span></a>
				<div class="sub">
					<dl>
						<dt>직업·진로</dt>
						<dd>
							<p>
								<a href="/jobMain.do">직업·진로 홈</a>
							</p>
						</dd>
						<!-- 화상상담 서비스 종료에 따른 주석처리(20210224)
						<dd>
							<p class="imgConslt"><a href="/consltJobCarpa/videoChatting/conslt/videoChattingConslt.do">화상상담 예약</a> <img src="/static/images/common/ico/ico-gnb-new.png" alt="new" style="vertical-align:-2px"></p>
						</dd>
						 -->
					</dl>

					<ul>
						<li><b><a href="/consltJobCarpa/jobPsyExam/jobPsyExamIntro.do">직업심리검사</a></b>
							<ul>
								<li><a href="/consltJobCarpa/jobPsyExam/jobPsyExamIntro.do">직업심리검사 소개</a></li>
								<li><a href="/consltJobCarpa/jobPsyExamNew/jobPsyExamYouthList.do">청소년 심리검사 실시</a></li>
								<li><a href="/consltJobCarpa/jobPsyExamNew/jobPsyExamAdultList.do">성인용 심리검사 실시</a></li>
								<li><a href="/consltJobCarpa/jobPsyExamNew/psyExamRsltList.do">검사결과 보기</a></li>
								<li><a href="/consltJobCarpa/jobPsyExamNew/conslt/jobPsyExamConsltList.do">검사결과 상담</a></li>
								<li><a href="/consltJobCarpa/jobPsyExamNew/conslt/jobPsyExamConsltFaqList.do">검사결과 상담 FAQ</a></li>
							</ul> <b><a href="/consltJobCarpa/srch/jobInfoSrch/srchJobInfo.do">직업정보</a></b>
							<ul>
								<li><a href="/consltJobCarpa/srch/jobInfoSrch/srchJobInfo.do">직업정보 찾기</a></li>
								<li><a href="/consltJobCarpa/srch/korJobProspect/korJobProspectSrchByJobClList.do">한국직업전망</a></li>
								<li><a href="/consltJobCarpa/srch/jobDic/jobDicIntro.do">한국직업사전</a></li>
								<li><a href="/consltJobCarpa/videoInfo/videoInfoList.do?videoType=01&amp;catCd1=01&amp;catCd2=0101">직업 동영상·VR</a></li>
								<li><a href="/consltJobCarpa/srch/meetPerson/meetPerson.do">직업인 인터뷰</a></li>
							</ul>
						</li>
						<li>
							<b><a href="/consltJobCarpa/srch/schdpt/schdptSrch.do">학과정보</a></b>
							<ul>
								<li><a href="/consltJobCarpa/srch/schdpt/schdptSrch.do">학과검색</a></li>
								<li><a href="/consltJobCarpa/jobData/retrieveCareerInfoList.do">전공진로 가이드</a></li>
								<li><a href="/consltJobCarpa/srch/schdpt/dptFaqList.do">학과정보 FAQ</a></li>
								<li><a href="/consltJobCarpa/videoInfo/videoInfoList.do?videoType=10&amp;catCd1=04&amp;catCd2=0401">학과정보동영상</a></li>
							</ul>
								<b><a href="/consltJobCarpa/jobConslt/jobConsltList.do">진로상담</a></b>
							<ul>
								<li><a href="/consltJobCarpa/jobConslt/jobConsltList.do">상담신청</a></li>
								<li><a href="/consltJobCarpa/jobConslt/bestConsltList.do">상담 FAQ</a></li>
							</ul>
							<b><a href="/consltJobCarpa/jobData/retrieveJobInfoReportList.do">자료실</a></b>
							<ul>
								<li><a href="/consltJobCarpa/jobData/retrieveJobInfoReportList.do">직업진로정보서</a></li>
								<li><a href="/consltJobCarpa/jobData/retrieveReseReportList.do">연구보고서</a></li>
							</ul>
						</li>
						<li>
							<b><a href="/empSpt/empGuide/empTrend/resumeSelfIntroGuide.do">취업가이드</a></b>
							<ul>
								<li>
									<a href="/empSpt/empGuide/empTrend/resumeSelfIntroGuide.do">이력서·자기소개서 작성법</a>
								</li>
								<li>
									<a href="/empSpt/empGuide/empTrend/interviewGuide.do">면접전략</a>
								</li>
								<li>
									<a href="/empSpt/empTrend/empTrend.do">채용 트렌드</a>
								</li>
								<li>
									<a href="/empSpt/empBlind/retrieveEmpBlind.do">블라인드 채용</a>
								</li>
								<li>
									<a href="/empSpt/empBlind/retrieveEmpNcs.do">NCS 기반 능력중심 채용</a>

								</li>
								<li><a href="/empSpt/empGuide/empTrend/TargetGuide.do">대상별 취업가이드</a>
								</li>
								<li>
									<a href="/empSpt/empGuide/empTrend/GoalGuide.do">기업별 취업팁 <img src="/static/images/common/ico/ico-gnb-new.png" alt="new"></a>
								</li>
								<li>
									<a href="/empSpt/empGuide/empSptPolicy.do">취업지원정책</a>
								</li>
								<li>
									<a href="/empSpt/empGuide/wiseWorkLife.do">슬기로운 직장생활 <img src="/static/images/common/ico/ico-gnb-new.png" alt="new"></a>
								</li>
								<li>
									<a href="/empSpt/empEtc/pictureEmpTrend.do">그림으로 보는 취업동향</a>
								</li>
								<li>
									<a href="/empSpt/empGuide/selfintroWriteGuide/selfintroWriteGuideViewList.do">직무별 자소서 작성가이드</a>
								</li>
								<li>
									<a href="/empSpt/empSucc/empSuccSubMainList.do">취업성공수기
									<img src="/static/images/common/ico/ico-gnb-new.png" alt="new"></a>
								</li>
								<li>
									<a href="/empSpt/empEtc/enterDocIssueSvc.do">입사서류 발급 안내</a>
								</li>
							</ul>
						</li>
						<li>
							<b><a href="/empSpt/empNews/retrieveEmpNewsList.do">뉴스</a></b>
							<ul>

								<li><a href="/empSpt/exhibit/exhibit/exhibitList.do">공모전</a></li>
								<li><a href="/empSpt/empEvent/retrieveEmpEventList.do">채용행사</a></li>
								<li><a href="/empSpt/empExhibition/retrieveEmpExhibitionList.do">채용박람회</a></li>
							</ul>
							<b><a href="/consltJobCarpa/videoInfo/videoInfoList.do?videoType=06&amp;catCd1=02&amp;catCd2=0203">취업 동영상</a></b>
							<ul>
								<li><a href="/consltJobCarpa/videoInfo/videoInfoList.do?videoType=06&amp;catCd1=02&amp;catCd2=0203">청년층</a></li>
								<li><a href="/consltJobCarpa/videoInfo/videoInfoList.do?videoType=05&amp;catCd1=02&amp;catCd2=0202">경력단절여성</a></li>
								<li><a href="/consltJobCarpa/videoInfo/videoInfoList.do?videoType=04&amp;catCd1=02&amp;catCd2=0201">중장년층</a></li>
							</ul>

						</li>
					</ul>
					<ul class="dir">
						<li><a href="#1" onclick="f_moveUrl('CM')">사이버진로교육센터</a></li>
						<li><a target="_blank" href="/cyberedu/webzine.do">커리어
								Info(웹진)</a></li>
						<li><a target="_blank" href="/cyberedu/cyb/career/contents/main/registerContentsMainView.do">커리어
								엔진</a></li>
					</ul>
				</div></li>
			<li><a href="/empWelfareSrv/recommendSrv/empWelfareSrvMain.do" title="새창" class="menu"><span>고용복지정책</span></a>
				<div class="sub">
					<dl>
						<dt>고용복지정책</dt>
						<dd>
							<p>
								<a href="/empWelfareSrv/recommendSrv/empWelfareSrvMain.do">고용복지정책 홈</a>
							</p>
						</dd>
					</dl>

					<ul>
						<li class="w200px"><b><a href="/empWelfareSrv/recommendSrv/srvEmpPolList.do">고용정책</a></b>
							<ul>
								<li><a href="/empWelfareSrv/recommendSrv/srvEmpPolList.do">고용정책
										찾기</a></li>
								<li><a href="/empWelfareSrv/recommendSrv/consultCalcl.do">고용
										모의계산</a></li>
							</ul> <b><a href="/empWelfareSrv/recommendSrv/searchIndexList.do">복지정책</a></b>
							<ul>
								<li><a href="/empWelfareSrv/recommendSrv/searchIndexList.do">색인별
										서비스 찾기</a></li>
								<li><a href="/empWelfareSrv/recommendSrv/recommendSrvSrchField.do">분류별
										서비스 찾기</a></li>
								<li><a href="/empWelfareSrv/recommendSrv/categoryTitleList.do">나에게
										맞는 서비스 찾기</a></li>
								<li><a href="/empWelfareSrv/recommendSrv/welfareCalcl.do">복지
										모의계산</a></li>
							</ul>
						</li>
						<li style="width:505px"><b><a href="/empSpt/empSptPgm/empSptSubMain.do">구직자취업역량 강화프로그램</a></b>
							<ul class="float-l w220px">
								<li><a href="/empSpt/empSptPgm/empSptSubMain.do">프로그램 소개</a></li>
								<li><a href="/empSpt/empSptPgm/empHope/compare.do">프로그램 비교</a></li>
								<li><a href="/empSpt/empSptPgm/pgmSchdInvite/empSchdInviteCtrList.do">프로그램 일정</a></li>
								<li><a href="/empSpt/empSptPgm/empHope/intro.do">취업희망 프로그램</a></li>
								<li><a href="/empSpt/empSptPgm/happyTmrrwEmpSpt/intro.do">행복내일 취업지원 프로그램</a></li>
								<li><a href="/empSpt/empSptPgm/succ/intro.do">성취 프로그램</a></li>
								<li><a href="/empSpt/empSptPgm/shortTerm/intro.do">취업특강</a></li>
								<li><a href="/empSpt/empSptPgm/grpConslt/intro.do">단기집단상담 프로그램</a></li>
								<li><a href="/empSpt/empSptPgm/empAbility/intro.do">취업능력향상(행복오름) 프로그램 I</a></li>
								<li><a href="/empSpt/empSptPgm/empAbility2/intro.do">취업능력향상(행복오름) 프로그램 II</a></li>
							</ul>
							<ul class="float-l overflow-hidden ml10">

								<li><a href="/empSpt/empSptPgm/oldReemp/intro.do">성장(성공장년) 프로그램</a></li>
								<li><a href="/empSpt/empSptPgm/wmReemp/intro.do">경력단절여성 프로그램</a></li>
								<li><a href="/empSpt/empSptPgm/maritalImmgrnt/intro.do">Wici(결혼이민여성)지원 프로그램</a></li>
								<li><a href="/empSpt/empSptPgm/youngJobGuide/intro.do">청년층직업지도프로그램(CAP+/CAP@)</a></li>
								<li><a href="/empSpt/empSptPgm/youngAbility/intro.do">allA(청년진로역량강화)프로그램</a></li>
								<li><a href="/empSpt/empSptPgm/youngJobCapaPgm/intro.do">청년취업역량 프로그램</a></li>
								<li><a href="/empSpt/empSptPgm/hi/intro.do">Hi(고졸자취업지원) 프로그램</a></li>
								<!-- <li><a href="/empSpt/empSptPgm/youngSporPgm/intro.do">청년지원 프로그램</a></li> 2019.6.17 사용안함-->
								<li><a href="/empSpt/empSptPgm/youngSporPgmSec/intro.do">청년지원 프로그램(예비교육 이외)</a></li>
								<!--
								<li><a href="/jobyoung/jynEmpSptNew/jynEmpSptGuide.do?pageIndex=1&arrSearchData=&sortField=displayRank&setZzimBusiId=&busiId=201512170008&btnSearchTxt=&edubgCheckAll=Y&majorCheckAll=Y&coCheckAll=Y&specCheckAll=Y&onlineApplPossYn=all&empCheckAll=Y"
								target="_blank" title="새창">중소기업탐방프로그램</a></li>
								 -->
								 <li><a href="/empSpt/empSptPgm/empCamp/retriveNoticeSchList.do">일자리희망 프로그램(인별)</a></li>
								 <li><a href="/empSpt/empSptPgm/age40EmpSptAblPgm/intro.do">40대 구직자취업역량강화프로그램(4U<sup>+</sup>)</a></li>
							</ul>
						</li>
						<li class="w200px"><b><a href="/useInfo/empCenterInfo/useEmpIntroList.do">일자리지원기관</a></b>
							<ul>
								<li><a href="/useInfo/empCenterInfo/useEmpIntroList.do">고용복지<sup>+</sup>센터
								</a></li>
								<li><a href="/jobyoung/weSchEmpConsltRoom/weSchEmpConsltRoomSvcInvite.do" target="_blank" title="새창">대학일자리센터</a></li>
								<li><a href="https://saeil.mogef.go.kr/" title="새창열림" target="_blank">여성새로일하기센터 <img src="/static/images/common/ico/ico-gnb-dir.png" alt=""></a></li>
								<li><a href="/senior/chgjbSptSvc/noaSeniorWantedHopeCtr.do" target="_blank" title="새창">중장년일자리희망센터</a></li>
								<li><a href="/shipHopeCenter/intro.do">조선업 희망센터</a></li>
								<li><a href="/useInfo/jobAndDesp/ynJobIntroList.do">직업소개소</a></li>
								<!-- <li><a href="/useInfo/jobAndDesp/despCoInfoList.do">파견업체</a></li> -->
							</ul></li>
					</ul>
					<!-- 2018-11-27 -->
					<!-- 2019.04 중소기업탐방프로그램 이동-->
					<ul class="dir" style="position:static !important;"><!-- 20200701 수정 -->
						<li><a href="/youngtomorrow/emp/internEmpInfoList.do" title="새창" target="_blank">청년내일채움공제</a></li>
						<li><a href="/pkg" title="새창" target="_blank">취업성공패키지</a></li>
						<li><a href="/experi/index.do" title="새창" target="_blank">중소기업탐방프로그램</a></li>
					</ul>
					<!-- // 2018-11-27 -->
					<!-- 20200701 청년디지털일자리사업, 청년일경험지원사업 추가-->
					<ul class="dir" style="position:static !important;">
						<li><a href="/youthjob/intro/dgtjbIntro.do" title="새창" target="_blank">청년디지털일자리사업</a></li>
						<li><a href="/youthjob/intro/expjbIntro.do" title="새창" target="_blank">청년일경험지원사업</a></li>
						<li><a href="/kua/index.do" title="새창" target="_blank">국민취업지원제도</a></li>
					</ul>
					<!-- 20210517 청년도전 지원사업 추가-->
					<ul class="dir" style="position:static !important;">
						<li><a href="/youngChallenge/index.do" title="새창" target="_blank">청년도전지원사업</a></li>
					</ul>
				</div></li>
			<li class=""><a href="/trnCourseMain.do" title="새창" class="menu"><span>훈련정보</span></a>
				<div class="sub" style="">
					<dl>
						<dt>훈련정보</dt>
						<dd>
							<p>
								<a href="/trnCourseMain.do">훈련정보 홈</a>
							</p>
						</dd>
					</dl>

					<ul>
						<li><b><a href="/trnCourseTranin/retrieveTrnCourseTrainSeeker.do">구직자훈련과정</a></b></li>
						<li><b><a href="/trnCourseTranin/retrieveTrnCourseTrainHffc.do">근로자훈련과정</a></b></li>
						<li><b><a href="/trnCourseTranin/retrieveTrnCourseTrainCo.do">기업훈련과정</a></b></li>
					</ul>
				</div></li>
			<li><a href="/psnInfo/psnInfoSrch/dtlPsnSrchMain.do" class="menu"><span>인재정보</span></a>
				<div class="sub">
					<dl>
						<dt>인재정보</dt>
						<dd>
							<p>
								<a href="/psnInfo/psnInfoSrch/dtlPsnSrchMain.do">인재정보
									홈</a>
							</p>
							<p>
								<a href="/psnInfo/psnInfoSrch/dtlPsnSrch.do">인재정보
									상세검색</a>
							</p>
						</dd>
					</dl>

					<ul>
						<li><b><a href="/psnInfo/psnInfoSrch/jobsPsnSrchMain.do">직종별</a></b>
							<ul>
								<li><a href="/psnInfo/psnInfoSrch/dtlPsnSrch.do?webIsOut=job&amp;occupation=08">건설·채굴직</a></li>
								<li><a href="/psnInfo/psnInfoSrch/dtlPsnSrch.do?webIsOut=job&amp;occupation=01">경영·사무·금융·보험직</a></li>
								<li><a href="/psnInfo/psnInfoSrch/dtlPsnSrch.do?webIsOut=job&amp;occupation=03">교육·법률·사회복지·경찰·소방
										및 군인직</a></li>
								<li><a href="/psnInfo/psnInfoSrch/dtlPsnSrch.do?webIsOut=job&amp;occupation=13">농림어업직</a></li>
								<li><a href="/psnInfo/psnInfoSrch/dtlPsnSrch.do?webIsOut=job&amp;occupation=06">미용·여행·숙박·음식·경비·청소직</a></li>
								<li><a href="/psnInfo/psnInfoSrch/dtlPsnSrch.do?webIsOut=job&amp;occupation=04">보건·의료직</a></li>
								<li><a href="javascript:void(0);">설치·정비·생산직</a>
									<ul class="depth2">
										<li><a href="/psnInfo/psnInfoSrch/dtlPsnSrch.do?webIsOut=job&amp;occupation=09">기계·금속·재료</a></li>
										<li><a href="/psnInfo/psnInfoSrch/dtlPsnSrch.do?webIsOut=job&amp;occupation=12">인쇄·목재·공예
												및 제조 단순</a></li>
										<li><a href="/psnInfo/psnInfoSrch/dtlPsnSrch.do?webIsOut=job&amp;occupation=10">전기·전자·정보통신</a></li>
										<li><a href="/psnInfo/psnInfoSrch/dtlPsnSrch.do?webIsOut=job&amp;occupation=11">화학·환경·섬유·의복·식품가공</a></li>
									</ul></li>
								<li><a href="/psnInfo/psnInfoSrch/dtlPsnSrch.do?webIsOut=job&amp;occupation=02">연구
										및 공학기술직</a></li>
								<li><a href="/psnInfo/psnInfoSrch/dtlPsnSrch.do?webIsOut=job&amp;occupation=07">영업·판매·운전·운송직</a></li>
								<li><a href="/psnInfo/psnInfoSrch/dtlPsnSrch.do?webIsOut=job&amp;occupation=05">예술·디자인·방송·스포츠직</a></li>
							</ul></li>
						<li><b><a href="/psnInfo/psnInfoSrch/hopeWorkRegionPsnSrchMain.do">지역별</a></b>
							<ul>
								<li class="group"><a href="/psnInfo/psnInfoSrch/dtlPsnSrch.do">전체</a>
									<a href="/psnInfo/psnInfoSrch/dtlPsnSrch.do?webIsOut=region&amp;region=11000">서울</a>
									<a href="/psnInfo/psnInfoSrch/dtlPsnSrch.do?webIsOut=region&amp;region=26000">부산</a>
									<a href="/psnInfo/psnInfoSrch/dtlPsnSrch.do?webIsOut=region&amp;region=28000">인천</a>
									<a href="/psnInfo/psnInfoSrch/dtlPsnSrch.do?webIsOut=region&amp;region=27000">대구</a><br>
									<a href="/psnInfo/psnInfoSrch/dtlPsnSrch.do?webIsOut=region&amp;region=30000">대전</a>
									<a href="/psnInfo/psnInfoSrch/dtlPsnSrch.do?webIsOut=region&amp;region=29000">광주</a>
									<a href="/psnInfo/psnInfoSrch/dtlPsnSrch.do?webIsOut=region&amp;region=31000">울산</a>
									<a href="/psnInfo/psnInfoSrch/dtlPsnSrch.do?webIsOut=region&amp;region=36110">세종</a>
									<a href="/psnInfo/psnInfoSrch/dtlPsnSrch.do?webIsOut=region&amp;region=41000">경기</a><br>
									<a href="/psnInfo/psnInfoSrch/dtlPsnSrch.do?webIsOut=region&amp;region=44000">충남</a>
									<a href="/psnInfo/psnInfoSrch/dtlPsnSrch.do?webIsOut=region&amp;region=43000">충북</a>
									<a href="/psnInfo/psnInfoSrch/dtlPsnSrch.do?webIsOut=region&amp;region=48000">경남</a>
									<a href="/psnInfo/psnInfoSrch/dtlPsnSrch.do?webIsOut=region&amp;region=47000">경북</a>
									<a href="/psnInfo/psnInfoSrch/dtlPsnSrch.do?webIsOut=region&amp;region=46000">전남</a><br>
									<a href="/psnInfo/psnInfoSrch/dtlPsnSrch.do?webIsOut=region&amp;region=45000">전북</a>
									<a href="/psnInfo/psnInfoSrch/dtlPsnSrch.do?webIsOut=region&amp;region=42000">강원</a>
									<a href="/psnInfo/psnInfoSrch/dtlPsnSrch.do?webIsOut=region&amp;region=50000">제주</a>
								</li>
							</ul></li>
						<li><b><a href="/psnInfo/psnInfoSrch/majorDptPsnSrchMain.do">전공계열별</a></b>
							<b><a href="/psnInfo/psnInfoSrch/dtlPsnSrch.do?pageCode=01">자격증별</a></b>
							<b><a href="/psnInfo/psnInfoSrch/dtlPsnSrch.do?pageCode=02">석박사
									인재정보</a></b> <b><a href="/psnInfo/psnInfoSrch/ovrseasempHopePsnSrch.do">해외취업희망인재</a></b>
							<b><a href="/psnInfo/psnInfoSrch/empHopePool.do">취업희망풀</a></b>
						</li>
						<!-- // 2018-11-27 -->
					</ul>
				</div>
			</li>
		</ul>
	</nav>
</header>
    <!-- 헤더 -->





        <div class="container  bg-gray" id="container">
            <div class="sub-util">
                <div class="inner-wrap">
                    <div class="location">
                        <i class="iconset ico-home">홈</i>
                        <span>마이페이지(개인)</span>
                        <span>회원정보 관리</span>
                        <em>내 정보수정 / 성명변경</em>
                    </div>
                    <script type="text/javascript" defer="defer">
                        function openMyCustomMenu() {
                            var popupHeight = '470';
                            var scr_height = screen.height;
                            var scr_width = screen.width;
                            var pop_height = popupHeight;
                            var pop_width = 800;
                            var pop_top = scr_height / 2 - (pop_height / 2);
                            var pop_left = scr_width / 2 - (pop_width / 2);
                            window.open("/common/popup/PopMyCustomMenu.do", "MyCustomMenu", "width=800,height=" + popupHeight + ",scrollbars=no,resizable=no,left=" + pop_left + ",top=" + pop_top);
                        }
                        $(document).ready(function () {
                            $('.custom-menu').show();
                        });
                    </script>
                    <div class="custom-menu">
                        <div>
                            <a href="#" id="myCustomMenu">나만의 맞춤메뉴(<span>0</span>)</a>
                        </div>
                        <span>
                            <a href="javascript:void(0);" onclick="openMyCustomMenu();" title="새창열림">맞춤메뉴설정</a>
                        </span>
                    </div>
                </div>
            </div>
            <div class="inner-wrap">
                <script type="text/javascript" src="/js/framework/keis.window.js" charset="utf-8"></script>
                <script type="text/javascript" src="/js/framework/keis.cookie.js" charset="utf-8"></script>
                <script type="text/javascript" defer="defer">
                    $(document).ready(function () {
                        var isFind = false;
                        var navi_2 = $('#navi_2')
                            .text()
                            .replace(/^\s+/, "")
                            .replace(/\s+$/, "");
                        var navi_3 = $('#navi_3')
                            .text()
                            .replace(/^\s+/, "")
                            .replace(/\s+$/, "");
                        var location_txt = $('div .location em')
                            .text()
                            .replace(/^\s+/, "")
                            .replace(/\s+$/, "");
                        var a_text = "";
                        var p_text = "";
                        if (location_txt == navi_3) { // LNB depth3 메뉴명 검색
                            $('nav#lnb ul li div.depth3 ul li a').each(function () {
                                $a = $(this);
                                a_text = $a
                                    .text()
                                    .replace(/^\s+/, "")
                                    .replace(/\s+$/, "");
                                // console.log('a_text==>' + a_text);
                                if (a_text == location_txt && ! isFind) {
                                    $p_a = $a
                                        .parent()
                                        .parent()
                                        .parent()
                                        .parent()
                                        .find('a')
                                        .eq(0);
                                    p_text = $p_a
                                        .text()
                                        .replace(/^\s+/, "")
                                        .replace(/\s+$/, "");
                                    // console.log('p_text==>' + p_text);
                                    if (p_text == navi_2 && ! isFind) {
                                        $a.parent().addClass('curr');
                                        isFind = true;
                                    }
                                }
                            });
                        } else if (location_txt == navi_2) {
                            $('nav#lnb ul li a').each(function () {
                                $a = $(this);
                                a_text = $a
                                    .text()
                                    .replace(/^\s+/, "")
                                    .replace(/\s+$/, "");
                                if (a_text == location_txt && ! isFind) {
                                    $a.parent().addClass('curr');
                                    isFind = true;
                                }
                            });
                        }
                    });
                    // 기업 마이페이지 > 구인신청서 등록 레이어팝업 분기
                    function choiceWantedList(tag) {
                        $.ajax({
                            type: 'GET',
                            url: '/coMemberSrv/wantedInfoAdmin/checkConditionAjax.do',
                            error: function (request, status, error) {
                                alert("오류가 발생했습니다. : " + error);
                            },
                            success: function (result) {
                                if (result == 'Y') {
                                    var option = {
                                        left: '235px',
                                        top: '-71px',
                                        width: '600px'
                                    };
                                    keis.window.newLayer('/coMemberSrv/wantedInfoAdmin/notile/choiceWantedList.do', '#wanted-admin-apply', option)
                                } else {
                                    location.href = "/coMemberSrv/wantedInfoAdmin/registerWantedAdminApplyForm.do"
                                }
                            }
                        });
                    }
                </script>


<div class="inner">
	<nav id="lnb">
	<!-- S : 2018-09-28 추가 -->
	<p class="tit"><a href="/indivMemberSrv/main/indivMemberSrvMain.do">마이페이지</a></p>
	<!-- E : 2018-09-28 추가 -->
	<ul>
		<li>
			<a href="/indivMemberSrv/seekApplyAdmin/resumeMng/resumeMngMain.do" target="_self">이력서관리·구직신청</a>
			<button class="btn-show">이력서관리·구직신청 메뉴 닫기</button>
			<div class="depth3">
				<ul>
					<li>
						<a href="/indivMemberSrv/seekApplyAdmin/resumeMng/retrieveResumeRegTp.do" target="_self">이력서 등록</a>
					</li>
					<li>
						<a href="/indivMemberSrv/seekApplyAdmin/resumeMng/retrieveSelfIntroRegIntro.do" target="_self">자기소개서 등록</a>
					</li>
					<li>
						<a href="/indivMemberSrv/seekApplyAdmin/resumeMng/resumeSelfIntroMng.do" target="_self">이력서·자기소개서 관리</a>
					</li>
					<li>
						<a href="/indivMemberSrv/seekApplyAdmin/resumeMng/resumeAtchFileMngList.do" target="_self">첨부파일 관리</a>
					</li>
					<li>
						<a href="/indivMemberSrv/seekApplyAdmin/resumeMng/resumeMngMain.do" target="_self">워크넷 구직신청 </a>
					</li>
				</ul>
			</div>
		</li>
		<li>
			<a href="/indivMemberSrv/aplentMng/aplentHist/emailAplentHistList.do" target="_self">입사지원 관리</a>
			<button class="btn-show">입사지원 관리 메뉴 닫기</button>
			<div class="depth3">
				<ul>
					<li>
						<a href="/indivMemberSrv/aplentMng/aplentHist/emailAplentHistList.do" target="_self">알선/입사지원 내역</a>
					</li>
					<li>
						<a href="/indivMemberSrv/aplentMng/seekActvHist/seekActvHistList.do" target="_self">구직활동내역</a>
					</li>
					<li>
						<a href="/indivMemberSrv/aplentMng/offerCo/offerCoList.do" target="_self">입사제안/스크랩한 기업</a>
					</li>
					<li>
						<a href="/indivMemberSrv/seekApplyAdmin/resumeMng/resumeReadList.do" target="_self">이력서 열람기업</a>
					</li>
					<li>
						<a href="/indivMemberSrv/intrstInfo/mailToEmpList.do" target="_self">채용담당자와 한마디</a>
					</li>
				</ul>
			</div>
		</li>
		<li>
			<a href="/indivMemberSrv/custmadeInfoMng/custmadeInfoList.do" target="_self">나의 맞춤정보</a>
			<button class="btn-show">나의 맞춤정보 메뉴 닫기</button>
			<div class="depth3">
				<ul>
					<li>
						<a href="/indivMemberSrv/custmadeInfoMng/custmadeInfoList.do" target="_self">맞춤채용 관리</a>
					</li>
					<li>
						<a href="/indivMemberSrv/theWork/retrieveTheWorkInfo.do" target="_self">The Work AI추천</a>
					</li>
					<li>
					<a href="#openPopup" onclick="try { latte.getEvent(event).stop(); } catch (ex) {}; keis.window.newWindow('/empInfo/customWorkSupportSrv/custSupportMain.do?loginAction=Y', 'pop', 1010, 780, 'yes'); return false;" target="_blank" title="새창">취업나침반</a>
						<script type="text/javascript">
							window.name = "mdmOpener";
						</script>
					</li>
				</ul>
			</div>
		</li>
		<li>
			<a href="/indivMemberSrv/intrstInfo/myBookmkEmpInfoList.do" target="_self">나의 관심정보</a>
			<button class="btn-show">나의 관심정보 메뉴 닫기</button>
			<div class="depth3"><ul>
					<li>
						<a href="/indivMemberSrv/intrstInfo/myBookmkEmpInfoList.do" target="_self">관심스크랩(찜)</a>
					</li>
					<li>
						<a href="/indivMemberSrv/intrstInfo/seekEmpInfoSrchHist.do?srchType=3" target="_self">최근 본 채용공고</a>
					</li>
					<li>
						<a href="/empInfo/empInfoSrch/calendar/myCalendarMonth.do" target="_blank">마이캘린더</a>
					</li>
				</ul>
			</div>
		</li>
		<li>
			<a href="/empAgencySvc/wApApplication/wApApplicationList.do" target="_self">e-채용마당 서비스</a>
			<button class="btn-show">e-채용마당 서비스 메뉴 닫기</button>
			<div class="depth3">
				<ul>
					<li>
						<a href="/empAgencySvc/wApApplication/wApApplicationList.do" target="_self">지원서관리</a>
					</li>
					<li>
						<a href="/eas/indivMemberSrv/employNotice/wNoInterest.do" target="_self">관심정보관리</a>
					</li>
					<li>
						<a href="/eas/indivMemberSrv/employJudge/employJudgeList.do" target="_self">심사평가관리</a>
					</li>
					<li>
						<a href="/empAgencySvc/empBoard/wBuBoardList.do" target="_self">채용게시판</a>
					</li>
				</ul>
			</div>
		</li>
		<li>
			<a href="/indivMemberSrv/intrstInfo/joinResult.do" target="_self">온라인 신청관리</a>
		</li>
		<li>
			<a href="/indivMemberSrv/myCustmadeSrvList.do" target="_self">
				고용복지 맞춤서비스
			</a>
		</li>
		<li>
			<a href="/indivMemberSrv/custInfoAdmin/retrieveIndivCustInfo.do" target="_self">회원정보 관리</a>
			<button class="btn-show">회원정보 관리 메뉴 닫기</button>
			<div class="depth3">
				<ul>
					<li class="curr">
						<a href="/indivMemberSrv/custInfoAdmin/retrieveIndivCustInfo.do" target="_self">회원정보 조회</a>
					</li>
					<li>
						<a href="mypageUpdate.do" target="_self">회원정보 수정(성명변경)</a>
					</li>
					<li>
						<a href="/indivMemberSrv/custInfoAdmin/modifyIndivCustPwdView.do" target="_self">비밀번호 변경</a>
					</li>
					<li>
						<a href="memberDelete.do" target="_self">회원탈퇴</a>
					</li>
				</ul>
			</div>
		</li>
	</ul>
</nav>


<!--  -->


<div class="all">

<br>

 <!-- =========Login 클릭 시 Modal =========== -->
      <div id="login-modal" tabindex="-1" role="dialog" aria-labelledby="login-modalLabel" aria-hidden="true" class="modal fade">
        <div role="document" class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h4 id="login-modalLabel" class="modal-title">1hara Login</h4>
              <button type="button" data-dismiss="modal" aria-label="Close" class="close"><span aria-hidden="true"></span>x</button>
            </div>
            <div class="modal-body">

            <!-- memberController - loginAf.do로 이동 -->
              <form action="member" method="post">
                 <input type="hidden" name="param" value="loginAf.do">
                <div class="form-group">
                  <input id="email_modal" type="text" placeholder="ID" name="id" class="form-control">
                </div>
                <div class="form-group">
                  <input id="password_modal" type="password" name="pwd" placeholder="password" class="form-control">
                </div>
                <p class="text-center">
                  <button class="btn btn-template-outlined"><i class="fa fa-sign-in"></i> Login</button>
                </p>
              </form>


              <p class="text-center text-muted">아직 회원가입을 안하셨나요?</p>
              <p class="text-center text-muted"><a href="regiclick.do"><strong>가입하기</strong></a> 백수를 탈출합시다!</p>
            </div>
          </div>
        </div>
      </div>

<!-- =======Login 클릭 시 Modal END =========-->



<!-- 본문 -->


<div class="inner-wrap">




<script type="text/javascript" src="/js/framework/keis.window.js" charset="utf-8"></script>
<script type="text/javascript" src="/js/framework/keis.cookie.js" charset="utf-8"></script>


<script type="text/javascript" defer="defer">

$(document).ready( function() {

	var isFind = false;
	var navi_2 = $('#navi_2').text().replace(/^\s+/,"").replace(/\s+$/,"");
	var navi_3 = $('#navi_3').text().replace(/^\s+/,"").replace(/\s+$/,"");
	var location_txt = $('div .location em').text().replace(/^\s+/,"").replace(/\s+$/,"");
	var a_text = "";
	var p_text = "";

	if(location_txt==navi_3) {
		//LNB depth3 메뉴명 검색
		$('nav#lnb ul li div.depth3 ul li a').each(function() {
			$a  = $(this);
			a_text = $a.text().replace(/^\s+/,"").replace(/\s+$/,"");
// 			console.log('a_text==>' + a_text);
			if(a_text== location_txt  && !isFind) {
				$p_a = $a.parent().parent().parent().parent().find('a').eq(0);
				p_text = $p_a.text().replace(/^\s+/,"").replace(/\s+$/,"");
// 				console.log('p_text==>' + p_text);
				if(p_text==navi_2 && !isFind) {
					$a.parent().addClass('curr');
					isFind = true;
				}
			}
		});
	} else if(location_txt==navi_2) {
		$('nav#lnb ul li a').each(function() {
			$a  = $(this);
			a_text = $a.text().replace(/^\s+/,"").replace(/\s+$/,"");
			if(a_text== location_txt && !isFind) {
				$a.parent().addClass('curr');
				isFind = true;
			}
		});
	}
});
//기업 마이페이지 > 구인신청서 등록 레이어팝업 분기
function choiceWantedList(tag){
	$.ajax({
		type: 'GET',
		url: '/coMemberSrv/wantedInfoAdmin/checkConditionAjax.do',
		error: function(request, status, error){
			alert("오류가 발생했습니다. : " + error);
		},
		success: function(result) {
			if(result =='Y'){
				var option = {left:'235px',top:'-71px',width:'600px'};
				keis.window.newLayer('/coMemberSrv/wantedInfoAdmin/notile/choiceWantedList.do','#wanted-admin-apply',option)
			}else{
				location.href = "/coMemberSrv/wantedInfoAdmin/registerWantedAdminApplyForm.do"
			}
		}
	});
}
</script>



<script language="javascript" type="text/javascript">

var hp1 = "010";
var email = "cors***";
var topOrgcd = "15000";
var orgcd = "15011";


// 공지사항
var playType = true;
var empBoard = new Array();

	empBoard.push("<li><a href=\"/ntNewsData/ntMatter/retrieveNtMatterDtl.do?boardNo=3&amp;writeNo=23667\" onfocus=\"empBoardPlayType('stop');\" onblur=\"empBoardPlayType('start');\" onmouseover=\"empBoardPlayType('stop');\" onmouseout=\"empBoardPlayType('start')\" >[작업안내] 워크넷 검색서비스 작업 안내</a></li>");

	empBoard.push("<li><a href=\"/ntNewsData/ntMatter/retrieveNtMatterDtl.do?boardNo=3&amp;writeNo=23589\" onfocus=\"empBoardPlayType('stop');\" onblur=\"empBoardPlayType('start');\" onmouseover=\"empBoardPlayType('stop');\" onmouseout=\"empBoardPlayType('start')\" >2021년도 민간고용서비스 우수기관 인증제 사업 시행공고</a></li>");

	empBoard.push("<li><a href=\"/ntNewsData/ntMatter/retrieveNtMatterDtl.do?boardNo=3&amp;writeNo=23584\" onfocus=\"empBoardPlayType('stop');\" onblur=\"empBoardPlayType('start');\" onmouseover=\"empBoardPlayType('stop');\" onmouseout=\"empBoardPlayType('start')\" >전문 승강기엔지니어 인력양성 교육생 모집</a></li>");

	empBoard.push("<li><a href=\"/ntNewsData/ntMatter/retrieveNtMatterDtl.do?boardNo=3&amp;writeNo=23552\" onfocus=\"empBoardPlayType('stop');\" onblur=\"empBoardPlayType('start');\" onmouseover=\"empBoardPlayType('stop');\" onmouseout=\"empBoardPlayType('start')\" >2021년 워크넷 콘텐츠 모니터링단 모집 공고</a></li>");

	empBoard.push("<li><a href=\"/ntNewsData/ntMatter/retrieveNtMatterDtl.do?boardNo=3&amp;writeNo=23551\" onfocus=\"empBoardPlayType('stop');\" onblur=\"empBoardPlayType('start');\" onmouseover=\"empBoardPlayType('stop');\" onmouseout=\"empBoardPlayType('start')\" >2021년도 민간고용서비스 우수기관 인증제 사업 시행공고</a></li>");

	empBoard.push("<li><a href=\"/ntNewsData/ntMatter/retrieveNtMatterDtl.do?boardNo=3&amp;writeNo=23533\" onfocus=\"empBoardPlayType('stop');\" onblur=\"empBoardPlayType('start');\" onmouseover=\"empBoardPlayType('stop');\" onmouseout=\"empBoardPlayType('start')\" >워크넷 인공지능 서비스, TheWork Ai 베타테스터 모집</a></li>");


var empBoardVar = setInterval(function() { empBoardStart(); }, 3000);

var boardCnt = 0;
var totEmpBoardCnt = empBoard.length;

// 공지사항 출력
function empBoardStart() {

	var forChk = 0;
	if(totEmpBoardCnt >= 2){

		if(playType == true){

			$("#boardDiv").find("ul").empty();
			for (boardCnt; boardCnt <= totEmpBoardCnt; boardCnt++) {

				if (boardCnt >= totEmpBoardCnt) boardCnt = 0;
				if (forChk >= 2) return;

				$("#boardDiv").find("ul").append(empBoard[boardCnt]);
				forChk++;
			}
		}
	}
}

function empBoardPlayType(objType){
	if(objType == "stop"){
		playType = false;
	} else {
		playType = true;
	}
}


//faq 목록 ajax
function f_faxInfoListAjax(){
	var faxInfoListAjax = new keis.ajax("/indivMemberSrv/main/faxInfoListAjax.do", "GET", "json");
	faxInfoListAjax.send('f_faxInfoList');
}

//faq 목록 ajax 결과 출력
function f_faxInfoList(resultObj){

	var targetObj = $("#faxDiv").find("ul");
	var stringObj = "";
	if(resultObj.ajaxResult.length > 0){
		for(var i = 0; i < resultObj.ajaxResult.length; i++){
			var item = resultObj.ajaxResult[i];

			stringObj += "<li>";
				stringObj += "<a href=\"/custCenter/faqBoard/faqDetail.do?seq="+ item.seq +"&amp;faqType=ind\" class=\"ellipsis\">"+ item.title +"</a>";
			stringObj += "</li>";
		}
	}
	targetObj.append(stringObj);
}

//취업지원프로그램 청별 고용센터 조회
function f_requestOrgcdList(topOrgcd) {

// 	회원 취업지원프로그램 고용청으로 변경
	$("select[name=topOrgcd] option").each(function (i) {
		if($(this).val() == topOrgcd){
			$(this).attr("selected", "true");
		}
	});

	if(topOrgcd == ''){
		$("#orgCd").html("");
		$("#orgCd").append("<option value='' >고용센터 선택</option>" );
	} else {
		var comboAjax = new keis.ajax("/empSpt/empSptPgm/pgmSchdInvite/retrieveOrgCdAjaxList.do", "GET", "json");
		comboAjax.addParam('topOrgCd', topOrgcd);
		comboAjax.send('f_responseOrgList');
	}

}


// 청별 고용센터 option box 구성
function f_responseOrgList(resultObj){

	var frm = document.frm;
	// 센터를 선택하지 않을 경우 취업지원프로그램 일정안내 목록으로
	$("#tabUrl2").attr("href", "/empSpt/empSptPgm/pgmSchdInvite/empSchdInviteCtrList.do");

	$("#orgCd").html("");
	$("#orgCd").append("<option value=''>고용센터 선택</option>" );
	for(var i=0 ; i < resultObj.ajaxResult.length ; i++) {
		if(resultObj.ajaxResult[i].orgCd == orgcd){
			$("#orgCd").append("<option value='"+ resultObj.ajaxResult[i].orgCd+"' selected=\"selected\" >"+ resultObj.ajaxResult[i].orgNm  +"</option>" );
			$("#tabUrl2").attr("href", "/empSpt/empSptPgm/pgmSchdInvite/empSchdInviteCtrList.do?orgCd=" + resultObj.ajaxResult[i].orgCd + "&amp;pgmId=A08,A17");
			f_empPgmSrch("N");
		}else {
			$("#orgCd").append("<option value='"+ resultObj.ajaxResult[i].orgCd+"'>"+ resultObj.ajaxResult[i].orgNm  +"</option>" );
		}
	}


}


//고용센터 지원프로그램 ajax 조회
function f_empPgmSrch(srchType){

	/* 이장미대리 요청 2019.01.18
	if($("#topOrgcd option:selected").val() == "") {
		alert("관할 청을 선택하세요.");
		$("#topOrgcd").focus();
		return false;
	}
	 */
	var frm = document.frm;
	var selectObj = document.getElementById("orgCd");
	var selValue  = "";

	if(srchType == "N"){
		selValue = orgcd;
	} else {
		selValue = selectObj.options[selectObj.selectedIndex].value;
	}

	if(srchType == "Y" ){
		$("#tabUrl2").attr("href", "/empSpt/empSptPgm/pgmSchdInvite/empPgmSchdInviteList.do?orgCd=" + selValue + "&amp;pgmId=A08,A17");
	}

	if(selValue == "" || selValue == null){
		alert("고용센터를 선택하세요.");
		selectObj.focus();
		return false;

	} else {
		var empPgmListAjax = new keis.ajax("/indivMemberSrv/main/empPgmListAjax.do", "GET", "json");
		empPgmListAjax.addParam('orgCd', selValue);
		empPgmListAjax.send('f_empPgmList');
	}
}

// 취업지원프로그램 목록출력
function f_empPgmList(resultObj){


	var targetObj = $("#tabList2");
	var stringObj = "";
	var toDay = "";

	$("#tabList2").html("");


	if (resultObj.ajaxResult.length > 0) {


			stringObj += "<ul>";
			for (var i = 0; i < resultObj.ajaxResult.length; i++) {

				var pgmStdt =  resultObj.ajaxResult[i].pgmStdt.replace(/-/g,'.').substring(5,12);
				var pgmEndt =  resultObj.ajaxResult[i].pgmEndt.replace(/-/g,'.').substring(5,12);

				stringObj += "<li><div class='ellipsis w250px'>["+ resultObj.ajaxResult[i].pgmSubNm + "]</div>";
				stringObj += "<span>"+pgmStdt+" ~ "+pgmEndt;
				stringObj += " (" + resultObj.ajaxResult[i].operationHour + "H) ";

				if (resultObj.ajaxResult[i] >= toDay) {
					if (resultObj.ajaxResult[i].openClose == 'POSSIBLE') {
						stringObj += "<a href=\"javascript:void(0)\" class=\"ico-state s-small gray\" onclick=\"f_callPgm('"
								+ resultObj.ajaxResult[i].pgmId + "', '"
								+ resultObj.ajaxResult[i].orgCd + "', '"
								+ resultObj.ajaxResult[i].orgNm + "', '"
								+ resultObj.ajaxResult[i].year + "', '" + resultObj.ajaxResult[i].seq
								+ "', '" + resultObj.ajaxResult[i].termpr + "', '"
								+ resultObj.ajaxResult[i].psncnt + "', '"
								+ resultObj.ajaxResult[i].closedt + "', '"
								+ resultObj.ajaxResult[i].openTime + "');\">";
						stringObj += "신청</a>";
					} else if (resultObj.ajaxResult[i].openClose == 'CLOSE') {
						stringObj += "<i class=\"ico-state s-small gray\">마감</i>";
					}
				} else {
					stringObj += "<i class=\"ico-state s-small gray\">종료</i>";
				}
				stringObj += "</span>";
				stringObj += "</li>";
			}
		} else {
			stringObj += "<li><div class=\"a-c\">검색 결과가 없습니다.</div></li>";
		}

		stringObj += "</ul>";

		targetObj.append(stringObj);
	}

	// 취업지원프로그램 지원화면 이동
	function f_callPgm(pgmId, orgcd, orgnm, year, seq, termpr, psncnt, closedt,
			openTime) {

		var frm = document.frm;

		frm.PGM_ID.value = pgmId;
		frm.ORGCD.value = orgcd;
		frm.ORGNM.value = orgnm;
		frm.year.value = year;
		frm.seq.value = seq;
		frm.termPr.value = termpr.replace(/-/g,'.');
		frm.psncnt.value = psncnt;
		frm.closedt.value = closedt.replace(/-/g,'').substring(0,8);
		frm.openTime.value = openTime;

		frm.target = "_self";
		frm.method = "post";
		frm.action = "/empSpt/empSptPgm/include/joinApply.do";
		frm.submit();
	}

	//채용행사 조회시
	function f_arearSrch() {
		var selectObj = document.getElementById("selectAreaList");
		$("#tabUrl1").attr("href", "/empSpt/empEvent/retrieveEmpEventList.do?selectAreaList="+ selectObj.options[selectObj.selectedIndex].value);
		var areaListAjax = new keis.ajax("/indivMemberSrv/main/areaListAjax.do", "GET","json");
		areaListAjax.addParam('selectAreaList', selectObj.options[selectObj.selectedIndex].value);
		areaListAjax.send('f_areaList');
	}

	// 채용행사 ajax 처리
	function f_areaList(resultObj) {

		var targetObj = $("#tabList1");
		var stringObj = "";

		targetObj.html("");

		stringObj += "<ul>";

		if (resultObj.ajaxResult.length > 0) {
			for (var i = 0; i < resultObj.ajaxResult.length; i++) {
				stringObj += "<li>";
				stringObj += "<a class=\"ellipsis\" href=\"/empSpt/empEvent/retrieveEmpEventDtl.do?eventMegaRegionCd="
						+ resultObj.ajaxResult[i].etc3
						+ "&amp;newsDataSeqno="
						+ resultObj.ajaxResult[i].pk1
						+ "\">"
						+ resultObj.ajaxResult[i].title + "</a>";
				stringObj += "<span>" + resultObj.ajaxResult[i].eventStdt.replace(/-/g,'.').substring(5,12) + " ~ " + resultObj.ajaxResult[i].eventEnddt.replace(/-/g,'.').substring(5,12) + "</span>";
				stringObj += "</li>";
			}
		} else {
			stringObj += "<li class=\"a-c\">검색 결과가 없습니다.</li>";
		}

		stringObj += "</ul>";

		targetObj.append(stringObj);
	}

	function open_pop(exdt, tclass, media, process, psyExamNo) {

		var agent = navigator.userAgent.toLowerCase();
		var args;
		var popForm = document.popForm;

		if (process != '1') {
			alert('결과를 조회할 수 없습니다.');
			return;
		}

		n_left = (screen.width - 780) / 2;
		args = "left="
				+ n_left
				+ ", top=0, toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=yes, resizable=yes, width=785, height="
				+ (screen.height - 50) + "";
		args_U = "left="
				+ n_left
				+ ", top=0, toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=yes, resizable=yes, width=1024, height="
				+ (screen.height - 50) + "";
		document.getElementById('h_ex_date').value = exdt;

		if (tclass == "U" || tclass == "D") {
			args = "left="
					+ n_left
					+ ", top=0, toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=yes, resizable=yes, width=770, height="
					+ 350 + "";
			args_U = "left="
					+ n_left
					+ ", top=0, toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=yes, resizable=yes, width=770, height="
					+ 350 + "";
		}

		window.open('', 'popForm', args);

		if (popForm.email.value != "" && popForm.email.value != null) {
			popForm.psexmdType.value = "guest";
		}

		popForm.h_ex_date.value = exdt;
		popForm.testClass.value = tclass;
		popForm.psyExamNo.value = psyExamNo;
		popForm.target = "popForm";
		popForm.method = "post";
		popForm.submit();

		return false;
	}

	function popup_open(url, wid, hei) {

		var agent = navigator.userAgent.toLowerCase();
		var wid = wid;
		var hei = hei;
		var args;
		var w;

		if (url == '/consltJobCarpa/jobPsyExam/popup/youth/popupPsyTest02_ST.do'
				|| url == '/consltJobCarpa/jobPsyExam/popup/youth/popupPsyTest14_ST.do'
				|| url == '/consltJobCarpa/jobPsyExam/popup/adult/popupPsyTest15_ST.do'
				|| url == '/consltJobCarpa/jobPsyExam/popup/youth/popupPsyTest16_ST.do'
				|| url == '/consltJobCarpa/jobPsyExam/popup/youth/popupPsyTest17_ST.do'
				|| url == '/consltJobCarpa/jobPsyExam/popup/youth/popupPsyTest18_ST.do'
				|| url == '/consltJobCarpa/jobPsyExam/popup/youth/popupPsyTest19_1.do'
				|| url == '/consltJobCarpa/jobPsyExam/popup/youth/popupPsyTest23_ST.do'
				|| url == '/consltJobCarpa/jobPsyExam/popup/youth/popupPsyTest24_ST.do') {
			if (agent.indexOf("msie 7") > -1) {

			} else if (agent.indexOf("msie") > -1) {
				hei = hei + 10;
				wid = wid + 10;
			}
		}

		var n_left = (screen.width - 755) / 2;

		if (url == '/consltJobCarpa/jobPsyExam/popup/youth/popupPsyTest02_ST.do'
				|| url == '/consltJobCarpa/jobPsyExam/popup/youth/popupPsyTest14_ST.do'
				|| url == '/consltJobCarpa/jobPsyExam/popup/adult/popupPsyTest15_ST.do'
				|| url == '/consltJobCarpa/jobPsyExam/popup/youth/popupPsyTest16_ST.do'
				|| url == '/consltJobCarpa/jobPsyExam/popup/youth/popupPsyTest17_ST.do'
				|| url == '/consltJobCarpa/jobPsyExam/popup/youth/popupPsyTest18_ST.do'
				|| url == '/consltJobCarpa/jobPsyExam/popup/youth/popupPsyTest19_1.do'
				|| url == '/consltJobCarpa/jobPsyExam/popup/youth/popupPsyTest23_ST.do'
				|| url == '/consltJobCarpa/jobPsyExam/popup/youth/popupPsyTest24_ST.do') {

			var winl = (screen.width - wid) / 2;
			var wint = (screen.height - hei) / 2;

			args = "left="
					+ winl
					+ ", top=0, toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=no, resizable=yes, width="
					+ wid + ", height=" + hei + "";

		} else {
			args = "left="
					+ n_left
					+ ", top=0, toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=no, resizable=yes, width="
					+ wid + ", height=" + hei + "";
		}

		w = window.open(url, "", args);
		w.focus();
	}

	// sms 수신
	function f_smsRcv(){
		$("#balloon-msg2").hide();

		if($("#balloon-msg1").css("display") == "none"){
			$("#balloon-msg1").show();
		} else {
			$("#balloon-msg1").hide();
		}
	}

	//sms 수신 상태 변경
	function f_smsRcvYn(objNm, objVal){

		var smsChk = true;
		if((hp1 == "" || hp1 == null) && objVal == "Y" ){
			smsChk = false;
			if(confirm("등록된 핸드폰 번호가 없습니다.\n수정 화면으로 가시겠습니까?")){
				var frm = document.frm;
				frm.action = "/indivMemberSrv/custInfoAdmin/modifyIndivCustInfoView.do";
				frm.submit();
			}
		}

		var intrstCnt = "0";
		if(intrstCnt == '0' && objNm == "intrstSmsYn" && objVal == "Y" ){
			smsChk = false;
			if(confirm("관심기업 채용정보 없습니다..\n관심기업관리 화면으로 가시겠습니까?")){
				var frm = document.frm;
				frm.action = "/indivMemberSrv/intrstInfo/intrstCoMngList.do";
				frm.submit();
			}
		}

		if(smsChk == false){
			if(objVal == "Y"){
		 		$("#"+objNm+"1").attr("checked", false);
		 		$("#"+objNm+"2").attr("checked", true);
			} else {
				$("#"+objNm+"1").attr("checked", true);
				$("#"+objNm+"2").attr("checked", false);
			}
			return false;
		}

		var smsRcvYnAjax = new keis.ajax("/indivMemberSrv/main/smsRcvYnAjax.do", "GET", "text");

		smsRcvYnAjax.addParam('chgType'		, objNm);
		smsRcvYnAjax.addParam('chgYn'		, objVal);
		smsRcvYnAjax.send('f_smsRcvYnChg');

	}

	function f_smsRcvYnChg(){
		var chk1 = $(':radio[name="smsRcvYn"]:checked').val();
		var chk2 = $(':radio[name="intrstSmsYn"]:checked').val();
		if( chk1 == "Y" && chk2 == "Y"){
			$("#sms_rcv_state").text("수신");
			$("#sms_rcv_state").removeClass("orange");
			$("#sms_rcv_state").addClass("blue");
		} else if(chk1 == "N" && chk2 == "N" ){
			$("#sms_rcv_state").text("미수신");
			$("#sms_rcv_state").removeClass("blue");
			$("#sms_rcv_state").addClass("orange");
		} else {
			$("#sms_rcv_state").text("일부수신");
			$("#sms_rcv_state").removeClass("blue");
			$("#sms_rcv_state").addClass("orange");
		}
	}

	// email 수신
	function f_emailRcv(){

		$("#balloon-msg1").hide();

		if($("#balloon-msg2").css("display") == "none"){
			$("#balloon-msg2").show();
		} else {
			$("#balloon-msg2").hide();
		}
	}

	// email 수신 상태 변경
	function f_mailRcvYn(objNm, objVal){

		var frm = document.frm;
		var mailChk = true;
		if((email == "" || email == null) && objVal == "Y"){
			mailChk = false;
			if(confirm("등록된 이메일 정보가 없습니다.\n수정 화면으로 이동하시겠습니까?")){
				frm.action = "/indivMemberSrv/custInfoAdmin/modifyIndivCustInfoView.do";
				frm.submit();
			}
		}

		//이력서가 등록되어 있지 않은 경우


		// 맞춤형 채용정보가 등록 안되어 있는 경우
		var custmadeSeqNo = '';
		if(objNm == "custMadeMailYn" && custmadeSeqNo == "" && objVal == "Y"){
			mailChk = false;
			if(confirm("맞춤형 채용정보 기본설정이 되어있지 않습니다.\n맞춤채용정보 설정 화면으로 이동하시겠습니까?")){
				frm.action = "/indivMemberSrv/custmadeInfoMng/custmadeInfoList.do";
				frm.submit();
			}
		}

		if(mailChk == false){
			if(objVal == "Y"){
		 		$("#"+objNm+"1").attr("checked", false);
		 		$("#"+objNm+"2").attr("checked", true);
			} else {
				$("#"+objNm+"1").attr("checked", true);
				$("#"+objNm+"2").attr("checked", false);
			}
			return false;
		}

		var emailRcvYnAjax = new keis.ajax("/indivMemberSrv/main/emailRcvYnAjax.do", "GET", "text");

		emailRcvYnAjax.addParam('chgType'		, objNm);
		emailRcvYnAjax.addParam('chgYn'			, objVal);
		emailRcvYnAjax.send('f_mailRcvYnChg');

	}

	function f_mailRcvYnChg(){
		var chk1 = $(':radio[name="mailsvcRcvYn"]:checked').val();
		var chk2 = $(':radio[name="workMailsvcRcvYn"]:checked').val();
		var chk3 = $(':radio[name="custMadeMailYn"]:checked').val();

		if( chk1 == "Y" && chk2 == "Y" && chk3 == "Y"){
			$("#email_rcv_state").text("수신");
			$("#email_rcv_state").removeClass("orange");
			$("#email_rcv_state").addClass("blue");
		} else if( chk1 == "N" && chk2 == "N" && chk3 == "N"){
			$("#email_rcv_state").text("미수신");
			$("#email_rcv_state").removeClass("blue");
			$("#email_rcv_state").addClass("orange");
		} else {
			$("#email_rcv_state").text("일부수신");
			$("#email_rcv_state").removeClass("blue");
			$("#email_rcv_state").addClass("orange");
		}
	}


	// 2년재동의 팝업호출
	function f_custInfoAgreeGuideViewPopUp() {
		keis.window.newWindow("/member/popup/custInfoAgreeView.do", "PopInfoAgreeGuide", 868, 723, 'yes');
	}

	// 특별고용촉진 지원대상 확인을 위한 이직 관련 확인서 출력
	function f_reportSpecialEmployment(seekCustNo){

		if (seekCustNo.value == ''){
			alert('구직회원번호가 유효하지 않습니다 .');
			return;
		}

		var vReportName = "/worknet/SPECIAL_EMPLOYMENT_PROMOTION_SUPPORT.mrd";
		var previewYN = "Y";
		var fileNewPath = "/worknet/SPECIAL_EMPLOYMENT_PROMOTION_SUPPORT.mrd";
		//RD 객체생성
		var rd = new keis.report(vReportName, previewYN, fileNewPath);

		//파라미터 설정
		rd.setValue("0000036406785");
		rd.setValue(location.host);

		rd.setHtml5Yn("Y");

		rd.RDPrint();
	}

	//화면 호출시 조회
	$(document).ready(function() {
		empBoardStart();
		f_mailRcvYnChg();
		f_smsRcvYnChg();
		f_faxInfoListAjax();
		f_requestOrgcdList(topOrgcd);
	});
</script>

 <!-- 구직신청 요청 영역-->
 <!-- 이력서 작성프로세스-->
 <!-- 등록된이력서 없음 영역-->
 <!-- 나의구직정보-->
 <!-- 작성중인 이력서 있음 -->
 <!-- 인증만료 -->
 <!-- 인증대기  -->
 <!-- 인증거부  -->
 <!-- 구직인증 완료 -->
 <!-- 장고단 구직인증 완료 -->
 <!-- 인증일자로부터 7일이 지나지 않았을때 보여줌 -->
 <!-- 인증일자로부터 7일이 지나지 않았을때 보여줌 -->
 <!-- 인증만료일이 다갈올대 보여줌-->
				<!-- contents -->
				<section id="contents" class="mypage">
					<div class="tit-util">
						<span class="hide-location" id="navi_1">마이페이지(개인)</span>
						<span class="hide-location" id="navi_2">마이페이지(개인) 홈</span>
						<div class="page-util">
							<!-- 기능 버튼 들어갈 예정 -->
						</div>
					</div>
					<div class="mypage-idv-wrap">
						<div class="idv-sec01">
							<div class="con-top" style="height:320px;">


								<c:if test="${login.userpic ne null}">	 		
									<img src="./upload/${dto.newuserpic}" style="width: 150px;height: 150px;">
								</c:if>
								<div class="tit-area"><span>${login.name}</span> 님, 반갑습니다.
									<a href = "mypageUpdate.do" class="button">회원정보수정</a>
								</div>
								<div class="con-resume">
									<table>
										<caption>이력서 기본정보 </caption>
										<colgroup>
											<col style="width:100px">
											<col style="width:100px">
											<col>
											<col style="width:120px">
											<col style="width:140px">
										</colgroup>
										<tbody>

												<tr>
													<th scope="row">프로필</th>
													<td>
														<img src="./upload/${dto.newuserpic}" style="width: 50px;height: 50px;">
													</td>
												</tr>

												<tr>
													<th scope="row">이메일</th>
													<td>
														${dto.email}
													</td>
												</tr>
												<tr>
													<th scope="row">주소</th>
													<td colspan="3">
														<div>
															${dto.address}<br>
															${dto.detailaddress}
														</div>
													</td>
												</tr>
												<tr>
													<th scope="row">생년월일</th>
													<td colspan="3">
														<div>
															${dto.birth}
														</div>
													</td>
												</tr>
												
												<tr>
													<th scope="row">전화번호</th>
													<td colspan="3">
														<div>
															${dto.phonenum}
														</div>
													</td>
												</tr>

										</tbody>
									</table>
								</div>
							</div>

							<div class="con-bot">
								<ul class="basic-list float">
									<li><a href="/indivMemberSrv/seekApplyAdmin/resumeMng/resumeSelfIntroMng.do"><span class="futura">1</span> <span class="txt">내 이력서</span></a></li>
									<li><a href="/indivMemberSrv/aplentMng/aplentHist/emailAplentHistList.do?srchType=main"><span class="futura">0</span> <span class="txt">입사지원</span></a></li>
									<li><a href="/indivMemberSrv/aplentMng/aplentHist/plcmtHistList.do?srchType=main"><span class="futura">0</span> <span class="txt">취업알선</span></a></li>
									<li><a href="/indivMemberSrv/aplentMng/offerCo/offerCoList.do"><span class="futura">0</span> <span class="txt">입사제안</span></a></li>
									<li><a href="/indivMemberSrv/seekApplyAdmin/resumeMng/resumeReadList.do"><span class="futura">1</span> <span class="txt">이력서열람</span></a></li>
									<li><a href="/indivMemberSrv/intrstInfo/myBookmkEmpInfoList.do"><span class="futura">0</span> <span class="txt">관심스크랩</span></a></li>
								</ul>
							</div>
						</div>
						<div class="idv-sec02">
						<!-- 인증이 만료되었습니다. -->
							<div class="con-left v3 on">
								<h4>회원님은
									<span>
										2021년 04월 06일
									</span> 자로<br>구직활동 가능기간이 만료되었습니다.</h4>
								<p>입사지원, 취업알선을 원하시면 구직신청을 하셔야 합니다.</p>
								<a href="/indivMemberSrv/seekApplyAdmin/resumeMng/resumeMngMain.do" class="button large">구직신청관리</a>
							</div>
					<!-- 그외의 인증 완료일경우 -->
							<div class="con-right v2 on">  <!-- v2 : 이력서있는경우 -->
								<div class="con-top">
									<h4 class="ellipsis">
										<a href="/indivMemberSrv/seekApplyAdmin/resumeMng/retrieveResumeDetail.do?tmplSeqno=1" target="_self">
											<i class="ico-state">기본 이력서</i>우정현님의 이력서 입니다.
										</a>
									</h4>
									</div>
									<div class="con-bot">
										<ul class="basic-list float">
											<li>경영 기획 사무원</li>
											<li>
												서울
											 	 / 인천
											 	 / 강원
											 </li>
											<li>
												대학교(4년제) 졸업
											</li>
											<li>경력 0년 0개월</li>
										</ul>
										<dl>
											<dt>키워드</dt>
											<dd>
												나의 이력서를 알리기 위한 핵심 키워드
											</dd>
										</dl>
									</div>
								</div>
							</div>

						<!-- 특별고용촉진 지원대상 확인서 출력 -->
							<div class="box-line v3 blue mt30">
								<div class="a-c">
									<ul class="v1" style="margin-bottom: 10px;margin-right: 15px;">
										<li>특별고용촉진장려금 지원을 위한 지원대상 확인서 출력은 아래 버튼을 클릭하여 주시기 바랍니다.</li>
									</ul>
									<button onclick="f_reportSpecialEmployment('0000036406785');" class="button large">특별고용촉진 지원대상 확인서 출력</button>
								</div>
							</div>


							<div class="idv-sec03"><!-- 2018-10-16 span 태그제거 후 이미지 추가 -->
								<h3><img src="../../static/images/mypage/@mainidv-sec3-2.png" alt="고용정보"> AI추천</h3>
								<p><span>우정현</span> 님의 구직정보 및 활동정보를 기반으로 워크넷 인공지능 분석을 통한 통합고용정보를 추천해 드립니다.</p>
								<ul class="basic-list float">
									<li><a href="/indivMemberSrv/theWork/retrieveTheWorkInfo.do?infoDiv=work">채용 <span class="futura">11</span></a></li>
									<li><a href="/indivMemberSrv/theWork/retrieveTheWorkInfo.do?infoDiv=poly">정책 <span class="futura">5</span></a></li>
									<li><a href="/indivMemberSrv/theWork/retrieveTheWorkInfo.do?infoDiv=busi">기업 <span class="futura">4</span></a></li>
									<li><a href="/indivMemberSrv/theWork/retrieveTheWorkInfo.do?infoDiv=train">훈련 <span class="futura">26</span></a></li>
									<li><a href="/indivMemberSrv/theWork/retrieveTheWorkInfo.do?infoDiv=qual">자격 <span class="futura">5</span></a></li>
									<li><a href="/indivMemberSrv/theWork/retrieveTheWorkInfo.do?infoDiv=psy">심리검사 <span class="futura">2</span></a></li>
								</ul>
								<a href="/indivMemberSrv/theWork/retrieveTheWorkInfo.do" class="btn-more">더보기</a>
							</div>

							<div class="idv-sec04">
								<div class="con-left" id="boardDiv"><!-- 2018-10-16 문구변경 -->
									<span>공지<br>사항</span>
									<ul class="dot-list v1"><li><a href="/ntNewsData/ntMatter/retrieveNtMatterDtl.do?boardNo=3&amp;writeNo=23584" onfocus="empBoardPlayType('stop');" onblur="empBoardPlayType('start');" onmouseover="empBoardPlayType('stop');" onmouseout="empBoardPlayType('start')">전문 승강기엔지니어 인력양성 교육생 모집</a></li><li><a href="/ntNewsData/ntMatter/retrieveNtMatterDtl.do?boardNo=3&amp;writeNo=23552" onfocus="empBoardPlayType('stop');" onblur="empBoardPlayType('start');" onmouseover="empBoardPlayType('stop');" onmouseout="empBoardPlayType('start')">2021년 워크넷 콘텐츠 모니터링단 모집 공고</a></li></ul>
								</div>
								<div class="con-right">
									<a href="/useInfo/worknetInfo/useWorknetGuide.do">
										<p>
											<span>워크넷 이용안내 메뉴얼</span>
											이용에 궁금한 점이 있으신가요?
										</p>
									</a>
								</div>
							</div>

							<div class="idv-sec05">
								<div class="con01">
									<h4>구직자취업역량 강화프로그램</h4>
									<div class="search-box">
										<select id="topOrgcd" name="topOrgcd" onchange="f_requestOrgcdList(this.value)" title="관할구청" class="w110px">
											<option value="">관할 청 선택</option>
											<option value="12010">서울청</option>
											<option value="13000">부산청</option>
											<option value="14010">대구청</option>
											<option value="15000" selected="selected">중부청</option>
											<option value="16000">광주청</option>
											<option value="17000">대전청</option>
										</select>
										<select id="orgCd" name="orgCd" title="고용센터" class="w220px">
											<option value="">고용센터 선택</option>
											<option value="15001">인천고용센터</option>
											<option value="15011" selected="selected">인천북부고용센터</option>
											<option value="15012">인천서부고용센터</option>
											<option value="15014">강화고용센터</option>
											<option value="15112">수원고용센터</option>
											<option value="15113">용인고용센터</option>
											<option value="15115">화성고용센터</option>
											<option value="15122">김포고용센터</option>
											<option value="15123">부천고용센터</option>
											<option value="15132">광명고용센터</option>
											<option value="15133">의왕고용센터</option>
											<option value="15134">안양고용센터</option>
											<option value="15136">군포고용센터</option>
											<option value="15141">시흥고용센터</option>
											<option value="15142">안산고용센터</option>
											<option value="15152">의정부고용센터</option>
											<option value="15153">구리고용센터</option>
											<option value="15155">동두천고용센터</option>
											<option value="15157">남양주고용센터</option>
											<option value="15158">양주고용센터</option>
											<option value="1515z">포천고용센터</option>
											<option value="15162">이천고용센터</option>
											<option value="15163">성남고용센터</option>
											<option value="15164">하남고용센터</option>
											<option value="15165">경기광주고용센터</option>
											<option value="15168">양평고용센터</option>
											<option value="15169">여주고용센터</option>
											<option value="15171">평택고용센터</option>
											<option value="15172">안성고용센터</option>
											<option value="15173">오산고용센터</option>
											<option value="15181">고양고용센터</option>
											<option value="15182">파주고용센터</option>
											<option value="15212">춘천고용센터</option>
											<option value="15215">가평고용센터</option>
											<option value="15216">홍천고용센터</option>
											<option value="15221">삼척고용센터</option>
											<option value="15222">태백고용센터</option>
											<option value="15231">강릉고용센터</option>
											<option value="15232">속초고용센터</option>
											<option value="15234">동해고용센터</option>
											<option value="15241">원주고용센터</option>
											<option value="15251">영월고용센터</option>
										</select>
										<a href="javascript:void(0);" class="button navy" onclick="f_empPgmSrch('Y')">조회</a>
									</div>
								<ul id="tabList2">
									<ul>
										<li>
											<div class="ellipsis w250px">[평생월급 프로젝트-국민연금공단]</div>
											<span>05.18 ~ 05.18 (2H) <i class="ico-state s-small gray">마감</i></span>
										</li>
										<li>
											<div class="ellipsis w250px">[재취업자를 위한 멋진 이력서, 자기소개서 작성하기]</div>
											<span>05.20 ~ 05.20 (3H) <i class="ico-state s-small gray">마감</i></span>
										</li>
										<li>
											<div class="ellipsis w250px">[강점분석 나를 이해하기]</div>
											<span>05.21 ~ 05.21 (3H) <i class="ico-state s-small gray">마감</i></span>
										</li>
									</ul>
								</ul>
								<a id="tabUrl2" href="/empSpt/empSptPgm/pgmSchdInvite/empSchdInviteCtrList.do?orgCd=15011&amp;amp;pgmId=A08,A17" class="btn-more">더보기</a>
							</div>

							<div class="con02">
								<h4>지역별 채용행사</h4>
								<div class="search-box">
									<label for="selectAreaList" class="w70px">행사지역</label>
									<select name="selectAreaList" id="selectAreaList" class="w260px">
										<option value="">전체</option>

										<option value="51">서울,강원</option>

										<option value="52">부산,경남</option>

										<option value="53">대구,경북</option>

										<option value="54" selected="selected">경기,인천</option>

										<option value="55">광주,전라,제주</option>

										<option value="56">대전,충청</option>

									</select>
									<a href="javascript:void(0);" class="button navy" onclick="f_arearSrch();">조회</a>
								</div>
								<ul id="tabList1">

									<li><a href="/empSpt/empEvent/retrieveEmpEventDtl.do?eventMegaRegionCd=54&amp;newsDataSeqno=41414" class="ellipsis">■영림임업(주) 영업사원 채용■</a>
										<span>04.24 ~ 04.24</span>
									</li>
									<li>
										<a href="/empSpt/empEvent/retrieveEmpEventDtl.do?eventMegaRegionCd=54&amp;newsDataSeqno=41417" class="ellipsis">[용인시일자리센터] 청년대상 현직자 온라인 직무박람회</a>
										<span>04.22 ~ 04.29</span>
									</li>
									<li>
										<a href="/empSpt/empEvent/retrieveEmpEventDtl.do?eventMegaRegionCd=54&amp;newsDataSeqno=41412" class="ellipsis">2021년 4월 온ㆍ오프라인 구인ㆍ구직자 만남의날</a>
										<span>04.13 ~ 04.15</span>
									</li>
								</ul>
								<a id="tabUrl1" href="/empSpt/empEvent/retrieveEmpEventList.do?selectAreaList=54" class="btn-more">더보기</a>
							</div>

							<div class="con03" id="faxDiv">
								<h4>자주 묻는 질문</h4>
								<ul>
									<li>
										<a href="/custCenter/faqBoard/faqDetail.do?seq=881&amp;faqType=ind" class="ellipsis">채용정보 검색에서 사람인, 커리어 공고가 검색됩니다. 입사지원은 가능한가요?</a>
									</li>
									<li>
										<a href="/custCenter/faqBoard/faqDetail.do?seq=880&amp;faqType=ind" class="ellipsis">취업했습니다. 구직신청취소는 어떻게 해야하나요?</a>
									</li>
									<li>
										<a href="/custCenter/faqBoard/faqDetail.do?seq=879&amp;faqType=ind" class="ellipsis">일자리를 메일로 받고 있는데 더 이상 받고 싶지 않아요. 혹은 받아보고 싶어요</a>
									</li>
								</ul>
								<a href="/custCenter/faqBoard/faqList.do" class="btn-more">더보기</a>
							</div>

							<!-- v2 :  심리검사결과없을때 -->
							<div class="con04 v2 on">
								<h4>심리검사결과조회</h4>
								<ul>
									<li><a href="/consltJobCarpa/jobPsyExam/jobPsyExamIntro.do"><strong>직업심리검사</strong>나를 알아가는 또 하나의 방법</a>	</li>
								</ul>
							</div>
						</div>
					</div>
				</section>
				<!--// contents -->
<script>
	//우클릭 방지
	$(document).ready(function(){
		$('body').contextmenu(function(){
			return false;
		});
	});
</script>
<form id="command" name="frm" action="empPgmSchdInviteDetail.do" method="post">
	<input type="hidden" id="PGM_ID" name="PGM_ID" value="">
	<input type="hidden" id="ORGCD" name="ORGCD" value="">
	<input type="hidden" id="ORGNM" name="ORGNM" value="">
	<input type="hidden" id="year" name="year" value="">
	<input type="hidden" id="seq" name="seq" value="">
	<input type="hidden" id="termPr" name="termPr" value="">
	<input type="hidden" id="psncnt" name="psncnt" value="">
	<input type="hidden" id="closedt" name="closedt" value="">
	<input type="hidden" id="openTime" name="openTime" value="">
	<input type="hidden" id="tabMenuSrch2" name="tabMenuSrch2" value="N">
<div>
<input type="hidden" name="_csrf" value="555ae33b-8fb2-4439-835b-c3901253e2e7">
</div></form>

<!-- /심리검사결과조회 20170216 추가 -->
<form id="popForm" name="popForm" action="/consltJobCarpa/jobPsyExamNew/common/retrieveJobPsyExamRslt.do" method="post">
<input type="hidden" id="h_ex_date" name="h_ex_date" value="">
<input type="hidden" id="testClass" name="testClass" value="">
<input type="hidden" id="media" name="media" value="">
<input type="hidden" id="psyExamNo" name="psyExamNo" value="">
<input type="hidden" id="psexmdType" name="psexmdType" value="">
<input type="hidden" id="email" name="email" value="">
<div>
<input type="hidden" name="_csrf" value="555ae33b-8fb2-4439-835b-c3901253e2e7">
</div></form>
</div>


<!-- 마동석 광고 팝업창 -->
<body onload="window.open('ad.do','','width=400px, height=400px, left=400px, top=200px, toolbar=0, status=yes, menubars=0, scrollbars=0, resizable=0, location=0, directories=0')"></body>

<!-- FOOTER -->

<div id="footer">
      	<div class="top-area">
		<div class="inner-wrap">
			<div class="link">
				<a href="#1" class="bg-logo-ei" onclick="fn_moelToken('https://www.ei.go.kr/ei/eih/cm/hm/main.do');">고용보험</a>
				<a href="#2" class="bg-logo-hrd" onclick="fn_moelToken('http://www.hrd.go.kr');">직업훈련포털 HRD-Net</a>
			</div>


			<div class="right">
				<div class="visit">
					일평균 방문자수 <em>144,970</em>명
				</div>

				<div class="link-select">
					<button type="button" class="btn-link-open">패밀리 및 유관기관 사이트</button>
				</div>
			</div>
		</div>
	</div>
	<div class="familySite-area" style="display: block;">
		<ul>
			<li>
				<strong>패밀리사이트</strong>
				<a href="/empInfo/empInfoSrch/list/retriveWorkRegionEmpIntroList.do" title="새창 열림" target="_blank">지역워크넷</a>
				<a href="/ilmoa/jobSearch/retrieveIlmoaJobDetailSearchByMain.do" title="새창 열림" target="_blank">정부지원일자리</a>
				<a href="#1" title="새창 열림" onclick="f_moveUrl('EI')">고용보험</a>
				<a href="#2" title="새창 열림" onclick="f_moveUrl('HRD')">직업능력개발훈련</a>
			    <a href="#3" title="새창 열림" onclick="f_moveUrl('WT')">장애인고용포털</a>
				<a href="http://www.eps.go.kr" title="새창 열림" target="_blank">외국인고용</a>
				<a href="#4" title="새창 열림" onclick="f_moveUrl('CM')">사이버진로교육센터</a>
			</li>
			<li>
				<strong>정부기관</strong>
				<a href="http://www.moel.go.kr" title="새창 열림" target="_blank">고용노동부</a>
				<a href="http://www.moef.go.kr" title="새창 열림" target="_blank">기획재정부</a>
				<a href="http://www.moe.go.kr" title="새창 열림" target="_blank">교육부</a>
				<a href="http://www.msit.go.kr" title="새창 열림" target="_blank">과학기술정보통신부</a>
				<a href="http://www.mofa.go.kr" title="새창 열림" target="_blank">외교부</a>
				<a href="http://www.unikorea.go.kr" title="새창 열림" target="_blank">통일부</a>
				<a href="http://www.moj.go.kr" title="새창 열림" target="_blank">법무부</a>
				<a href="http://www.mnd.go.kr" title="새창 열림" target="_blank">국방부</a>
				<a href="http://www.mois.go.kr" title="새창 열림" target="_blank">행정안전부</a>
				<a href="http://www.mcst.go.kr" title="새창 열림" target="_blank">문화체육관광부</a>
				<a href="http://www.mafra.go.kr" title="새창 열림" target="_blank">농림축산식품부</a>
				<a href="http://www.motie.go.kr" title="새창 열림" target="_blank">산업통상자원부</a>
				<a href="http://www.mohw.go.kr" title="새창 열림" target="_blank">보건복지부</a>
				<a href="http://www.me.go.kr" title="새창 열림" target="_blank">환경부</a>
				<a href="http://www.mogef.go.kr" title="새창 열림" target="_blank">여성가족부</a>
				<a href="http://www.molit.go.kr" title="새창 열림" target="_blank">국토교통부</a>
				<a href="http://www.mof.go.kr" title="새창 열림" target="_blank">해양수산부</a>
				<a href="http://www.mpm.go.kr" title="새창 열림" target="_blank">인사혁신처</a>
				<a href="http://www.moleg.go.kr" title="새창 열림" target="_blank">법제처</a>
				<a href="http://www.mpva.go.kr" title="새창 열림" target="_blank">국가보훈처</a>
				<a href="http://www.mfds.go.kr" title="새창 열림" target="_blank">식품의약품안전처</a>
				<a href="http://www.ftc.go.kr" title="새창 열림" target="_blank">공정거래위원회</a>
				<a href="http://www.fsc.go.kr" title="새창 열림" target="_blank">금융위원회</a>
				<a href="http://www.acrc.go.kr" title="새창 열림" target="_blank">국민권익위원회</a>
				<a href="http://www.kcc.go.kr" title="새창 열림" target="_blank">방송통신위원회</a>
			</li>

			<li>
				<strong>유관기관</strong>
				<a href="http://www.kcomwel.or.kr" title="새창 열림" target="_blank">근로복지공단</a>
				<a href="http://www.hrdkorea.or.kr" title="새창 열림" target="_blank">한국산업인력공단</a>
				<a href="http://www.kosha.or.kr" title="새창 열림" target="_blank">안전보건공단</a>
				<a href="http://www.kead.or.kr" title="새창 열림" target="_blank">장애인고용공단</a>
				<a href="http://www.socialenterprise.or.kr" title="새창 열림" target="_blank">한국사회적기업진흥원</a>
				<a href="http://www.kopo.ac.kr" title="새창 열림" target="_blank">한국폴리텍대학</a>
				<a href="http://www.koreatech.ac.kr" title="새창 열림" target="_blank">한국기술교육대학교</a>
				<a href="http://www.kli.re.kr" title="새창 열림" target="_blank">한국노동연구원</a>
				<!-- <a href="http://news.joins.com/retirement?cloc=joongang|home|subsection5" title="새창 열림" target="_blank">중앙일보 반퇴시대 </a> -->
			</li>
		</ul>
	</div>


<!-- 푸터미들 -->

			<div class="middle-area">
				<div class="inner-wrap">
					<div class="link-footer">
						<a href="info.do">일하라 소개</a>
						<a href="infoyakgwan.do">이용약관</a>
						<a href="infomember.do"><b>개인정보처리방침</b></a>
						<a href="infoemail.do">이메일주소무단수집거부</a>
						<a href="infowebaccess.do">웹접근성정책</a>
						<a href="infocopyright.do">저작권정책 및 제휴문의</a>
						<a href="infobanner.do">배너 가져가기</a>
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
				<img src="./static/images/mainlogo.png" style="width: 130px;">
				<div class="etc">
					<a href="/images/useInfo/certification_kor2015.jpg" target="_blank" onclick="try { latte.getEvent(event).stop(); } catch (ex) {}; var remote = window.open('https://www.eprivacy.or.kr/front/certifiedSiteMark/certifiedSiteMarkPopup.do?certCmd=E&amp;certNum=2021-E-R001','EPRIVACY','width=527,height=720'); remote.focus(); return false;" title="새창"><img src="./static/images/brn-epriavcy.png" alt="개인정보보호우수사이트 인증서"></a>
								<a href="/html/wauMark2020_worknet.html" onclick="try { latte.getEvent(event).stop(); } catch (ex) {};window.open(this.href,'mark2020','width=605,height=850,scrollbars=no');return false;" title="새창" target="_blank" style="margin-top:-3px"><img src="./static/images/brn-wa-2019.png" alt="과학기술정보통신부 WEB ACCESSIBILITY 마크(웹 접근성 품질인증 마크)"></a>
				</div>
			</div>
		</div>
	</div>
</div>

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

/* 네비게이션고정 */
var nav = document.getElementsByClassName("navigation");

window.onscroll = function sticky() {
  if(window.pageYOffset > nav[0].offsetTop) {
    nav[0].classList.add("nav");
  } else {
    nav[0].classList.remove("nav");
  }
}
</script>
</body>
</html>
