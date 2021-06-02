<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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

</head>

<body>
<!--  -->
<header id="header">
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
						<a href="/indivMemberSrv/custInfoAdmin/modifyIndivCustInfoView.do" target="_self">회원정보 수정(성명변경)</a>						
					</li>				
					<li>
						<a href="/indivMemberSrv/custInfoAdmin/modifyIndivCustPwdView.do" target="_self">비밀번호 변경</a>											
					</li>						
					<li>
						<a href="/indivMemberSrv/custInfoAdmin/deleteIndivCustView.do" target="_self">회원탈퇴</a>		
					</li>
				</ul>
			</div>
		</li>
	</ul>
</nav>
<h1 class="ci">
<a href="/zf_user/" class="track_event" data-track_event="main|gnb|menu|ci" title="사람인" ondragstart="return false;" oncontextmenu="return false;">
<svg xmlns="http://www.w3.org/2000/svg" width="120" height="24" viewBox="0 0 120 24" class="default">
<title>사람인로고</title>
<g fill="none" fill-rule="evenodd">
<g fill="#4876EF">
<path d="M21.442 18.766l-.037.023c-.275.17-1.112.69-2.634.69-1.578 0-2.483-.665-2.483-1.825 0-1.06.966-1.773 2.403-1.773 1.023 0 1.79.161 2.694.421l.057.016v2.448zm-7.56-8.492c0 .482.195.888.55 1.143.439.313 1.08.363 1.804.139.653-.204 1.632-.447 2.59-.447 1.833 0 2.616.631 2.616 2.112v.802L21.344 14c-.985-.228-1.773-.389-2.946-.389-5.034 0-5.425 3.195-5.425 4.174 0 2.181 1.46 4.513 5.558 4.513 3.199 0 5.09-1.088 5.592-1.422.46-.299.607-.581.607-1.162v-6.389c0-3.462-1.96-5.217-5.825-5.217-1.615 0-3.152.334-3.896.646-.748.3-1.127.812-1.127 1.52zM60.794 9.63l-.05-.051c-.963-1.003-2.176-1.47-3.817-1.47-1.766 0-3.553.552-4.781 1.478-.494.352-.659.66-.659 1.223v9.756c0 .939.778 1.732 1.699 1.732.969 0 1.7-.745 1.7-1.732v-8.514l.086-.054c.262-.167.956-.61 2.114-.61 1.479 0 2.229.82 2.229 2.438v6.74c0 .939.778 1.732 1.699 1.732.952 0 1.699-.761 1.699-1.732v-8.514l.088-.054c.26-.167.955-.61 2.114-.61 1.457 0 2.228.852 2.228 2.464v6.714c0 .939.766 1.732 1.672 1.732.968 0 1.726-.761 1.726-1.732v-6.792c0-3.812-1.78-5.666-5.441-5.666-1.543 0-3.012.512-4.25 1.478l-.056.044zM45.361 18.766l-.036.023c-.275.17-1.112.69-2.634.69-1.579 0-2.484-.665-2.484-1.825 0-1.06.966-1.773 2.404-1.773 1.023 0 1.789.161 2.693.421l.057.016v2.448zm-7.56-8.492c0 .482.196.888.55 1.143.44.313 1.08.363 1.804.139.653-.204 1.632-.447 2.59-.447 1.833 0 2.616.631 2.616 2.112v.802L45.264 14c-.985-.228-1.774-.389-2.947-.389-5.034 0-5.425 3.195-5.425 4.174 0 2.181 1.46 4.513 5.558 4.513 3.199 0 5.09-1.088 5.593-1.422.459-.298.606-.58.606-1.162v-6.389c0-3.462-1.96-5.217-5.825-5.217-1.616 0-3.152.334-3.896.646-.748.3-1.127.812-1.127 1.52zM34.481 8.316c-.522-.128-1.397-.208-2.282-.208-2.943 0-4.631 1.606-4.631 4.407v8.17c0 .889.739 1.613 1.647 1.613.015-.002.022-.004.031-.004l.029.002h.001c.968 0 1.72-.748 1.72-1.704V13.17c0-1.17.48-1.753 1.468-1.783.452-.016.83.059 1.194.13.282.054.549.106.817.106 1.096 0 1.606-.94 1.606-1.574 0-.847-.568-1.463-1.6-1.734M7.45 14.118l-2.102-.429c-1.177-.262-1.678-.647-1.678-1.29 0-.372.194-1.237 1.99-1.237.744 0 1.821.258 2.504.6.852.439 1.73.361 2.237-.197.283-.323.432-.778.397-1.214-.024-.293-.138-.714-.55-1.054C9.39 8.586 7.6 8.108 5.793 8.108c-3.296 0-5.426 1.727-5.426 4.399 0 2.504 2.115 3.572 3.89 4.026.608.155.912.21 1.264.273.252.046.514.093.918.182 1.122.267 1.622.682 1.622 1.343 0 .481-.271 1.287-2.09 1.287-1.26 0-2.623-.353-3.471-.9-.343-.219-.694-.326-1.024-.326-.466 0-.892.212-1.2.627-.469.617-.324 1.62.309 2.147.552.462 2.17 1.537 5.272 1.537 3.286 0 5.494-1.843 5.494-4.586 0-2.087-1.276-3.395-3.901-3.999M75 6.487c-.923 0-1.62.74-1.62 1.721v9.125c0 .933.742 1.721 1.62 1.721.91 0 1.622-.756 1.622-1.72V8.207c0-.965-.712-1.721-1.621-1.721M75 0c-1.386 0-2.432 1.031-2.432 2.398 0 1.384 1.069 2.467 2.433 2.467 1.318 0 2.432-1.13 2.432-2.467C77.433 1.053 76.365 0 75.001 0M85.644 8.108c-3.391 0-5.234 1.19-5.577 1.428-.454.315-.607.623-.607 1.222v9.807c0 .94.783 1.733 1.709 1.733.974 0 1.708-.745 1.708-1.733v-8.513l.037-.023c.498-.309 1.508-.641 2.624-.641 1.29 0 2.667.668 2.667 2.543v6.634c0 .94.783 1.733 1.709 1.733.974 0 1.709-.745 1.709-1.733v-6.792c0-3.706-2.068-5.665-5.979-5.665" transform="translate(27.485)"></path>
</g>
<g transform="translate(0 3.295)">
<circle cx="4.257" cy="4.257" r="4.257" fill="#4876EF"></circle>
<circle cx="15.608" cy="4.257" r="4.257" fill="#B4C0D3"></circle>
<circle cx="4.257" cy="15.608" r="4.257" fill="#B4C0D3"></circle>
<circle cx="15.608" cy="15.608" r="4.257" fill="#00D3AB"></circle>
</g>
</g>
</svg>
<svg xmlns="http://www.w3.org/2000/svg" width="120" height="24" viewBox="0 0 120 24" class="default fixed">
<title>사람인로고</title>
<g fill="none" fill-rule="evenodd">
<g fill="#FFF">
<path d="M21.442 18.766l-.037.023c-.275.17-1.112.69-2.634.69-1.578 0-2.483-.665-2.483-1.825 0-1.06.966-1.773 2.403-1.773 1.023 0 1.79.161 2.694.421l.057.016v2.448zm-7.56-8.492c0 .482.195.888.55 1.143.439.313 1.08.363 1.804.139.653-.204 1.632-.447 2.59-.447 1.833 0 2.616.631 2.616 2.112v.802L21.344 14c-.985-.228-1.773-.389-2.946-.389-5.034 0-5.425 3.195-5.425 4.174 0 2.181 1.46 4.513 5.558 4.513 3.199 0 5.09-1.088 5.592-1.422.46-.299.607-.581.607-1.162v-6.389c0-3.462-1.96-5.217-5.825-5.217-1.615 0-3.152.334-3.896.646-.748.3-1.127.812-1.127 1.52zM60.794 9.63l-.05-.051c-.963-1.003-2.176-1.47-3.817-1.47-1.766 0-3.553.552-4.781 1.478-.494.352-.659.66-.659 1.223v9.756c0 .939.778 1.732 1.699 1.732.969 0 1.7-.745 1.7-1.732v-8.514l.086-.054c.262-.167.956-.61 2.114-.61 1.479 0 2.229.82 2.229 2.438v6.74c0 .939.778 1.732 1.699 1.732.952 0 1.699-.761 1.699-1.732v-8.514l.088-.054c.26-.167.955-.61 2.114-.61 1.457 0 2.228.852 2.228 2.464v6.714c0 .939.766 1.732 1.672 1.732.968 0 1.726-.761 1.726-1.732v-6.792c0-3.812-1.78-5.666-5.441-5.666-1.543 0-3.012.512-4.25 1.478l-.056.044zM45.361 18.766l-.036.023c-.275.17-1.112.69-2.634.69-1.579 0-2.484-.665-2.484-1.825 0-1.06.966-1.773 2.404-1.773 1.023 0 1.789.161 2.693.421l.057.016v2.448zm-7.56-8.492c0 .482.196.888.55 1.143.44.313 1.08.363 1.804.139.653-.204 1.632-.447 2.59-.447 1.833 0 2.616.631 2.616 2.112v.802L45.264 14c-.985-.228-1.774-.389-2.947-.389-5.034 0-5.425 3.195-5.425 4.174 0 2.181 1.46 4.513 5.558 4.513 3.199 0 5.09-1.088 5.593-1.422.459-.298.606-.58.606-1.162v-6.389c0-3.462-1.96-5.217-5.825-5.217-1.616 0-3.152.334-3.896.646-.748.3-1.127.812-1.127 1.52zM34.481 8.316c-.522-.128-1.397-.208-2.282-.208-2.943 0-4.631 1.606-4.631 4.407v8.17c0 .889.739 1.613 1.647 1.613.015-.002.022-.004.031-.004l.029.002h.001c.968 0 1.72-.748 1.72-1.704V13.17c0-1.17.48-1.753 1.468-1.783.452-.016.83.059 1.194.13.282.054.549.106.817.106 1.096 0 1.606-.94 1.606-1.574 0-.847-.568-1.463-1.6-1.734M7.45 14.118l-2.102-.429c-1.177-.262-1.678-.647-1.678-1.29 0-.372.194-1.237 1.99-1.237.744 0 1.821.258 2.504.6.852.439 1.73.361 2.237-.197.283-.323.432-.778.397-1.214-.024-.293-.138-.714-.55-1.054C9.39 8.586 7.6 8.108 5.793 8.108c-3.296 0-5.426 1.727-5.426 4.399 0 2.504 2.115 3.572 3.89 4.026.608.155.912.21 1.264.273.252.046.514.093.918.182 1.122.267 1.622.682 1.622 1.343 0 .481-.271 1.287-2.09 1.287-1.26 0-2.623-.353-3.471-.9-.343-.219-.694-.326-1.024-.326-.466 0-.892.212-1.2.627-.469.617-.324 1.62.309 2.147.552.462 2.17 1.537 5.272 1.537 3.286 0 5.494-1.843 5.494-4.586 0-2.087-1.276-3.395-3.901-3.999M75 6.487c-.923 0-1.62.74-1.62 1.721v9.125c0 .933.742 1.721 1.62 1.721.91 0 1.622-.756 1.622-1.72V8.207c0-.965-.712-1.721-1.621-1.721M75 0c-1.386 0-2.432 1.031-2.432 2.398 0 1.384 1.069 2.467 2.433 2.467 1.318 0 2.432-1.13 2.432-2.467C77.433 1.053 76.365 0 75.001 0M85.644 8.108c-3.391 0-5.234 1.19-5.577 1.428-.454.315-.607.623-.607 1.222v9.807c0 .94.783 1.733 1.709 1.733.974 0 1.708-.745 1.708-1.733v-8.513l.037-.023c.498-.309 1.508-.641 2.624-.641 1.29 0 2.667.668 2.667 2.543v6.634c0 .94.783 1.733 1.709 1.733.974 0 1.709-.745 1.709-1.733v-6.792c0-3.706-2.068-5.665-5.979-5.665" transform="translate(27.485)"></path>
</g>
<g transform="translate(0 3.295)">
<circle cx="4.257" cy="4.257" r="4.257" fill="#114FF4"></circle>
<circle cx="15.608" cy="4.257" r="4.257" fill="#B4C0D3"></circle>
<circle cx="4.257" cy="15.608" r="4.257" fill="#B4C0D3"></circle>
<circle cx="15.608" cy="15.608" r="4.257" fill="#00D3AB"></circle>
</g>
</g>
</svg>
</a>
</h1>
<nav id="gnb" class="gnb">
<ul class="gnb_menu">
<li data-gnb="1"><a href="/zf_user/jobs/list/domestic" class="track_event" data-track_event="main|gnb|menu|area">지역별</a></li>
<li data-gnb="1"><a href="/zf_user/jobs/list/job-category" class="track_event" data-track_event="main|gnb|menu|job">직업별</a></li>
<li data-gnb="2"><a href="/zf_user/jobs/list/headhunting" class="track_event" data-track_event="main|gnb|menu|headhunting">헤드헌팅</a></li>
<li data-gnb="2"><a href="/zf_user/jobs/hot100" class="track_event" data-track_event="main|gnb|menu|hot100">HOT100<em class="ico_new">new</em></a></li>
<li data-gnb="2"><a href="/zf_user/jobs/public/list" class="track_event" data-track_event="main|gnb|menu|public">공채</a></li>
<li data-gnb="3"><a href="/zf_user/companylab" class="track_event" data-track_event="main|gnb|menu|companylab">기업연구소</a></li>
<li data-gnb="3"><a href="/zf_user/company-review-qst-and-ans" class="track_event" data-track_event="main|gnb|menu|qst-and-ans">취준진담<em class="ico_badge_qna">고민해결</em></a></li>
</ul>
<div id="hidden_gnb" class="hidden_gnb">
<span class="btn_more" title="메뉴 더보기"><span class="blind">더보기</span></span>
<ul>
<li data-gnb="1"><a href="/zf_user/jobs/list/domestic" class="track_event" data-track_event="main|gnb|hidden_menu|area">지역별</a></li>
<li data-gnb="1"><a href="/zf_user/jobs/list/job-category" class="track_event" data-track_event="main|gnb|hidden_menu|job">직업별</a></li>
<li data-gnb="2"><a href="/zf_user/jobs/hot100" class="track_event" data-track_event="main|gnb|hidden_menu|hot100">HOT100</a></li>
<li data-gnb="2"><a href="/zf_user/curation" class="track_event" data-track_event="main|gnb|hidden_menu|curation">큐레이션</a></li>
<li data-gnb="2"><a href="/zf_user/jobs/public/list" class="track_event" data-track_event="main|gnb|hidden_menu|public">공채</a></li>
<li data-gnb="3"><a href="/zf_user/companylab" class="track_event" data-track_event="main|gnb|hidden_menu|companylab">기업연구소</a></li>
<li data-gnb="3"><a href="/zf_user/memcom/talent-pool/main#/recommend" class="track_event" data-track_event="main|gnb|hidden_menu|talent-pool">인재Pool</a></li>
</ul>
</div>
</nav>
<ul class="utility">
<li>
<button type="button" id="search_open" class="btn_search">카카오</button>
</li>
<li id="member_menu" class="member_menu">
<a href="/zf_user/auth?url=%2Fzf_user%2F" id="btn_member" class="btn_member track_event" data-track_event="main|gnb|layer_sign|signin">로그인</a>
<div id="layer_member" class="wrap_member" style="display: none;">
<div class="member">
<ul class="list nologin">
<li class="btn_link"><a href="/zf_user/auth?ut=p" class="track_event" data-track_event="main|gnb|layer_sign|signin01"><strong>개인회원</strong> 로그인<span class="sri_gnb_option ic_go_arrow"></span></a></li>
<li><a href="/zf_user/resume/resume-manage" class="track_event" data-track_event="main|gnb|layer_sign|signin02">이력서 관리</a></li>
<li><a href="/zf_user/member/avatar/list" class="track_event ico_recommend" data-track_event="main|gnb|layer_sign|signin03">추천</a></li>
<li><a href="/zf_user/member/svq/list" class="track_event" data-track_event="main|gnb|layer_sign|signin_svq">인적성검사</a></li>
<li><a href="/zf_user/member/suited-recruit-mail/list" class="track_event" data-track_event="main|gnb|layer_sign|signin04">맞춤채용 정보</a></li>
</ul>
<ul class="list nologin">
<li class="btn_link"><a href="/zf_user/auth?ut=c" class="track_event" data-track_event="main|gnb|layer_sign|signin05"><strong>기업회원</strong> 로그인<span class="sri_gnb_option ic_go_arrow"></span></a></li>
<li><a href="/zf_user/recruit-manage" class="track_event" data-track_event="main|gnb|layer_sign|signin06">공고 등록</a></li>
<li><a href="/zf_user/company/recruit-manage" class="track_event" data-track_event="main|gnb|layer_sign|signin07">공고·지원자 관리</a></li>
<li><a href="/zf_user/service/products" class="track_event" data-track_event="main|gnb|layer_sign|signin08">채용 상품 안내</a></li>
<li><a href="/zf_user/service/products?part_id=talent_search" class="track_event" data-track_event="main|gnb|layer_sign|signin09">인재 상품 안내</a></li>
<li class="com_member_link"><a href="/zf_user/curation?inner_source=saramin&amp;inner_medium=banner&amp;inner_campaign=main_top_login&amp;inner_term=curation" target="_blank" title="큐레이션 페이지로 이동합니다."><img src="//www.saraminimage.co.kr/banner/20210310/A_02.png" width="164" height="52" alt="다양하게 골라보는 큐레이션"></a></li>
</ul>
</div>
</div>
</li>
<li><a href="/zf_user/resume/resume-manage" class="btn_link_menu ico_resume track_event" data-track_event="main|gnb|menu|resume_manage">이력서 관리</a></li>
<li><a href="/zf_user/member/avatar/list" class="track_event" data-track_event="main|gnb|menu|avatar">추천</a></li>
<li><a href="/zf_user/member/svq/list" class="track_event" data-track_event="main|gnb|hidden_menu|svq">인적성검사</a></li>
<li><a href="/zf_user/memcom" class="btn_company_service track_event" title="기업서비스" data-track_event="main|gnb|menu|company"><span>기업 서비스</span></a></li>            </ul>
</div>
<div id="total_menu" class="wrap_total_menu">
<a href="/zf_user/recruit" class="btn_menu" title="전체메뉴 보기">
<span class="blind">전체메뉴</span>
</a>
<div id="layer_menu" class="total_menu"> <div class="inner"> <div class="title"> <span>전체 채용정보</span> <a href="/zf_user/curation" class="track_event" data-track_event="main|gnb|public|m900">채용정보 홈</a> </div> <ul class="recruits"> <li class="row1"> <a href="/zf_user/area-recruit" class="title track_event" data-track_event="main|gnb|menu|total">지역별</a> <ul class="col4"> <li><a href="/zf_user/jobs/list/domestic?loc_mcd=101000" class="track_event" data-track_event="main|gnb|public|m021">서울</a></li> <li><a href="/zf_user/jobs/list/domestic?loc_mcd=102000" class="track_event" data-track_event="main|gnb|public|m021">경기</a></li> <li><a href="/zf_user/jobs/list/domestic?loc_mcd=108000" class="track_event" data-track_event="main|gnb|public|m021">인천</a></li> <li><a href="/zf_user/jobs/list/domestic?loc_mcd=106000" class="track_event" data-track_event="main|gnb|public|m021">부산</a></li> <li><a href="/zf_user/jobs/list/domestic?loc_mcd=104000" class="track_event" data-track_event="main|gnb|public|m021">대구</a></li> <li><a href="/zf_user/jobs/list/domestic?loc_mcd=105000" class="track_event" data-track_event="main|gnb|public|m021">대전</a></li> <li><a href="/zf_user/jobs/list/domestic?loc_mcd=103000" class="track_event" data-track_event="main|gnb|public|m021">광주</a></li> <li><a href="/zf_user/jobs/list/domestic?loc_mcd=107000" class="track_event" data-track_event="main|gnb|public|m021">울산</a></li> <li><a href="/zf_user/jobs/list/domestic?loc_mcd=118000" class="track_event" data-track_event="main|gnb|public|m021">세종</a></li> <li><a href="/zf_user/jobs/list/domestic?loc_mcd=109000" class="track_event" data-track_event="main|gnb|public|m021">강원</a></li> <li><a href="/zf_user/jobs/list/domestic?loc_mcd=110000" class="track_event" data-track_event="main|gnb|public|m021">경남</a></li> <li><a href="/zf_user/jobs/list/domestic?loc_mcd=111000" class="track_event" data-track_event="main|gnb|public|m021">경북</a></li> <li><a href="/zf_user/jobs/list/domestic?loc_mcd=112000" class="track_event" data-track_event="main|gnb|public|m021">전남</a></li> <li><a href="/zf_user/jobs/list/domestic?loc_mcd=113000" class="track_event" data-track_event="main|gnb|public|m021">전북</a></li> <li><a href="/zf_user/jobs/list/domestic?loc_mcd=115000" class="track_event" data-track_event="main|gnb|public|m021">충남</a></li> <li><a href="/zf_user/jobs/list/domestic?loc_mcd=114000" class="track_event" data-track_event="main|gnb|public|m021">충북</a></li> <li><a href="/zf_user/jobs/list/domestic?loc_mcd=116000" class="track_event" data-track_event="main|gnb|public|m021">제주</a></li> <li><a href="/zf_user/area-recruit/index-foreign-map" class="track_event" data-track_event="main|gnb|public|m022">해외</a></li> <li><a href="/zf_user/jobs/list/subway" class="track_event" data-track_event="main|gnb|public|m022">역세권별</a> <span class="img_main ico_new"><span class="blind">new</span></span></li> </ul> </li> <li class="row1 wide"> <a href="/zf_user/upjikjong-recruit/select-upjikjong/recruitform_type/classified" class="title track_event" data-track_event="main|gnb|menu|total">직업별(직종)</a> <ul class="col2"> <li><a href="/zf_user/jobs/list/job-category?cat_bcd=1" class="track_event" data-track_event="main|gnb|public|m030">경영∙사무</a></li> <li><a href="/zf_user/jobs/list/job-category?cat_bcd=2" class="track_event" data-track_event="main|gnb|public|m030">영업∙고객상담</a></li> <li><a href="/zf_user/jobs/list/job-category?cat_bcd=4" class="track_event" data-track_event="main|gnb|public|m030">IT∙인터넷</a></li> <li><a href="/zf_user/jobs/list/job-category?cat_bcd=12" class="track_event" data-track_event="main|gnb|public|m030">디자인</a></li> <li><a href="/zf_user/jobs/list/job-category?cat_bcd=11" class="track_event" data-track_event="main|gnb|public|m030">서비스</a></li> <li><a href="/zf_user/jobs/list/job-category?cat_bcd=5" class="track_event" data-track_event="main|gnb|public|m030">전문직</a></li> <li><a href="/zf_user/jobs/list/job-category?cat_bcd=13" class="track_event" data-track_event="main|gnb|public|m030">의료</a></li> <li><a href="/zf_user/jobs/list/job-category?cat_bcd=3" class="track_event" data-track_event="main|gnb|public|m030">생산∙제조</a></li> <li><a href="/zf_user/jobs/list/job-category?cat_bcd=9" class="track_event" data-track_event="main|gnb|public|m030">건설</a></li> <li><a href="/zf_user/jobs/list/job-category?cat_bcd=10" class="track_event" data-track_event="main|gnb|public|m030">유통∙무역</a></li> <li><a href="/zf_user/jobs/list/job-category?cat_bcd=7" class="track_event" data-track_event="main|gnb|public|m030">미디어</a></li> <li><a href="/zf_user/jobs/list/job-category?cat_bcd=6" class="track_event" data-track_event="main|gnb|public|m030">교육</a></li> <li><a href="/zf_user/jobs/list/job-category?cat_bcd=8" class="track_event" data-track_event="main|gnb|public|m030">특수계층∙공공</a></li> </ul> </li> <li class="row1"> <a href="/zf_user/curation" class="title track_event" data-track_event="main|gnb|public|total">큐레이션</a> <ul class="col2"> <li> <a href="/zf_user/jobs/list/curation?category_seq=46" class="track_event" data-track_event="main|gnb|public|cu046">반짝오픈</a> </li> <li> <a href="/zf_user/jobs/list/curation?category_seq=44" class="track_event" data-track_event="main|gnb|public|cu044">인턴관</a> </li> <li> <a href="/zf_user/jobs/list/curation?category_seq=43" class="track_event" data-track_event="main|gnb|public|cu043">기업별</a> </li> <li> <a href="/zf_user/jobs/list/curation?category_seq=36" class="track_event" data-track_event="main|gnb|public|cu036">경력관 </a> </li> <li> <a href="/zf_user/jobs/list/curation?category_seq=40" class="track_event" data-track_event="main|gnb|public|cu040">고졸관</a> </li> <li> <a href="/zf_user/jobs/list/curation?category_seq=37" class="track_event" data-track_event="main|gnb|public|cu037">복지관</a> </li> <li> <a href="/zf_user/jobs/list/curation?category_seq=38" class="track_event" data-track_event="main|gnb|public|cu038">연봉관</a> </li> <li> <a href="/zf_user/jobs/list/curation?category_seq=33" class="track_event" data-track_event="main|gnb|public|cu033">HOT공고</a> </li> </ul> </li> <li class="row1"> <a href="/zf_user/jobs/public/list" class="title track_event" data-track_event="main|gnb|menu|total">공채의 명가</a> <ul> <li><a href="/zf_user/jobs/public/list" class="track_event" data-track_event="main|gnb|public|m012">1000대기업 채용</a></li> <li><a href="/zf_user/jobs/public/list?sort=ud&amp;quick_apply=&amp;search_day=&amp;keyword=&amp;company_scale%5B%5D=3#listTop" class="track_event" data-track_event="main|gnb|public|m017">중견기업 채용</a></li> <li><a href="/zf_user/calendar" class="track_event" data-track_event="main|gnb|public|m013">채용 달력</a></li> </ul> </li> <li> <a class="title">기업별</a> <ul> <li><a href="/zf_user/search?company_type=scale001&amp;open_search_detail=y" class="track_event" data-track_event="main|gnb|public|m050">대기업 </a></li><li><a href="/zf_user/search?company_type=foreign&amp;open_search_detail=y" class="track_event" data-track_event="main|gnb|public|m050">외국계 기업</a></li> <li><a href="/zf_user/search?company_type=public&amp;open_search_detail=y" class="track_event" data-track_event="main|gnb|public|m050">공사∙공기업∙공공기관</a></li> <li><a href="/zf_user/search?company_type=kosdaq%2Ckospi%2Ckonex&amp;open_search_detail=y" class="track_event" data-track_event="main|gnb|public|m050">상장기업</a></li> <li><a href="/zf_user/search?company_type=goodcompany%2Cmain-biz%2Cinnobiz%2Cventure%2Cw-small-giant&amp;open_search_detail=y" class="track_event" data-track_event="main|gnb|public|m050">강소∙인증기업</a></li> </ul> </li> <li class="wide"> <a href="/zf_user/upjikjong-recruit/select-upjikjong/recruitform_type/industrial" class="title track_event" data-track_event="main|gnb|menu|total">산업별(업종)</a> <ul class="col2"> <li><a href="/zf_user/jobs/list/industry?ind_bcd=1" class="track_event" data-track_event="main|gnb|public|m040">서비스업</a></li> <li><a href="/zf_user/jobs/list/industry?ind_bcd=7" class="track_event" data-track_event="main|gnb|public|m040">의료∙제약∙복지</a></li> <li><a href="/zf_user/jobs/list/industry?ind_bcd=2" class="track_event" data-track_event="main|gnb|public|m040">제조∙화학</a></li> <li><a href="/zf_user/jobs/list/industry?ind_bcd=8" class="track_event" data-track_event="main|gnb|public|m040">판매∙유통</a></li> <li><a href="/zf_user/jobs/list/industry?ind_bcd=3" class="track_event" data-track_event="main|gnb|public|m040">IT∙웹∙통신</a></li> <li><a href="/zf_user/jobs/list/industry?ind_bcd=9" class="track_event" data-track_event="main|gnb|public|m040">건설업</a></li> <li><a href="/zf_user/jobs/list/industry?ind_bcd=6" class="track_event" data-track_event="main|gnb|public|m040">교육업</a></li> <li><a href="/zf_user/jobs/list/industry?ind_bcd=5" class="track_event" data-track_event="main|gnb|public|m040">미디어∙디자인</a></li> <li><a href="/zf_user/jobs/list/industry?ind_bcd=4" class="track_event" data-track_event="main|gnb|public|m040">은행∙금융업</a></li> <li><a href="/zf_user/jobs/list/industry?ind_bcd=10" class="track_event" data-track_event="main|gnb|public|m040">기관∙협회</a></li> </ul> </li> <li> <a class="title">전공별</a> <ul class="col2"> <li><a href="/zf_user/search?major_cd=maj021&amp;open_search_detail=y" class="track_event" data-track_event="main|gnb|public|m080">기계공학</a></li> <li><a href="/zf_user/search?major_cd=maj014%2Cmaj055&amp;open_search_detail=y" class="track_event" data-track_event="main|gnb|public|m080">전기공학</a></li> <li><a href="/zf_user/search?major_cd=maj015&amp;open_search_detail=y" class="track_event" data-track_event="main|gnb|public|m080">컴퓨터공학</a></li> <li><a href="/zf_user/search?major_cd=maj018&amp;open_search_detail=y" class="track_event" data-track_event="main|gnb|public|m080">건축∙토목</a></li> <li><a href="/zf_user/search?major_cd=maj016%2Cmaj022&amp;open_search_detail=y" class="track_event" data-track_event="main|gnb|public|m080">재료∙금속</a></li> <li><a href="/zf_user/search?major_cd=maj017%2Cmaj049&amp;open_search_detail=y" class="track_event" data-track_event="main|gnb|public|m080">화학공학</a></li> <li><a href="/zf_user/search?major_cd=maj054%2Cmaj050&amp;open_search_detail=y" class="track_event" data-track_event="main|gnb|public|m080">생물∙생명</a></li> <li><a href="/zf_user/search?major_cd=maj020&amp;open_search_detail=y" class="track_event" data-track_event="main|gnb|public|m080">산업공학</a></li> <li><a href="/zf_user/search?major_cd=maj003%2Cmaj004&amp;open_search_detail=y" class="track_event" data-track_event="main|gnb|public|m080">인문∙사회</a></li> <li><a href="/zf_user/search?major_cd=maj008&amp;open_search_detail=y" class="track_event" data-track_event="main|gnb|public|m080">상경</a></li> <li><a href="/zf_user/search?major_cd=maj002&amp;open_search_detail=y" class="track_event" data-track_event="main|gnb|public|m080">어학</a></li> <li><a href="/zf_user/search?major_cd=maj009&amp;open_search_detail=y" class="track_event" data-track_event="main|gnb|public|m080">법학</a></li> <li><a href="/zf_user/search?major_cd=maj010&amp;open_search_detail=y" class="track_event" data-track_event="main|gnb|public|m080">사범</a></li> <li><a href="/zf_user/search?major_cd=maj006&amp;open_search_detail=y" class="track_event" data-track_event="main|gnb|public|m080">예체능</a></li> </ul> </li> <li class="row_small row_top"> <a class="title">학력별</a> <ul> <li><a href="/zf_user/jobs/list/highschool" class="track_event" data-track_event="main|gnb|public|m060">고졸채용</a></li> <li><a href="/zf_user/search?edu_min=7&amp;edu_max=10&amp;preview_fl=y" class="track_event" data-track_event="main|gnb|public|m060">2,3년제 채용</a></li> <li><a href="/zf_user/search?edu_min=9&amp;edu_max=13&amp;preview_fl=y" class="track_event" data-track_event="main|gnb|public|m060">석박사 채용</a></li> </ul> </li> <li class="row_small"> <a class="title">HOT100</a> <ul> <li><a href="/zf_user/jobs/hot100" class="track_event" data-track_event="main|gnb|public|hot100">직업별</a></li> <li><a href="/zf_user/jobs/hot100?loc_mcd=0" class="track_event" data-track_event="main|gnb|public|hot100">지역별</a></li> <li><a href="/zf_user/jobs/hot100?edu_cd=0" class="track_event" data-track_event="main|gnb|public|hot100">학력별</a></li> <li><a href="/zf_user/jobs/hot100?company_type=0" class="track_event" data-track_event="main|gnb|public|hot100">기업규모</a></li> </ul> </li> </ul> <ul class="links"> <li> <a class="title">사람인서비스</a> <ul> <li><a href="/zf_user/companylab" class="track_event ico_salary" data-track_event="main|gnb|public|m180">기업연구소</a></li> <li><a href="/zf_user/talent/search" class="track_event ico_talent" data-track_event="main|gnb|public|m150">인재검색</a></li> <li class="sep"><a href="/zf_user/jobs/list/highschool" class="track_event" data-track_event="main|gnb|public|m090">고졸채용</a> <span class="img_main ico_renew"><span class="blind">renew</span></span></li> <li><a href="/zf_user/jobs/theme/main" class="track_event" data-track_event="main|gnb|public|m180">채용관</a> <span class="img_main ico_new"><span class="blind">new</span></span></li> <li><a href="/zf_user/jobs/list/headhunting" class="track_event" data-track_event="main|gnb|public|m110">헤드헌팅</a></li> <li><a href="/zf_user/jobs/list/dispatch" class="track_event" data-track_event="main|gnb|public|m120">파견/대행</a></li> <li class="sep"><a href="/zf_user/help" class="track_event" data-track_event="main|gnb|public|m170">고객센터</a></li> <li><a href="https://play.google.com/store/apps/details?id=kr.co.saramin.brandapp&amp;referer=utm_source%3Dsaramin%26utm_medium%3Dreferral%26utm_campaign%3Dsaramin-app%26utm_content%3Dmobile_layer" target="_blank" title="새창" class="track_event" data-track_event="main|gnb|public|m160">사람인 앱 설치</a></li> <li><a href="http://www.otwojob.com/" target="_blank" title="새창" class="track_event" data-track_event="main|gnb|public|m200">재능마켓 오투잡</a></li> <li class="outlink link_company_home"><a href="/zf_user/memcom" target="_blank" title="새창" class="track_event" data-track_event="main|gnb|public|m210">기업서비스 홈</a></li> </ul> </li> </ul> <div class="banner1"> <a href="/zf_user/companylab?inner_source=saramin&amp;inner_medium=banner&amp;inner_campaign=gnb_left&amp;inner_term=companylab" target="_blank" class="track_event" data-track_event="main|gnb|public|companylab"><img src="//www.saraminimage.co.kr/2020/storyry.png" alt="기업스토리. 복지부터 사내문화까지 총집합"></a> </div> </div> <div class="dimmed"></div>
</div>
</div>
</header>
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
							<div class="con-top">
								<div class="tit-area"><span>우정현</span> 님, 반갑습니다.
								<a href="/indivMemberSrv/custInfoAdmin/modifyIndivCustInfoView.do" class="button">회원정보수정</a></div>
								<div class="con-resume">
									<table>
										<caption>이력서 기본정보 </caption>
										<colgroup>
											<col style="width:100px">
											<col>
											<col style="width:120px">
											<col style="width:140px">
										</colgroup>
										<tbody>
											<tr>
												<th scope="row">연락처</th>
												<td>
															010-7143-****
												</td>
												<th scope="row" class="un-str">문자메시지 수신</th>
												<td>
													<i id="sms_rcv_state" class="ico-state s-small orange">일부수신</i>
													<a href="#balloon-msg1" onclick="f_smsRcv();" class="button balloon-open">설정</a>
													<div id="balloon-msg1" class="balloon-wrap inline-block w450px">

														<div class="basic">
															<div class="balloon top blue w450px">
																<p class="tit font-blue"><strong>문자메시지 수신설정</strong></p>
																<ul class="basic-list">
																	<li>고용센터 안내, 기업 입사제안 문자  <span>
																			<input type="radio" id="smsRcvYn1" name="smsRcvYn" value="Y" checked="checked" onclick="f_smsRcvYn('smsRcvYn', 'Y');">
																			<label for="smsRcvYn1">받음</label>
																			<input type="radio" id="smsRcvYn2" name="smsRcvYn" value="N" onclick="f_smsRcvYn('smsRcvYn', 'N');">
																			 <label for="smsRcvYn2">받지 않음</label></span>
																	</li>
																	<li>관심기업 채용정보 안내문자  <span>
																			<input type="radio" id="intrstSmsYn1" name="intrstSmsYn" value="Y" onclick="f_smsRcvYn('intrstSmsYn', 'Y');">
																			<label for="intrstSmsYn1">받음</label>
																			<input type="radio" id="intrstSmsYn2" name="intrstSmsYn" value="N" checked="checked" onclick="f_smsRcvYn('intrstSmsYn', 'N');">
																			<label for="intrstSmsYn2">받지 않음</label></span>
																	</li>
																</ul>
															</div>

													</div>

												</div></td>
											</tr>
											<tr>
												<th scope="row">이메일</th>
												<td>
														cors***@naver.com
												</td>
												<th scope="row" class="un-str">이메일 수신</th>
												<td>
													<i id="email_rcv_state" class="ico-state s-small green orange">미수신</i>
													<a href="#balloon-msg2" onclick="f_emailRcv();" class="button balloon-open">설정</a>

													<div id="balloon-msg2" class="balloon-wrap inline-block w450px">

														<div class="basic">
															<div class="balloon top blue w450px">
																<p class="tit font-blue"><strong>이메일 수신설정</strong></p>
																<ul class="basic-list">
																	<li>알선장, 취업행사, 기업 입사제안 이메일  <span>
																		<input type="radio" id="mailsvcRcvYn1" name="mailsvcRcvYn" value="Y" onclick="f_mailRcvYn('mailsvcRcvYn', 'Y');">
																		<label for="mailsvcRcvYn1">받음</label>
																		<input type="radio" id="mailsvcRcvYn2" name="mailsvcRcvYn" value="N" checked="checked" onclick="f_mailRcvYn('mailsvcRcvYn', 'N');">
																		<label for="mailsvcRcvYn2">받지 않음</label></span>
																	</li>
																	<li>워크넷, 고용부 행사안내 메일  <span>
																			<input type="radio" id="workMailsvcRcvYn1" name="workMailsvcRcvYn" value="Y" onclick="f_mailRcvYn('workMailsvcRcvYn', 'Y');">
																			<label for="workMailsvcRcvYn1">받음</label>
																			<input type="radio" id="workMailsvcRcvYn2" name="workMailsvcRcvYn" value="N" checked="checked" onclick="f_mailRcvYn('workMailsvcRcvYn', 'N');">
																			<label for="workMailsvcRcvYn2">받지 않음</label></span>
																	</li>
																	<li>맞춤채용정보 이메일  <span>
																			<input type="radio" id="custMadeMailYn1" name="custMadeMailYn" value="Y" onclick="f_mailRcvYn('custMadeMailYn','Y');">
																			<label for="custMadeMailYn1">받음</label>
																			<input type="radio" id="custMadeMailYn2" name="custMadeMailYn" value="N" checked="checked" onclick="f_mailRcvYn('custMadeMailYn','N');">
																			<label for="custMadeMailYn2">받지 않음</label></span>
																	</li>
																</ul>
															</div>
														</div>
													</div>

												</td>
											</tr>
											<tr>
												<th scope="row">주소</th>
												<td colspan="3">
													<div>
														
															인천광역시 연수구 송도동 4-1 송도더샵퍼스트월드 64층-01 21997
															
														
													</div>
												</td>
											</tr>
											<tr>
												<th scope="row">관할고용센터</th>
												<td colspan="3">
													<div>
														인천고용센터
														
														(032-460-4701)
														
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
									<select id="orgCd" name="orgCd" title="고용센터" class="w220px"><option value="">고용센터 선택</option><option value="15001">인천고용센터</option><option value="15011" selected="selected">인천북부고용센터</option><option value="15012">인천서부고용센터</option><option value="15014">강화고용센터</option><option value="15112">수원고용센터</option><option value="15113">용인고용센터</option><option value="15115">화성고용센터</option><option value="15122">김포고용센터</option><option value="15123">부천고용센터</option><option value="15132">광명고용센터</option><option value="15133">의왕고용센터</option><option value="15134">안양고용센터</option><option value="15136">군포고용센터</option><option value="15141">시흥고용센터</option><option value="15142">안산고용센터</option><option value="15152">의정부고용센터</option><option value="15153">구리고용센터</option><option value="15155">동두천고용센터</option><option value="15157">남양주고용센터</option><option value="15158">양주고용센터</option><option value="1515z">포천고용센터</option><option value="15162">이천고용센터</option><option value="15163">성남고용센터</option><option value="15164">하남고용센터</option><option value="15165">경기광주고용센터</option><option value="15168">양평고용센터</option><option value="15169">여주고용센터</option><option value="15171">평택고용센터</option><option value="15172">안성고용센터</option><option value="15173">오산고용센터</option><option value="15181">고양고용센터</option><option value="15182">파주고용센터</option><option value="15212">춘천고용센터</option><option value="15215">가평고용센터</option><option value="15216">홍천고용센터</option><option value="15221">삼척고용센터</option><option value="15222">태백고용센터</option><option value="15231">강릉고용센터</option><option value="15232">속초고용센터</option><option value="15234">동해고용센터</option><option value="15241">원주고용센터</option><option value="15251">영월고용센터</option></select>
									<a href="javascript:void(0);" class="button navy" onclick="f_empPgmSrch('Y')">조회</a>
								</div>
								<ul id="tabList2"><ul><li><div class="ellipsis w250px">[평생월급 프로젝트-국민연금공단]</div><span>05.18 ~ 05.18 (2H) <i class="ico-state s-small gray">마감</i></span></li><li><div class="ellipsis w250px">[재취업자를 위한 멋진 이력서, 자기소개서 작성하기]</div><span>05.20 ~ 05.20 (3H) <i class="ico-state s-small gray">마감</i></span></li><li><div class="ellipsis w250px">[강점분석 나를 이해하기]</div><span>05.21 ~ 05.21 (3H) <i class="ico-state s-small gray">마감</i></span></li></ul></ul>
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
