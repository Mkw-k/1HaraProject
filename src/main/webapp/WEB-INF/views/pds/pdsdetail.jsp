<!DOCTYPE html>
<%@page import="bit.com.a.util.UtilEx"%>
<%@page import="bit.com.a.dto.FAQDto"%>
<%@page import="java.util.List"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
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

<!-- 제이쿼리 -->
<script src="//https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- 네비바 --> 
<!-- carousel -->
<link rel="stylesheet" href="//https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  
<script src="//https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="//https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<!-- jQuery Modal -->
<script src="//https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet" href="//https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" /> 

 <!-- 전체 css -->
<link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
<script type="text/javascript" src="layout/scripts/jquery.min.js"></script>
<script type="text/javascript" src="layout/scripts/featured_slide.js"></script>

<!-- footer -->
<link rel="shortcut icon" href="/images/common/ico/w_favicon.ico" type="image/x-icon">
<link rel="stylesheet" href="static/css/import.css" media="all">

<!-- 퀵메뉴 -->
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script> 

<!-- 랭킹 -->
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<link href="csss/header.css" rel="stylesheet" type="text/css">

<head>

<style type="text/css">
/* 모달 */
#login-modal {
margin-right : 450px;
}

.newsletter {
padding: 80px 0;
background: #2186eb;
}

.newsletter .content {
max-width: 650px;
margin: 0 auto;
text-align: center;
position: relative;
z-index: 2; }
.newsletter .content h2 {
color: #243c4f;
margin-bottom: 40px; }
.newsletter .content .form-control {
height: 50px;
border-color: #ffffff;
border-radius:0;
}
.newsletter .content.form-control:focus {
box-shadow: none;
border: 2px solid #243c4f;
}
.newsletter .content .btn {
min-height: 50px; 
border-radius:0;
background: #243c4f;
color: #fff;
font-weight:600;
}

/* 3가지 FAQ링크 */


:root {
    font-size: 10px;
}

.faqnav ul {
    padding: 0;
    list-style-type: none;
}

.faqnav li {
    width: 20rem;
    height: 7rem;
    font-size: 20px;
    text-align: center;
    line-height: 7rem;
    font-family: sans-serif;
    text-transform: uppercase;
    letter-spacing: 1px;
    position: relative;
    transition: 0.3s;
    margin: 8.5rem;
    background-color: #eee;
}

.faqnav li::before,
.faqnav li::after {
    content: '';
    position: absolute;
    width: inherit;
    height: inherit;
    top: 0;
    left: 0;
    transition: 0.3s;
}

.faqnav li::before {
    background-color: #eee;
    z-index: -1;
    box-shadow: 0.2rem 0.2rem 0.5rem rgba(0, 0, 0, 0.2);
}

.faqnav li::after {
    background-color: #2186eb;
    transform: translate(1.5rem, 1.5rem);
    z-index: -2;
}

.faqnav li:hover {
    transform: translate(1.5rem, 1.5rem);
    color: black;
    background-color: #2186eb;
}

.faqnav li:hover::before {
    background-color: #2186eb;
}

.faqnav li:hover::after {
    background-color: #eee;
    transform: translate(-1.5rem, -1.5rem);
}

/* 테이블 css */
.pb-100 {
	padding-bottom: 100px;
}
.pt-100 {
	padding-top: 100px;
}
a{
    text-decoration:none;
}
.section-title h4 {
  font-size: 14px;
  font-weight: 500;
  color: #777;
}
.section-title h2 {
	font-size: 32px;
	text-transform: capitalize;
	margin: 15px 0;
	display: inline-block;
	position: relative;
	font-weight: 700;
	padding-bottom: 15px;
	letter-spacing: 1px;
	text-transform: uppercase;
}
.section-title p {
	font-weight: 300;
	font-size: 14px;
}
.black-bg .section-title h2, .black-bg .section-title h4, .black-bg .section-title p {
  color:#fff
}
.section-title h2:before {
  position: absolute;
  content: "";
  width: 150px;
  height: 1px;
  background-color: #777;
  bottom: 0;
  left: 50%;
  margin-left: -75px;
}
.section-title h2:after {
  position: absolute;
  content: "";
  width: 80px;
  height: 3px;
  background-color: #e16038;
  border: darkblue;
  bottom: -1px;
  left: 50%;
  margin-left: -40px;
}
.section-title {
  margin-bottom: 70px;
}
.single-price {
	text-align: center;
	padding: 30px;
	box-shadow: 0px 0px 2px rgba(0, 0, 0, 0.2);
}
.price-title h4 {
  font-size: 24px;
  text-transform: uppercase;
  font-weight: 600;
}
.price-tag {
  margin: 30px 0;
}
.price-tag {
	margin: 30px 0;
	background-color: #fafafa;
	color: #000;
	padding: 10px 0;
}
.center.price-tag {
	background-color: tomato;
	color:#fff
}
.price-tag h2 {
	font-size: 45px;
	font-weight: 600;
	font-family: poppins;
}
.price-tag h2 span {
  font-weight: 300;
  font-size: 16px;
  font-style: italic;
}
.price-item ul {
  margin: 0;
  padding: 0;
  list-style: none;
}
.price-item ul li {
  font-size: 14px;
  padding: 5px 0;
  border-bottom: 1px dashed #eee;
  margin: 5px 0;
}
.price-item ul li:last-child {
  border-bottom: 0;
}
.single-price a {
  margin-top: 15px;
}
a.box-btn {
	background-color: #2186eb;
	padding: 5px 20px;
	display: inline-block;
	color: #fff;
	text-transform: capitalize;
	border-radius: 3px;
	font-size: 15px;
	transition: .3s;
}
a.box-btn:hover, a.border-btn:hover {
	background-color: #2186eb;
}

