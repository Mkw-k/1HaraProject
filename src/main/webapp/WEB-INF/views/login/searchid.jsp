<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
            <form action="https://www.saramin.co.kr/zf_user/helpdesk/person-find-secure" method="post" id="find_form">
                <input type="hidden" id="confirm_complete" name="confirm_complete" value="n">
                <input type="hidden" id="confirm_send" name="confirm_send" value="n">
                <input type="hidden" id="channel" name="channel" value="sms">
                <input type="hidden" id="type" name="type" value="id">
                <input type="hidden" id="redirect_url" name="redirect_url" value="helpdesk/person-find-id-list">
                <input type="hidden" id="seq" name="seq" value="seq1622442527">
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

        <div class="find_method">
    <a href="/zf_user/auth" class="btn_basic_type01 btn_login" title="로그인 바로가기">로그인</a>
        <a href="/zf_user/helpdesk/person-find-password" class="btn_basic_type01 btn_pwd" title="비밀번호 찾기 바로가기">비밀번호 찾기</a>
        <a href="/zf_user/member/registration?type=p" class="btn_basic_type04" title="회원가입 바로가기">회원가입</a>
    <a href="/zf_user/help/help-word" class="btn_basic_type04" title="자주 묻는 질문 바로가기">자주 묻는 질문</a>
    <p class="desc_method">위 방법으로 계정을 찾을수 없다면, <a href="/zf_user/helpdesk/person-lost" class="link_ask">비밀번호 분실신고</a>를 이용해주세요.</p>
</div>    </div>

<!--    <script type="text/javascript" src="//www.saraminimage.co.kr/js/libs/jquery-1.8.3.min.js"></script>-->
    <script language="javascript" src="/js/member-find-idpw.js?v=20210527163216"></script>                                    <div id="div-gpt-ad-1400664864294-7-wrapper" class="google-adsense doctype">
            <div class="google-standby-banner" style="display: none;">
                                                            <a href="http://www.saramin.co.kr/avatar-branding/?inner_source=saramin&amp;inner_medium=banner&amp;inner_campaign=Sub_bottomBanner&amp;inner_term=avatar_introduce" target="_blank"><img src="https://www.saraminbanner.co.kr/adserver/default/2018/09/pekadn_4fza-2rxelk_728x90.png" alt="방문자수 1위 사람인"></a>
                                                </div>
            <div id="div-gpt-ad-1400664864294-7-inner" style="">
                <div id="div-gpt-ad-1400664864294-7" data-google-query-id="CIvIqbSl8_ACFY62vAodiUUFiQ">
                    <div id="google_ads_iframe_/61280259/CS_728x90_0__container__" style="border: 0pt none;"><iframe id="google_ads_iframe_/61280259/CS_728x90_0" title="3rd party ad content" name="google_ads_iframe_/61280259/CS_728x90_0" width="728" height="90" scrolling="no" marginwidth="0" marginheight="0" frameborder="0" sandbox="allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation" allow="conversion-measurement 'src'" srcdoc="" data-google-container-id="1" style="border: 0px; vertical-align: bottom;" data-load-complete="true"></iframe></div>
                </div>
            </div>
        </div>
                </div>



</body>
</html>