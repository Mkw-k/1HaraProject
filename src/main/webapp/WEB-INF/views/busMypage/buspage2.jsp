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
                        <span>[기업]</span>
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
               <a href="logout.do" onclick="f_logout();" class="font-blue">로그아웃</a>


            <!-- 공통 -->
            <a href="#" class="worknet-chatbot-start-button-for-client">챗봇</a>
            <a href="jobtalk.do">취업톡톡<img src="static/images/common/ico/ico-gnb-new.png" style="width:15px; height:15px" class="va-m" alt="new"></a>
            <a href="/useInfo/worknetInfo/useWorknetGuide.do">이용안내</a>
            <a href="info.do">고객센터</a>
            <a href="http://as82.kr/keis" target="_blank" title="새창">원격지원</a>
            <a href="/useInvite/worknetHomepgInvite/sitemap.do">사이트맵</a>

         </div>
      </div>
   </div>

   <div class="middle-area">
      <div class="inner-wrap">


               <h1 class="top-logoWorknet">
                  <a href="home.do"><img src="static/images/common/bg/bg-top-logo.png" style="width:130px; height:60px" alt="일하라"></a>
               </h1>



   <!--
         <form id="searchFrm" name="searchFrm" action="/wnSearch/unifSrch.do" method="post" onsubmit="return false">
            <div class="header-search">
               <div class="searc-area">
                  <input type="search" id="topQuery" name="topQuery" onclick="if(event.keyCode == '13'){goWnSearch();}" maxlength="50" onfocus="input_limit_string(this,'/kor,/eng,/d,/symbol6,/s');" class="input-text" autocomplete="off" title="검색어를 입력해주세요.">
                  <button type="button" onclick="goWnSearch()" class="btn-search">검색</button>
               </div>


						</ul>
					</div>
					<a href="logout.do" onclick="f_logout();" class="font-blue">로그아웃</a>


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
 -->



         <!-- <div class="link-special">
            <a href="/jobyoung/main.do">청년</a> <a href="/woman/main/main.do">여성</a> <a href="/senior/main/main.do">장년</a>
         </div> -->
      </div>
   </div>

   <nav id="gnb">
      <ul>

         <li><a href="companywrite.do?companyid=${login.memberid}" class="menu"><span>기업정보 등록</span></a></li>
         <li><a href="companyupdate.do?companyid=${login.memberid}" class="menu"><span>기업정보 수정</span></a></li>

         <li><a href="companydetail.do?companyid=${login.memberid}" class="menu"><span>기업정보</span></a></li>

         <li><a href="createTest.do" class="menu"><span>공고등록</span></a></li>
         <li><a href="myRecruitList.do?memberid=${login.memberid}" class="menu"><span>공고현황</span></a></li>

      </ul>



   </nav>
</header>
    <!-- 헤더 -->

<nav id="lnb">
	<!-- S : 2018-09-28 추가 -->
	<p class="tit"><a href="/indivMemberSrv/main/indivMemberSrvMain.do">마이페이지</a></p>
	<!-- E : 2018-09-28 추가 -->
	<ul>
		<li>
			<a href="/indivMemberSrv/seekApplyAdmin/resumeMng/resumeMngMain.do" target="_self">공고 관리</a>
			<button class="btn-show">이력서관리·구직신청 메뉴 닫기</button>
			<div class="depth3">
				<ul>
					<li>
						<a href="createTest.do" target="_self">공고등록</a>
					</li>
					<li>
						<a href="myRecruitList.do?memberid=${login.memberid }" target="_self">공고현황 관리</a>
					</li>
				</ul>
			</div>
		</li>
		
		<li>
			<a href="/indivMemberSrv/custInfoAdmin/retrieveIndivCustInfo.do" target="_self">기업정보 관리</a>
			<button class="btn-show">회원정보 관리 메뉴 닫기</button>
			<div class="depth3">
				<ul>
					<li>
						<a href="companydetail.do?companyid=${login.memberid }" target="_self">기업상세정보</a>
					</li>
					<li>
						<a href="companyupdate.do?companyid=${login.memberid }" target="_self">회원정보 수정</a>
					</li>
					<li>
						<a href="businessDelete.do" target="_self">회원탈퇴</a>
					</li>
				</ul>
			</div>
		</li>
		<li>
			<a href="#" target="_self">프리미엄 회원가입</a>
			<button class="btn-show">회원정보 관리 메뉴 닫기</button>
			<div class="depth3">
				<ul>
					<li>
						<a href="javascript:priMember('${login.memberid }','${login.companyname }','${login.name }','${login.comaddress }')" target="_self">가입하기</a>
					</li>
				</ul>
			</div>
		</li>
	</ul>
