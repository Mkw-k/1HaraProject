<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
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
    <title>/ajax/test04.html</title>
    <link rel="stylesheet" href="csss/bootstrap.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <style>
        /* .help-block 을 일단 보이지 않게 설정 */
        #myForm .help-block{
            display: none;
        }
        /* glyphicon 을 일단 보이지 않게 설정 */
        #myForm .glyphicon{
            display: none;
        }
    </style>
</head>
<body>

<a href="main.do"><img alt="" src="image/1hara.gif"></a>

  <!-- ========상단 로고 & 네비게이션 ==========-->
    <!--   <header class="nav-holder make-sticky">
        <div id="navbar" role="navigation" class="navbar navbar-expand-lg">
          <div class="container"><a href="main.jsp" class="navbar-brand home"><img src="images/logo-black.png" alt="My job" class="d-none d-md-inline-block" style="width: 180px; height: 120px"><img src="images/logo-black-small.png" alt="Myjob" class="d-inline-block d-md-none"><span class="sr-only">worknet</span></a>
            <button type="button" data-toggle="collapse" data-target="#navigation" class="navbar-toggler btn-template-outlined"><span class="sr-only">Toggle navigation</span><i class="fa fa-align-justify"></i></button>
            <div id="navigation" class="navbar-collapse collapse">
            </div>
            <div id="search" class="collapse clearfix">
              <form role="search" class="navbar-form">
                <div class="input-group">
                  <input type="text" placeholder="Search" class="form-control"><span class="input-group-btn">
                    <button type="submit" class="btn btn-template-main"><i class="fa fa-search"></i></button></span>
                </div>
              </form>
            </div>
          </div>
        </div>
      </header> -->


<div class="container" style="text-align: center;">
    <h3>기업회원</h3>
    <form action="/ajax/signup" method="post" id="myForm">
        <div class="form-group has-feedback">
            <label class="control-label" for="id">아이디</label>
            <input class="form-control" type="text" name="id" id="id"/>
            <span id="overlapErr" class="help-block">사용할 수 없는 아이디 입니다.</span>
            <span class="glyphicon glyphicon-ok form-control-feedback"></span>
        </div>
        <div class="form-group has-feedback">
            <label class="control-label" for="pwd">비밀번호</label>
            <input class="form-control" type="password" name="pwd" id="pwd"/>
            <span id="pwdRegErr" class="help-block">8글자 이상 입력하세요.</span>
            <span class="glyphicon glyphicon-ok form-control-feedback"></span>
        </div>
        <div class="form-group has-feedback">
            <label class="control-label" for="rePwd">비밀번호 재확인</label>
            <input class="form-control" type="password" name="rePwd" id="rePwd"/>
            <span id="rePwdErr" class="help-block">비밀번호와 일치하지 않습니다. 다시 입력해 주세요.</span>
            <span class="glyphicon glyphicon-ok form-control-feedback"></span>
        </div>
        
        
        
        <div class="form-group has-feedback">
        	<label class="control-label" for="registrationNum">주소</label>
        		<input type="text" class="form-control" id="sample6_postcode" placeholder="우편번호">
				<input type="button"class="btn btn-secondary" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
				<input type="text" class="form-control" id="sample6_address" name="address" placeholder="주소">
				<input type="text" class="form-control" id="sample6_detailAddress" name="detailaddress" placeholder="상세주소">
				<input type="text" class="form-control" id="sample6_extraAddress" placeholder="참고항목">
        </div>
        <div class="form-group">
			<label for="email" class="cols-sm-2 control-label">이메일 (필수)</label>
			   <div class="cols-sm-10">
			   		<div class="input-group">
			             <span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
			             <input type="text" class="form-control" name="email" id="email" placeholder="이메일 주소를 입력하세요. ex) example@gmail.com" />
			             <p id="emailCheck" style="font-size: 12px"></p>
			             <input type="button" class="btn btn-secondary" id="emailBtn" name="emailBtn" value="본인 인증" disabled="disabled">
			        </div>
			        <br>
			   </div>
		       <div class="cols-sm-6" id="authNumber">
		       </div>
		 </div>
        
        <!-- <div class="form-group has-feedback">
            <label class="control-label" for="email">이메일</label>
            <input class="form-control" type="text" name="email" id="email"/>
            <span id="emailErr" class="help-block">올바른 이메일 형식이 아닙니다. 다시 입력해 주세요.</span>
            <span class="glyphicon glyphicon-ok form-control-feedback"></span>
        </div> -->
        <button class="btn btn-success" type="submit">가입</button>
    </form>
