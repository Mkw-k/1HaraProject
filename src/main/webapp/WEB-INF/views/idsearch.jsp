<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=Edge">
	<link href="csss/layout.css" rel="stylesheet" type="text/css">
 	<link href="csss/components.css" rel="stylesheet" type="text/css">
 	<link href="csss/help.css" rel="stylesheet" type="text/css">
 	
 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 	<script type="text/javascript" src="js/libs/member-find-jdpw.js"></script>
 	<!-- <script type="text/javascript" src="https://bam-cell.nr-data.net/1/03a1f7dfe5?a=443261373&amp;v=1209.f04e2b9&amp;to=YFJaMkNTDBIFAUJfWVkYeQVFWw0PSwZTUFdCW0xJWVcOEQAHRV0ZR1JKFV5cTwcNDFIbX1M%3D&amp;rst=981&amp;ck=1&amp;ref=https://www.saramin.co.kr/zf_user/helpdesk/person-find-id&amp;ap=79&amp;be=199&amp;fe=943&amp;dc=409&amp;af=err,xhr,stn,ins&amp;perf=%7B%22timing%22:%7B%22of%22:1622443572932,%22n%22:0,%22u%22:150,%22ue%22:150,%22f%22:1,%22dn%22:2,%22dne%22:2,%22c%22:2,%22s%22:7,%22ce%22:22,%22rq%22:22,%22rp%22:139,%22rpe%22:140,%22dl%22:176,%22di%22:408,%22ds%22:408,%22de%22:435,%22dc%22:943,%22l%22:943,%22le%22:945%7D,%22navigation%22:%7B%22ty%22:1%7D%7D&amp;fp=286&amp;fcp=286&amp;at=TBVZRAtJHxw%3D&amp;jsonp=NREUM.setToken"></script> --> 	<script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script>
 	<!-- <script src="https://js-agent.newrelic.com/nr-1209.min.js"></script> -->
 	<script type="text/javascript" async="" src="https://www.googletagmanager.com/gtag/js?id=G-GR2XRGQ0FK&amp;l=dataLayer&amp;cx=c"></script>
 	<script type="text/javascript" async="" src="https://www.google-analytics.com/gtm/js?id=GTM-KN35GK2&amp;cid=2136607618.1621926723"></script>
 	<script type="text/javascript" async="" src="https://www.google-analytics.com/plugins/ua/linkid.js"></script>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body class="has_lnb">SS
 	<script type="text/javascript" src="js/libs/member-find-jdpw.js"></script>
 	<!-- <script type="text/javascript" src="https://bam-cell.nr-data.net/1/03a1f7dfe5?a=443261373&amp;v=1209.f04e2b9&amp;to=YFJaMkNTDBIFAUJfWVkYeQVFWw0PSwZTUFdCW0xJWVcOEQAHRV0ZR1JKFV5cTwcNDFIbX1M%3D&amp;rst=981&amp;ck=1&amp;ref=https://www.saramin.co.kr/zf_user/helpdesk/person-find-id&amp;ap=79&amp;be=199&amp;fe=943&amp;dc=409&amp;af=err,xhr,stn,ins&amp;perf=%7B%22timing%22:%7B%22of%22:1622443572932,%22n%22:0,%22u%22:150,%22ue%22:150,%22f%22:1,%22dn%22:2,%22dne%22:2,%22c%22:2,%22s%22:7,%22ce%22:22,%22rq%22:22,%22rp%22:139,%22rpe%22:140,%22dl%22:176,%22di%22:408,%22ds%22:408,%22de%22:435,%22dc%22:943,%22l%22:943,%22le%22:945%7D,%22navigation%22:%7B%22ty%22:1%7D%7D&amp;fp=286&amp;fcp=286&amp;at=TBVZRAtJHxw%3D&amp;jsonp=NREUM.setToken"></script> --> 	<script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script>
 	<!-- <script src="https://js-agent.newrelic.com/nr-1209.min.js"></script> -->
 	<script type="text/javascript" async="" src="https://www.googletagmanager.com/gtag/js?id=G-GR2XRGQ0FK&amp;l=dataLayer&amp;cx=c"></script>
 	<script type="text/javascript" async="" src="https://www.google-analytics.com/gtm/js?id=GTM-KN35GK2&amp;cid=2136607618.1621926723"></script>
 	<script type="text/javascript" async="" src="https://www.google-analytics.com/plugins/ua/linkid.js"></script>
	<meta charset="UTF-8">
	<title>Insert title here</title>

 
	<div id="sri_section" class="has_banner" taindex="-1" style="
    padding-left: 500px;