/* 네비바 반응형 */
* {
  margin: 0px;
  padding: 0px;
  box-sizing: border-box;
}

nav {
  display: flex;
  justify-content: space-around;
  align-items: center;
  background-color: #504954;
  font-family: "Poppins", sans-serif;
}

.logo {
  color: rgb(226, 226, 226);
  text-transform: uppercase;
  /* 각 글자 2px씩 간격을 줌*/
  letter-spacing: 2px;
  font-size: 18px;
}

.nav-links {
  width: 40%;
  /* display: flex; */
  justify-content: space-around;
}

.nav-links li {
  list-style: none;
}

.nav-links a {
  color: rgb(226, 226, 226);
  text-decoration: none;
  letter-spacing: 3px;
  font-weight: bold;
  font-size: 14px;
}

.burger {
  display: none;
  cursor: pointer;
}

.burger div {
  width: 25px;
  height: 3px;
  background-color: rgb(226, 226, 226);
  margin: 5px;
  transition: all 0.3s ease;
}

@media screen and (max-width: 1024px) {
  .nav-links {
    width: 60%;
  }
}

@media screen and (max-width: 768px) {
  body {
    overflow-x: hidden;
  }
  .nav-links {
    position: absolute;
    top: 8vh;
    right: 0;
    height: 92vh;
    background-color: #504954;
    flex-direction: column;
    align-items: center;
    width: 50%;
    transform: translateX(100%);
  }
  .nav-links li {
    opacity: 0;
  }
  .burger {
    display: block;
  }

  .nav-active {
    transform: translateX(0%);
  }

  @keyframes navLinkFade {
    from {
      opacity: 0;
      transform: translateX(5px);
    }
    to {
      opacity: 1;
      transform: translateX(0);
    }
  }
}

.toggle .line1 {
  transform: rotate(-45deg) translate(-5px, 6px);
}

.toggle .line2 {
  opacity: 0;
}

.toggle .line3 {
  transform: rotate(45deg) translate(-5px, -6px);
}

/* 테이블 속성 */
.table-bordered {
border: 1px solid #dddddd;
border-collapse: separate;
border-left: 0;
-webkit-border-radius: 4px;
-moz-border-radius: 4px;
border-radius: 4px;
}

.table {
width: 100%;
margin-bottom: 20px;
background-color: transparent;
border-collapse: collapse;
border-spacing: 0;
display: table;
}


</style>
</head>
<body>
<div class="all">


<c:import url="../header2.jsp" charEncoding="utf-8"/> 

 <!-- =========Login 클릭 시 Modal =========== -->
      <div id="login-modal" tabindex="-1" role="dialog" aria-labelledby="login-modalLabel" class="modal modal-center fade ">
        <div role="document" class="modal-dialog" style="margin: 0;">
          <div class="modal-content">
            <div class="modal-header">
              <h4 id="login-modalLabel" class="modal-title">1hara Login</h4>
              <button type="button" data-dismiss="modal" aria-label="Close" class="close"><span aria-hidden="true"></span>x</button>
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
              <p class="text-center text-muted"><a href="regiclick.do"><strong>가입하기</strong></a> 백수를 탈출합시다!</p>
            </div>
          </div>
        </div>
      </div>

<!-- =======Login 클릭 시 Modal END =========-->



<!-- ####################################################################################################### -->
<!-- 본문 -->
<main>

