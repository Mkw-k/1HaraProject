<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="csss/layout.css" rel="stylesheet" type="text/css">
<link href="csss/etc.css" rel="stylesheet" type="text/css">

<script type="text/javascript" src="//www.saraminimage.co.kr/js/libs/jquery-1.11.1.min.js"></script>

</head>
<body>


<div id="content">
<script type="text/javascript">//<!--

function check(form){
	if(form.memberid.value==""){
		alert("아이디를 입력하세요");
		form.id.focus();
		return false;
	}
	if(form.memberid.value.indexOf(" ")>0){
		alert("아이디에 공백에 있습니다. 공백을 제거해주세요");
		form.id.focus();
		return false;
	}
	if(form.memberid.value.length<4){
		alert("아이디는 4자이상이어야 합니다");
		form.id.focus();
		return false;
	}
	if(form.pwd.value==""){
		alert("비밀번호를 입력하세요");
		form.pwd.focus();
		return false;
	}
	if(form.pwd.value.length < 4 || form.pwd.value.length > 32){
		alert("비밀번호는 영문,숫자,특수문자 조합 6~32자 입니다.");
		form.pwd.focus();
		return false;
	}

    var label = jQuery('#login_tab').val() == 'c' ? 'com_login': 'per_login';
    loggingEventAndTagManager(['login','pc_login_page',label,''],['ga_lead','login','pc_login_page',label]);


	if (form['ssl_login'].checked) {
    	SecureLogin.encrypt(form);
    }

	return true;
}
//--></script>

<div class="wrap_content">
        <form id="login_frm" name="login_frm" method="post" action="loginAf.do">
        	<!-- <input type="hidden" name="m_code" value="0"> -->
        	<input type="hidden" name="page_url" value="">
        	<input type="hidden" name="FrameKey" value="">
        	<input type="hidden" name="login_tab" value="c" id="login_tab">
        	<div class="login_message">
            	<h3>로그인이 필요한 서비스입니다.</h3>
            	<p>사람인 회원이 아니면, 지금 <span>
            	<a href="regiclick.do">회원가입</a></span>을 해주세요.</p>
        	</div>
        	<div class="login_page_wrap">
        	    <div class="login_input_wrap">
        	        <!-- text 알림 -->

                	<script>
                	</script>

               	 <ul class="tab_member_type">
                    <li class="t_per t_on"><a href="##">개인회원</a></li>
                    <li class="t_com"><a href="##">기업회원</a></li>
                 </ul>

            	 <!-- input box -->
            	 <div class="setting">
            	     <input id="autologin" name="autologin" type="checkbox" onclick="if (this.checked) { jQuery('#wrap_autologin').show() } else { jQuery('#wrap_autologin').hide() }" onmousedown="try{n_trackEvent('login', 'pc_login_page' , 'login_save', '');}catch(e){}">
            	     <label for="autologin" onmousedown="try{n_trackEvent('login', 'pc_login_page' , 'login_save', '');}catch(e){}"> 로그인 유지 </label>
            	     <div class="dsc_ly" id="wrap_autologin" style="display:none;">
           	    	      <button class="btn_ly_close" type="button" onclick="jQuery('#wrap_autologin').hide()">닫기</button>
                	      <span class="dsc_arr"></span>
                     	 	<p class="dsc_txt">
                        	    <strong>[개인회원 전용]</strong><br>
                        	    개인정보 보호를 위해 개인 PC에서만 이용해 주세요.
                        	</p>
                 	 </div>
                 	 <input id="id_save" name="id_save" type="checkbox" onmousedown="try{n_trackEvent('login', 'pc_login_page' , 'id_save', '');}catch(e){}">
                     <label for="id_save" onmousedown="try{n_trackEvent('login', 'pc_login_page' , 'id_save', '');}catch(e){}">아이디 저장</label>
                 	 <span class="ssl_login_box">
                    	 보안
                    	 <input type="checkbox" id="ssl_login" title="보안접속" class="ssl_login_hide" checked="checked">
                    	 <label for="ssl_login" id="label_type" class="label_type on">보안접속</label>
                 	</span>
              	</div>
              	<div class="login-form">
              	  <div class="id-input-box focus">
              	      <label id="id-label" for="id" style="display: block;">아이디</label>
              	      <input type="text" id="id" name="memberid" class="txt_tool" value="">
              	  </div>
              	  <div class="pw-input-box">
              	     <label id="password-label" for="password" style="display: block;">비밀번호</label>
              	     <input type="password" id="password" name="pwd" class="txt_tool" value="" maxlength="32">
              	  </div>
              	  <button type="submit" class="btn-login">로그인</button>
             	 </div>
             	 <p class="signup-forgotten">
                 <a id="a_join" href="regiclick.do" onclick="return false;" class="sign-up" onmousedown="try{n_trackEvent('login', 'pc_login_page' , 'join', '');}catch(e){}">회원가입</a>
                 <span></span>
                 <a href="/zf_user/helpdesk/idpw-find" class="forgotten" onmousedown="try{n_trackEvent('login', 'pc_login_page' , 'find', '');}catch(e){}">아이디/비밀번호 찾기</a>
                 <a href="javascript:;" class="service_info_txt">서비스 안내<img src="//www.saraminimage.co.kr/ui/login_page/question_mark.png" alt=""></a>
                 <a href="/zf_user/applicant/rater/login-form" target="_blank" class="link_rater" style="display: none;">협업자 로그인</a>
              </p>

              <ul class="social_login" id="wrap_social_login">
                <li><a href="/zf_user/auth/sign-in-with?provider=naver.com&amp;display=popup&amp;url=%2Fzf_user%2F" class="sl_naver" data-provider="naver">네이버 로그인</a></li>
                <li><a href="/zf_user/auth/sign-in-with?provider=facebook.com&amp;display=popup&amp;url=%2Fzf_user%2F" class="sl_facebook" data-provider="facebook">페이스북 로그인</a></li>
                <li><a href="/zf_user/auth/sign-in-with?provider=kakao.com&amp;display=popup&amp;url=%2Fzf_user%2F" class="sl_kakao" data-provider="kakao">카카오 로그인</a></li>
                <li><a href="/zf_user/auth/sign-in-with?provider=google.com&amp;display=popup&amp;url=%2Fzf_user%2F" class="sl_google" data-provider="google">구글 로그인</a></li>
                <li><a href="/zf_user/auth/sign-in-with?provider=apple.com&amp;display=popup&amp;url=%2Fzf_user%2F" class="sl_apple" data-provider="apple">애플 로그인</a></li>
                <li><a href="http://safelogin.kr/sauth/regist?site_code=LT&amp;sub_code=0" class="sl_phone sl_information" target="_blank">휴대폰번호로 로그인</a></li>
              </ul>
            </div>
            <div class="login_banner_wrap">
             <div id="login" class="promotion-banner-box promotion-login" style="">
               	<a href="http://www.saramin.co.kr/zf_user/event/iam-ground-app/app-intro" target="_blank">
                	<img src="https://www.saraminimage.co.kr/w/pc_web_inventory/2019/10/pzef9p_tfxz-2rxibp_A6.png" alt="아이엠그라운드 모의면접 앱 OPEN" width="391" height="330">
                </a>
             </div>
           </div>
         <div class="clear_both"></div>
       </div>
   	<!--  <input type="hidden" name="encid" value="" id="encid"><input type="hidden" name="encpw" value="" id="encpw"><input type="hidden" name="seq" value="" id="seq">     -->
    </form>
   </div>
