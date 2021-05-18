<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

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
<!-- footer -->

	
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
<!-- footer -->
	

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- jQuery Modal -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
<!-- Bootstrap CSS-->
<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
<!-- Bootstrap Select-->
<link rel="stylesheet" href="vendor/bootstrap-select/css/bootstrap-select.min.css">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!-- <style type="text/css">
/* table셋팅 */
.content_table { width:98%; border-bottom:1px solid #EFEFEF; border-right:1px solid #EFEFEF; border-collapse:collapse; margin-left:auto; margin-right:auto;  clear:both; }
.content_table td, .content_table th { text-align:center; border-top:1px solid #EFEFEF; border-left:1px solid #EFEFEF; padding:0.3em; }
.content_table th { background-color:#; color:#FFFFFF; line-height: 19.7em; font-weight:normal;}
.content_table td { padding-left:5px; text-align:left; line-height: 1.7em; }
.content_table td.contents { width:100%; height:400px; overflow:auto; }
.content_table th, .content_table td { vertical-align:middle; }

.content_table select { height:19px; border:#CCCCCC solid 1px; vertical-align:middle; line-height: 1.8em; padding-left:0px; }
.content_table select option { margin-right:10px; }

</style> -->
<!-- <link rel="stylesheet" type="text/css" href="css/style.css"/> -->
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.close-modal{
    margin-top: 20px;
    margin-right: 20px;
}
</style>

</head>
<body>
<img alt="" src="image/1hara.gif">
<div class="col-md-6">
   <div class="d-flex justify-content-md-end justify-content-between">
       <div class="login">

        	<%-- <c:if test="${bbs.id eq login.id}"> --%>
         <%--  <%
             if(mem == null || mem.getMemberID().equals("")){ 
           %> --%>
               <a href="javascript:login()" id="login-btn" class="login-btn"><i class="fa fa-sign-in"></i><span class="d-none d-md-inline-block">Sign In</span></a>
                    <a href="regi.jsp" class="signup-btn"><i class="fa fa-user"></i><span class="d-none d-md-inline-block">Sign Up</span></a>
           <%--   <%
                      }
                 //로그인 후 
                    else{
                    %> --%>
                    <%--   <a href="logout.do" class="signup-btn"><i class="fa fa-user"></i><span class="d-none d-md-inline-block">Logout</span></a>
                    <%
                      }%> --%>
                  <%-- </c:if>  --%>   
      </div>
   </div>
</div>




 <!-- =========Login 클릭 시 Modal =========== -->
      <div id="login-modal" tabindex="-1" role="dialog" aria-labelledby="login-modalLabel" aria-hidden="true" class="modal fade">
        <div role="document" class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h4 id="login-modalLabel" class="modal-title">1hara Login</h4>
              <button type="button" data-dismiss="modal" aria-label="Close" class="close"><span aria-hidden="true"></span></button>
            </div>
            <div class="modal-body">

            <!-- memberController - loginAf.do로 이동 -->
              <form action="member" method="post">
                 <input type="hidden" name="param" value="loginAf.do">
                <div class="form-group">
                  <input id="email_modal" type="text" placeholder="ID" name="id" class="form-control">
                </div>
                <div class="form-group">
                  <input id="password_modal" type="password" name="pwd" placeholder="password" class="form-control">
                </div>
                <p class="text-center">
                  <button class="btn btn-template-outlined"><i class="fa fa-sign-in"></i> Login</button>
                </p>
              </form>


              <p class="text-center text-muted">아직 회원가입을 안하셨나요?</p>
              <p class="text-center text-muted"><a href="regi.do"><strong>가입하기</strong></a> 백수를 탈출합시다!</p>
            </div>
          </div>
        </div>
      </div>

<!-- =======Login 클릭 시 Modal END =========-->


          

<div style="text-align: center;">
	<h3>개인회원과 기업회원 중 원하는 유형을 선택해주세요</h3>
	<h1>개인회원과 기업회원 두개의 유형으로 회원가입이 가능합니다</h1>
<br><br>
	
<div class="container">
		<h3 align="center">회원 유형 선택</h3><br>
	<div class="row justify-content-center">
		<div class="col-md-10 text-center">
			<div>
				<div class="row">
					<div class="col-md-1"></div>
					<div class="col-md-4" style="background-color: #cfcfcf;">
						<p style="padding-top : 80px; font-size: 22px; font: bold;">일반회원</p>
						<button type="button" id="normalRegi" class="btn btn-primary btn-lg" style="margin: 35px">가입하기</button>
					</div>
					<div class="col-md-1"></div>
					<div class="col-md-4" style="background-color: #cfcfcf;">
						<p style="padding-top : 80px; font-size: 22px; font: bold;">기업회원</p>
						<button type="button" id="businessRegi" class="btn btn-warning btn-lg" style="margin: 35px">가입하기</button>
					</div>
					<div class="col-md-1"></div>
				</div>
			</div>
		</div>
	</div>
</div>


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
	<!-- <table class="content_table" border="1">
	<colgroup>
		<col style="width:500px">
		<col style="width:500px">			
	</colgroup>
		<tr>
			<th><a href="memberRegi.do">개인회원가입</a></th>
			<th><a href="businessRegi.do">기업회원가입</a></th>
		</tr>
	
	</table> -->
</div>

<script type="text/javascript">

$('#normalRegi').click(function() {
	location.href = "memberRegi.do";
});

$('#businessRegi').click(function() {
	location.href = "businessRegi.do";
});


function login() {
	
	alert('c');
    
	$("#login-modal").modal();
	$("#login-modal").removeClass("modal fade");
	$("#login-modal").addClass("modal");
   
}



/* $("#_toSignup").click(function() {
    $("#loglayerModal").removeClass("modal fade");
    $("#loglayerModal").addClass("modal");
    $("#regiLayerModal").addClass("modal fade");
    
    $("#regiLayerModal").modal();
   
});  */



</script>






</body>
</html>