<div style="width:987px;height:900px;border-style: outset;margin-left: auto;margin-right: auto;margin-top: 140px;margin-bottom: auto";>

<img src="자료실배경.png"/>
<section class="pricing-area pt-100 pb-100" id="pricing" style="padding-top: 0px;">
		<div class="container" style="margin-top: -100;">
			<div class="row">
               
               <div class="col-xl-12">
				<div class="single-price" style="/* margin-left: 300px; */width: 980px;margin-left: 0px;padding-right: 0px;padding-top: 0px;padding-bottom: 0px;padding-left: 0px;">
				  <div class="price-item">
						
						
						<table  class="table table-striped table-bordered" border="1" style="margin-top: 100px;">
						   <colgroup>
						      <col width="200"><col width="500">
						   </colgroup>
						
						<tr>
						   <th>아이디</th>
						   <td>${pds.memberid }</td>
						</tr>
						
						<tr>
						   <th>제목</th>
						   <td>${pds.title }</td>
						</tr>
						
						<tr>
						   <th>다운로드</th>
						   <td>
						      <input type="button" name="btnDown" value="다운로드" id="pdsss"
						         onclick="filedown('${pds.newfilename}', '${pds.pdsseq }', '${pds.filename}')">
						   </td>
						</tr>
						
						<tr>
						   <th>조회수</th>
						   <td>${pds.readcount }</td>
						</tr>
						
						<tr>
						   <th>다운수</th>
						   <td>${pds.downcount }</td>
						</tr>
						
						
						<tr>
						   <th>파일명</th>
						   <td>${pds.filename }</td>
						</tr>
						
						<tr>
						   <th>미리보기</th>
						   <td>
						      <img alt="" src="./upload/${pds.newfilename }" width=600px">
						   </td>
						</tr>
						
						
						<tr hidden="">
						   <th>등록일</th>
						   <td>${pds.regdate }</td>
						</tr>
						
						<tr>
						   <th>내용</th>
						   <td>
						      <textarea rows="10" cols="100" readonly="readonly" style="width: 682px;">${pds.content }</textarea>
						   </td>
						</tr>
						
						<tr>
							<td colspan="2" style="text-align: -webkit-match-parent;border-left: hidden;">
							 	<a href="#" class="box-btn" onclick="_btnback()">글목록</a>
							 	<c:if test="${login.memberid eq pds.memberid }">
							    <a href="#" class="box-btn"  id="_btnUpdate">수정</a>
							    </c:if>
							    <c:if test="${login.auth == 3 }">
							    <a href="#" class="box-btn" onclick="deletePds()">삭제</a>
							    </c:if>
							</td>
						</tr>
						
						</table>
						<%-- <div>
						   <button type="button" onclick="_btnback()">목록으로</button>
						</div>
						<c:if test="${login.auth == 3 }">
						<div>
						   <button type="button" onclick="deletePds()">삭제</button>
						</div>
						</c:if>
						
						<!-- 수정하기 -->
						<c:if test="${login.memberid eq pds.memberid }">
						<div id="buttons_wrap">   
						      <button type="button" id="_btnUpdate">수정하기</button>   
						</div>
						</c:if> --%>
						
						<!-- seq만 필요하므로 -->
						<form name="frmForm" id="_frmForm" action="pdsupdate.do" method="post">
						   <input type="hidden" name="seq" value="${pds.pdsseq }">
						</form>
						
						
						<form name="file_Down" action="fileDownload.do" method="post">
						   <input type="hidden" name="newfilename">
						   <input type="hidden" name="filename">
						   <input type="hidden" name="seq">
						</form>
						
				  </div>
				 	
			   </div>
			   </div>
            </div>
		</div>
	  </section>

</div>









</main>
<!-- ####################################################################################################### -->

<!-- FOOTER -->

