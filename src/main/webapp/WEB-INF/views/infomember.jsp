<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="csss/common.css" rel="stylesheet" type="text/css">
<link href="csss/reset.css" rel="stylesheet" type="text/css">

</head>
<body>


<c:import url="header2.jsp" charEncoding="utf-8"/>  


<section id="contents">
	<div class="tit-util">
		<h2 class="tit">개인정보처리방침</h2>
		<div class="page-util">
			<span class="hide-location" id="navi_1">이용안내</span>
			<span class="hide-location" id="navi_2">일하라 정책</span>
			<span class="hide-location" id="navi_3">개인정보처리방침</span>
			<!-- 기능 버튼 들어갈 예정 -->
		</div>
	</div>

	<div class="box-info bg-gray pd20 mb40">
		일하라 서비스는 개인정보 보호법에 따라 정보주체의 개인정보를 보호하고 이와 관련된 고충을 신속하고 원활하게 처리할 수 있도록 다음과 같이 개인정보처리방침을 공개합니다.<br>
		단, 일하라에 포함된 링크 또는 배너를 클릭하여 다른 사이트 또는 웹페이지로 이동할 경우 이동한 사이트 또는 웹페이지의 개인정보처리방침을 확인하시기 바랍니다.
	</div>

	<h4 class="tit font-black">1. 개인정보 처리 목적</h4>
	<p class="txt">개인정보를 다음의 목적 이외의 목적으로는 이용하지 않으며, 이용 목적이 변경될 시에는 사전에 동의를 받아 처리하겠습니다.</p>
	<ul class="mg05 ml20 dash-list mb40">
		<li>취업알선 및 관리 등 고용 지원(고용정책기본법 제15조)</li>
		<li>직업 진로지도 프로그램 관리(고용정책기본법 제23조,제24조)</li>
		<li>국민취업지원제도 운영 및 프로그램 관리(구직자 취업촉진 및 생활안정지원에 관한 법률)</li>
	</ul>

	<h4 class="tit font-black">2. 개인정보의 처리 및 보유기간</h4>
	<p class="txt">
		일하라은 「고용정책기본법」, 「직업안정법」, 「청소년고용촉진특별법」, 「구직자 취업촉진 및 생활안정지원에 관한 법률」 등 관련 법령과 정보주체의 동의에 의해서만 개인정보를 수집·이용합니다.<br>
		일하라에 「개인정보 보호법」제32조에 따라 등록·공개하는 개인정보파일의 현황은 다음과 같습니다.
	</p>

	<div class="data-table mb40">
		<table>
			<caption>개인정보의 처리, 보유기간, 처리항목 정보</caption>
			<colgroup>
				<col style="width:140px;">
				<col style="width:140px;">
				<col style="width:140px;">
				<col>
				<col style="width:140px;">
			</colgroup>
			<thead>
				<tr>
					<th scope="col">개인정보 파일명</th>
					<th scope="col">보유근거</th>
					<th scope="col">보유목적</th>
					<th scope="col">처리항목</th>
					<th scope="col">보유기간</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>일하라 회원파일</td>
					<td>정보주체 동의,<br>「고용정책기본법」,<br>「직업안정법」,<br>「청소년고용촉진특별법」</td>
					<td>고용지원<br>민원서비스</td>
					<td>
						<strong class="font-bold">개인회원(14세 이상/만 14세 미만)</strong>
						<ul class="dash-list">
							<li>(필수) 주민등록번호, 아이디, 비밀번호, 성명, 연락처(전화번호, 휴대전화번호 中 택1), IP주소, 웹사이트 접속내역, 사용자의 GPS 위치좌표</li>
							<li>(선택) 연락처 정보 중 필수로 입력한 이외의 정보, 이메일</li>
						</ul>
						* 14세 미만의 회원가입 시 법정대리인의 본인확인을 진행하며 개인정보는 저장되지 않습니다.<br><br>
						<!-- 
						<strong class="font-bold">기업회원</strong>
						<ul class="dash-list">
							<li>(필수) 아이디, 비밀번호, 채용담당자 성명, 채용담당자 연락처 (전화번호, 휴대전화번호 택1), 사용자등록번호, 회사명, 회사주소, 대표자 성명, 업종, 주요사업내용, 근로자수, 회사구분</li>
							<li>(선택) 채용담당자 이메일 주소, 자본금, 연매출액, 회사로고, 회사홈페이지 주소, 회사블로그 주소, 회사 SNS주소, 회사소개, 회사사진</li>
						</ul>
						 -->
					</td>
					<td>2년(2년주기재동의 미동의시)/회원탈퇴시까지</td>
				</tr>
				<tr>
					<td>오픈 api 서비스 제공을 위한 회원관리</td>
					<td>고용정책기본법 제15조(고용직업 정보의 수집 및 제공)</td>
					<td>오픈 api 서비스 제공을 위한 회원관리(일하라 오픈api 회원파일)</td>
					<td>
						<strong class="font-bold">일반회원</strong>
						<ul class="dash-list">
							<li>(필수) 아이디, 비밀번호, 성명, 전화번호(유선, 휴대전화), 이메일, 신청기관, 기관주소, 사업자 등록번호, IP주소</li>
							<li>(선택) 사업자 등록증 사본 첨부파일</li>
						</ul>
					</td>
					<td>회원탈퇴시까지</td>
				</tr>
				<tr>
					<td>직업심리검사 회원</td>
					<td>정보주체의 동의</td>
					<td>청소년 직업심리검사 실시 및 결과관리</td>
					<td>
						<ul class="dash-list">
							<li>(필수) 성별, 생년월일, 비밀번호, 이메일, 휴대전화번호</li>
						</ul>
					</td>
					<td>영구</td>
				</tr>
			</tbody>
		</table>
		<p class="txt mb40">※ 한국고용정보원의 개인정보파일은 다음의 방법으로도 확인하실 수 있습니다. <br> 
		                       행정안전부 개인정보 종합지원포털(www.privacy.go.kr) &gt; 민원마당 &gt; 개인정보 열람 등 요구 &gt; 개인정보파일 목록 검색 &gt; 기관명에 "한국고용정보원" 입력 후 조회.
		</p>
	</div>

	<h4 class="tit font-black">3. 개인정보의 제3자 제공에 관한 사항</h4>
	<p class="txt mg00">일하라 서비스는 수집한 개인정보를 목적외 이용 및 제3자에게 제공하지 않습니다. 
	<br> 다만, 개인정보 보호법」제17조(개인정보의 제공) 및 제18조(개인정보의 이용·제공 제한)에 해당하는 다음의 경우에만 개인정보를 제3자에게 제공합니다. </p>

		<ul class="mg05 ml20 dash-list">
				<li>정보주체로부터 별도의 동의를 받은 경우</li>
				<li>법률에 특별한 규정이 있거나 법령상 의무를 준수하기 위하여 불가피한 경우</li>
				<li>정보주체 또는 그 법정대리인이 의사표시를 할 수 없는 상태에 있거나 주소불명 등으로 사전 동의를 받을 수 없는 경우로서 명백히 정보주체 또는
				제3자의 급박한 생명, 신체, 재산의 이익을 위하여 필요하다고 인정되는 경우</li>
				<li>통계작성 및 학술연구 등의 목적을 위하여 필요한 경우로서 특정 개인을 알아볼 수 없는 형태로 개인정보를 제공하는 경우</li>
				<li>개인정보를 목적외의 용도로 이용하거나 이를 제3자에게 제공하지 아니하면 다른 법률에서 정하는 소관 업무를 수행할 수 없는 경우로서
				보호위원회의 심의·의결을 거친 경우</li>
				<li>조약, 그 밖의 국제협정의 이행을 위하여 외국정부 또는 국제기구에 제공하기 위하여 필요한 경우</li>
				<li>범죄의 수사와 공소의 제기 및 유지를 위하여 필요한 경우</li>
				<li>법원의 재판업무 수행을 위하여 필요한 경우</li>
				<li>형(刑) 및 감호, 보호처분의 집행을 위하여 필요한 경우</li>
		</ul>

	
	<br>
	<h4 class="tit font-black">4. 개인정보처리의 위탁에 관한 사항</h4>
    <p class="txt">일하라 서비스에서 관리하는 개인정보의 처리를 위탁하는 경우, ｢개인정보 보호법｣ 제26조에 근거하여 위탁업체에 따른 개인정보 처리를 제한하는 계약을 체결하고 수탁기관이 기술적·관리적·물리적 보호조치 의무를 이행하도록 관리감독을 시행하고 있습니다.<br>
	</p>
		<ul class="mg05 ml20 dash-list">
				<li>위탁업무 수행 목적 외 개인정보의 처리 금지에 관한 사항</li>
				<li>개인정보의 기술적·관리적 보호조치에 관한 사항</li>
				<li>위탁업무의 목적 및 범위</li>
				<li>재위탁 제한에 관한 사항</li>
				<li>개인정보에 대한 접근 제한 등 안전성 확보 조치에 관한 사항</li>
				<li>위탁업무와 관련하여 보유하고 있는 개인정보의 관리현황 점검 등 감독에 관한 사항</li>
				<li>개인정보보호법 제26조 제 2항에 따른 수탁자가 준수하여야 할 의무를 위반한 경우의 손해배상 등 책에 관한 사항</li>
		</ul>
	
	<p class="txt">일하라 서비스는 원활한 개인정보 업무처리를 위하여 다음과 같이 개인정보처리 업무를 위탁하고 있습니다.</p>
	<div class="data-table va-m mb40">
		<table>
			<caption>개인정보처리의 위탁에 관한 사항</caption>
			<colgroup>
				<col>
				<col>
				<col>
			</colgroup>
			<thead>
				<tr>
					<th scope="col">수탁자</th>
					<th scope="col">위탁 목적</th>
					<th scope="col">연락처</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td class="a-l">메타넷대우정보(주) 컨소시엄 </td>
					<td class="a-l">고용정보망 통합 유지관리 및 운영지원 사업</td>
					<td rowspan="9">1577-7114</td>
				</tr>
				<tr>
					<td class="a-l">메타넷대우정보(주) 컨소시엄</td>
					<td class="a-l">정보시스템 통합운영 유지보수 사업</td>					
				</tr>
				<tr>
					<td class="a-l">바이브컴퍼니 컨소시엄</td>
					<td class="a-l">국가일자리정보플랫폼 기반의 AI 고용서비스 구축 사업</td>					
				</tr>
				<tr>
					<td class="a-l">(주)코테크시스템</td>
					<td class="a-l">직업심리검사 결과처리 시스템 유지보수</td>
				</tr>
				<tr>
					<td class="a-l">메타넷대우정보(주) 컨소시엄</td>
					<td class="a-l">국민취업지원제도 정보시스템 구축 사업</td>
				</tr>
				<tr>
					<td class="a-l">(주)코테크시스템</td>
					<td class="a-l">생애경력개발정보 웹진 『커리어 Info』 콘텐츠 웹구현 및 발간사이트 기능개선 사업</td>
				</tr>
			</tbody>
		</table>
	</div>
	
	<h4 class="tit font-black">5. 정보주체의 권리·의무 및 그 행사방법</h4>
	<ul class="basic-list mb40">
		<li>
			<span class="font-bold"> 가. </span> 정보주체(만 14세 미만인 경우에는 법정대리인을 말함)는 언제든지 다음 각 호의 개인정보 보호 관련 권리를 행사할 수 있습니다.<br>
			<ol class="reset-list ml20">
				<li>1) 개인정보 열람요구</li>
				<li>2) 오류 등이 있을 경우 정정 요구</li>
				<li>3) 삭제요구</li>
				<li>4) 처리정지 요구</li>
			</ol>
		</li>
		<li><span class="font-bold">나.  </span> 가. 항에 따른 권리 행사는 개인정보보호법 시행규칙 별지 제8호 서식에 따라 작성 후 서면, 전자우편, 모사전송(FAX) 등을 통하여 하실 수 있으며, 이에 대해 지체 없이 조치하겠습니다.<br> <br>
		<div class="data-table va-m mb40">
		<table>
			 <tbody><tr>
				<td style="text-align:center"> <a href="https://www.work.go.kr/framework/filedownload/keisDownload.do?filePathName=oHBzib3Tsgxld0j94wJVEySwQYKSWfBvqizNrTVw6uCbVGXj%2BmfLuVWZYriOkUEoRw3KBbCTKjKtU4WjL4yQYw%3D%3D&amp;realFileNm=6rCc7J247KCV67O067O07Zi467KV7Iuc7ZaJ6rec7LmZIFvrs4Tsp4Ag7KCcOO2YuOyEnOyLnV0g6rCc7J247KCV67O0IOyXtOuejCDsmpTqtazshJwuaHdw">[개인정보보호법 시행규칙 별지 제 8호] 개인정보 열람 요구서</a></td>
			 </tr>
		</tbody></table>
		</div>
		</li>
		<li><span class="font-bold">다.  </span> 정보주체가 개인정보의 오류 등에 대한 정정 또는 삭제를 요구한 경우에는 정정 또는 삭제를 완료할 때까지 당해 개인정보를 이용하거나 제공하지 않습니다.<br></li>
		<li><span class="font-bold">라.  </span> 가. 항에 따른 권리 행사는 정보주체의 법정대리인이나 위임을 받은 자 등 대리인을 통하여 하실 수 있습니다. 이 경우 개인정보보호법 시행규칙 별지 제11호 서식에 따른 위임장을 제출하셔야 합니다.<br><br>
		<div class="data-table va-m mb40">
		<table>
			 <tbody><tr>
				<td style="text-align:center"> <a href="https://www.work.go.kr/framework/filedownload/keisDownload.do?filePathName=oHBzib3Tsgxld0j94wJVEySwQYKSWfBvqizNrTVw6uCbVGXj%2BmfLuVWZYriOkUEoD%2BNwp3ms5wvEq2lziHWa8g%3D%3D&amp;realFileNm=6rCc7J247KCV67O067O07Zi467KV7Iuc7ZaJ6rec7LmZIFvrs4Tsp4Ag7KCcMTHtmLjshJzsi51dIOychOyehOyepS5od3A%3D">[개인정보보호법 시행규칙 별지 제 11호] 위임장</a></td>
			 </tr>
		</tbody></table>
		</div>
		</li>
		<li><span class="font-bold">마.  </span> 개인정보열람 및 처리정지 요구는 개인정보보호법 제35조 제5항, 제37조 제2항에 의하여 정보주체의 권리가 제한 될 수 있습니다.<br></li>
		<li><span class="font-bold">바.  </span> 개인정보의 정정 및 삭제 요구는 다른 법령에서 그 개인정보가 수집 대상으로 명시되어 있는 경우에는 그 삭제를 요구할 수 없습니다.<br></li>
		<li>
			<span class="font-bold">사.  </span> 정보주체 권리에 따른 열람의 요구, 정정·삭제의 요구, 처리정지의 요구 시 열람 등 요구를 한 자가 본인이거나 정당한 대리인인지를 확인합니다.<br>
			<p class="txt">※  한국고용정보원 각 부서 및 소속기관에 직접 요구서 서식 제출 시 </p> 
		<!-- <img src="/images/userInfo/privacy_w_img_01.png" alt="열람요구관련 이미지1" />  -->
			<img src="/static/images/img_privacy_01.png" hspace="15" alt="한국고용정보원을 통한 신청방법">	
			<br>
		    <ul class="mg05 ml20 dash-list">
				<li>열람요구 : 한국고용정보원 홈페이지 및 사업별 홈페이지 개인정보처리방침에 고지하고 있는 개인정보 열람청구 접수부서로 '개인정보보호법 시행규칙 별지 제 8호 서식' 개인정보 열람 요구서를 통해 청구<br>
				(법정대리인의 경우 '개인정보보호법 시행규칙 제 11호 서식'의 위임장 제출)
				</li>
				<li>정정 및 삭제 요구 : 열람 이후 각 홈페이지 열람청구 접수부서 담당자를 통해 청구</li>
				<li>처리정지 및 수집출처 요구 : 각 홈페이지 열람청구 접수부서 담당자를 통해 청구</li>
			</ul>
			<br>
	        <p class="txt">※  행정안전부(www.privacy.go.kr &gt; 민원마당 &gt; 개인정보 열람 등 요구)를 통한 신청 시 </p> 
		    <img src="/static/images/img_privacy_02.png" hspace="15" alt="행정안전부를 통한 신청방법">	
		<br>
		</li>

	</ul>
	
	<h4 class="tit font-black">6. 처리하는 개인정보의 항목</h4>
	<p class="txt mg00 mb10">일하라 서비스에서 처리하는 개인정보 항목은 "2. 개인정보의 처리 및 보유기간"을 참조하여 주시기 바랍니다.</p>
	
	<br>
	<h4 class="tit font-black">7. 개인정보의 파기</h4>
	<p class="txt mg00 mb10">일하라 서비스는 개인정보 처리목적이 달성된 경우에는 지체 없이 해당 개인정보를 파기합니다. 다만, 다른 법률에 따라 보존하여야 하는 경우에는 그러하지 않습니다. 파기의 절차, 기한 및 방법은 다음과 같습니다.</p>
	<ul class="basic-list mb40">
		<li>
			<span class="font-bold">가. 파기절차</span>
			<p class="mg05 ml20">이용자가 입력한 정보는 보유기간이 경과했거나 처리목적 달성 후 내부 방침 및 기타 관련 법령에 따라 일정기간 저장된 후 혹은 즉시 파기됩니다. 이 때, 수집된 개인정보는 법률에 의한 경우가 아니고서는 다른 목적으로 이용되지 않습니다.</p>
		</li>
		<li>
			<span class="font-bold">나. 파기기한</span>
			<p class="mg05 ml20">보존기간이 경과하거나 목적이 달성된 개인정보는 한국고용정보원의 「개인정보보호 지침」에 따라 개인정보 책임부서의 엄격한 통제절차에 의거 파기를 실시 하고 있습니다.</p>
		</li>
		<li>
			<span class="font-bold">다. 파기방법</span>
			<p class="mg05 ml20">종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각을 통하여 파기합니다. <br>
			전자적 파일 형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다.<br>
			
		    </p><ul class="mg05 ml20 dash-list">
				<li>완전파괴(소각·파쇄 등)</li>
				<li>전용 소자장비를 이용하여 삭제</li>
				<li>데이터가 복원되지 않도록 초기화 또는 덮어쓰기 수행</li>
			</ul>
			<br>
			<p class="mg05 ml20">또한, 개인정보의 일부만을 파기하는 경우, 기존의 방법으로 파기하는 것이 어려울때에는 아래와 같이 조치하고 있습니다.</p>
			<ul class="mg05 ml20 dash-list">
				<li>전자적 파일 형태인 경우 : 개인정보를 삭제한 후 복구 및 재생되지 않도록 관리 및 감독</li>
				<li>기록물, 인쇄물, 서면, 그 밖의 기록매체인 경우 : 해당부분을 마스킹, 천공 등으로 삭제</li>
			</ul>
		</li>
	</ul>

	<h4 class="tit font-black">8. 개인정보의 안전성 확보 조치</h4>
	<p class="txt mg00 mb10">일하라 서비스는 「개인정보보호법」제 29조에 따라 다음과 같이 안전성 확보에 필요한 기술적, 관리적, 물리적 조치를 하고 있습니다. </p>
	<ul class="basic-list mb40">
		<li>
			<span class="font-bold">가. 내부관리계획의 수립 및 시행</span>
			<p class="mg05 ml20">- 개인정보의 안전한 처리 및 관리를 위하여 임직원 및 원내 개인정보를 취급하는 인력 전체를 대상으로 내부관리계획을 수립 및 시행합니다.</p>
		</li>
		<li>
			<span class="font-bold">나. 개인정보 취급 직원의 최소화 및 교육</span>
			<p class="mg05 ml20">- 개인정보를 취급하는 직원은 반드시 필요한 인원에 한하여 지정 및 관리하고 있으며, 취급 직원을 대상으로 안전한 관리를 위한 교육을 실시하고 있습니다.</p>
		</li>
		<li>
			<span class="font-bold">다. 개인정보에 대한 접근 제한</span>
			<p class="mg05 ml20">- 개인정보를 처리하는 데이터베이스 시스템에 대한 접근권한의 부여, 변경, 말소를 통하여 개인정보에 대한 접근을 통제하고 침입차단시스템 및 침입탐지시스템을 이용하여 외부로부터의 무단 접근을 통제하고 있습니다.</p>
		</li>
		<li>
			<span class="font-bold">라. 접속기록의 보관 및 위변조 방지</span>
			<p class="mg05 ml20">- 개인정보취급자가 개인정보처리시스템에 누구의 정보에 접속했는지에 대한 접속기록을 2년 이상 보관·관리하며 개인정보의 오남용·분실·도난·유출·위조·변조 또는 훼손 등에 대응하기 위하여 접속기록 등을 월별로 1회 이상 점검하고 있습니다. 또한, 개인정보를 다운로드하는 경우 그 사유를 반드시 확인하도록 하고 있습니다.</p>
		</li>
		<li>
			<span class="font-bold">마. 개인정보의 암호화</span>
			<p class="mg05 ml20">- 이용자의 개인정보는 암호화되어 저장 및 관리되고 있습니다. 또한 중요한 데이터는 저장 및 전송 시 암호화하여 사용하는 등 별도의 보안기능을 사용하고 있습니다.</p>
		</li>
		<li>
			<span class="font-bold">바. 해킹 등에 대비한 기술적 대책</span>
			<p class="mg05 ml20">- 해킹이나 컴퓨터 바이러스 등에 의한 개인정보 유출 및 훼손을 막기 위하여 보안프로그램을 설치하고 주기적인 갱신·점검을 하며 외부로부터 접근이 통제된 구역에 시스템을 설치하고 기술적, 물리적으로 감시 및 차단하고 있습니다. </p>
		</li>
		<li>
			<span class="font-bold">사. 비인가자에 대한 출입통제</span>
			<p class="mg05 ml20">- 개인정보를 보관하고 있는 개인정보시스템의 물리적 보관장소를 별도로 두고 이에 대해 출입통제 절차를 수립 및 운영하고 있습니다. </p>
		</li>
	</ul>

	<h4 class="tit font-black">9. 권익침해 구제방법</h4>
	<p class="txt mg00 mb10">정보주체는 개인정보침해로 인한 구제를 받기 위하여 개인정보분쟁조정위원회, 한국인터넷진흥원 개인정보침해신고센터 등에 분쟁해결이나 상담 등을 신청할 수 있습니다. 이밖에 기타 개인정보침해의 신고, 상담에 대하여는 아래의 기관에 문의하시기 바랍니다.</p>
	<ul class="dash-list mt30 mb30">
		<li>개인정보분쟁조정위원회 : 1833-6972 (<a href="https://www.kopico.go.kr" target="_blank" class="a-link">https://www.kopico.go.kr</a>)</li>
		<li>개인정보침해신고센터 : (국번없이)118 (<a href="http://privacy.kisa.or.kr" target="_blank" class="a-link">http://privacy.kisa.or.kr</a>)</li>
		<li>대검찰청 사이버수사과 : (국번없이)1301 (<a href="http://www.spo.go.kr" target="_blank" class="a-link">http://www.spo.go.kr</a>)</li>
		<li>경찰청 사이버안전국 : (국번없이)182 (<a href="http://cyberbureau.police.go.kr" target="_blank" class="a-link">http://cyberbureau.police.go.kr</a>)</li>
	</ul>
	<p class="txt">「개인정보 보호법」 제35조(개인정보의 열람), 제36조(개인정보의 정정·삭제), 제37조(개인정보의 처리정지 등)의 규정에 의한 요구에 대하여 공공기관의 장이 행한 처분 또는 부작위로 인하여 권리 또는 이익의 침해를 받은 자는 행정심판법이 정하는 바에 따라 행정심판을 청구할 수 있습니다.</p>
	<p class="txt mb40">※ 행정심판에 대한 자세한 사항은 다음의 홈페이지를 참고하시기 바랍니다. <a href="http://www.simpan.go.kr" target="_blank" class="a-link">http://www.simpan.go.kr</a></p>

	
	<h4 class="tit font-black">10. 개인정보 자동 수집 장치의 설치·운영 및 거부에 관한 사항</h4>
	<p class="txt mg00 mb10">일하라 서비스는 개별적인 맞춤서비스를 제공하기 위해 이용정보를 저장하고 수시로 불러오는‘쿠키(cookie)’를 사용합니다. 쿠키는 웹사이트를 운영하는데 이용되는 서버(http)가 이용자의 컴퓨터 브라우저에게 보내는 소량의 정보이며 이용자들의 PC 컴퓨터내의 하드디스크에 저장되기도 합니다. </p>
	<ul class="basic-list mb40">
		<li>
			<span class="font-bold">가. 쿠키의 사용 목적</span>
			<p class="mg05 ml20">- 이용자가 방문한 각 서비스와 웹 사이트들에 대한 방문 및 이용형태, 인기 검색어, 보안접속 여부 등을 파악하여 이용자에게 최적화된 정보 제공을 위해 사용됩니다.</p>
		</li>
		<li>
			<span class="font-bold">나. 쿠키의 설치·운영 및 거부</span>
			<p class="mg05 ml20">- 웹브라우저 상단의 도구 &gt; 인터넷 옵션 &gt; 개인정보 메뉴의 옵션 설정을 통해 쿠키 저장을 거부 할 수 있습니다. </p>
		</li>
		<li>
			<span class="font-bold">다. 쿠키 저장 거부</span>
			<p class="mg05 ml20">- 맞춤형 서비스 이용에 어려움이 발생할 수 있습니다.</p>
		</li>
	</ul>
		
	<h4 class="tit font-black">11. 개인정보 보호책임자 및 담당자</h4>
	<p class="txt mg00 mb10">일하라은 개인정보 처리의 안전성을 확보하고 국민의 권익보호 및 공공업무의 적정한 수행을 도모하기 위해 개인정보 보호책임자를 다음과 같이 지정·운영하고 있습니다.</p>

	<div class="data-table va-m mb40">
		<table>
			<caption>개인정보 보호책임자 및 담당자</caption>
			<colgroup>
				<col style="width:200px;">
				<col style="width:140px;">
				<col style="width:140px;">
				<col style="width:140px;">
				<col>
			</colgroup>
			<thead>
				<tr>
					<th scope="col">구분</th>
					<th scope="col">부서명</th>
					<th scope="col">성명</th>
					<th scope="col">연락처</th>
					<th scope="col">이메일</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>개인정보 보호책임자</td>
					<td>기획정보화본부</td>
					<td>고명우 본부장</td>
					<td>1577-7114</td>
					<td>bell2u4u@keis.or.kr</td>
				</tr>
				<tr>
					<td>분야별 개인정보 책임자</td>
					<td>고용정보서비스실</td>
					<td>이정우 실장</td>
					<td>1577-7114</td>
					<td>ijhun9719@keis.or.kr</td>
				</tr>
				<tr>
					<td>분야별 개인정보 담당자</td>
					<td>일하라팀</td>
					<td>최은지 팀장</td>
					<td>1577-7114</td>
					<td>jmlee97@keis.or.kr</td>
				</tr>
				<!--
				<tr>
					<td>개인정보보호 총괄 담당자</td>
					<td>정보보안팀</td>
					<td>양희정 팀장</td>
					<td>1577-7114</td>
					<td>ehdnal@keis.or.kr</td>
				</tr>
				-->
			</tbody>
		</table>
	</div>

	
	<h4 class="tit font-black">12. 개인정보 열람청구</h4>
	<p class="txt mg00 mb10">정보주체는 개인정보 보호법 제35조에 따라 일하라 서비스의 개인정보의 열람 청구를 개인정보 보호책임자 및 담당자에게 요구할 수 있습니다. 이용자의 개인정보 열람청구가 신속하게 처리되도록 노력하겠습니다.</p>
	<ul class="basic-list mb40">
		<li>
			<span class="mg05 ml20">- 부서 : 일하라팀</span>
		</li>
		<li>
			<span class="mg05 ml20">- 담당자 : 우정현 과장</span>
		</li>
		<li>
			<span class="mg05 ml20">- 연락처 : 1577-7114</span>
		</li>
		<li>
			<span class="mg05 ml20">- 이메일 : homini77@keis.or.kr</span>
		</li>
	</ul>


	<h4 class="tit font-black">13. 개인정보 처리방침의 변경</h4>
	<p class="txt mg00 mb10">이 개인정보처리방침은 2021년 4월 12일부터 적용되며, 관계 법령 또는 보안기술의 변경에 따라 내용의 변경이 있을 시에는 시행일의 7일 전부터 홈페이지의 공지사항을 통하여 고지할 것 입니다.</p>
	<br>

	


<script type="text/javaScript" language="javascript">
	function selectVersion(){
		document.frm.submit();
	}
</script>
<div class="box-info bg-gray pd20 font-bold mb40 a-c">
	
</div> 

	<div class="manager-info">
		<div class="left"><b class="font-bold">담당부서</b> : 일하라팀</div>
		<div class="right"><b class="font-bold">최종수정일</b> : 2021-04-05</div>
		<div class="center"><b class="font-bold">문의</b> : 1577-7114</div>
	</div>
	
	
<c:import url="footer.jsp" charEncoding="utf-8"/>  
	
</section>



</body>
</html>