<script type="text/javascript">
//<!--
//-->
</script>
        <div id="div-gpt-ad-1550638948072-0-wrapper" class="google-adsense doctype">
           <div class="google-standby-banner" style="display: none;">
              <a href="http://www.saramin.co.kr/avatar-branding/?inner_source=saramin&amp;inner_medium=banner&amp;inner_campaign=Waiting_Main_BigBanner&amp;inner_term=avatar_introduce" target="_blank"><img src="https://www.saraminbanner.co.kr/adserver/default/2019/02/pn5wwi_xv5y-2rxiej_BIPC728x90.png" alt=""></a>
           </div>
           <div id="div-gpt-ad-1550638948072-0-inner" style="">
            <div id="div-gpt-ad-1550638948072-0" data-google-query-id="CN-Qg_Gj5PACFZEEXAodAGcIog">
               <div id="google_ads_iframe_/61280259/Login_728x90_0__container__" style="border: 0pt none;">
               		 <iframe id="google_ads_iframe_/61280259/Login_728x90_0" title="3rd party ad content" name="google_ads_iframe_/61280259/Login_728x90_0" width="728" height="90" scrolling="no" marginwidth="0" marginheight="0" frameborder="0" sandbox="allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation" allow="conversion-measurement 'src'" srcdoc="" data-google-container-id="1" style="border: 0px; vertical-align: bottom;" data-load-complete="true">
               		</iframe>
               </div>
            </div>
           </div>
        </div>
