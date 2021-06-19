<!DOCTYPE html>
<%@page import="bit.com.a.dto.ApplyParam"%>
<%@page import="bit.com.a.dto.ApplyDto"%>
<%@page import="bit.com.a.dto.RecruitDto"%>
<%@page import="java.util.List"%>
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

td{
 text-align: center;
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


		</div>
	</div>

	<nav id="gnb">
		<ul>
			<c:if test="${company.companytype == null }">
			<li><a href="companywrite.do" class="menu"><span>기업정보등록</span></a></li>
			</c:if>
			<li><a href="companyupdate.do?companyid=${login.memberid }" id="updateBtn" class="menu"><span>기업정보 수정</span></a></li>
			
			<li><a href="companydetail.do?companyid=${login.memberid }" class="menu"><span>기업정보</span></a></li>

			<li><a href="createTest.do" class="menu"><span>공고등록</span></a></li>
			<li><a href="myRecruitList.do?memberid=${login.memberid }" class="menu"><span>공고현황</span></a></li>	
			
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
						<a href="buspageUpdate.do" target="_self">회원정보 수정</a>
					</li>
					<li>
						<a href="businessDelete.do" target="_self">회원탈퇴</a>
					</li>
				</ul>
			</div>
		</li>
		<li>
			<a href="/indivMemberSrv/custInfoAdmin/retrieveIndivCustInfo.do" target="_self">프리미엄 회원가입</a>
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
                        <em>지원현황</em>
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
 
 <% List<ApplyParam> applylist =(List<ApplyParam>) request.getAttribute("applylist"); %>
 
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
								<div class="tit-area"><span>MY공고내역</span>
								
								<div class="con-resume">
									<table>
										
										<colgroup>
											<col style="width:50px">
											<col style="width:300px">
											<col style="width:100px">
											<col style="width:100px">
										</colgroup>
										<tbody>			
			    						<tr>
								     		<th>지원번호</th>
								     		<td style="text-align: center;">이력서</td>
								     		<td>지원자</td>
								     		<td>지원일</td>
								     	</tr>
								     	<% for(int i=0; i<applylist.size();i++){ %>
								     	<tr>
								     		<th><p><%=i+1 %></p></th>
								     		<td><a href="Resumedetail2.do?seq=<%=applylist.get(i).getResumeseq() %>"><%=applylist.get(i).getResumetitle() %></a></td>
								     		<td><%=applylist.get(i).getName() %></td>
								     		<td><%=applylist.get(i).getApplydate() %></td>
								     	</tr>
								     	
								    	<%} %>
										
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


<script type="text/javascript">
//지원현황 이동
function applyList(jobseq) {
	alert(jobseq);
	location.href = "goApplylist.do?jobseq="+jobseq;
}


//프리미엄 결제창 이동
function priMember(memberid, companyname, name, comaddress) {
alert("priMember");	
	   location.href = "priMember.do?memberid="+memberid+"&companyname="+companyname +"&name="+name+"&comaddress="+comaddress;
	} 

</script>

</body>
</html>