</div>
<!-- <script src="/js/jquery-3.2.1.js"></script> -->
<script>
    //아이디 입력란에 keyup 이벤트가 일어 났을때 실행할 함수 등록 
    $("#id").keyup(function(){
        //입력한 문자열을 읽어온다.
        var id=$(this).val();
        //ajax 요청을 해서 서버에 전송한다.
        $.ajax({
            method:"post",
            url:"/idCheck",
            data:{inputId:id},
            success:function(data){
                var obj=JSON.parse(data);
                if(obj.canUse){//사용 가능한 아이디 라면 
                    $("#overlapErr").hide();
                    // 성공한 상태로 바꾸는 함수 호출
                    successState("#id");
                    
                }else{//사용 가능한 아이디가 아니라면 
                    $("#overlapErr").show();
                    errorState("#id");
                }
            }
        });
    });
    $("#pwd").keyup(function(){
        var pwd=$(this).val();
        // 비밀번호 검증할 정규 표현식
        var reg=/^.{8,}$/;
        if(reg.test(pwd)){//정규표현식을 통과 한다면
                    $("#pwdRegErr").hide();
                    successState("#pwd");
        }else{//정규표현식을 통과하지 못하면
                    $("#pwdRegErr").show();
                    errorState("#pwd");
        }
    });
    $("#rePwd").keyup(function(){
        var rePwd=$(this).val();
        var pwd=$("#pwd").val();
        // 비밀번호 같은지 확인
        if(rePwd==pwd){//비밀번호 같다면
            $("#rePwdErr").hide();
            successState("#rePwd");
        }else{//비밀번호 다르다면
            $("#rePwdErr").show();
            errorState("#rePwd");
        }
    });
    $("#email").keyup(function(){
        var email=$(this).val();
        // 이메일 검증할 정규 표현식
        var reg=/^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
        if(reg.test(email)){//정규표현식을 통과 한다면
                    $("#emailErr").hide();
                    successState("#email");
                    $("#emailBtn").removeAttr("disabled");
                    
        }else{//정규표현식을 통과하지 못하면
                    $("#emailErr").show();
                    errorState("#email");
        }
    });
    // 성공 상태로 바꾸는 함수
    function successState(sel){
        $(sel)
        .parent()
        .removeClass("has-error")
        .addClass("has-success")
        .find(".glyphicon")
        .removeClass("glyphicon-remove")
        .addClass("glyphicon-ok")
        .show();
 
        $("#myForm button[type=submit]")
                    .removeAttr("disabled");
    };
    // 에러 상태로 바꾸는 함수
    function errorState(sel){
        $(sel)
        .parent()
        .removeClass("has-success")
        .addClass("has-error")
        .find(".glyphicon")
        .removeClass("glyphicon-ok")
        .addClass("glyphicon-remove")
        .show();
 
        $("#myForm button[type=submit]")
                    .attr("disabled","disabled");
    };
    
    /* 이메일 '본인 인증' 버튼 클릭 */

    var authNum;		//인증번호 담아둘 전역변수
    var authSuccess = false;	//인증 완료 했는지 true/false
    var click = true;      // 중복클릭 방지   
    $(function () {
    	
    	$("#emailBtn").click(function () {
    		/* $("#emailBtn").removeAttr("disabled"); */
    		alert('입력');
    		if(click) {
    			
    			click = !click;
    			
    			setTimeout(function () {
    				click = true;
    			}, 180000);
    		
    			alert("본인 확인을 위한 이메일을 전송했습니다. 이메일 인증을 진행해주세요.")
    			
    			// 인증번호 입력란 생성
    			$("<input>", {type:'text', id:"authNum", name:"authNum", size:"30px", placeholder:"인증번호 6자리를 입력하세요."}).appendTo('#authNumber');
    			$("<input>", {type:'button', "class":"btn btn-primary", id:"authNumBtn", name:"authNumBtn", disabled:"disabled", value:"인증하기"}).appendTo('#authNumber');
    			$("<p></p>", {id:'time'}).appendTo('#authNumber');
    			
    			var display = $('#time');
    	    	var leftSec = 180;	//인증 남은시간(초)
    	    	
    	    	// 이미 타이머가 작동중이면 중지
    	    	if (isRunning){
    	    		clearInterval(timer);
    	    		display.html("");
    	    		startTimer(leftSec, display);
    	    	}else{
    	    	startTimer(leftSec, display);
    	    	}
    			
    			$.ajax({
    				type: "post",
    				url: "member?param=auth",
    				data: { "email":$("#email").val() },
    				success:function(data){
    					authNum = data.authNum;
    					console.log('인증번호 6자리 : ' + authNum);
    				},
    				error:function(){
    					alert('error');
    				}			
    			});
    		} else {
    			console.log("본인 인증 중");
    		};
    		
    	});	
    });
    
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
 <!-- ==============FOOTER================= -->
      <footer class="main-footer">
      	<div id="footer">
			<div class="middle-area">
				<div class="inner-wrap">
					<div class="link-footer">
						<a href="/useInvite/worknetHomepgInvite/worknetIntro.do">일하라 소개</a>
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
				<img src="./static/images/mainlogo.png">
				<div class="etc">
					<a href="/images/useInfo/certification_kor2015.jpg" target="_blank" onclick="try { latte.getEvent(event).stop(); } catch (ex) {}; var remote = window.open('https://www.eprivacy.or.kr/front/certifiedSiteMark/certifiedSiteMarkPopup.do?certCmd=E&amp;certNum=2021-E-R001','EPRIVACY','width=527,height=720'); remote.focus(); return false;" title="새창"><img src="./static/images/brn-epriavcy.png" alt="개인정보보호우수사이트 인증서"></a>
								<a href="/html/wauMark2020_worknet.html" onclick="try { latte.getEvent(event).stop(); } catch (ex) {};window.open(this.href,'mark2020','width=605,height=850,scrollbars=no');return false;" title="새창" target="_blank" style="margin-top:-3px"><img src="./static/images/brn-wa-2019.png" alt="과학기술정보통신부 WEB ACCESSIBILITY 마크(웹 접근성 품질인증 마크)"></a>
							
				</div>
			</div>
		</div>
	</div>	
       <!--  <div class="container">
          <div class="row">
            <div class="col-lg-3">
              <h4 class="h6">About Us</h4>
              
              <p class="text-uppercase"><strong>1hara</strong><br>In line with the current situation of not being able to go to the gym The house is enough and comfortable to use The best home training community site in Korea.</p>
              <hr class="d-block d-lg-none">
            </div>
            <div class="col-lg-3">
              <h4 class="h6">고객센터</h4>
              <p><strong>bit210324@gmail.com</strong></p>
              <p>문의사항은 위 이메일 주소로 연락주시면 빠른 시일 내에 회신드리겠습니다. <br>If you have any inquiries, please contact us at the above email address and we will reply as soon as possible.</p>
              <hr class="d-block d-lg-none">
            </div>
            <div class="col-lg-3">
              <h4 class="h6">Contact</h4>
              <p class="text-uppercase"><strong>Universal Ltd.</strong><br>TEL : 070-1234-5678<br>Newtown upon River <br>CONTACT FOR MORE INFOMATION<br>COMPANY: our job <br>BUSINESS LICENSE: 123-45-12345</p>
              <hr class="d-block d-lg-none">
            </div>
            <div class="col-lg-3">
            <h4 class="h6">제휴업체</h4>
            <br>
              <ul class="list-inline photo-stream">
                <li class="list-inline-item"><a href="http://www.bansuksports.com/" target="_blank"><img src="images/bansuk_logo.jpg" alt="..." class="img-fluid"></a></li>
                <li class="list-inline-item"><a href="http://melkinsports.com/" target="_blank"><img src="images/melkin_logo.png" alt="..." class="img-fluid"></a></li>
                <li class="list-inline-item"><a href="http://www.myprotein.co.kr" target="_blank"><img src="images/myprotein_logo.jpg" alt="..." class="img-fluid"></a></li>
                <li class="list-inline-item"><a href="https://www.rankingdak.com/" target="_blank"><img src="images/ranking_logo.png" alt="..." class="img-fluid"></a></li>
              </ul>
            </div>
          </div>
        </div>
        
        <div class="copyrights">
          <div class="container">
            <div class="row">
              <div class="col-lg-4 text-center-md">
                <p>&copy; 2021. 1hara / Personal job</p>
              </div>
              <div class="col-lg-8 text-right text-center-md">
                <p> Contect TEL : <a href="https://bootstrapious.com/snippets">070-1234-5678 </a> & FAX :  <a href="#">050-5678-1234</a></p>
                Please do not remove the backlink to us unless you purchase the Attribution-free License at https://bootstrapious.com/donate. Thank you.
              </div>
            </div>
          </div>
        </div> -->
   </footer>
      <!-- ==============FOOTER END================= -->


</body>
</html>