</div>


 <script type="text/javascript">
    //<!--
                    jQuery(function() {
                    var $ = jQuery;
                    $('.login_page_wrap')
                        .on('click', '.t_per', function() {
                            if( !$(this).hasClass('t_on') ) {
                                $(this).addClass('t_on').next().removeClass('t_on');
                                $('#lbl_autologin').show();
                                $('.link_rater').hide();
                                $('#login_tab').val('p');
                                $('#login_frm').attr('action', 'loginAf.do');
                            }
                        })
                        .on('click', '.t_com', function() {
                            if( !$(this).hasClass('t_on') ) {
                                $(this).addClass('t_on').prev().removeClass('t_on');
                                $('#lbl_autologin').hide();
                                $('.link_rater').show();
                                $('#login_tab').val('c');
                                $('#login_frm').attr('action', 'businessloginAf.do');
                           }
                        })
                      /*    .on('click', '.service_info_txt', function () { */
                          /*   var url = '/zf_user/help/help-word/main';
                            if ($('#login_tab').val() === 'c') {
                                url += '?memberCode=com';
                            }
                            location.href = 'businessloginAf.do';
                        }); */

                     /* $('#login_frm')

                        .on('click', '#a_join', function (e) {
                            e.preventDefault();
                            location.href = this.href + '?ut=' + $('#login_tab').val();
                        })
                    ; */
                });
                //-->


    //<!--

var $j = jQuery.noConflict();

function checkLoginValue() {
   $j('#memberid, #pwd').each(function (index, el) {
       $j(el).siblings('label').hide();

       if($j(el).val() == '') {
           $j(el).siblings('label').show();
       }

       if ($j(el).css('background-color') == 'rgb(250, 255, 189)') {
           $j('#id-label, #password-label').hide();
       }
   });
}


$j(document).ready(function () {



    window.setTimeout(function () {
	   checkLoginValue();

	   $j('#memberid').focus();

       if ('' != $j('#memberid').val()) {
	       $j('#pwd').focus();
	   }
	}, 100);

    $j('#memberid, #pwd').on('focus blur keyup change', function () {
        checkLoginValue();
    });

    $j('#label_type').on('click',function () {
    	$j('#label_type').toggleClass('on');
    });
	$j('span.frm_checkbox > input[type=checkbox]').on('change', function() {
		var chkbox =$j(this);
		chkbox.closest('span.frm_checkbox').toggleClass('checked');
	})

	var security_btn =  $j('#security_btn'),
		ssl_login = $j('#ssl_login');
	security_btn.on('click', function () {
		var ssl_login_val = ssl_login[0].value;
        if (ssl_login_val == 1) {
			ssl_login[0].value = 0;
			security_btn.text('OFF');
			security_btn.addClass('off');
        } else {
			ssl_login[0].value = 1;
			security_btn.text('ON');
			security_btn.removeClass('off');
        }
    });
	$j('#security_btn').off('dblclick');

    $j('.tab_member_type')
        .on('click', '.t_per', function () {
            saraminEffect('person');
        })
        .on('click', '.t_com', function () {
            saraminEffect('compnay');
        });

    $j('#wrap_social_login').on('click', 'a', function (e) {
        e.preventDefault();
        e.stopPropagation();

        var link =  $j(e.currentTarget).attr('href'),
            loginType = $j('.t_com').hasClass('t_on') === true ? 'c' : 'p' ,
            provider = $j(e.currentTarget).data('provider'),
            label = loginType === 'c' ? 'com_login_'+provider :  'per_login_'+provider;

        var isIe10Check = false;
        if((navigator.userAgent.toLowerCase().indexOf("msie") !== -1) && provider === 'apple'){
            if(confirm('IE10이하 버전의 인터넷 익스플로러에서는 Apple 로그인이 정상 작동하지 않을 수 있습니다.\n' +
                '인터넷 익스플로러를 최신 버전으로 업데이트 해주세요'))
            {
                loggingEventAndTagManager(['login','pc_login_page',label,''],['ga_lead','login','pc_login_page',label]);
                window.open(link+'&login_type='+loginType, '_blank', 'width=480,height=640');
            }
            return;
        }

        loggingEventAndTagManager(['login','pc_login_page',label,''],['ga_lead','login','pc_login_page',label]);
        window.open(link+'&login_type='+loginType, '_blank', (!$j(this).hasClass('sl_phone') ? 'width=480,height=640' : ''));
    });

    if ($j('.t_com').hasClass('t_on') === true) {
        saraminEffect('compnay');
    } else {
        saraminEffect('person');
    }

    function saraminEffect(memberType) {
        if (memberType === 'compnay') {
            $j('.wrap_member_info').show();
        } else {
            $j('.wrap_member_info').hide();
        }
    }
});

    //-->
</script>


</body>
</html>
