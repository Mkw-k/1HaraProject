<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="/images/common/ico/w_favicon.ico" type="image/x-icon">
<link rel="stylesheet" href="static/css/import.css" media="all">
<!-- 제이쿼리 -->
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body id="sub_layout">
<div class="wrapper">
<div class="container bg-gray" id="container">
<div class="inner-wrap">
<section id="contents" class="mypage">
<div class="tit-util">
	
	<h2 class="tit">회원탈퇴</h2>
	<span class="hide-location" id="navi_1">마이페이지(개인)</span>
	<span class="hide-location" id="navi_2">회원정보 관리</span>
	<span class="hide-location" id="navi_3">회원탈퇴</span>
		
		
	
	<div class="page-util">
		<!-- 기능 버튼 들어갈 예정 -->
	</div>
</div>
<div class="sub-visual-noline">
	<p class="img-area"><i class="ico-circle-gray magnifier"></i></p>
	<p class="txt">
		1hara는 회원님의 개인정보를 신중히 취급하며, 회원님의 동의없이 기재하신 회원정보를 공개하지 않습니다.<br>
		회원님의 개인정보를 안전하게 보호하기 위해 비밀번호를 다시 한번 입력해주세요.
	</p>
</div>


<h3 class="tit font-black">비밀번호 재확인</h3>
<form id="command" name="chkForm" action="businessDeleteAf.do" method="post">
	<input type="hidden" name="rtnType" value="indivCustDelete">

	<div class="box-bluegray v2 myinfo-change">
		<div class="line">
			<label class="label w140px">아이디</label>
			<input type="text" value="${login.memberid}" title="아이디 입력" name="memberid" class="input-text w260px" readonly="readonly">
		</div>
		<div class="line">
			<label for="oldPwd" class="label w140px">비밀번호</label>
			<input type="password" id="pwd" name="pwd" title="비밀번호 입력" class="input-text w260px" maxlength="24" onkeyup="if(event.keyCode == 13){document.chkForm.submit();}">
		</div>
	</div>
	
	<div class="btn-group">
		<button type="button" id="cencle" class="button navy">취소</button>
		<button type="submit" id="submit" class="button blue">확인</button>
	</div>
<div>
<input type="hidden" name="_csrf" value="daa51562-8753-4bfc-97a8-f67ec723f86a">
</div>
</form>
</section>
</div>
</div>
</div>

<script type="text/javascript">
	function f_goBack() {
		location.href='home.do';
	}
	$(document).ready(function(){
		// 취소
		$("#cencle").on("click", function(){
			
			location.href = "home.do";
					    
		})
	
		$("#submit").on("click", function(){
			if($("#pwd").val()==""){
				alert("비밀번호를 입력해주세요.");
				$("#pwd").focus();
				return false;
			}	
		});
		
	})
</script>


</body>
</html>