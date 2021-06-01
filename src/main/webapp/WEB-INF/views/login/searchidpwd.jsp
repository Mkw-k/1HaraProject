 <head>
 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <link href="csss/layout.css" rel="stylesheet" type="text/css">
 <link href="csss/components.css" rel="stylesheet" type="text/css">
 <link href="csss/help.css" rel="stylesheet" type="text/css">
 <style type="text/css">
 	ul {
    display: block;
    list-style-type: disc;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
	}
 	
 	div {
    display: block;
	}
 	
 </style>
 </head>
<body class="has_lnb">

<div id="sri_section" class="has_banner" tabindex="-1">
<div id="sri_wrap">
 <div id="content">
    <div class="wrap_title_recruit">
	    <h1 class="title_common">아이디/비밀번호 찾기</h1>
	</div>
	<!-- help_find -->
	<div class="help_find help_find_type4">
    	<div class="cont_find">
       		<p class="desc_find">가입한 아이디와 비밀번호를 잊으셨습니까?</p>
        	<ul class="list_idpwd">
            		<li>
                		<strong class="tit_idpwd">개인회원</strong>
                		<span class="find_link">
                   	 		<a href="/zf_user/helpdesk/person-find-id" class="link_sns">아이디 찾기</a>
                    		<a href="/zf_user/helpdesk/person-find-password" class="link_sns">비밀번호 찾기</a>
            		    </span>
            		</li>
           		    <li>
               			<strong class="tit_idpwd">기업회원</strong>
               		    <span class="find_link">
                		    <a href="/zf_user/helpdesk/company-find-id" class="link_sns">아이디 찾기</a>
                		    <a href="/zf_user/helpdesk/company-find-password-intro" class="link_sns">비밀번호 찾기</a>
                		</span>
            		</li>
        		</ul>
    		</div>
    	    <div class="find_method">
        	   <a href="/zf_user/auth" class="btn_basic_type01 btn_login" title="로그인 바로가기">로그인</a>
        	   <a href="/zf_user/helpdesk/id-pw-find-social" class="btn_basic_type01 btn_sns" title="소셜계정 찾기 바로가기">소셜계정 찾기</a>
     		   <a href="/zf_user/member/registration?type=p" class="btn_basic_type04" title="회원가입 바로가기">회원가입</a>
     		   <a href="/zf_user/help/help-word" class="btn_basic_type04" title="자주 묻는 질문 바로가기">자주 묻는 질문</a>
     		  <p class="desc_method">위 방법으로 계정을 찾을수 없다면, 사람인 고객센터로 직접 <a href="/zf_user/help">문의</a> 주시기 바랍니다.</p>
   	 		</div>
		</div>
  </div>
 </div> 
</div> 
<!-- //help_find -->       
</body>
                   