</nav>    





        <div class="container  bg-gray" id="container">
            <div class="sub-util">
                <div class="inner-wrap">
                    <div class="location">
                        <i class="iconset ico-home">홈</i>
                        <span>마이페이지(기업)</span>
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
                  <!--   <div class="custom-menu">
                        <div>
                            <a href="#" id="myCustomMenu">나만의 맞춤메뉴(<span>0</span>)</a>
                        </div>
                        <span>
                            <a href="javascript:void(0);" onclick="openMyCustomMenu();" title="새창열림">맞춤메뉴설정</a>
                        </span>
                    </div> -->
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
//          console.log('a_text==>' + a_text);
         if(a_text== location_txt  && !isFind) {
            $p_a = $a.parent().parent().parent().parent().find('a').eq(0);
            p_text = $p_a.text().replace(/^\s+/,"").replace(/\s+$/,"");
//             console.log('p_text==>' + p_text);
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

//    회원 취업지원프로그램 고용청으로 변경
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

      smsRcvYnAjax.addParam('chgType'      , objNm);
      smsRcvYnAjax.addParam('chgYn'      , objVal);
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

      emailRcvYnAjax.addParam('chgType'      , objNm);
      emailRcvYnAjax.addParam('chgYn'         , objVal);
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
						<span class="hide-location" id="navi_1">마이페이지(기업)</span>
						<span class="hide-location" id="navi_2">마이페이지(기업) 홈</span>
						<div class="page-util">
							<!-- 기능 버튼 들어갈 예정 -->
						</div>
					</div>
					<div class="mypage-idv-wrap">
						<div class="idv-sec01" style="border: 1px solid #ffffff;">
							<div class="con-top">
								<div class="tit-area"><span>${login.memberid}</span> 님, 반갑습니다.

									<a href="javascript:priMember('${login.memberid }','${login.companyname }','${login.name }','${login.comaddress }')" class="button" style="float: right; margin-left: 5px;" target="_self">프리미엄등록</a>
								
									<a href="pwdcheck.do?memberid=${login.memberid}" class="button">회원정보 수정</a>
								</div>


								<div class="con-resume">
									<table>

										<colgroup>
											<col style="width:100px">
											<col>
											<col style="width:120px">
											<col style="width:140px">
										</colgroup>
										<tbody>
										<c:choose>
										<c:when test="${login.newfilename ne null}">
										<tr>
										<th>
										<img alt="" src ="./upload/${business.newfilename}" style="width: 100px;height: 100px;">
			    						</th>
			    						</tr>
			    						</c:when>
			    						<c:otherwise>
			    						<tr>
								     		<!-- <th>이미지:</th> -->
								     		<th>
								     	 <img style="width: 100px;height: 100px;margin-left: 0px;margin-right: 100px;"
								     	  src="unnamed.png" alt="프로필사진" style="width:126px; height:165px;">
								     		</th>
										</tr>
										</c:otherwise>

										</c:choose>

								     	<tr>
								     		<th>아이디: </th>
								     		<td>${login.memberid }</td>
								     	</tr>

								    	<tr>
								    		<th>회사 이름: </th>
								    		<td>${business.companyname }</td>
								    	</tr>

								    	<tr>
								    		<th>주소: </th>
								    		<td>${business.comaddress }</td>
								    	</tr>

								    	<tr>
								    		<th>상세 주소 : </th>
								    		<td>${business.addressdetail }</td>
								    	</tr>

								    	<tr>
								    		<th>대표자명 : </th>
								    		<td>${business.name }</td>
								    	</tr>

			    						<tr>
												<th >이메일</th>
												<td>
													${business.email}
												</td>

										</tr>


										</tbody>
									</table>
								</div>
							</div>

                  </div>


                  <br><br><br>
                  <div class="box-line v3 blue mt30" style="border-top-color: #ffffff;">
                     <div class="a-c">
                        <ul class="v1" style="margin-bottom: 10px;margin-right: 15px;">

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
<br><br>

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


f
/* 프리미엄결제창이동 */
//프리미엄 결제창 이동
function priMember(memberid, companyname, name, comaddress) {
alert("priMember");
	   location.href = "priMember.do?memberid="+memberid+"&companyname="+companyname +"&name="+name+"&comaddress="+comaddress;
	}



</script>
</body>
</html>
