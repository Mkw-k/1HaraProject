<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

    <style type="text/css">
@import url(//fonts.googleapis.com/earlyaccess/notosanskr.css);

body {
  font-family: "Noto Sans KR", sans-serif !important;
}
</style>

<!-- JQuery -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js" ></script>
<!------ Ajax ---------->
<!-- <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->
<!-- 부트스트랩 -->

<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>

<!-- https://github.com/josecebe/twbs-pagination -->
<script type="text/javascript" src="./jquery/jquery.twbsPagination.min.js"></script>



</head>
<body>

<c:import url="../header2.jsp" charEncoding="utf-8"/>  


<div class="container" style="text-align: center;margin-left: auto;margin-right: auto; background-color: #1b82ea17;">
	
    <form action="" method="post" id="myForm" enctype="multipart/form-data" style="border-style: outset;padding-right: 30px;padding-left: 30px;padding-top: 30px;padding-bottom: 30px;width: 466px;margin-left: auto;margin-right: auto;">
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

<c:import url="../footer.jsp" charEncoding="utf-8"/>  


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



</body>
</html>