">
	<div id="srch_wrap">
	<div id="content">
    <div class="wrap_title_recruit">
        <h1 class="title_common">개인회원 아이디 찾기</h1>
    </div>
    <div class="help_find" id="person_find">
        <ul class="tab_find" style="
    width: 970px;
">
            <li class="on" id="find_cell"><a href="javascript:;" class="link_find">휴대폰 번호로 찾기</a></li>
            <li id="find_mail"><a href="javascript:;" class="link_find">이메일 주소로 찾기</a></li>
        </ul>
        <div class="cont_find" style="
    width: 960px;
">
            <form action="idsearch.do" method="post" id="find_form">
                <input type="hidden" id="confirm_complete" name="confirm_complete" value="n">
                <input type="hidden" id="confirm_send" name="confirm_send" value="n">
                <input type="hidden" id="channel" name="channel" value="sms">
                <input type="hidden" id="type" name="type" value="id">
                <input type="hidden" id="redirect_url" name="redirect_url" value="helpdesk/person-find-id-list">
                <input type="hidden" id="seq" name="seq" value="">
                <fieldset>
                    <legend class="blind">개인회원 아이디 찾기 입력 폼</legend>
                    <p class="desc_find">회원정보에 등록된 정보로 아이디를 찾을 수 있습니다.</p>
                    <ul class="list_find">
                        <li>
                            <div class="wrap_lab"><label for="name" class="lab_find">이름</label></div>
                            <div class="wrap_input">
                                <span class="box_input">
                                    <input type="text" name="name" id="name" class="inp_find">
                                </span>
                                <p class="message_find" id="msg_name" style="display:none;">이름에 특수문자, 숫자는 사용하실 수 없습니다.</p>
                            </div>
                        </li>

                        <li id="li_cell">
                            <div class="wrap_lab"><label for="cell" class="lab_find">휴대폰 번호</label></div>
                            <div class="wrap_input">
                                <span class="box_input">
                                    <input type="text" name="cell" id="cell" class="inp_find" placeholder="‘-’없이 입력">
                                </span>
                                <p class="message_find" id="msg_cell" style="display:none;">휴대폰번호를 정확하게 입력해주세요.</p>
                                <p class="message_find send" id="msg_cell1" style="display:none;">카카오톡으로 인증번호가 발송되었습니다 (실패 시 SMS 전송)</p>
                                <button type="button" id="btn_cert_cell" class="btn_basic2 type03 btn_cert">인증번호 발송</button>
                            </div>
                        </li>

                        <li id="li_mail" style="display: none;">
                            <div class="wrap_lab"><label for="email" class="lab_find">이메일 주소</label></div>
                            <div class="wrap_input">
                                <span class="box_input">
                                    <input type="text" name="email" id="email" class="inp_find">
                                </span>
                                <div class="suggest_email email_list">
                                    <ul class="list_email">
                                        <li class="auto_list"><a href="javascript:;" onclick="return false;" class="link_email"><strong class="txt_email"></strong>@naver.com</a></li>
                                        <li class="auto_list"><a href="javascript:;" onclick="return false;" class="link_email"><strong class="txt_email"></strong>@gmail.com</a></li>
                                        <li class="auto_list"><a href="javascript:;" onclick="return false;" class="link_email"><strong class="txt_email"></strong>@daum.net</a></li>
                                        <li class="auto_list"><a href="javascript:;" onclick="return false;" class="link_email"><strong class="txt_email"></strong>@nate.com</a></li>
                                        <li class="auto_list"><a href="javascript:;" onclick="return false;" class="link_email"><strong class="txt_email"></strong>@outlook.com</a></li>
                                    </ul>
                                </div>
                                <p class="message_find" id="msg_mail" style="display:none;">휴대폰번호를 정확하게 입력해주세요.</p>
                                <button type="button" id="btn_cert_mail" class="btn_basic2 type03 btn_cert">인증번호 발송</button>
                            </div>
                        </li>

                        <li>
                            <div class="wrap_lab"><label for="findCite" class="lab_find">인증번호</label></div>
                            <div class="wrap_input">
                                <span class="box_input">
                                   <input type="text" name="findCite" id="findCite" class="inp_find">
                                    <span class="message_find time_find" style="display:none;">남은 시간 (3:00)</span>
                                </span>
                                <p class="message_find" id="msg_cert_num" style="display:none;">입력시간이 만료되었습니다. 인증번호를 다시 발송해주세요.</p>
                                <p class="message_find ok" style="display:none;">인증 성공. 잠시만 기다려주세요.</p>
                            </div>
                        </li>
                    </ul>
                    <div class="wrap_link">
                        <button type="button" class="btn_biggest_type01" id="btn_cert_complete">인증확인</button>
