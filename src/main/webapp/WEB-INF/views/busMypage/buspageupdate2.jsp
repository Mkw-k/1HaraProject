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
								<span>[기업]</span>
							  ${login.name}님
						</a>
						<ul>
			
							
						</ul>
					</div>
					<a href="logout.do" onclick="logout();" class="font-blue">로그아웃</a>
				
			</div>
		</div>
	</div>

	<div class="middle-area">
		<div class="inner-wrap">
			<h1 class="top-logoWorknet">
				<a href="home.do"><img src="/static/images/common/bg/bg-top-logo.png" alt="일하라"></a>
			</h1>
			
			<form id="searchFrm" name="searchFrm" hidden="" action="/wnSearch/unifSrch.do" method="post" onsubmit="return false">
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




		
		</div>
	</div>

	<nav id="gnb">
		<ul>
			<li><span></span>
				<div class="sub" hidden="">
					

				
				</div></li>
			<li><span></span>
				<div class="sub">
					
						
				</div></li>
			<li><span></span>
				<div class="sub">
					
				
				</div></li>
			<li class=""><span></span>
				<div class="sub" style="">
					
				</div></li>
			<li><a href="" class="menu" hidden=""><span></span></a>
				<div class="sub">
					
					
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
                    <div class="custom-menu">
                      
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
                 	<form id="registForm" name="registForm" action ="buspageUpdateAf.do" method="post"  enctype="multipart/form-data">
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
                                   	 	<c:when test="${login.filename == null }">
                                   	 		<img style="width: 100px;height: 100px;margin-left: 0px;margin-right: 160px;" src="unnamed.png" alt="프로필사진" style="width:126px; height:165px;">
                                		</c:when>
                                		<c:otherwise>
                                			<img src="./upload/${login.filename}" style="width: 150px;height: 150px;">
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
                            <div class="line">
                            	<label for="userpwd" class="label w140px">비밀 번호</label>
                            	<input type="text" value="${login.pwd }" placeholder="${login.pwd }" name="pwd" title="비밀번호 입력" class="input-text w260px" pil="PF_PNM">
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
        									
        										<input type="text" class="form-control" id="sample6_postcode" placeholder="우편번호" readonly="readonly">
												<input type="button"class="btn btn-secondary" onclick="sample6_execDaumPostcode()" readonly="readonly" value="우편번호 찾기"><br>
												<input type="text" class="form-control" id="sample6_address" name="comaddress" placeholder="주소"><br>
												<input type="text" class="form-control" id="sample6_detailAddress" name="addressdetail" placeholder="상세주소"><br>
												<input type="hidden" class="form-control" id="sample6_extraAddress" placeholder="참고항목"><br>
        									</div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row" rowspan="2">연락처<span class="font-orange" title="필수입력">
                                                *</span>
                                        </th>
                                    </tr>
                                    <tr hidden="">
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
                                            
                                            	<input type="hidden" class="input-text" id="phonenum" name="phonenum" title="번호 합친거"   maxlength="4" >
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row" colspan="1">
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
                        <h3 class="tit font-black" hidden="">구직활동 및 입사지원정보 수신여부</h3>
                        <div class="table-wrap mb50" hidden="">
                            <table class="board-form">
                                <caption>구직활동 및 입사지원정보 수신여부 설정</caption>
                                <colgroup>
                                    <col style="width:155px;">
                                    <col>
                                </colgroup>
                                <tbody>
                                    <tr hidden="">
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
                                    <tr hidden="">
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
                        <h3 class="tit font-black" hidden="">사용자 통합관리시스템(One-ID) 공지 수신여부</h3>
                        <div class="table-wrap mb50" hidden="">
                            <table class="board-form" hidden="">
                                <caption>사용자 통합관리시스템(One-ID) 공지 수신여부 설정</caption>
                                <colgroup>
                                    <col style="width:155px;">
                                    <col>
                                </colgroup>
                                <tbody>
                                    <tr hidden="">
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
                                    <tr hidden="">
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
                            <a href="buspage.do" class="button navy">취소</a>
                            <button type="button" onclick="submitFunc()" class="button blue">확인</button>             
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

            
            function submitFunc() {
            	alert('클릭');
            	let num1 = $('#hp1').val();
            	let num2 = $('#hp2').val();
            	let num3 = $('#hp3').val();
				let phone = num1 + num2 + num3; 
				$('#allphonenum').val(phone);
				alert(phone);
				$('#registForm').submit();
            }
            
            </script>   
        </div>
        </div>
    </body>
</html>