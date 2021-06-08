<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="csss/common.css" rel="stylesheet" type="text/css">
<link href="csss/contents.css" rel="stylesheet" type="text/css">
<link href="csss/reset.css" rel="stylesheet" type="text/css">

</head>
<body>


<div class="container" id="container">
	<div class="inner-wrap no-lnb">
<div id="contents">

<section id="contents">

	<!-- 메뉴 Depth -->	
	<div class="tit-util">
		<h2 class="tit">회원가입 유형선택</h2>
			<span class="hide-location" id="navi_1">회원가입</span>
			<span class="hide-location" id="navi_2">회원가입 유형선택</span>		
		<div class="page-util">
			<!-- 기능 버튼 들어갈 예정 -->
		</div>
	</div>		
	
	<!-- 화면 -->
	<div class="login-top">
		<div class="login-head" style="background-image:url('bg-login.png')">
			<strong>개인회원과 기업회원 중 원하는 유형을 선택해주세요.</strong>
			<p class="min-txt">워크넷은 개인회원과 기업회원 두 개의 유형으로 회원가입이 가능합니다.</p>
		</div>
		<div class="join-wrap bdb-no">
			<!-- 개인회원 -->
			<div class="join-form join-idv">
				<div class="join-area">
				<img src="img-join-ent.png"> 
					<a href="memberRegi.do" class="button blue">개인 회원가입</a>
				</div>
			</div>
			
			<!-- 기업회원 -->
			<div class="join-form join-ent">
				<div class="join-area">
				<img src="img-join-idv.png">
					<a href="businessRegi.do" class="button navy">기업 회원가입</a>
				</div>
			</div>
		</div>
		<div class="join-wrap bdt-no">
			<div class="join-form join-idv pd00">
				<div class="box-gray">
					<ul class="dot-list v1 v2">
						<li>최대 5개의 이력서 등록 및 관리</li>
						<li>맞춤 일자리정보 제공</li>
						<li>취업활동 증명서 발급</li>
						<li>채용공고 스크랩 기능 제공</li>
						<li>입사지원 시스템 제공</li>
						<li>생애경력설계 서비스(만 40세 이상)</li>
						<li>직업심리검사 서비스 무료 제공</li>
						<li>전직지원 서비스(만 40세 이상)</li>
					</ul>
				</div>
			</div>
			<div class="join-form join-ent pd00">
				<div class="box-gray">
					<ul class="dot-list v1 w50pc float-l">
						<li class="mt05">구인신청서 작성 및 관리</li>
						<li>채용지원, 알선기능 제공</li>
						<li>맞춤 인재정보 제공</li>
						<li>이력서 스크랩 기능 제공</li>
					</ul> 
					<ul class="dot-list v1 w50pc float-l">
						<li class="mt05">기업체 출강 제공(무료)
							<ul class="dash-list">
								<li>생애경력설계 서비스</li>
								<li>전직지원 서비스</li>
							</ul>
						</li>
					</ul> 
				</div>
			</div>
		</div>
	</div>

	<h5 class="sub-title-18 bul mb20 mt40">개인회원 대상 구직신청 절차</h5>
	<img src="../../static/images/img-join-step-idv.png" alt="step1. 회원가입, step2. 이력서 및 자기소개서 등록, step3. 구직신청, step4. 입사지원">
	
	<ul class="dot-list v1 mt10">
		<li>워크넷에서 구직 서비스를 받기 위해서는 <span class="font-bold">워크넷 또는</span> 고용노동부에서 제공하는 <span class="font-bold">ONE-ID  회원가입</span>이 필요합니다.</li>
		<li>이력서 등록 후 마이페이지에서 구직신청이 가능합니다.</li>
		<li>구직신청 접수 후 개인 이력서는 <span class="font-bold">워크넷 인재정보에 공개되며, 입사지원 및 취업알선</span>을 받으실 수 있습니다.</li>
		<li><span class="font-bold">구직 인증은 약 3개월 간 유지</span>되며 기간이 만료된 후에는 다시 구직신청을 하셔야 입사지원을 하실 수 있습니다.</li>
	</ul>
	
	<h5 class="sub-title-18 bul mb20 mt40">기업회원 대상 구인신청 절차</h5>
	<img src="../../static/images/img-join-step-ent.png" alt="step1. 회원가입, step2. 구인신청, step3. 관할 고용센터 인증, step4. 채용관리">
	
	<ul class="dot-list v1 mt10">
		<li>워크넷에서 구인 서비스를 받기 위해서는 구인신청 과정을 통해 고용센터의 인증을 거쳐야 합니다.</li>
		<li>인증의 목적은 신뢰성을 높이고 허위 정보로 인한 폐해를 방지하고자 함입니다.</li>
		<li>구인신청은 한 건 이상 하실 수 있으며, 고용센터의 인증을 받은 후 온라인 알선 등 다양한 서비스를 이용하실 수 있습니다.</li>
		<li>구인신청 후 인증된 내용은 워크넷에 로그인 하시면 기업회원 서비스 홈에서 확인하실 수 있습니다.</li>
		<li>구인 인증은 약 2개월 간 유지되며 기간이 만료된 후에는 다시 구인신청을 하셔야 동일한 서비스 혜택을 받으실 수 있습니다.</li>
	</ul>

</section>
</div>
</div>

</div>


</body>
</html>