<!--                        <button type="button" class="btn_biggest_type01" id="btn_next" style="display: none">다음</button>-->
                    </div>
                </fieldset>
            </form>
        </div>

        <div class="find_method" style="
    width: 962px;
">
    <a href="/zf_user/auth" class="btn_basic_type01 btn_login" title="로그인 바로가기">로그인</a>
        <a href="/zf_user/helpdesk/person-find-password" class="btn_basic_type01 btn_pwd" title="비밀번호 찾기 바로가기">비밀번호 찾기</a>
        <a href="/zf_user/member/registration?type=p" class="btn_basic_type04" title="회원가입 바로가기">회원가입</a>
    <a href="/zf_user/help/help-word" class="btn_basic_type04" title="자주 묻는 질문 바로가기">자주 묻는 질문</a>
    <p class="desc_method">위 방법으로 계정을 찾을수 없다면, <a href="/zf_user/helpdesk/person-lost" class="link_ask">비밀번호 분실신고</a>를 이용해주세요.</p>
</div>    </div>

<!--    <script type="text/javascript" src="//www.saraminimage.co.kr/js/libs/jquery-1.8.3.min.js"></script>-->
    <!-- <script language="javascript" src="/js/member-find-idpw.js?v=20210527163216"></script>     -->                                
    	<div id="div-gpt-ad-1400664864294-7-wrapper" class="google-adsense doctype">
            <div class="google-standby-banner" style="display: none;">
                <a href="http://www.saramin.co.kr/avatar-branding/?inner_source=saramin&amp;inner_medium=banner&amp;inner_campaign=Sub_bottomBanner&amp;inner_term=avatar_introduce" target="_blank"><img src="https://www.saraminbanner.co.kr/adserver/default/2018/09/pekadn_4fza-2rxelk_728x90.png" alt="방문자수 1위 사람인"></a>
            </div>
            <div id="div-gpt-ad-1400664864294-7-inner" style="">
                <div id="div-gpt-ad-1400664864294-7" data-google-query-id="CIvIqbSl8_ACFY62vAodiUUFiQ">
                    <div id="google_ads_iframe_/61280259/CS_728x90_0__container__" style="border: 0pt none;">
                    	<iframe id="google_ads_iframe_/61280259/CS_728x90_0" title="3rd party ad content" name="google_ads_iframe_/61280259/CS_728x90_0" width="728" height="90" scrolling="no" marginwidth="0" marginheight="0" frameborder="0" sandbox="allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation" allow="conversion-measurement 'src'" srcdoc="" data-google-container-id="1" style="border: 0px; vertical-align: bottom;" data-load-complete="true">
                    	</iframe>
                    </div>
                </div>
            </div>
        </div>
      </div>
      </div>
      </div>

