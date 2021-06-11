<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

<link href="csss/layout.css" rel="stylesheet" type="text/css">
 	<link href="csss/components.css" rel="stylesheet" type="text/css">
 	<link href="csss/help.css" rel="stylesheet" type="text/css">

</head>
<body>
<div id="content">
                    <div class="wrap_title_recruit">
        <h1 class="title_common">개인회원 아이디 찾기</h1>
    </div>
    <div class="help_find" id="person_find">
        <ul class="tab_find">
            <li class="on" id="find_cell"><a href="javascript:;" class="link_find">휴대폰 번호로 찾기</a></li>
            <li id="find_mail"><a href="javascript:;" class="link_find">이메일 주소로 찾기</a></li>
        </ul>
        <div class="cont_find">
            <form action="" method="post" id="find_form">
                <input type="hidden" id="confirm_complete" name="confirm_complete" value="n">
                <input type="hidden" id="confirm_send" name="confirm_send" value="n">
                <input type="hidden" id="channel" name="channel" value="sms">
                <input type="hidden" id="type" name="type" value="id">
                <input type="hidden" id="redirect_url" name="redirect_url" value="helpdesk/person-find-id-list">
                <input type="hidden" id="seq" name="seq" value="seq1622442527">
                <fieldset>
                    <legend class="blind">개인회원 아이디 찾기 입력 폼</legend>
                    <p class="desc_find">회원정보에 등록된 정보로 아이디를 찾을 수 있습니다.</p>
                    
                  <div id="contents"> 
					<form action="#" method="post">
                    <ul class="list_find">
                        <li>
                            <div class="wrap_lab"><label for="name" class="lab_find">이름</label></div>
                            <div class="wrap_input">
                                <span class="box_input">
                                    <input type="text" name="name" id="name" class="inp_find">
                                </span>
                                휴대폰번호 : <p class="message_find" id="msg_name" style="display:none;">이름에 특수문자, 숫자는 사용하실 수 없습니다.</p>
                            </div>
                        </li>


			
                        <li id="li_cell">
                            <div class="wrap_lab">
                            		받는사람 : <input type="text" id="to" name="to"/>   <!-- 인증번호 받을사람 휴대폰 번호 -->
   									 <input type="button" id="send" value="전송"/><br> <!-- 문자보내는 전송버튼 -->
                            </div>
                            
                            <div class="wrap_input">
                            
                             
                                    <input type="text" id="userNum" placeholder="‘-’없이 입력">
                              
            
            
                                <input type="button" id="enterBtn" value="인증번호 확인" class="btn_basic2 type03 btn_cert"> 
                                
                                <input type="hidden" name="text" id="text">   <!-- 인증번호를 히든으로 저장해서 보낸다 -->
                            </div>
                        </li>
                       </form>
                      

        <div class="find_method">
    <a href="/zf_user/auth" class="btn_basic_type01 btn_login" title="로그인 바로가기">로그인</a>
        <a href="/zf_user/helpdesk/person-find-password" class="btn_basic_type01 btn_pwd" title="비밀번호 찾기 바로가기">비밀번호 찾기</a>
        <a href="/zf_user/member/registration?type=p" class="btn_basic_type04" title="회원가입 바로가기">회원가입</a>
    <a href="/zf_user/help/help-word" class="btn_basic_type04" title="자주 묻는 질문 바로가기">자주 묻는 질문</a>
    <p class="desc_method">위 방법으로 계정을 찾을수 없다면, <a href="/zf_user/helpdesk/person-lost" class="link_ask">비밀번호 분실신고</a>를 이용해주세요.</p>
</div>    </div>

    <script type="text/javascript" src="//www.saraminimage.co.kr/js/libs/jquery-1.8.3.min.js"></script>
    <script language="javascript" src="/js/member-find-idpw.js"></script>                                    <div id="div-gpt-ad-1400664864294-7-wrapper" class="google-adsense doctype">
            <div class="google-standby-banner" style="display: none;">
                                                            <a href="#" target="_blank"><img src="https://www.saraminbanner.co.kr/adserver/default/2018/09/pekadn_4fza-2rxelk_728x90.png" alt="방문자수 1위 사람인"></a>
                                                </div>
            <div id="div-gpt-ad-1400664864294-7-inner" style="">
                <div id="div-gpt-ad-1400664864294-7" data-google-query-id="CIvIqbSl8_ACFY62vAodiUUFiQ">
                    <div id="google_ads_iframe_/61280259/CS_728x90_0__container__" style="border: 0pt none;"><iframe id="google_ads_iframe_/61280259/CS_728x90_0" title="3rd party ad content" name="google_ads_iframe_/61280259/CS_728x90_0" width="728" height="90" scrolling="no" marginwidth="0" marginheight="0" frameborder="0" sandbox="allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation" allow="conversion-measurement 'src'" srcdoc="" data-google-container-id="1" style="border: 0px; vertical-align: bottom;" data-load-complete="true"></iframe></div>
                </div>
            </div>
        </div>
                </div>
</body>




 <script>
  var count = 0; /* 문자 중복을 막기 위한 인증번호 */
   
 $(document).ready(function() {

    $("#send").click(function() {
       
       var number = Math.floor(Math.random() * 100000) + 100000;
          if(number>100000){
             number = number - 10000;
          }

          $("#text").val(number);      /* 난수로 생성된 인증번호를 hidden name : text 에 숨긴다 */
       
       var to = $("#to").val();
       
       if(to == "" || to == null){
          alert("빈칸이나 공백을 채워주세요");
       }
       
       else {
       var con_test = confirm("해당번호로 인증문자를 발송하시겠습니까?");   /* 문자를 보낼껀지 물어본다 */
          
          if(con_test == true){
               
             if(count < 3){      /* 추후 데이터베이스에 컬럼 값을 확인하여 count 값을 비교 할 예정 */
                 
               $.ajax({
                   url:"sendSms.do",
                   type:"post",
                   data:{to: $("#to").val(),
                        text: $("#text").val()
                        },
                 success:function(){
                   alert("해당 휴대폰으로 인증번호를 발송했습니다");
                   count++;
                   
                   alert(count);
                   },
                   error(){
                      
                   }
                   
                });
             } else {
                alert("휴대폰 인증 그만하세요")
             }
          
          }
             else if(con_test == false){
                
             }
         }   
    })
    $("#enterBtn").click(function() {   /* 내가 작성한 번호와 인증번호를 비교한다 */
       alert($("#text").val());
       var userNum = $("#userNum").val();
       
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
  </script>

</html>