<div id="footer" style="width: 1500px;">
      	<div class="top-area">
		<div class="inner-wrap">
			<div class="link">
				<a href="#1" class="bg-logo-ei" onclick="fn_moelToken('https://www.ei.go.kr/ei/eih/cm/hm/main.do');">고용보험</a>
				<a href="#2" class="bg-logo-hrd" onclick="fn_moelToken('http://www.hrd.go.kr');">직업훈련포털 HRD-Net</a>
			</div>
			
			
			<div class="right">
				<div class="visit">
					일평균 방문자수 <em>144,970</em>명
				</div>
			
				<div class="link-select">
					<button type="button" class="btn-link-open">패밀리 및 유관기관 사이트</button>
				</div>
			</div>
		</div>
	</div>


	<div class="familySite-area" style="display: block;">
		<ul>
			<li>
				<strong>패밀리사이트</strong>
				<a href="/empInfo/empInfoSrch/list/retriveWorkRegionEmpIntroList.do" title="새창 열림" target="_blank">지역워크넷</a>
				<a href="/ilmoa/jobSearch/retrieveIlmoaJobDetailSearchByMain.do" title="새창 열림" target="_blank">정부지원일자리</a>
				<a href="#1" title="새창 열림" onclick="f_moveUrl('EI')">고용보험</a>
				<a href="#2" title="새창 열림" onclick="f_moveUrl('HRD')">직업능력개발훈련</a>						
			    <a href="#3" title="새창 열림" onclick="f_moveUrl('WT')">장애인고용포털</a>
				<a href="http://www.eps.go.kr" title="새창 열림" target="_blank">외국인고용</a>				
				<a href="#4" title="새창 열림" onclick="f_moveUrl('CM')">사이버진로교육센터</a>
			</li>
			<li>
				<strong>정부기관</strong>
				<a href="http://www.moel.go.kr" title="새창 열림" target="_blank">고용노동부</a>
				<a href="http://www.moef.go.kr" title="새창 열림" target="_blank">기획재정부</a>
				<a href="http://www.moe.go.kr" title="새창 열림" target="_blank">교육부</a>
				<a href="http://www.msit.go.kr" title="새창 열림" target="_blank">과학기술정보통신부</a>
				<a href="http://www.mofa.go.kr" title="새창 열림" target="_blank">외교부</a>
				<a href="http://www.unikorea.go.kr" title="새창 열림" target="_blank">통일부</a>
				<a href="http://www.moj.go.kr" title="새창 열림" target="_blank">법무부</a>
				<a href="http://www.mnd.go.kr" title="새창 열림" target="_blank">국방부</a>
				<a href="http://www.mois.go.kr" title="새창 열림" target="_blank">행정안전부</a>
				<a href="http://www.mcst.go.kr" title="새창 열림" target="_blank">문화체육관광부</a>
				<a href="http://www.mafra.go.kr" title="새창 열림" target="_blank">농림축산식품부</a>
				<a href="http://www.motie.go.kr" title="새창 열림" target="_blank">산업통상자원부</a>
				<a href="http://www.mohw.go.kr" title="새창 열림" target="_blank">보건복지부</a>
				<a href="http://www.me.go.kr" title="새창 열림" target="_blank">환경부</a>
				<a href="http://www.mogef.go.kr" title="새창 열림" target="_blank">여성가족부</a>
				<a href="http://www.molit.go.kr" title="새창 열림" target="_blank">국토교통부</a>
				<a href="http://www.mof.go.kr" title="새창 열림" target="_blank">해양수산부</a>
				<a href="http://www.mpm.go.kr" title="새창 열림" target="_blank">인사혁신처</a>
				<a href="http://www.moleg.go.kr" title="새창 열림" target="_blank">법제처</a>
				<a href="http://www.mpva.go.kr" title="새창 열림" target="_blank">국가보훈처</a>
				<a href="http://www.mfds.go.kr" title="새창 열림" target="_blank">식품의약품안전처</a>
				<a href="http://www.ftc.go.kr" title="새창 열림" target="_blank">공정거래위원회</a>
				<a href="http://www.fsc.go.kr" title="새창 열림" target="_blank">금융위원회</a>
				<a href="http://www.acrc.go.kr" title="새창 열림" target="_blank">국민권익위원회</a>
				<a href="http://www.kcc.go.kr" title="새창 열림" target="_blank">방송통신위원회</a>
			</li>
			<li>
				<strong>유관기관</strong>
				<a href="http://www.kcomwel.or.kr" title="새창 열림" target="_blank">근로복지공단</a>
				<a href="http://www.hrdkorea.or.kr" title="새창 열림" target="_blank">한국산업인력공단</a>
				<a href="http://www.kosha.or.kr" title="새창 열림" target="_blank">안전보건공단</a>
				<a href="http://www.kead.or.kr" title="새창 열림" target="_blank">장애인고용공단</a>
				<a href="http://www.socialenterprise.or.kr" title="새창 열림" target="_blank">한국사회적기업진흥원</a>
				<a href="http://www.kopo.ac.kr" title="새창 열림" target="_blank">한국폴리텍대학</a>
				<a href="http://www.koreatech.ac.kr" title="새창 열림" target="_blank">한국기술교육대학교</a>
				<a href="http://www.kli.re.kr" title="새창 열림" target="_blank">한국노동연구원</a>
				<!-- <a href="http://news.joins.com/retirement?cloc=joongang|home|subsection5" title="새창 열림" target="_blank">중앙일보 반퇴시대 </a> -->
			</li>
		</ul>
	</div>
      	