<!-- <script type="text/javascript">

        var getId = (function () {
            var elCache = {};
            return function (id) {
                if (!elCache[id]) {
                    elCache[id] = document.getElementById(id);
                }
                return elCache[id];
            }
        })();

        var page_url = 'L3pmX3VzZXIvaGVscGRlc2svcGVyc29uLWZpbmQtaWQ=';
        var autoLoginCheck = getId('pop_login_layer').querySelector('form').ly_autologin;

        function addEvent(ele, eventType, func) {
            var obj = typeof ele === 'string' ? getId(ele) : ele;
            if (obj.addEventListener) {
                obj.addEventListener(eventType, func, false);
            } else if (obj.attachEvent) {//IE
                obj.attachEvent('on' + eventType, func);
            }
        }

        //아이디
        addEvent("ly_id", "focus", function () {
            getId('ly-id-label').style.display = 'none';
        });
        addEvent("ly_id", "blur", function () {
            if (getId('ly_id').value === '') {
                getId('ly-id-label').style.display = 'block';
            }
        });

        //패스워드
        addEvent("ly_password", "focus", function () {
            getId('ly-password-label').style.display = 'none';
        });
        addEvent("ly_password", "blur", function () {
            if (getId('ly_password').value === '') {
                getId('ly-password-label').style.display = 'block';
            }
        });

        //창닫기
        addEvent("pop_login_layer_close", "click", function () {
            getId('page_url').value = page_url;
            getId('pop_login_layer').style.display = 'none';
            getId('pop_login_layer_dimmed').style.display = 'none';
        });

        //로그인 유지 창닫기
        addEvent("auto_login_close", "click", function () {
            getId('tooltip_autologin').style.display = 'none';
        });


        //로그인 유지 안내 팝업
        addEvent(autoLoginCheck, 'click', function () {
            getId('tooltip_autologin').style.display = autoLoginCheck.checked ? 'block' : 'none';
        });

        //폼  체크
        function loginCheckMainLayer(form) {
            if (form.id.value === "") {
                alert("아이디를 입력하세요.");
                form.id.focus();
                return false;
            }
            if (form.id.value.indexOf(" ") > 0) {
                alert("아이디에 공백에 있습니다. 공백을 제거해주세요");
                form.id.focus();
                return false;
            }
            if (form.id.value.length < 4) {
                alert("아이디는 4자이상이어야 합니다");
                form.id.focus();
                return false;
            }
            if (form.password.value === "") {
                alert("비밀번호를 입력하세요");
                form.password.focus();
                return false;
            }
            if (form.password.value.length < 4 || form.password.value.length > 32) {
                alert("비밀번호는 영문,숫자,특수문자 조합 6~32자 입니다.");
                form.password.focus();
                return false;
            }
            return true;
        }

        //페이지 로딩시 초기화 시켜 준다.
        setTimeout(function () {
            var idInPut = getId('ly_id');
            var pwInput = getId('ly_password');
            if (!getId('ly_id').value) {
                idInPut.value = '';
                idInPut.blur();
            }
            pwInput.value = '';
            pwInput.blur();
        }, 50);

        (function ($) {
            $('._social_login').on('click', 'a', function (e) {
                e.preventDefault();
                e.stopPropagation();
                var link =  $(e.currentTarget).attr('href'),
                    provider = $(e.currentTarget).data('provider');
                if((navigator.userAgent.toLowerCase().indexOf("msie") !== -1) && provider === 'apple'){
                    if(confirm('IE10이하 버전의 인터넷 익스플로러에서는 Apple 로그인이 정상 작동하지 않을 수 있습니다.\n' +
                        '인터넷 익스플로러를 최신 버전으로 업데이트 해주세요'))
                    {
                        window.open(link, '_blank', 'width=480,height=640');
                    }
                    return;
                }
                window.open(link, '_blank', 'width=480,height=640');
            });
        })(jQuery);
    </script> -->
<script type="text/javascript">
var isPersonLogin = false;
var isCompanyLogin = false;
</script>

<script src="https://www.saramin.co.kr/js/wl6.js" type="text/javascript"></script>

