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
    </head>
    
    <!-- 헤더 -->
    <header>
    
    <h1>회원정보 수정 게시판이야~</h1>
    
    </header>
    
    
    
    <body>
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
                        <h2 class="tit">내 정보수정 / 성명변경</h2>
                        <span class="hide-location" id="navi_1">마이페이지(개인)</span>
                        <span class="hide-location" id="navi_2">회원정보 관리</span>
                        <span class="hide-location" id="navi_3">내 정보수정 / 성명변경</span>
                        <div
                            class="page-util"><!-- 기능 버튼 들어갈 예정 -->
                        </div>
                    </div>
                    <div class="sub-visual-noline">
                        <p class="img-area">
                            <i class="ico-circle-gray tool"></i>
                        </p>
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
                                            <div class="zip-wrap">
                                                <input
                                                type="hidden" class="commHouseYn" id="commHouseYn" name="address" value="Y">
                                        
                                                <p>
                                                    <input type="hidden" name="addrType" value="street">
                                                    <input type="text" class="input-text w160px" title="우편번호 입력" readonly="readonly" name="jusoZipCd" id="jusoZipCd" value="21061">
                                                    <a href="#road" onclick="worknet.popup.popRoadNameSrch({returnFunction:'f_roadNmSrch', targetObjName:'#streetPop',loc:{posRel:[-350,-50]}});" class="button ml05" title="새창">주소찾기</a>
                                                </p>
                                                <p class="mt10"><input type="text" class="input-text w600px" title="기본주소 입력" placeholder="기본주소" readonly="readonly" id="juso1" name="address" value="${login.address}" pil="PF_BASS_ADR"></p>
                                                <p class="mt10">
                                                    <input type="text" class="input-text w160px" title="건물번호" placeholder="건물번호" readonly="readonly" name="bldgNo" id="bldgNo" value="141" pil="PF_BULD_MNNO">
                                                    <input type="text" class="input-text w430px ml05" title="상세주소 입력 " placeholder="상세주소" id="juso2" name="detailaddress" value="201동 601호" pil="PF_DTAL_ADR">
                                                </p>
                                                <p class="mt10"><input type="text" class="input-text w600px" title="참고항목" placeholder="참고항목" readonly="readonly" id="strtnmRefItem" name="strtnmRefItem" value="${login.detailaddress}"></p>
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
            <style>
                .disabledbutton {
                    pointer-events: none;
                    opacity: 0.4;
                }
            </style>
        </div>
    </body>
</html>