<!-- 푸터미들 -->
      	
			<div class="middle-area">
				<div class="inner-wrap">
					<div class="link-footer">
						<a href="info.do">일하라 소개</a>
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
				<img src="./static/images/mainlogo.png" style="width: 130px;">
				<div class="etc">
					<a href="/images/useInfo/certification_kor2015.jpg" target="_blank" onclick="try { latte.getEvent(event).stop(); } catch (ex) {}; var remote = window.open('https://www.eprivacy.or.kr/front/certifiedSiteMark/certifiedSiteMarkPopup.do?certCmd=E&amp;certNum=2021-E-R001','EPRIVACY','width=527,height=720'); remote.focus(); return false;" title="새창"><img src="./static/images/brn-epriavcy.png" alt="개인정보보호우수사이트 인증서"></a>
					<a href="/html/wauMark2020_worknet.html" onclick="try { latte.getEvent(event).stop(); } catch (ex) {};window.open(this.href,'mark2020','width=605,height=850,scrollbars=no');return false;" title="새창" target="_blank" style="margin-top:-3px"><img src="./static/images/brn-wa-2019.png" alt="과학기술정보통신부 WEB ACCESSIBILITY 마크(웹 접근성 품질인증 마크)"></a>
							
				</div>
			</div>
		</div>
	</div>	
    
      <!-- ==============FOOTER END================= -->
</div>








<!-- ==============FOOTER================= -->
<script type="text/javascript" defer="defer">
//<![CDATA[
    $(window).load(function() {
        try {
            if (document != top.document) {
                fnFrameResize();
            }
        } catch(e){
            fnFrameResize();
        }
    });
//]]>
</script>

 
<script type="text/javascript">

/* $("#_btnRegi").click(function () {	
	location.href = "regiclick.do";	
}); */
function login() {
	
	//alert('c');
    
	$("#login-modal").modal();
	$("#login-modal").removeClass("modal fade");
	$("#login-modal").addClass("modal");
   
}

</script>

<!-- Channel Plugin Scripts  -->
<script>
  (function() {
    var w = window;
    if (w.ChannelIO) {
      return (window.console.error || window.console.log || function(){})('ChannelIO script included twice.');
    }
    var ch = function() {
      ch.c(arguments);
    };
    ch.q = [];
    ch.c = function(args) {
      ch.q.push(args);
    };
    w.ChannelIO = ch;
    function l() {
      if (w.ChannelIOInitialized) {
        return;
      }
      w.ChannelIOInitialized = true;
      var s = document.createElement('script');
      s.type = 'text/javascript';
      s.async = true;
      s.src = 'https://cdn.channel.io/plugin/ch-plugin-web.js';
      s.charset = 'UTF-8';
      var x = document.getElementsByTagName('script')[0];
      x.parentNode.insertBefore(s, x);
    }
    if (document.readyState === 'complete') {
      l();
    } else if (window.attachEvent) {
      window.attachEvent('onload', l);
    } else {
      window.addEventListener('DOMContentLoaded', l, false);
      window.addEventListener('load', l, false);
    }
  })();
  ChannelIO('boot', {
    "pluginKey": "9ec9cb05-626c-49ad-9fcf-67ccef29c08f"
  });
</script>
<!-- End Channel Plugin -->

<!-- 검색 -->
<script>
$("#searchBtn").click(function () {
    
	alert("searchBtn click")
	/* 검색어 */
	let search = document.getElementById("_searchBtn").value;
    
    location.href = "searchFAQ.do?search=" + search;
});
</script>




<script>


function deletePds(){
   if(confirm("정말로 삭제하시겠습니까? DB에서도 영원히 삭제됩니다") == true){
   location.href = "pdsdelete.do?seq=" + ${pds.pdsseq};
   } else{
   return;
   }
   }

function _btnback() {
   location.href = "pdslist.do";
};



var myVar;
function filedown(newfilename, seq, filename) {
   let doc = document.file_Down;
   doc.newfilename.value = newfilename;
   doc.filename.value = filename;
   doc.seq.value = seq;
   doc.submit();   
   
   myVar = setTimeout(_refrush, 10);
}   

function _refrush() {
   location.reload();
   clearTimeout(myVar);
}

$("#_btnUpdate").click(function () {
   $("#_frmForm").submit();
});







</script> 

</body>
</html>