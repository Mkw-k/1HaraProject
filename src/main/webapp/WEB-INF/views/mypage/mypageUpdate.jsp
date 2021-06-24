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
               <a href="logout.do" onclick="logout();" class="font-blue">로그아웃</a>

            <!-- E : 2018-09-28 추가 -->
            <!--// 로그인 후 -->
            <!-- 20201022 추가 -->

            <!-- //20201022 추가 -->
<!--             <div class="font-control"> -->
<!--                <p>글자크기</p> -->
<!--                <button type="button" class="big">글자 크게 하기</button> -->
<!--                <button type="button" class="small">글자 작게 하기</button> -->
<!--                <button type="button" class="reset">글자 초기화</button> -->
<!--             </div> -->
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
            <a href="/jobyoung/main.do">청년</a>
            <a href="/woman/main/main.do">여성</a>
            <a href="/senior/main/main.do">장년</a>
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
                        <a href="/psnInfo/psnInfoSrch/dtlPsnSrchMain.do">
                           인재정보 홈
                        </a>
                     </p>
                     <p>
                        <a href="/psnInfo/psnInfoSrch/dtlPsnSrch.do">
                           인재정보 상세검색
                        </a>
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
<nav id="lnb">
	<!-- S : 2018-09-28 추가 -->
	<p class="tit"><a href="/indivMemberSrv/main/indivMemberSrvMain.do">마이페이지</a></p>
	<!-- E : 2018-09-28 추가 -->
	<ul>
		<li>
			<a href="resumeMain.do?memberid=${login.memberid }" target="_self">이력서관리·구직신청</a>
			<button class="btn-show">이력서관리·구직신청 메뉴 닫기</button>
			<div class="depth3">
				<ul>
					<li>
						<a href="writeResume.do" target="_self">이력서 등록</a>
					</li>
					<li>
						<a href="pdslist.do" target="_self">이력서 양식 다운로드</a>
					</li>
					<li>
						<a href="/indivMemberSrv/aplentMng/seekActvHist/seekActvHistList.do" target="_self">구직활동내역</a>
					</li>
				</ul>
			</div>
		</li>
		<li>
			<a href="/indivMemberSrv/custInfoAdmin/retrieveIndivCustInfo.do" target="_self">회원정보 관리</a>
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
						<a href="javascript:check('${login.memberid}')" target="_self">지원내역확인 </a>
					</li>
					<li>
      						<a href="memberDelete.do" target="_self">회원탈퇴</a>
                </li>

	</ul>