<!-- <script type="text/javascript">
(function() {
  var pszProto = (("https:" == document.location.protocol) ? "https://www.saramin.co.kr/js/" : "//www.saraminimage.co.kr/js/");
  document.write(unescape("%3Cscript src='" + pszProto + "wl6.js' type='text/javascript'%3E%3C/script%3E"));
})();
</script> -->


<!-- <script type="text/javascript" id="">
dataLayer.push(
		{
			event:"productClick",
			ecommerce:{
				click:{
					actionField:{
						list:"\/zf_user\/helpdesk\/person-find-id"},
						products:
							[
								{
									name:"etc",
									id:"undefined",
									price:0,
									brand:"undefined",
									category:"etc",
									variant:"null",
									position:"\/zf_user\/helpdesk\/person-find-id"}]}}});
</script> -->

<script type="text/javascript">

	function n_trackEvent(category, action, opt_label, opt_value, opt_noninteraction) {
	    var l = document.location;
	    var url = l.protocol + '//' + l.host + '/trackEvent?category=' + category + '&action=' + action;
	    var label = opt_label || '';
	    var value = opt_value || '';
	    url = url + '&opt_label=' + label + '&opt_value=' + value;
	    n_click_logging(url, l.href);
	    try {
	        _gaq.push(['_trackEvent', category, action, opt_label, opt_value, opt_noninteraction]);
	        ga('send', 'event', category, action, opt_label, opt_value, opt_noninteraction);
	    } catch (_e) {}
	}
	
	function pushDataLayer(event, category, event_flow, event_label) {
	    try {
            dataLayer.push({
                'event': event || 'ga_lead',
                'category': category || '',
                'event-flow': event_flow || '',
                'event-label': event_label || ''
            });

        }catch (e) {

        }
    }

    // 클릭 이벤트 + 구글 태그매니져 로깅
    function loggingEventAndTagManager(trackEventAttr, tagManagerAttr) {
        n_trackEvent(trackEventAttr[0], trackEventAttr[1], trackEventAttr[2], trackEventAttr[3]);
        pushDataLayer(tagManagerAttr[0], tagManagerAttr[1], tagManagerAttr[2], tagManagerAttr[3]);
    }


    function promotionPushDataLayer(log_event, log_id, log_name, log_creative, log_position) {
	    try{
            var ecommerce_type = log_event === 'promotionClick' ? 'promoClick' : 'promoView';
            var promotion_log = {};
            promotion_log[ecommerce_type] = {
                'promotions': [
                    {
                        'id': log_id,
                        'name': log_name,
                        'creative': log_creative,
                        'position': log_position
                    }
                ]
            };

            var log_data = {
                'event': log_event,
                'ecommerce': promotion_log
            };

            dataLayer.push(log_data);
        } catch (e) {

        }
    }

	
	function _hwaClick(cc) {
		n_trackEvent('ADs', 'Click-' + cc);
	}

    function applyTrackEvent(el, opt_category, opt_content, opt_ref, opt_ref_content) {

        try {
            var url         = el.href;
            var category    = opt_category || '';
            var content     = opt_content || '';
            var ref         = opt_ref || '';
            var ref_content = opt_ref_content || '';
            var anchor      = '';

            if ( url.indexOf('#') != -1 ) {
                var splitUrl = url.split('#');
                url = splitUrl[0];
                anchor = splitUrl[1];
            }

            if( url.indexOf('?') < 0 ) {
                url = url + '?t_category=' + category + '&t_content=' + content + '&t_ref=' + ref + '&t_ref_content=' + ref_content;
            } else {
                url = url + '&t_category=' + category + '&t_content=' + content + '&t_ref=' + ref + '&t_ref_content=' + ref_content;
            }

            if ( anchor != '' ) {
                url += '#' + anchor;
            }

            el.href = url;
        } catch (e) {
        }
    }

    function s_trackApply(el, opt_ref, opt_ref_content, opt_ref_scnid, opt_ref_area, opt_etc) {

        try {
            var url         = el.href;
            var ref         = opt_ref || '';
            var ref_content = opt_ref_content || '';
            var ref_scnid   = opt_ref_scnid || '';
            var ref_area   = opt_ref_area || '';
            var anchor      = '';

            var opt = opt_etc || {};

            if( url.indexOf('t_ref') > 0 ) return;

            if ( url.indexOf('#') != -1 ) {
                var splitUrl = url.split('#');
                url = splitUrl[0];
                anchor = splitUrl[1];
            }

            if( url.indexOf('?') < 0 ) {
                url = url + '?t_ref=' + ref + '&t_ref_content=' + ref_content;
            } else {
                url = url + '&t_ref=' + ref + '&t_ref_content=' + ref_content;
            }

            if (!!ref_scnid) {
				url += '&t_ref_scnid=' + ref_scnid;
            }

            if (!!ref_area) {
				url += '&t_ref_area=' + ref_area;
            }

            if ( anchor != '' ) {
                url += '#' + anchor;
            }

            if (opt.constructor === Object) {
                for (k in opt) {
                    if (opt.hasOwnProperty(k)) {
                        url += '&' + k + '=' + opt[k];
                    }
                }
            }

            el.href = url;

        } catch (e) {
        }
    }
