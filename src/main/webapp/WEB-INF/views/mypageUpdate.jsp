<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Insert title here</title>
        <link href="csss/common.css" rel="stylesheet" type="text/css">
        <link href="csss/reset.css" rel="stylesheet" type="text/css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
        <style type="text/css">
@import url(//fonts.googleapis.com/earlyaccess/notosanskr.css);

body {
  font-family: "Noto Sans KR", sans-serif !important;
}
</style>

 <style>
                .disabledbutton {
                    pointer-events: none;
                    opacity: 0.4;
                }
            </style>
        
</head>
    
    
     <body id="sub_layout">
     
     <div class="wrapper"> 
            
    <!-- header -->
<header id="header">
	<div class="top-area">
		<div class="inner-wrap">
			<div class="link-out">
				<a href="/empInfo/empInfoSrch/list/retriveWorkRegionEmpIntroList.do" target="_blank" title="새창 열림">지역워크넷</a> 
				<a href="/useInfo/empCenterInfo/useEmpIntroList.do" target="" title="새창">고용복지<sup>+</sup>센터</a>
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
								<li><a href="/indivMemberSrv/main/indivMemberSrvMain.do">마이페이지
										홈</a></li>
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
				<a href="/myJobLetter/myJobLetterCnfm.do">내일레터<img src="/static/images/common/ico/ico-gnb-new.png" class="va-m" alt="new"></a>
				<a href="/useInfo/worknetInfo/useWorknetGuide.do">이용안내</a>
				<a href="/custCenter/custCtrMain.do">고객센터</a> 
				<a href="http://as82.kr/keis" target="_blank" title="새창">원격지원</a> 
				<a href="/useInvite/worknetHomepgInvite/sitemap.do">사이트맵</a>
				<!-- 20201022 추가 -->
				
				<!-- //20201022 추가 -->
<!-- 				<div class="font-control"> -->
<!-- 					<p>글자크기</p> -->
<!-- 					<button type="button" class="big">글자 크게 하기</button> -->
<!-- 					<button type="button" class="small">글자 작게 하기</button> -->
<!-- 					<button type="button" class="reset">글자 초기화</button> -->
<!-- 				</div> -->
				<!--// 공통 -->
			</div>
		</div>
	</div>

	<div class="middle-area">
		<div class="inner-wrap">
			
				
					<h1 class="top-logoWorknet">
						<a href="/seekWantedMain.do"><img src="/static/images/common/bg/bg-top-logo.png" alt="일하라"></a>
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
</div></form>




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
								<a href="/empInfo/empInfoSrch/list/dtlEmpSrchList.do?moreCon=more">채용정보
									상세검색</a>
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
								<li class="group mb10"><a href="/empInfo/empInfoSrch/list/dtlEmpSrchList.do?webIsOut=region">전체</a>
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
								<li><a href="/empInfo/empInfoSrch/list/aroundMeEmpInfoList.do">내
										주변 채용정보
								</a></li>
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
							</ul></li>
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
				</div></li>
			<li><a href="/jobMain.do" class="menu"><span>직업·진로</span></a>
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
								<li><a href="/consltJobCarpa/srch/jobInfoSrch/srchJobInfo.do">직업정보
										찾기</a></li>
								<li><a href="/consltJobCarpa/srch/korJobProspect/korJobProspectSrchByJobClList.do">한국직업전망</a></li>
								<li><a href="/consltJobCarpa/srch/jobDic/jobDicIntro.do">한국직업사전</a></li>
								<li><a href="/consltJobCarpa/videoInfo/videoInfoList.do?videoType=01&amp;catCd1=01&amp;catCd2=0101">직업
										동영상·VR</a></li>
								<li><a href="/consltJobCarpa/srch/meetPerson/meetPerson.do">직업인
										인터뷰</a></li>
							</ul></li>
						<li><b><a href="/consltJobCarpa/srch/schdpt/schdptSrch.do">학과정보</a></b>
							<ul>
								<li><a href="/consltJobCarpa/srch/schdpt/schdptSrch.do">학과
										검색</a></li>
								<li><a href="/consltJobCarpa/jobData/retrieveCareerInfoList.do">전공진로
										가이드</a></li>
								<li><a href="/consltJobCarpa/srch/schdpt/dptFaqList.do">학과정보
										FAQ</a></li>
								<li><a href="/consltJobCarpa/videoInfo/videoInfoList.do?videoType=10&amp;catCd1=04&amp;catCd2=0401">학과정보
										동영상</a></li>
							</ul> <b><a href="/consltJobCarpa/jobConslt/jobConsltList.do">진로상담</a></b>
							<ul>
								<li><a href="/consltJobCarpa/jobConslt/jobConsltList.do">상담신청</a></li>
								<li><a href="/consltJobCarpa/jobConslt/bestConsltList.do">상담 FAQ</a></li>
							</ul> <b><a href="/consltJobCarpa/jobData/retrieveJobInfoReportList.do">자료실</a></b>
							<ul>
								<li><a href="/consltJobCarpa/jobData/retrieveJobInfoReportList.do">직업진로정보서</a></li>
								<li><a href="/consltJobCarpa/jobData/retrieveReseReportList.do">연구보고서</a></li>
							</ul></li>
						<li><b><a href="/empSpt/empGuide/empTrend/resumeSelfIntroGuide.do">취업가이드</a></b>
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
									<a href="/empSpt/empBlind/retrieveEmpBlind.do">블라인드 채용
									</a>
								</li>
								<li>
									<a href="/empSpt/empBlind/retrieveEmpNcs.do">NCS 기반 능력중심 채용
										</a>
									
								</li>
								<li><a href="/empSpt/empGuide/empTrend/TargetGuide.do">대상별 취업가이드
									</a>
								</li>
								<li>
									<a href="/empSpt/empGuide/empTrend/GoalGuide.do">기업별 취업팁 <img src="/static/images/common/ico/ico-gnb-new.png" alt="new"></a>
								</li>
								<li>
									<a href="/empSpt/empGuide/empSptPolicy.do">취업지원정책 
									</a>
								</li>
								<li>
									<a href="/empSpt/empGuide/wiseWorkLife.do">슬기로운 직장생활 <img src="/static/images/common/ico/ico-gnb-new.png" alt="new"></a>
								</li>
								<li>
									<a href="/empSpt/empEtc/pictureEmpTrend.do">그림으로
										보는 취업동향</a>
								</li>
								<li>
									<a href="/empSpt/empGuide/selfintroWriteGuide/selfintroWriteGuideViewList.do">직무별 자소서 작성가이드
										</a>
								</li>
								<li>
									<a href="/empSpt/empSucc/empSuccSubMainList.do">취업성공수기
									<img src="/static/images/common/ico/ico-gnb-new.png" alt="new"></a>
								</li>
								<li>
									<a href="/empSpt/empEtc/enterDocIssueSvc.do">입사서류
										발급 안내</a>
								</li>

							</ul>
							</li>
						<li>
							<b><a href="/empSpt/empNews/retrieveEmpNewsList.do">뉴스</a></b>
							<ul>
								<li><a href="/empSpt/empNews/retrieveEmpNewsList.do">취업뉴스 <img src="/static/images/common/ico/ico-gnb-new.png" alt="new">
									</a></li>
								
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
							</ul></li>
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
				</div></li>
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
                <nav
                    id="lnb">
                    <!-- S : 2018-09-28 추가 -->
                    <p class="tit">
                        <a href="/indivMemberSrv/main/indivMemberSrvMain.do">마이페이지</a>
                    </p>
                    <!-- E : 2018-09-28 추가 -->
                    <ul>
                        <li>
                            <a href="/indivMemberSrv/seekApplyAdmin/resumeMng/resumeMngMain.do" target="_self">이력서관리·구직신청
                            </a>
                            <button class="btn-show">이력서관리·구직신청
                                			 메뉴 닫기</button>
                            <div class="depth3">
                                <ul>
                                    <li><a href="/indivMemberSrv/seekApplyAdmin/resumeMng/retrieveResumeRegTp.do" target="_self">이력서 등록</a></li>
                                    <li><a href="/indivMemberSrv/seekApplyAdmin/resumeMng/retrieveSelfIntroRegIntro.do" target="_self">자기소개서 등록</a></li>
                                    <li><a href="/indivMemberSrv/seekApplyAdmin/resumeMng/resumeSelfIntroMng.do" target="_self">이력서·자기소개서 관리</a></li>
                                    <li><a href="/indivMemberSrv/seekApplyAdmin/resumeMng/resumeAtchFileMngList.do" target="_self">첨부파일 관리</a></li>
                                    <li><a href="/indivMemberSrv/seekApplyAdmin/resumeMng/resumeMngMain.do" target="_self">워크넷 구직신청</a></li>
                                </ul>
                            </div>
                        </li>
                        <li>
                            <a href="/indivMemberSrv/aplentMng/aplentHist/emailAplentHistList.do" target="_self">입사지원 관리
                            </a>
                            <button class="btn-show">입사지원 관리
                                			 메뉴 닫기</button>
                            <div class="depth3">
                                <ul>
                                    <li><a href="/indivMemberSrv/aplentMng/aplentHist/emailAplentHistList.do" target="_self">알선/입사지원 내역</a></li>
                                    <li><a href="/indivMemberSrv/aplentMng/seekActvHist/seekActvHistList.do" target="_self">구직활동내역</a></li>
                                    <li><a href="/indivMemberSrv/aplentMng/offerCo/offerCoList.do" target="_self">입사제안/스크랩한 기업</a></li>
                                    <li><a href="/indivMemberSrv/seekApplyAdmin/resumeMng/resumeReadList.do" target="_self">이력서 열람기업</a></li>
                                    <li><a href="/indivMemberSrv/intrstInfo/mailToEmpList.do" target="_self">채용담당자와 한마디</a></li>
                                </ul>
                            </div>
                        </li>
                        <li>
                            <a href="/indivMemberSrv/custmadeInfoMng/custmadeInfoList.do" target="_self">나의 맞춤정보
                            </a>
                            <button class="btn-show">나의 맞춤정보
                                			 메뉴 닫기</button>
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
                            <a href="/indivMemberSrv/intrstInfo/myBookmkEmpInfoList.do" target="_self">나의 관심정보
                            </a>
                            <button class="btn-show">나의 관심정보
                                			 메뉴 닫기</button>
                            <div class="depth3">
                                <ul>
                                    <li><a href="/indivMemberSrv/intrstInfo/myBookmkEmpInfoList.do" target="_self">관심스크랩(찜)</a></li>
                                    <li><a href="/indivMemberSrv/intrstInfo/seekEmpInfoSrchHist.do?srchType=3" target="_self">최근 본 채용공고</a></li>
                                    <li><a href="/empInfo/empInfoSrch/calendar/myCalendarMonth.do" target="_blank">마이캘린더</a></li>
                                </ul>
                            </div>
                        </li>
                        <li>
                            <a href="/empAgencySvc/wApApplication/wApApplicationList.do" target="_self">e-채용마당 서비스
                            </a>
                            <button class="btn-show">e-채용마당 서비스
                                			 메뉴 닫기</button>
                            <div class="depth3">
                                <ul>
                                    <li><a href="/empAgencySvc/wApApplication/wApApplicationList.do" target="_self">지원서관리</a></li>
                                    <li><a href="/eas/indivMemberSrv/employNotice/wNoInterest.do" target="_self">관심정보관리</a></li>
                                    <li><a href="/eas/indivMemberSrv/employJudge/employJudgeList.do" target="_self">심사평가관리</a></li>
                                    <li><a href="/empAgencySvc/empBoard/wBuBoardList.do" target="_self">채용게시판</a></li>
                                </ul>
                            </div>
                        </li>
                        <li>
                            <a href="/indivMemberSrv/intrstInfo/joinResult.do" target="_self">온라인 신청관리
                            </a>
                        </li>
                        <li>
                            <a href="/indivMemberSrv/myCustmadeSrvList.do" target="_self">고용복지 맞춤서비스
                            </a>
                        </li>
                        <li>
                            <a href="/indivMemberSrv/custInfoAdmin/retrieveIndivCustInfo.do" target="_self">회원정보 관리
                            </a>
                            <button class="btn-show">회원정보 관리
                                			 메뉴 닫기</button>
                            <div class="depth3">
                                <ul>
                                    <li><a href="/indivMemberSrv/custInfoAdmin/retrieveIndivCustInfo.do" target="_self">회원정보 조회</a></li>
                                    <li><a href="/indivMemberSrv/custInfoAdmin/modifyIndivCustInfoView.do" target="_self">회원정보 수정(성명변경)</a></li>
                                    <li><a href="/indivMemberSrv/custInfoAdmin/modifyIndivCustPwdView.do" target="_self">비밀번호 변경</a></li>
                                    <li><a href="/indivMemberSrv/custInfoAdmin/deleteIndivCustView.do" target="_self">회원탈퇴</a></li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </nav>
                <script type="text/javascript">
                    // <![CDATA[
                    function trim(s) {
                        return s.replace(/(^[\s]*|[\s]*$)/g, '');
                    }
                    var webLogged = 'N';
                    /**
* 유효성검사를 수행한다.
* @paras frm 폼
* @return boolean 수행결과
*
* */
                    function f_checkForm(frm) {
                        var frm = document.registForm;
                        // 20131227 BDH 추가 : 주소 변수 셋팅
                        if ($("#strtnmCd").val() != "") {
                            $("#strtnmZipCd").val($("#jusoZipCd").val());
                            $("#strtnmBasicAddr").val($("#juso1").val());
                            $("#strtnmDetailAddr").val($("#juso2").val());
                            $("#zipCd").val("");
                            $("#basicAddr").val("");
                            $("#detailAddr").val("");
                        } else {
                            $("#zipCd").val($("#jusoZipCd").val());
                            $("#basicAddr").val($("#juso1").val());
                            $("#detailAddr").val($("#juso2").val());
                            $("#strtnmZipCd").val("");
                            $("#strtnmBasicAddr").val("");
                            $("#strtnmDetailAddr").val("");
                        }
                        var addrType = $("input[name='addrType']").val();
                        // 웹회원은 미입력 체크 안함.
                        if (webLogged != 'Y' || !keis.chk.isEmpty(frm.zipCd.value) || !keis.chk.isEmpty(frm.strtnmZipCd.value)) {
                            if (trim(frm.jusoZipCd.value) == '') {
                                alert("주소을(를) 입력해 주세요.");
                                frm.jusoZipCd.focus();
                                return false;
                            }
                            if (trim(frm.juso1.value) == '') {
                                alert("주소을(를) 입력해 주세요.");
                                frm.juso1.focus();
                                return false;
                            }
                            /*2020.07.23 회원정보수정 공동주택일 경우 상세주소 필수 입력 로직 삭제 */
                            /*if(trim(frm.commHouseYn.value) == 'Y')
        {
			if(trim(frm.juso2.value) == '') {           
				alert("상세 주소을(를) 입력해 주세요.");
				frm.juso2.focus();
				return false;
			}
        }*/
                        }
                        var tel1 = document.getElementById("telno1");
                        var tel2 = document.getElementById("telno2");
                        var tel3 = document.getElementById("telno3");
                        var hp1 = document.getElementById("hp1");
                        var hp2 = document.getElementById("hp2");
                        var hp3 = document.getElementById("hp3");
                        var smsRcvYn1 = document.getElementById("smsRcvYn1");
                        var mailsvcRcvYn1 = document.getElementById("mailsvcRcvYn1");
                        var imsSmsRcvYn1 = document.getElementById("imsSmsRcvYn1");
                        var imsMailsvcRcvYn1 = document.getElementById("imsMailsvcRcvYn1");
                        var email1 = document.getElementById("email1");
                        var email2 = document.getElementById("email2");
                        // 전화 또는 휴대전화 중 1개 이상 반드시 입력
                        var telInput = false; // false 면 미입력
                        var returnMsg;
                        // 전화번호, 휴대폰 미입력 시 유효성 체크
                        if (!keis.chk.isEmpty(tel1.value) || !keis.chk.isEmpty(tel2.value) || !keis.chk.isEmpty(tel3.value)) {
                            if (worknet.checkForm.validPhoneNo([
                                tel1.value, tel2.value, tel3.value
                            ], [
                                tel1, tel2, tel3
                            ], [
                                '잘못된 전화번호(지역번호)입니다.', '잘못된 전화번호(국번)입니다.', '잘못된 전화번호 입니다.'
                            ], keis.chk.invalidHomePhone)) 
                                return false;
                            
                            telInput = true;
                        }
                        if (!keis.chk.isEmpty(hp1.value) || !keis.chk.isEmpty(hp2.value) || !keis.chk.isEmpty(hp3.value)) {
                            if (worknet.checkForm.validPhoneNo([
                                hp1.value, hp2.value, hp3.value
                            ], [
                                hp1, hp2, hp3
                            ], [
                                '잘못된 휴대전화번호(사업자번호)입니다.', '잘못된 휴대전화번호(국번)입니다.', '잘못된 휴대전화번호 입니다.'
                            ], keis.chk.invalidCellPhone)) 
                                return false;
                            
                            telInput = true;
                        }
                        // 웹회원은 미입력 체크 안함.
                        if (! telInput && webLogged != 'Y') {
                            worknet.checkForm.alert('전화번호 혹은 핸드폰 번호를 입력하셔야 합니다.', tel1);
                            return false;
                        }
                        // 유효성 검사	: 이메일
                        if (!keis.chk.isEmpty(email1.value) || !keis.chk.isEmpty(email2.value)) { // if (!(/^[a-zA-Z][a-zA-Z0-9._%+-]+$/i).test(email1.value)) return worknet.checkForm.alert('잘못된 이메일 주소입니다.', email1);
                            if (keis.chk.isEmpty(email1.value)) 
                                return worknet.checkForm.alert('잘못된 이메일 주소입니다.', email1);
                            
                            if (!(/((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/).test(email2.value)) 
                                return worknet.checkForm.alert('잘못된 이메일 주소입니다.', email2);
                            
                        }
                        if ((keis.chk.isEmpty(hp1.value) && smsRcvYn1.checked)) 
                            return worknet.checkForm.alert('휴대전화 문자서비스를 받기 위해선 휴대전화번호를 입력하여야 합니다.', hp1);
                        
                        if ((keis.chk.isEmpty(email1.value) && mailsvcRcvYn1.checked)) 
                            return worknet.checkForm.alert('메일링서비스를 받기 위해선 E-mail을 입력하여야 합니다.', email1);
                        
                        if ((keis.chk.isEmpty(hp1.value) && imsSmsRcvYn1.checked)) 
                            return worknet.checkForm.alert('고용노동서비스 One-ID의 정책과 공지사항을 받으시려면\n휴대전화번호 입력이 반드시 필요합니다.', hp1);
                        
                        if ((keis.chk.isEmpty(email1.value) && imsMailsvcRcvYn1.checked)) 
                            return worknet.checkForm.alert('고용노동서비스 One-ID의 정책과 공지사항을 받으시려면\nE-mail 입력이 반드시 필요합니다.', email1);
                        
                        // 20131203 BDH도로명안내추가
                        if (addrType == "jibun") {
                            alert("입력하신 주소는 지번주소입니다. 도로명 주소로 변경하시기 바랍니다.");
                            $("#jusoZipCd").focus();
                            return false;
                        }
                        if (confirm("저장하시겠습니까?")) {
                            var registForm = document.getElementById('registForm');
                            var pkgGbnParam = '';
                            var uri = '/indivMemberSrv/custInfoAdmin/modifyIndivCustInfo.do';
                            registForm.action = '' + uri + pkgGbnParam + '';
                            frm.submit();
                        }
                        return false;
                    }
                    // 주소 찾기 사용안함
                    function fAddrSch(rsltObj) {
                        document.getElementById("zipCd").value = rsltObj[0];
                        document.getElementById("strtnmCd").value = rsltObj[3];
                        document.getElementById("regionCd").value = rsltObj[4];
                        document.getElementById("juso1").value = rsltObj[5];
                        document.getElementById("juso2").value = rsltObj[6];
                        document.getElementById("dongNo").value = rsltObj[7];
                    }
                    function f_roadNmSrch(rsltObj) {
                        document.getElementById("strtnmCd").value = rsltObj[3];
                        document.getElementById("regionCd").value = rsltObj[4];
                        document.getElementById("dongNo").value = rsltObj[7];
                        document.getElementById("jusoZipCd").value = rsltObj[0];
                        document.getElementById("juso1").value = rsltObj[5];
                        // document.getElementById("juso2").value = rsltObj[6];
                        document.getElementById("juso2").value = "";
                        document.getElementById("bldgNo").value = rsltObj[9];
                        document.getElementById("strtnmRefItem").value = rsltObj[10];
                        document.getElementById("commHouseYn").value = rsltObj[11];
                        $("input[name='addrType']").val("street");
                    }
                    /**
* 이메일 박스에 맞게 이메일을 표시한다.
* @paras select 박스에 선택된 이메일
* @return
*
* */
                    function f_selectEmailValue(value) {
                        if (value == '기타(직접입력)') {
                            document.getElementById("email2").readOnly = false;
                            document.getElementById("email2").value = "";
                            document.getElementById("email2").focus();
                        } else {
                            document.getElementById("email2").readOnly = true;
                            document.getElementById("email2").value = value;
                        }
                    }
                    // 20131227 BDH 수정 : 사용안함
                    function f_onclickAddrRadio(type) {
                        if (type == 'jibun') {
                            $('#jibunDiv').show();
                            $('#streetDiv').hide();
                        } else {
                            $('#jibunDiv').hide();
                            $('#streetDiv').show();
                        }
                        document.getElementById("strtnmZipCd").value = '';
                        document.getElementById("strtnmCd").value = '';
                        document.getElementById("strtnmBasicAddr").value = '';
                        document.getElementById("strtnmDetailAddr").value = '';
                        document.getElementById("zipCd").value = '';
                        document.getElementById("basicAddr").value = '';
                        document.getElementById("detailAddr").value = '';
                        document.getElementById("regionCd").value = '';
                        document.getElementById("dongNo").value = '';
                    }
                    /**
* 회원 유형에 따라 성명 변경을 위한 페이지를 다르게 호출 한다.
*
* */
                    function modifyCustNm() {
                        var pkgGbnParam = '';
                        var uri = '/indivMemberSrv/custInfoAdmin/modifyTotIndivCustNmForm.do';
                        document.location.href = '' + uri + pkgGbnParam + '';
                    }
                    function seekCustTransfer() {
                        var snsLoginYn = "Y"
                        if (snsLoginYn == 'Y') { // 2017.06.14 임훈묵 소셜로그인의 경우 본인인증 화면으로 이동
                            document.location.href = '/member/custJoin/snsSeekCustTransfer.do?jobNo=1';
                        } else {
                            document.location.href = '/member/custJoin/registerSeekCustTransfer.do?jobNo=1';
                        }
                    }
                    /* 이메일 ,문자수신동의 팝업 리턴함수 */
                    function smsReceiveAgreeRtn(receiveAgreeYn) {
                        if (receiveAgreeYn == "Y") {
                            $("#smsRcvYn1").prop("checked", true);
                        } else {
                            $("#smsRcvYn2").prop("checked", true);
                        }
                    }
                    function mailReceiveAgreeRtn(receiveAgreeYn) {
                        if (receiveAgreeYn == "Y") {
                            $("#mailsvcRcvYn1").prop("checked", true);
                        } else {
                            $("#mailsvcRcvYn2").prop("checked", true);
                        }
                    }
                    /* 이메일 ,문자수신동의 팝업 리턴함수 */
                    function imsSmsReceiveAgreeRtn(receiveAgreeYn) {
                        if (receiveAgreeYn == "Y") {
                            $("#imsSmsRcvYn1").prop("checked", true);
                        } else {
                            $("#imsSmsRcvYn2").prop("checked", true);
                        }
                    }
                    function imsMailReceiveAgreeRtn(receiveAgreeYn) {
                        if (receiveAgreeYn == "Y") {
                            $("#imsMailsvcRcvYn1").prop("checked", true);
                        } else {
                            $("#imsMailsvcRcvYn2").prop("checked", true);
                        }
                    }
                    function f_snsMappingSns(type) {
                        cookies = "isCheckSnsMapping=" + escape("Y") + "; path=/";
                        document.cookie = cookies;
                        cookies = "isDeleteScreenYn=" + escape("N") + "; path=/";
                        document.cookie = cookies;
                        if (type == 'naver') {
                            worknet.snsLogin.naverLogin();
                        } else if (type == 'facebook') {
                            worknet.snsLogin.facebookLogin();
                        } else if (type == 'google') {
                            worknet.snsLogin.googleLogin();
                        } else if (type == 'kakao') {
                            worknet.snsLogin.kakaoLogin();
                        }
                    }
                    function f_snsUnMappingSns(type) {
                        cookies = "isCheckSnsMapping=" + escape("N") + "; path=/";
                        document.cookie = cookies;
                        cookies = "isDeleteScreenYn=" + escape("N") + "; path=/";
                        document.cookie = cookies;
                        if (type == 'naver') {
                            worknet.snsLogin.naverLogin();
                        } else if (type == 'facebook') {
                            worknet.snsLogin.facebookLogin();
                        } else if (type == 'google') {
                            worknet.snsLogin.googleLogin();
                        } else if (type == 'kakao') {
                            worknet.snsLogin.kakaoLogin();
                        }
                    }
                    function fnOpenLatte(url) {
                        $("#contents").find("iframe").remove();
                        latte.ui.open(url, '', [
                            640, 280
                        ], {
                            posRel: [
                                -80, 11
                            ],
                            popName: ''
                        })
                    }
                    // ]]>
                </script>
                <section id="contents" class="mypage">
                    <div class="tit-util">
                        <h2 class="tit" style="align:center;">내 정보수정 / 성명변경</h2>
                        <span class="hide-location" id="navi_1">마이페이지(개인)</span>
                        <span class="hide-location" id="navi_2">회원정보 관리</span>
                        <span class="hide-location" id="navi_3">내 정보수정 / 성명변경</span>
                        <div
                            class="page-util"><!-- 기능 버튼 들어갈 예정 -->
                        </div>
                    </div>
                    <div class="sub-visual-noline">
                    	<!-- 프로필사진 들어가는곳  -->
                    	
                        <p class="img-area">
                            <i class="ico-circle-gray tool"></i>
                        </p>
                        <img src="${login.userpic}"/>
                        
                        
                        <p class="txt">
                            일하라는 회원님의 개인정보를 신중히 취급하며, 회원님의 동의 없이 기재하신 회원정보를 공개하지 않습니다.
                            <br>
                            회원님의 정보 가운데 변경된 내용이나 설정 변경이 필요한 경우에는 아래에서 수정해주시기 바랍니다.
                        </p>
                    </div>
                    <h3 class="tit font-black">회원 로그인 정보</h3>
                    <form id="registForm" name="registForm" action="UpdateMypageAf.do" method="post">
                        <input type="hidden" id="checkAddr" name="checkAddr" value="">
                        <input type="hidden" id="regionCd" name="regionCd" value="28245">
                        <input type="hidden" id="strtnmCd" name="strtnmCd" value="282453155006">
                        <input type="hidden" id="dongNo" name="dongNo" value="106">
                        <input type="hidden" name="zipCd" id="zipCd">
                        <input type="hidden" name="basicAddr" id="basicAddr">
                        <input type="hidden" name="detailAddr" id="detailAddr">
                        <input type="hidden" name="strtnmZipCd" id="strtnmZipCd">
                        <input type="hidden" name="strtnmBasicAddr" id="strtnmBasicAddr">
                        <input type="hidden" name="strtnmDetailAddr" id="strtnmDetailAddr">
                        <div class="box-bluegray v2 myinfo-change mb50">
                            <div class="line">
                                <label for="userid" class="label w140px">아이디</label>
                               	${login.memberid}
                            </div>
                            <div class="line">
                                <label for="username" class="label w140px">성명</label>
                                <input type="text" value="${login.name}"  placeholder="${login.name}"  name="name" title="성명 입력" class="input-text w260px" pil="PF_PNM">
                             
                            </div>
                        </div>
                        <h3 class="tit font-black">연락처 정보</h3>
                        <div class="table-wrap mb50">
                            <table class="board-form">
                                <caption>연락처 정보 입력</caption>
                                <colgroup>
                                    <col style="width:75px;">
                                    <col style="width:80px;">
                                    <col>
                                </colgroup>
                                <tbody>
                                    <tr>
                                        <th scope="row" colspan="2">거주지 주소<span class="font-orange" title="필수입력">
                                                *</span>
                                        </th>
                                        <td>
                                           <div class="form-group has-feedback">
        	<label class="control-label" for="registrationNum">주소</label>
        		<input type="text" class="form-control" id="sample6_postcode" placeholder="우편번호" readonly="readonly">
				<input type="button"class="btn btn-secondary" onclick="sample6_execDaumPostcode()" readonly="readonly" value="우편번호 찾기"><br>
				<input type="text" class="form-control" id="sample6_address" name="address" placeholder="주소"><br>
				<input type="text" class="form-control" id="sample6_detailAddress" name="detailaddress" placeholder="상세주소"><br>
				<input type="text" class="form-control" id="sample6_extraAddress" placeholder="참고항목"><br>
        </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row" rowspan="2">연락처<span class="font-orange" title="필수입력">
                                                *</span>
                                        </th>
                                        <th scope="row">전화번호</th>
                                        <td>
                                            <div class="tel-wrap mt05 mb05">
                                                <select id="telno1" name="telno1" title="전화번호 국번 선택" pil="PF_TELNO">
                                                    <option value="">선택</option>
                                                    <option value="02">02</option>
                                                    <option value="031">031</option>
                                                    <option value="032" selected="selected">032</option>
                                                    <option value="033">033</option>
                                                    <option value="041">041</option>
                                                    <option value="042">042</option>
                                                    <option value="043">043</option>
                                                    <option value="044">044</option>
                                                    <option value="050">050</option>
                                                    <option value="051">051</option>
                                                    <option value="052">052</option>
                                                    <option value="053">053</option>
                                                    <option value="054">054</option>
                                                    <option value="055">055</option>
                                                    <option value="061">061</option>
                                                    <option value="062">062</option>
                                                    <option value="063">063</option>
                                                    <option value="064">064</option>
                                                    <option value="070">070</option>
                                                    <option value="080">080</option>
                                                    <option value="0303">0303</option>
                                                    <option value="0502">0502</option>
                                                    <option value="0503">0503</option>
                                                    <option value="0504">0504</option>
                                                    <option value="0505">0505</option>
                                                    <option value="0506">0506</option>
                                                    <option value="0507">0507</option>
                                                </select>
                                                <span>-</span>
                                                <input type="text" class="input-text" id="telno2" name="telno2" title="전화번호 중간자리 입력" onkeydown="worknet.checkForm.onlyNumber()" maxlength="4" value="548" pil="PF_TELNO">
                                                <span>-</span>
                                                <input type="text" class="input-text" id="telno3" name="telno3" title="전화번호 뒷자리 입력" onkeydown="worknet.checkForm.onlyNumber()" maxlength="4" value="1486" pil="PF_TELNO">
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row">휴대전화</th>
                                        <td>
                                            <div class="tel-wrap mt05">
                                                <select id="hp1" name="hp1" title="휴대전화 앞자리 선택" pil="PF_MPNO">
                                                    <option value="">선택</option>
                                                    <option value="010" selected="selected">010</option>
                                                    <option value="011">011</option>
                                                    <option value="016">016</option>
                                                    <option value="017">017</option>
                                                    <option value="018">018</option>
                                                    <option value="019">019</option>
                                                </select>
                                                <span>-</span>
                                                <input type="text" class="input-text" id="hp2" name="hp2" title="휴대전화 중간자리 입력" onkeydown="worknet.checkForm.onlyNumber()" maxlength="4" value="2106" pil="PF_MPNO">
                                                <span>-</span>
                                                <input type="text" class="input-text" id="hp3" name="hp3" title="휴대전화 뒷자리 입력" onkeydown="worknet.checkForm.onlyNumber()" maxlength="4" value="1082" pil="PF_MPNO">
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row" colspan="2">
                                            <span class="label">이메일</span>
                                        </th>
                                        <td>
                                            <div class="email-wrap mt05">
                                                <input type="text" name="email" id="email1" value="corsa94" maxlength="40" class="input-text" title="이메일 주소 입력" pil="PF_EMAIL">
                                                <span>@</span>
                                                <input type="text" id="email2" name="email2" maxlength="40" value="naver.com" class="input-text" title="이메일 도메인 입력" pil="PF_EMAIL">
                                                <select nname="emailList" onchange="f_selectEmailValue(this.value);" title="이메일 도메인 선택">
                                                    <option value="chol.com">chol.com</option>
                                                    <option value="dreamwiz.com">dreamwiz.com</option>
                                                    <option value="daum.net">daum.net</option>
                                                    <option value="empal.com">empal.com</option>
                                                    <option value="freechal.com">freechal.com</option>
                                                    <option value="gmail.com">gmail.com</option>
                                                    <option value="hanmail.net">hanmail.net</option>
                                                    <option value="hanmir.com">hanmir.com</option>
                                                    <option value="hitel.net">hitel.net</option>
                                                    <option value="hotmail.com">hotmail.com</option>
                                                    <option value="korea.com">korea.com</option>
                                                    <option value="nate.com">nate.com</option>
                                                    <option value="naver.com">naver.com</option>
                                                    <option value="orgio.com">orgio.com</option>
                                                    <option value="paran.com">paran.com</option>
                                                    <option value="sayclub.com">sayclub.com</option>
                                                    <option value="shinbiro.com">shinbiro.com</option>
                                                    <option value="yahoo.co.kr">yahoo.co.kr</option>
                                                    <option value="yahoo.com">yahoo.com</option>
                                                    <option value="moel.go.kr">moel.go.kr</option>
                                                    <option value="korea.kr">korea.kr</option>
                                                    <option value="기타(직접입력)" selected="selected">기타(직접입력)</option>
                                                </select>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <h3 class="tit font-black">구직활동 및 입사지원정보 수신여부</h3>
                        <div class="table-wrap mb50">
                            <table class="board-form">
                                <caption>구직활동 및 입사지원정보 수신여부 설정</caption>
                                <colgroup>
                                    <col style="width:155px;">
                                    <col>
                                </colgroup>
                                <tbody>
                                    <tr>
                                        <th scope="row">휴대전화 문자서비스</th>
                                        <td>
                                            <div class="mt05 mb05">
                                                <p class="mg00">휴대전화로 문자서비스를 받으시겠습니까?</p>
                                                <label><input type="radio" name="smsRcvYn" id="smsRcvYn1" value="Y" checked="checked" onclick="fnOpenLatte('/indivMemberSrv/custInfoAdmin/PopReceiveAgree.do?returnFunction=smsReceiveAgreeRtn');">
                                                    수신</label>
                                                <label class="ml10"><input type="radio" name="smsRcvYn" id="smsRcvYn2" value="N">
                                                    수신안함</label>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row">메일링서비스</th>
                                        <td>
                                            <div class="mt05 mb05">
                                                <p class="mg00">고용노동부에서 제공하는 취업정보, 행사, 이벤트, 세미나, 박람회 등 새로운 소식을 받으시겠습니까?</p>
                                                <label><input type="radio" name="mailsvcRcvYn" id="mailsvcRcvYn1" value="Y" onclick="fnOpenLatte('/indivMemberSrv/custInfoAdmin/PopReceiveAgree.do?returnFunction=mailReceiveAgreeRtn');">
                                                    수신</label>
                                                <label class="ml10"><input type="radio" name="mailsvcRcvYn" id="mailsvcRcvYn2" value="N" checked="checked">
                                                    수신안함</label>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <h3 class="tit font-black">사용자 통합관리시스템(One-ID) 공지 수신여부</h3>
                        <div class="table-wrap mb50">
                            <table class="board-form">
                                <caption>사용자 통합관리시스템(One-ID) 공지 수신여부 설정</caption>
                                <colgroup>
                                    <col style="width:155px;">
                                    <col>
                                </colgroup>
                                <tbody>
                                    <tr>
                                        <th scope="row">휴대전화 문자서비스</th>
                                        <td>
                                            <div class="mt05 mb05">
                                                <label><input type="radio" name="imsSmsRcvYn" id="imsSmsRcvYn1" value="Y" onclick="fnOpenLatte('/indivMemberSrv/custInfoAdmin/PopImsSmsReceiveAgree.do?returnFunction=imsSmsReceiveAgreeRtn');">
                                                    수신</label>
                                                <label class="ml10"><input type="radio" name="imsSmsRcvYn" id="imsSmsRcvYn2" value="N" checked="checked">
                                                    수신안함</label>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row">메일링서비스</th>
                                        <td>
                                            <div class="mt05 mb05">
                                                <label><input type="radio" name="imsMailsvcRcvYn" id="imsMailsvcRcvYn1" value="Y" onclick="fnOpenLatte('/indivMemberSrv/custInfoAdmin/PopImsMailReceiveAgree.do?returnFunction=imsMailReceiveAgreeRtn');">
                                                    수신</label>
                                                <label class="ml10"><input type="radio" name="imsMailsvcRcvYn" id="imsMailsvcRcvYn2" value="N" checked="checked">
                                                    수신안함</label>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <!-- 20170602 네이버,소셜 로그인 연동 간편 로그인 추가 -->
                        <!-- //20170602 네이버,소셜 로그인 연동 간편 로그인 추가 -->
                        <div class="btn-group">
                            <a href="mypage.do" class="button navy">취소</a>
                            <button type="button" onclick="location.href='mypageUpdateAf.do'" class="button blue">확인</button>             
                            <a href="memberDelete.do" class="button navy">탈퇴하라!</a>
                        </div>
                        <div>
                            <input type="hidden" name="_csrf" value="276c2a08-bf52-456d-bf52-4689a4010d1f">
                        </div>
                    </form>
                    <!-- 카카오 로그인을 위한 폼  -->
                    <form id="snsLoginFrm" action="/member/snsLoginProcess.do" method="post" name="snsLoginFrm">
                        <input type="hidden" name="snsType" id="snsType" value="">
                        <input type="hidden" name="accessToken" id="accessToken" value="">
                        <input type="hidden" name="redirectUrl" id="redirectUrl" value="">
                        <div>
                            <input type="hidden" name="_csrf" value="276c2a08-bf52-456d-bf52-4689a4010d1f">
                        </div>
                    </form>
                </section>
                <script type="text/javascript" src="/js/worknet.snsLogin.js"></script>
                <script type="text/javascript">
                    worknet.snsLogin.init("/member/bodyLogin.do", "/member/snsLoginProcess.do", "N");
                </script>
                <script>
                    // 우클릭 방지
                    $(document).ready(function () {
                        $('body').contextmenu(function () {
                            return false;
                        });
                    });
                </script>
                <script type="text/javascript" src="/webfilter/js/webfilter.js" defer="defer"></script>
                <iframe id="webfilterTargetFrame" name="webfilterTargetFrame" width="0" height="0" frameborder="0" scrolling="no" title="webfilter Target  Frame"></iframe>
            </div>
            <script type="text/javascript">
                console.timeEnd('checktime');
                console.time('checktime2');
                $(document).ready(function () {
                    console.timeEnd('checktime2');
                });
                
                
            </script>
            
            <script type="text/javascript">
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

            </script>
            
           
        </div>

    </body>
</html>