</nav>



                <section id="contents" class="mypage">
                    <form id="registForm" name="registForm" action ="mypageUpdateAf.do" method="post"  enctype="multipart/form-data">
                        <input type="hidden" id="checkAddr" name="checkAddr" value="">
                        <input type="hidden" id="regionCd" name="regionCd" value="28245">
                        <input type="hidden" id="strtnmCd" name="strtnmCd" value="282453155006">
                        <input type="hidden" id="dongNo" name="dongNo" value="106">
                        <input type="hidden" name="zipCd" id="zipCd">
                        <input type="hidden" name="basicAddr" id="basicAddr">
                        <input type="hidden" name="detailAddr" id="detailAddr">
                        <input type="hidden" name="strtnmZipCd" id="strtnmZipCd">
                        <input type="hidden" name="strtnmBasicAddr" id="strtnmBasicAddr">
                       <div class="tit-util">
                           <h2 class="tit" style="align:center;">내 정보수정 / 성명변경</h2>
                           <span class="hide-location" id="navi_1">마이페이지(개인)</span>
                           <span class="hide-location" id="navi_2">회원정보 관리</span>
                           <span class="hide-location" id="navi_3">내 정보수정 / 성명변경</span>
                           <div class="page-util"><!-- 기능 버튼 들어갈 예정 --></div>
                       </div>
                       <div class="sub-visual-noline">
                          <!-- 프로필사진 들어가는곳  -->
                        <ul>
                      <li class="img" style="list-style: none; margin-left : 200px">
                                <div id="image_preview">
                                   <c:choose>
                                          <c:when test="${dto.userpic == null }">
                                             <img src="unnamed.png" style="width: 50px;height: 50px;">
                                      </c:when>
                                      <c:otherwise>
                                         <img src="./upload/${dto.newuserpic}" style="width: 50px;height: 50px;">
                                      </c:otherwise>
                                   </c:choose>
                                </div>
                                <h4 style="margin-left: 35px;">프로필 사진을 등록해주세요</h4>
                                <div class="f_box">
                                        <label for="img"></label>
                                        <input type="file" name="fileload" id="img">
                                </div>
                            </li>
                  </ul>
                       <script>
                            // 이미지 업로드
                            $('#img').on('change', function() {
                               alert($('#img').val());
                            ext = $(this).val().split('.').pop().toLowerCase(); //확장자
                            //배열에 추출한 확장자가 존재하는지 체크
                            if($.inArray(ext, ['gif', 'png', 'jpg', 'jpeg']) == -1) {
                                resetFormElement($(this)); //폼 초기화
                                window.alert('이미지 파일이 아닙니다! (gif, png, jpg, jpeg 만 업로드 가능)');
                            } else {
                                file = $('#img').prop("files")[0];
                                blobURL = window.URL.createObjectURL(file);
                                $('#image_preview img').attr('src', blobURL);
                                $('#image_preview').slideDown(); //업로드한 이미지 미리보기
                                $(this).slideUp(); //파일 양식 감춤
                            }
                            });

                   </script>
                       <br><br>

                           <p class="txt">
                               일하라는 회원님의 개인정보를 신중히 취급하며, 회원님의 동의 없이 기재하신 회원정보를 공개하지 않습니다.
                               <br>
                               회원님의 정보 가운데 변경된 내용이나 설정 변경이 필요한 경우에는 아래에서 수정해주시기 바랍니다.
                           </p>
                       </div>
                       <h3 class="tit font-black">회원 로그인 정보</h3>
                        <input type="hidden" name="strtnmDetailAddr" id="strtnmDetailAddr">
                        <div class="box-bluegray v2 myinfo-change mb50">
                            <div class="line">
                                <label for="userid" class="label w140px">아이디</label>
                                  ${login.memberid}
                            </div>
                            <div class="line">
                                <label for="username" class="label w140px">성명</label>
                                <input type="text" value="${login.name}"  placeholder="${login.name}"  name="name" title="성명 입력" class="input-text w260px" pil="PF_PNM">
                                <input type="hidden" value="${login.memberid }" placeholder="${login.memberid}"  name="memberid" title="유저아이디" class="input-text w260px" pil="PF_PNM">
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
                                    </tr>
                                    <tr>
                                        <th scope="row">휴대전화</th>
                                        <td>
                                            <div class="tel-wrap mt05">
                                                <select id="hp1" name= title="휴대전화 앞자리 선택">
                                                    <option value="">선택</option>
                                                    <option value="010" selected="selected">010</option>
                                                    <option value="011">011</option>
                                                    <option value="016">016</option>
                                                    <option value="017">017</option>
                                                    <option value="018">018</option>
                                                    <option value="019">019</option>
                                                </select>
                                                <span>-</span>
                                                <input type="text" class="input-text" id="hp2" title="휴대전화 중간자리 입력" maxlength="4" >
                                                <span>-</span>
                                                <input type="text" class="input-text" id="hp3" title="휴대전화 뒷자리 입력"  maxlength="4" >

                                               <input type="hidden" class="input-text" id="allphonenum" name="phonenum" title="번호 합친거"   maxlength="4" >
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row" colspan="2">
                                            <span class="label">이메일</span>
                                        </th>
                                        <td>
                                            <div class="email-wrap mt05">
                                                <input type="text" style="width:400px" name="email" id="email1" maxlength="100" class="input-text" title="이메일 주소 입력" pil="PF_EMAIL",  placeholder="이메일 주소를 입력하세요. ex) example@gmail.com" />
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>

                        
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
                        