</script>


<script>
var wwwBaseUrl = '';
var isNullRealNameVerified = '1';

//상세 입사지원 팝업
var isIE = function() {
    var ua = window.navigator.userAgent;
    var msie = ua.indexOf('MSIE ');
    if (msie > 0) {
        return true;
    }
    var trident = ua.indexOf('Trident/');
    if (trident > 0) {
        return true;
    }
    var edge = ua.indexOf('Edge/');
    if (edge > 0) {
        return false;
    }
    return false;
}
var closeAppSetupLayer = function(s) {
    if ( s == 'balloon-layer' ) {
        document.getElementById(s).style.display = 'none';
    } else {
        var layerEl = document.getElementById('app-setup-layer');
        layerEl.style.display = 'none';
    }
};
var isQuirksIE = isIE() && document.compatMode!=='CSS1Compat' ? true : false;

var loadingLayer = false;

// 릴레이 공고뷰에서 스크랩, 관심기업 로그인할 때 사용
var openIframeLoginLayer = function(rec_idx, company_nm, track_url, search_url, category) {
    if (loadingLayer) {
        alert('입사지원 프로세스가 실행중입니다. 잠시만 기다려 주세요.');
        return false;
    }
    var category = category || '';
    var rec_idx  = rec_idx || '';
    var quick_apply_frame = document.getElementById('quick_apply_frame');

    if (isCompanyLogin) {
        if ( !confirm('기업회원으로 로그인되어 있어 이용하실 수 없습니다.\n\n개인회원으로 로그인하시겠습니까?') ) {
            return;
        }
    }
    if (!isPersonLogin) {
        if (!!category && category == 'quick_login') {
            category = 'scrap';
        }

        quick_apply_frame.setAttribute('showLayer', 'y');
        var loginUrl = '/zf_user/member/apply/login-form?rec_idx=' + rec_idx + '&category=' + category;
        if (track_url) {
            loginUrl += '&' + track_url;
        }
        if (search_url) {
            loginUrl += '&' + search_url;
        }

        quick_apply_frame.style.display = 'none';
        quick_apply_frame.contentWindow.location.replace(loginUrl);
        showQuickApplyLayer();
    }
};

var showQuickApplyLayer = function() {
    if (!!document.getElementById('pop_login_layer')) {
        document.getElementById('pop_login_layer').style.display = 'none';
    }

    document.getElementsByTagName('body')[0].style.height = '100%';
    setQuickApplyLayerPosition();

    document.getElementById('iframe_layer').style.display = '';
};

