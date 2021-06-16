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
  	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <style>
         /* .help-block 을 일단 보이지 않게 설정 */
        #myForm .help-block{
            display: none;
        }
        /* glyphicon 을 일단 보이지 않게 설정 */
        #myForm .glyphicon{
            display: none;
        }
        .form-control1{
           /* display: block; */
            width: 40%;
            height: calc(1.5em + 0.75rem + 2px);
          padding: 0.375rem 0.75rem;
          font-size: 1rem;
            font-weight: 400;
            line-height: 1.5;
          color: #5a5a5a;
            background-color: #fff;
          background-clip: padding-box;
            border: 1px solid #ced4da;
          border-radius: 0.4rem;
          transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
        }
    </style>
    <style type="text/css">
    	@import url(//fonts.googleapis.com/earlyaccess/notosanskr.css);

		body {
  			font-family: "Noto Sans KR", sans-serif !important;
			}
    
    </style>
    
    <!-- 부트스트랩 -->

	<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script> 
    
</head>
<body>

<a href="login.do"><img alt="" src="image/1hara.gif"></a>

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
	<nav id="lnb">
   <!-- S : 2018-09-28 추가 -->
   <p class="tit"><a href="/indivMemberSrv/main/indivMemberSrvMain.do">회원가입</a></p>
   <!-- E : 2018-09-28 추가 -->
   <ul>
      <li>
         <a href="notice.do" target="_self">공지사항</a>
      </li>
      <li>
         <a href="/empAgencySvc/wApApplication/wApApplicationList.do" target="_self">faq</a>
      </li>
      <li>
         <a href="recruitlist.do" target="_self">채용정보</a>
      </li>
      <li>
         <a href="채용게시판" target="_self">취업뉴스</a>
      </li>
      <li>
         <a href="채용게시판" target="_self">공채달력</a>
      </li>
   </ul>
</nav>
    <form action="" method="post" id="myForm" enctype="multipart/form-data" style="border-style: outset;padding-right: 30px;padding-left: 30px;padding-top: 30px;padding-bottom: 30px;width: 466px;margin-left: 500px;">
    	<div class="form-group has-feedback">
    	
    	  <!-- 프로필 사진 -->
    	  <section style="width:400px;height: 236px;margin-left: 0px;border-style: outset;">
          <h3>기업회원</h3>		
          <ul>
			<li class="img" style="list-style: none; margin-left : 0px">
              <div id="image_preview" style="margin-left: 150px;">
                 <img style="width: 100px;height: 100px;margin-left: 0px;margin-right: 160px;" src="unnamed.png" alt="프로필사진" style="width:126px; height:165px;">
              </div>
              <h4 style="margin-left: 35px;">프로필 사진을 등록해주세요</h4>
              <div class="f_box">
                  <label for="img"></label>
                  <input type="file" name="fileload" id="img">
              </div>
            </li>
		  </ul>
		  </section>
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
        
            <label class="control-label" for="id">아이디</label>
            <div class="input-group">
            	<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
            	<input class="form-control" type="text" name="memberid" id="memberid"/>
            	<input type="button" class="btn btn-secondary" name="chkIdBtn" id="chkIdBtn" value="중복확인"/>
         		<br>
         		<p id="idCheck" style="font-size: 12px"></p>
         	</div>
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
  			<label class="control-label" for="name">이름</label> 
  			<input type="text" class="form-control" id="name" name="name" placeholder=""> 
  		</div> 
        <div class="form-group has-feedback">
            <label class="control-label" for="companyname">회사명</label>
            <input class="form-control" type="text" name="companyname" id="companyname"/>
        </div>
        <div class="form-group has-feedback">
        	<label class="control-label" for="registrationNum">회사주소</label>
        		<input type="text" class="form-control" id="sample6_postcode" readonly="readonly" placeholder="우편번호">
				<input type="button"class="btn btn-secondary" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
				<input type="text" class="form-control" id="sample6_address" name="comaddress" placeholder="주소">
				<input type="text" class="form-control" id="sample6_detailAddress" name="addressdetail" placeholder="상세주소">
				<input type="text" class="form-control" id="sample6_extraAddress" placeholder="참고항목">
        </div>
      <!--   <div class="form-group">
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
         -->
         
         
        <div class="form-group">
			<label for="phonenumer" class="cols-sm-2 control-label">전화번호 (필수)</label>
		<div class="cols-sm-10">
		   <div class="input-group">
			   <span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
			   <input type="text" class="form-control" name="phonenum" id="to" placeholder="전화번호를 입력해주세요.(-는 빼고 적어주세요) ex)01011112222 " />
			   <p id="phoneCheck" style="font-size: 12px"></p>
			  	<input type="button" class="btn btn-secondary" id="send" name="phoneBtn" value="본인 인증">
			   <input type="hidden" name="text" id="text">   
		   </div>
			   <br>
		</div>
	 	<div class="cols-sm-6" id="phone_authNumber">
	 		<input type="text" id="phone_authNum" name="userNum" size="30px" placeholder="인증번호 6자리를 입력하세요.">
	 		<input type='button' class="btn btn-primary" id="phone_authNumBtn" name="phoneNumBtn" value="인증하기">
	 	
		</div>
		</div> 
         
       <div class="form-group">
           <label for="email" class="cols-sm-2 control-label">이메일</label>
           	<div class="cols-sm-10">
           		 <input class="form-control" type="text" name="email" id="email"/>
            	 <span id="emailErr" class="help-block">올바른 이메일 형식이 아닙니다. 다시 입력해 주세요.</span>
            	 <span class="glyphicon glyphicon-ok form-control-feedback"></span>
        	</div>
       </div>
     <button id="_btnRegi" class="btn btn-success" type="submit">가입</button>
    </form>
</div>
<!-- <script src="/js/jquery-3.2.1.js"></script> -->
<script>

	//가입버튼 클릭시
	$("#_btnRegi").click(function () {

		if( $("#memberid").val().trim() == "" ){
			alert("id를 입력해 주십시오");
			$("#memberid").focus();
		}
		else if( $("#pwd").val().trim() == "" ){
			alert("패스워드를 입력해 주십시오");
			$("#pwd").focus();
		}
		else{	
			alert($("#memberid").val());
			$("#myForm").attr("action", "businessregiAf.do").submit();
			alert("회원가입이 성공적으로 완료되었습니다");
		}	
	
	});

	
    //아이디 입력란에 keyup 이벤트가 일어 났을때 실행할 함수 등록 
   /*  $("#companyid").keyup(function(){
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
    }); */
    
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
    /* 아이디 중복확인 버튼 클릭 */
    $(function () {
    	$("#chkIdBtn").click(function () {
    		
    		var userIdCheck = RegExp(/^[A-Za-z0-9_\-]{5,20}$/);
    		if(!userIdCheck.test($('#memberid').val())) {
    			alert("ID는 영문 대소문자, 숫자, _ , - 만 입력 가능하며 5~20 글자만 가능합니다. ");
    			return;
    		};
    		let comid = $("#memberid").val();
    		alert(comid);
    		
    		$.ajax({
    			url: "businessgetId.do",
    			type: "post",
    			data: { memberid:comid },
    			success:function( msg ){
    				alert('chkIdBtn success');
    				if(msg == "YES"){
    					alert(msg);
    					$("#idCheck").css("color", "#0000ff");
    					$("#idCheck").html('사용 가능한 ID입니다.');
    					//$('#memberid').attr('disabled', true);
    					$('#idCheck').attr('disabled', true);
    				}else{
    					$("#idCheck").css("color", "#ff0000");
    					$("#idCheck").html('이미 존재하는 ID입니다.');
    					$("#memberid").val("");
    				}
    			},
    			error:function(){
    				alert('error');
    			}			
    		});
    		
    	});	
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
<script type="text/javascript">

//핸드폰인증
var count = 0; /* 문자 중복을 막기 위한 인증번호 */

$(document).ready(function() {

  $("#send").click(function() {

     var number = Math.floor(Math.random() * 1000000) + 100000;
        if(number>1000000){
           number = number - 100000;
        }

        $("#text").val(number);      /* 난수로 생성된 인증번호를 hidden name : text 에 숨긴다 */

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
     var to = $("#to").val();

     if(to == "" || to == null){
        alert("빈칸이나 공백을 채워주세요");
     }

     else {
     var con_test = confirm("해당번호로 인증문자를 발송하시겠습니까?");   /* 문자를 보낼껀지 물어본다 */

        if(con_test == true){

           if(count < 3){      /* 추후 데이터베이스에 컬럼 값을 확인하여 count 값을 비교 할 예정 */

             $.ajax({
                 url:"businesssendSms.do",
                 type:"post",
                 data:{to: $("#to").val(),			// 휴대폰 번호
                      text: $("#text").val()				// 인증번호
                      },
               success:function(){
                 alert("해당 휴대폰으로 인증번호를 발송했습니다");
                 count++;

                 alert(count);
                 }
                /*  error(){

                 } */

              });
           } else {
              alert("휴대폰 인증 그만하세요")
           }

        }
           else if(con_test == false){

           }
       }
     
  });
  $("#phone_authNumBtn").click(function() {   /* 내가 작성한 번호와 인증번호를 비교한다 */
      alert($("#text").val());
      var userNum = $("#phone_authNum").val();
      
      var sysNum = $("#text").val();         
      
      if(userNum == null || userNum == ""){
         alert("휴대폰으로 발송된 인증번호를 입력해주세요");
      }     
      else{     
         if(userNum.trim() == sysNum.trim()){
             alert("성공");
          }
          else {
             alert("실패");
          }          
      }
   });
  
  
  
});
  

/* 인증번호 입력 타이머 */
let timer = null;
let isRunning = false;
function startTimer(count, display) {

	var minutes, seconds;
   timer = setInterval(function () {
   minutes = parseInt(count / 60, 10);
   seconds = parseInt(count % 60, 10);

   minutes = minutes < 10 ? "0" + minutes : minutes;
   seconds = seconds < 10 ? "0" + seconds : seconds;

   display.html("인증 남은 시간 : "+minutes + ":" + seconds);

   // 타이머 끝
   if (--count < 0) {
    clearInterval(timer);
    alert("시간 초과. 본인 인증을 다시 진행해주세요.");
    $('#phone_authNum').remove();
    $('#phone_authNumBtn').remove();
    $('#time').remove();
    isRunning = false;
   }
}, 1000);
    isRunning = true;
}

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
       
   </footer>
      <!-- ==============FOOTER END================= -->


</body>
</html>
