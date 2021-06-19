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


<!-- 지원현황테이블 -->
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>





<style type="text/css">
@import url(//fonts.googleapis.com/earlyaccess/notosanskr.css);

body {
  font-family: "Noto Sans KR", sans-serif !important;
}


/* 지원현황테이블 */
.custab{
    border: 1px solid #ccc;
    padding: 5px;
    margin: 5% 0;
    box-shadow: 3px 3px 2px #ccc;
    transition: 0.5s;
    }
.custab:hover{
    box-shadow: 3px 3px 0px transparent;
    transition: 0.5s;
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
					<a href="logout.do" onclick="f_logout();" class="font-blue">로그아웃</a>

				<!-- E : 2018-09-28 추가 -->
				<!--// 로그인 후 -->

				<!-- 공통 -->
				<a href="#" class="worknet-chatbot-start-button-for-client">챗봇</a>
				<a href="jobtalklist.do">취업톡톡<img src="static/images/common/ico/ico-gnb-new.png" style="width:15px; height:15px" class="va-m" alt="new"></a>
				<a href="/useInfo/worknetInfo/useWorknetGuide.do">이용안내</a>
				<a href="info.do">고객센터</a>
				<a href="http://as82.kr/keis" target="_blank" title="새창">원격지원</a>
				<a href="/useInvite/worknetHomepgInvite/sitemap.do">사이트맵</a>
				<!-- 20201022 추가 -->

				<!-- //20201022 추가 -->

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

					</dl>


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
						</dl>


					</div>
					</li>
					<li>
						<a href="/empWelfareSrv/recommendSrv/empWelfareSrvMain.do" title="새창" class="menu"><span>고용복지정책</span></a>
						<div class="sub">


				</div>
			</li>
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


				</div>
			</li>
			<li>
			<a href="/psnInfo/psnInfoSrch/dtlPsnSrchMain.do" class="menu"><span>인재정보</span></a>
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
						<a href="memberDelete.do" target="_self">회원탈퇴</a>
					</li>
					<li>
      						<a href="memberDelete.do" target="_self">회원탈퇴</a>
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
						<div class="idv-sec01" style="height: 550px;">
							<div class="con-top">

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

										<c:if test="${dto.newuserpic ne null }">
												<tr>
													<th scope="row">프로필</th>
													<td>
														<img src="./upload/${dto.newuserpic}" style="width: 150px;height: 150px;">
													</td>
												</tr>
										</c:if>
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

							<!-- <div class="con-bot">
								<ul class="basic-list float">
									<li><a href="/indivMemberSrv/seekApplyAdmin/resumeMng/resumeSelfIntroMng.do"><span class="futura">1</span> <span class="txt">내 이력서</span></a></li>
									<li><a href="/indivMemberSrv/aplentMng/aplentHist/emailAplentHistList.do?srchType=main"><span class="futura">0</span> <span class="txt">입사지원</span></a></li>
									<li><a href="/indivMemberSrv/aplentMng/aplentHist/plcmtHistList.do?srchType=main"><span class="futura">0</span> <span class="txt">취업알선</span></a></li>
									<li><a href="/indivMemberSrv/aplentMng/offerCo/offerCoList.do"><span class="futura">0</span> <span class="txt">입사제안</span></a></li>
									<li><a href="/indivMemberSrv/seekApplyAdmin/resumeMng/resumeReadList.do"><span class="futura">1</span> <span class="txt">이력서열람</span></a></li>
									<li><a href="/indivMemberSrv/intrstInfo/myBookmkEmpInfoList.do"><span class="futura">0</span> <span class="txt">관심스크랩</span></a></li>
								</ul>
							</div> -->
						</div>
					<!-- 	<div class="idv-sec02">
						인증이 만료되었습니다.
							<div class="con-left v3 on">
								<h4>회원님은
									<span>
										2021년 04월 06일
									</span> 자로<br>구직활동 가능기간이 만료되었습니다.</h4>
								<p>입사지원, 취업알선을 원하시면 구직신청을 하셔야 합니다.</p>
								<a href="/indivMemberSrv/seekApplyAdmin/resumeMng/resumeMngMain.do" class="button large">구직신청관리</a>
							</div> -->
					<!-- 그외의 인증 완료일경우 -->
							<!-- <div class="con-right v2 on">  v2 : 이력서있는경우
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
												희망 근무지역
											 </li>
											<li>
												최종력
											</li>
											<li>경력</li>
										</ul>
										<dl>
											<dt>키워드</dt>
											<dd>
												나의 이력서를 알리기 위한 핵심 키워드
											</dd>
										</dl>
									</div>
								</div>
							</div> -->

						<!-- 특별고용촉진 지원대상 확인서 출력 -->
							<!-- <div class="box-line v3 blue mt30">
								<div class="a-c">
									<ul class="v1" style="margin-bottom: 10px;margin-right: 15px;">
										<li>특별고용촉진장려금 지원을 위한 지원대상 확인서 출력은 아래 버튼을 클릭하여 주시기 바랍니다.</li>
									</ul>
									<button onclick="f_reportSpecialEmployment('0000036406785');" class="button large">특별고용촉진 지원대상 확인서 출력</button>
								</div>
							</div> -->


							<!-- <div class="idv-sec03">2018-10-16 span 태그제거 후 이미지 추가
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
 -->
							<!-- <div class="idv-sec04">
								<div class="con-left" id="boardDiv">2018-10-16 문구변경
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

							v2 :  심리검사결과없을때
							<div class="con04 v2 on">
								<h4>심리검사결과조회</h4>
								<ul>
									<li><a href="/consltJobCarpa/jobPsyExam/jobPsyExamIntro.do"><strong>직업심리검사</strong>나를 알아가는 또 하나의 방법</a>	</li>
								</ul>
							</div> -->
					<!-- 	</div>
					</div>
				</section> -->
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

</script>

<script>

function check(memberid) {
		alert('실행성공');

		$.ajax({
			   url : "./getresumeData.do",
			   type : "get",
			   data : {"memberid" : memberid},
			   success:function(param){
					alert('성공');
			      $("#Area1").empty();

			      let app = "<div class='container'>"+
			      			"<div class='row col-md-12 col-md-offset-2 custyle' style='margin-left: 0px;'>"+
			    	  		"<table class='table table-striped custab'>"+
			    			"<colgroup>"+
			  				"<col width='30%'><col width='30%><col width='20%'><col width='10%'><col width='10%'>"+
			  				"</colgroup>"+
			  				"<thead>"+
			  				"<tr>"+
			  				"<td style='text-align: center;font-weight: bold;'>지원공고</td>"+
			  				"<td style='text-align: center;font-weight: bold;'>지원이력서</td>"+
			  				"<td style='text-align: center;font-weight: bold;'>지원일</td>"+
			  				"<td style='text-align: center;font-weight: bold;'>열람여부</td>"+
			  				"<td style='text-align: center;font-weight: bold;'>지원취소</td>"+
			  				"</tr>"+
			  				"</thead>"+
			  				"<tbody style='border-bottom: thin; border-color: black; border-bottom-style: solid;'>";

			      $.each(param, function(i, val){

					app += "<tr>"+
						   "<td><a href='RecruitDetail.do?jobseq="+val.jobSeq+"&memberid="+memberid+"'>"+val.jobtitle+"</a></td>";
						   if(val.resumetitle == null && val.resumetitle != ''){
								app += "<td><p>삭제된 이력서입니다</p></td>";
							}
						   else{
								app += "<td><a href='Resumedetail.do?seq="+val.resumeseq+"'>"+val.resumetitle+"</a></td>";
						   }

					app += "<td>"+val.applydate+"</td>"+
						"<td style='text-align: -webkit-center;'>";

						if(val.companyread >0 ){
							app += "<img alt='' src='./image/check.png' height='30px' width='30px' style='margin-left:0px;display:inline-flex;'>";
						}

					app += "</td>"+
						"<td style='text-align: center;'><a href='cancelApply.do?seq="+val.applyseq+"&memberid="+memberid+"' class='box-btn'>취소</a></td>"+
						"</tr>";



			      });

			      app += "</tbody>"+
						 "</table></div></div>";

			      $("#Area1").append(app);
			   },
			   error:function(){
			      alert('error');
			   }

			 }); // ajax

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