var setQuickApplyLayerPosition = function() {
    var layerEl = document.getElementById('iframe_layer');

    var sheight = document.body.scrollTop;
    if (sheight == 0) {
        sheight = document.documentElement.scrollTop;
    }

    var sLeft = document.body.scrollLeft == 0 ? document.documentElement.scrollLeft : document.body.scrollLeft,
        window_w = window.innerWidth || document.documentElement.clientWidth || document.body.clientWidth;
        layerEl.style.top = sheight + 'px';
        layerEl.style.width = (window_w + sLeft) + 'px';

    var layerWidth = function(evt){
        sLeft = document.body.scrollLeft == 0 ? document.documentElement.scrollLeft : document.body.scrollLeft;
        window_w = window.innerWidth || document.documentElement.clientWidth || document.body.clientWidth;
        layerEl.style.width = (window_w + sLeft) + 'px';
    };
    function addEvent(obj, evType, fn) {
        if(obj.addEventListener) {
            obj.addEventListener(evType, fn, true);
            return true;
        } else if(obj.attachEvent) {
            var r = obj.attachEvent("on" + evType, fn);  return r;
        } else {
            return false;
        }
    }
    addEvent(window, 'resize', layerWidth, true);
};

var closeIframeLoginLayer = function(onlayer) {
    if (loadingLayer && onlayer != 'y') {
        alert('입사지원 프로세스가 실행중입니다. 잠시만 기다려주세요.');
        return false;
    }

    var quick_apply_frame = document.getElementById('quick_apply_frame'),
        iframeLayerEl = document.getElementById('iframe_layer'),
        reloadFl = document.getElementById('quick_apply_layer').getAttribute('reload');

    quick_apply_frame.setAttribute('showLayer', 'n');
    iframeLayerEl.style.display = 'none';
    document.getElementsByTagName('html')[0].style.overflow = '';
    if(isQuirksIE) document.getElementsByTagName('body')[0].style.overflow = '';
    try {
        if (reloadFl == 'y' && global_rec_idx) {
            location.reload();
        }

        var statisticEl = window.parent.document.getElementById('goStatistic');

        if (typeof(statisticEl) != 'undefined' && statisticEl.value == 'go') {
            var d = new Date();
            d.setTime(d.getTime() + 60000);
            var expires = "expires="+d.toUTCString();
            document.cookie = "relay_view_to=statistics;" + expires + ";path=/;"
            location.reload();
        }
    } catch (e) {}
};

var showRecommendRecruitLayer = function (rec_idx, recruitapply_idx) {
    document.getElementById('iframe_layer').style.display = 'none';

    showQuickApplyLayer();

    //loadingLayer = true;

    var quick_apply_frame = document.getElementById('quick_apply_frame');
    quick_apply_frame.style.display = 'none';
    quick_apply_frame.setAttribute('showLayer', 'y');
    quick_apply_frame.contentWindow.location.replace('/zf_user/member/apply/recommend-recruit-list?rec_idx=' + rec_idx + '&recruitapply_idx=' + recruitapply_idx + '&apply_type=applyStatus');
};

var goResumeManage = function () {
    if (confirm('이력서가 등록되지 않았습니다.\n지금 등록하시겠습니까?')) {
        location.href = wwwBaseUrl + '/zf_user/member/resume-manage/select-template';
    }
};

var setReload = function(flag) {
    document.getElementById('quick_apply_layer').setAttribute('reload', flag);
};

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

      // 인증번호 입력란 생성
			$("<input>", {type:'text', id:"userNum", name:"userNum", size:"30px", placeholder:"인증번호 6자리를 입력하세요."}).appendTo('#phone_authNumber');
			$("<input>", {type:'button', "class":"btn btn-primary", id:"phoneNumBtn", name:"phoneNumBtn", disabled:"disabled", value:"인증하기"}).appendTo('#phone_authNumber');
			$("<p></p>", {id:'time'}).appendTo('#phone_authNumber');


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
                  url:"sendSms.do",
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

/* 인증번호 입력값 없으면 인증하기 버튼 비활성화 */
$(document).on("keyup","#authNum", function () {
	if($('#authNum').val().length > 0) {
		$('#authNumBtn').attr('disabled', false);
	} else {
		$('#authNumBtn').attr('disabled', true);
	}
});
$(document).on("keyup","#phone_authNum", function () {
	if($('#phone_authNum').val().length > 0) {
		$('#send').attr('disabled', false);
	} else {
		$('#send').attr('disabled', true);
	}
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
     $('#authNum').remove();
     $('#authNumBtn').remove();
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