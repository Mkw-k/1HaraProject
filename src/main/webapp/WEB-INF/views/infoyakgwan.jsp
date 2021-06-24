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




<div class="inner-wrap" style="
    margin-left: auto;
    margin-right: auto;
    padding-top: 30px;
">




<script type="text/javascript" src="/js/framework/keis.window.js" charset="utf-8"></script>
<script type="text/javascript" src="/js/framework/keis.cookie.js" charset="utf-8"></script>


<script type="text/javascript" defer="defer">

$(document).ready( function() {
	
	var isFind = false;
	var navi_2 = $('#navi_2').text().replace(/^\s+/,"").replace(/\s+$/,"");	
	var navi_3 = $('#navi_3').text().replace(/^\s+/,"").replace(/\s+$/,"");
	var location_txt = $('div .location em').text().replace(/^\s+/,"").replace(/\s+$/,"");
	var a_text = "";
	var p_text = "";
	
	if(location_txt==navi_3) {
		//LNB depth3 메뉴명 검색
		$('nav#lnb ul li div.depth3 ul li a').each(function() {
			$a  = $(this);
			a_text = $a.text().replace(/^\s+/,"").replace(/\s+$/,""); 
// 			console.log('a_text==>' + a_text);
			if(a_text== location_txt  && !isFind) {
				$p_a = $a.parent().parent().parent().parent().find('a').eq(0);	
				p_text = $p_a.text().replace(/^\s+/,"").replace(/\s+$/,"");
// 				console.log('p_text==>' + p_text);
				if(p_text==navi_2 && !isFind) {
					$a.parent().addClass('curr');
					isFind = true;
				}
			}
		});	
	} else if(location_txt==navi_2) {
		$('nav#lnb ul li a').each(function() {
			$a  = $(this);
			a_text = $a.text().replace(/^\s+/,"").replace(/\s+$/,"");			
			if(a_text== location_txt && !isFind) {
				$a.parent().addClass('curr');
				isFind = true;				
			}
		});	
	}
});
//기업 마이페이지 > 구인신청서 등록 레이어팝업 분기
function choiceWantedList(tag){
	$.ajax({
		type: 'GET',
		url: '/coMemberSrv/wantedInfoAdmin/checkConditionAjax.do',
		error: function(request, status, error){
			alert("오류가 발생했습니다. : " + error);
		},
		success: function(result) {
			if(result =='Y'){
				var option = {left:'235px',top:'-71px',width:'600px'};
				keis.window.newLayer('/coMemberSrv/wantedInfoAdmin/notile/choiceWantedList.do','#wanted-admin-apply',option)
			}else{
				location.href = "/coMemberSrv/wantedInfoAdmin/registerWantedAdminApplyForm.do"
			}
		}
	});
}
</script>



<!-- contents -->
<section id="contents">
	<div class="tit-util">
		<h2 class="tit">이용약관</h2>
		<div class="page-util">
			<span class="hide-location" id="navi_1">이용안내</span>
			<span class="hide-location" id="navi_2">일하라 정책</span>
			<span class="hide-location" id="navi_3">이용약관</span>
			<!-- 기능 버튼 들어갈 예정 -->
		</div>
	</div>
	
	<div class="tab-list">
		<ul>
			<li class="curr" title="선택됨" style="min-width: 240px;"><a href="#"><span>개인회원 이용약관</span></a></li>
		</ul>
	</div><h3 class="ir">개인회원 이용약관 탭 화면 입니다.</h3>
	
	<img class="character" style="width: 250px;" src="일하라메인캐릭터.png"/> <h1>일하라(1hara)</h1><h3>우리 일하라는 회원 정보를 안전하게 수집합니다.</h3>
	
	<h3 class="tit">제 1 장 총칙</h3>

	<h4 class="sub-title-18 bul mb15">제 1 조 (목적)</h4>
	<p class="txt mb40">
		이 약관은 한국고용정보원이 제공하는 인터넷(<a href="/seekWantedMain.do" target="_blank" class="a-link">https://www.work.go.kr</a>)을 통해 고용안정정보망(1hara) 일하라 서비스(이하 서비스)의 이용에 관한 조건 및 절차와 기타 필요한 사항을 규정하는 것을 목적으로 합니다.
	</p>
	
	<h4 class="sub-title-18 bul mb15">제 2 조 (용어의 정의)</h4>
	<p class="txt mb05">
		이 약관에서 사용하는 용어의 정의는 다음과 같습니다.
	</p>
	<ol class="decimal-list mb40">
		<li>"개인회원"(이하 회원)이라 함은 고용안정정보를 활용하고자 고용안정정보망(1hara)의 이용계약을 체결한 개인</li>
		<li>"이용자"라 함은 개인, 기업관계자 뿐만 아니라 일반사용자 등의 이용계약 체결 여부와 관계없이 고용안정정보망(1hara)을 활용하는 모든 대상</li>
		<li>"아이디(ID)"라 함은 이용자 식별과 이용자의 서비스 이용을 위하여 이용계약 체결 시 이용자의 선택에 의하여 고용안정정보망(1hara)이 부여하는 문자와 숫자의 조합</li>
		<li>"비밀번호"라 함은 이용자 자신의 비밀을 보호하기 위하여 이용자 자신이 설정한 문자와 숫자의 조합</li>
		<li>"서비스"라 함은 이용자가 단말기를 이용하여 고용안정정보망(1hara)의 주전산기에 접속하여 다양한 고용정보를 입력·활용하는 것</li>
		<li>"이용계약"이라 함은 고용안정정보망(1hara)의 서비스를 제공받기 위하여 이 약관으로 한국고용정보원과 이용자간의 체결하는 계약</li>
	</ol>
	
	<h4 class="sub-title-18 bul mb15">제 3 조 (약관의 효력과 변경)</h4>
	<ol class="decimal-list mb40">
		<li>이 약관은 고용안정정보망(1hara)에 게시하여 가입함으로써 효력을 발생합니다.</li>
		<li>한국고용정보원은 합리적인 사유가 발생한 경우에는 이 약관을 변경할 수 있으며, 약관을 변경한 경우에는 변경내용을최소 7일 이전에 공시합니다. 등록자는 변경된 약관사항에 동의하지 않으면, 언제나 서비스 이용을 중단하고 이용계약을 해지할 수 있습니다.</li>
		<li>약관의 효력발생일 이후의 계속적인 서비스 이용은 약관의 변경사항에 등록자가 동의한 것으로 간주됩니다.</li>
	</ol>
	
	<h4 class="sub-title-18 bul mb15">제 4 조 (약관외 준칙)</h4>
	<p class="txt mb40">
		이 약관에 명시되지 않은 사항이 관계 법령에 규정되어 있을 경우 그 규정에 따르며, 그렇지 않은 경우에는 일반적인 관례에 따릅니다.
	</p>
	
	<h4 class="sub-title-18 bul mb15">제 5 조 (적용범위)</h4>
	<ol class="decimal-list mb40">
		<li>이 약관은 고용안정정보망(1hara)의 이용자에게 적용합니다.</li>
		<li>이 약관은 고용안정정보망(1hara)의 패밀리사이트(지역일하라, 사이버진로교육센터 등)와 한국장애인고용공단의 워크투게더(<a href="http://www.worktogether.or.kr" target="_blank" class="a-link">http://www.worktogether.or.kr</a>) 통합회원에게도 동일하게 적용합니다.</li>
		<li>이 약관에 명시되지 아니한 사항에 대해서는 관계 법령 및 서비스별 이용안내의 취지에 따라 적용할 수 있습니다.</li>
	</ol>

	
	<h3 class="tit">제 2 장 서비스 이용 계약</h3>

	<h4 class="sub-title-18 bul mb15">제 6 조 (이용계약의 성립)</h4>
	<ol class="decimal-list mb40">
		<li>이용계약은 이용자의 아이디(ID)신청에 대한 고용안정정보망(1hara)의 아이디(ID)승인으로 성립됩니다.</li>
		<li>제1항의 규정에 의해 이용자가 아이디(ID)신청을 할 때에는 고용안정정보망 (1hara)의 이용자 관리 시 필요로 하는 사항을 "ID신청" 서비스를 통하여 신청하여야 합니다.</li>
		<li>이용자가 등록절차를 거쳐 동의 버튼을 누름으로써 이 이용계약에 동의한 것으로 간주합니다.</li>
		<li>네이버, 카카오, 구글, 페이스북 등 외부 서비스와의 연동을 통해 이용계약을 신청할 경우, 본 약관과 고용안정정보망 개인정보처리방침에 동의를 하고, <br>
		서비스 제공을 위해 고용안정정보망(1hara)이 “회원”의 외부 서비스 계정 정보에 접근하고 “회원”이 활용에 “동의” 또는 “확인” 버튼을 누르면 <br>
		고용안정정보망(1hara)이 웹 상의 안내 및 전자메일로 “회원”에게 통지함으로써 이용계약이 성립된다.</li>
		<li>서비스의 대량이용 등 특별한 서비스 이용에 관한 계약은 별도의 계약으로 합니다.</li>
	</ol>
	
	<h4 class="sub-title-18 bul mb15">제 7 조 (서비스 이용신청)</h4>
	<ol class="decimal-list mb40">
		<li>회원으로 가입하여 서비스를 이용하고자 하는 자는 한국고용정보원에서 요청하는 제반정보(성명, 주민등록번호, 연락처 등)를 제공하여야 합니다.</li>
		<li>모든 회원은 반드시 회원 본인의 성명과 주민등록번호를 제공하여야만 서비스를 이용 할 수 있으며, 실명으로 등록하지 않은 사용자는 일체의 권리를 주장할 수 없습니다.</li>
		<li>타인의 명의를 도용하는 등 관계법령을 위반하여 이용신청을 한 회원의 모든 ID는 삭제되며, 관계법령에 따라 처벌을 받을 수있습니다.</li>
	</ol>

	<h4 class="sub-title-18 bul mb15">제 8 조 (이용계약 승인의 유보와 거절)</h4>
	<ol class="decimal-list mb40">
		<li>
			한국고용정보원은 다음 각 호에 해당하는 경우에는 이용계약의 승인을 유보할 수 있습니다.
			<ol class="reset-list">
				<li>1) 설비에 여유가 없거나 기술상에 지장이 있는 경우</li>
				<li>2) 서비스의 효율적인 운영 등을 위하여 필요하다고 판단하는 경우</li>
			</ol>
		</li>
		<li>
			한국고용정보원은 다음 각 호에 해당하는 이용계약 신청에 대한 승인을 거절할 수 있습니다.
			<ol class="reset-list">
				<li>1) 타인의 명의를 도용하여 이용신청을 하였을 때</li>
				<li>2) 이용계약 신청서의 내용을 허위로 기재하였을 때</li>
				<li>3) 기타 아이디(ID)신청자의 귀책사유로 이용승인이 곤란한 경우</li>
			</ol>
		</li>
	</ol>

	<h3 class="tit">제 3 장 서비스의 이용</h3>

	<h4 class="sub-title-18 bul mb15">제 9 조 (서비스 이용시간)</h4>
	<p class="txt">
		서비스의 이용 시간은 한국고용정보원의 업무 및 기술상 특별한 지장이 없는 한 연중무휴, 1일 24시간(00:00-24:00)을 원칙으로 합니다.<br>
		다만 정기점검 등의 필요로 한국고용정보원이 정한 날이나 시간은 그러하지 아니합니다. 그리고 서비스의 중지 및 제한에 대해서는 별도의 조항에 따릅니다.
	</p>
	
	<h4 class="sub-title-18 bul mb15">제 10 조 (이용계약의 해지 및 서비스 이용의 제한)</h4>
	<ol class="decimal-list mb40">
		<li>이용자가 서비스 이용계약을 해지하고자 하는 때에는 한국고용정보원에 해지신청을 하여야 합니다.</li>
		<li>
			한국고용정보원은 이용자가 다음 각 호에 해당하는 경우 사전통지 없이 이용계약을 해지하거나 전부 또는 일부의 서비스 제공을 중지할 수 있습니다. 
			<ol class="reset-list">
				<li>1) 타인의 아이디(ID) 및 비밀번호를 도용한 경우</li>
				<li>2) 다량의 정보를 전송하여 서비스의 안정적 운영을 방해하는 경우</li>
				<li>3) 수신자의 의사에 반하는 광고성 정보, 전자우편을 전송하는 경우</li>
				<li>4) 정보통신윤리위원회로부터의 이용제한 요구 대상인 경우</li>
				<li>5) 서비스를 이용하여 얻은 정보를 한국고용정보원의 동의 없이 상업적으로 이용하는 경우</li>
				<li>6) 기타 한국고용정보원이 부적당하다고 판단한 경우</li>
			</ol>
		</li>
		<li>한국고용정보원은 이용자가 계속해서 1년 이상 로그인하지 않는 경우, 회원정보의 보호 및 운영의 효율성을 위해 이용자에게 사전 통지 없이 삭제할 수<br>있습니다.</li>
	</ol>
	
	<h4 class="sub-title-18 bul mb15">제 11 조 (이용자 게시물의 삭제 이용 제한)</h4>
	<ol class="decimal-list mb40">
		<li>한국고용정보원은 서비스용 설비의 용량에 여유가 없다고 판단하는 경우 관련 사항을 사전공지 후 필요에 따라 이용자가 게재 또는 등록한 내용물을<br>
		삭제하거나 이용자의 서비스 이용을 부분적으로 제한할 수 있습니다.</li>
		<li>
			한국고용정보원은 이용자가 게재 또는 등록하는 서비스내의 내용물이 다음 각 호에 해당한다고 판단하는 경우에 이용자에게 사전 통지 없이<br> 삭제할 수 있습니다. 
			<ol class="reset-list">
				<li>1) 다른 이용자 또는 제 3자를 비방하거나 중상모략으로 명예를 손상시키는 경우</li>
				<li>2) 해당 게시판의 운영 목적에 적합하지 않다고 판단되는 경우</li>
				<li>3) 공공질서 및 미풍양속에 위반되는 내용의 정보, 문장, 도형 등을 유포하는 경우</li>
				<li>4) 반국가적, 반사회적, 범죄적 행위와 결부된다고 판단되는 경우</li>
				<li>5) 게시 기간이 규정된 기간을 초과한 경우</li>
				<li>6) 기타 관계 법령에 위배된다고 판단되는 경우</li>
			</ol>
		</li>
	</ol>
	
	<h4 class="sub-title-18 bul mb15">제 12 조 (서비스의 중지 및 제한)</h4>
	<ol class="decimal-list mb40">
		<li>
			한국고용정보원은 다음 각 호에 해당하는 경우 서비스 제공을 중지할 수 있습니다.
			<ol class="reset-list">
				<li>1) 서비스용 설비의 보수 또는 공사로 인한 부득이한 경우</li>
				<li>2) 전기통신사업법에 규정된 기간통신사업자가 전기통신 서비스를 중지했을 때</li>
			</ol>
		</li>
		<li>한국고용정보원은 국가비상사태, 서비스 설비의 장애 또는 서비스 이용의 폭주 등으로 서비스 이용에 지장이 있는 때에는 서비스 제공을 중지하거나 제한할 수 있습니다.</li>
	</ol>

	<h3 class="tit">제 4 장 의무</h3>

	<h4 class="sub-title-18 bul mb15">제 13 조 (한국고용정보원의 의무)</h4>
	<ol class="decimal-list mb40">
		<li>한국고용정보원은 고용안정정보망(1hara)의 설비를 안정적인 서비스 제공에 적합하도록 유지하여야 하며 서비스용 설비에 장애 발생 시 조속히<br> 복구하도록 노력하여야 합니다.</li>
		<li>서비스 내용의 변경 또는 추가사항이 있는 경우 그 사항을 온라인을 통해 서비스 화면에 공지합니다.</li>
	</ol>
	
	<h4 class="sub-title-18 bul mb15">제 14 조 (개인정보보호)</h4>
	<ol class="decimal-list mb40">
		<li>한국고용정보원은 공공기관의정보공개에관한법률,정보통신망이용촉진등에관한법률 등 관계법령에 따라 이용신청시 제공받는 이용자의 개인정보, <br>
		이후에 추가로 제공받는 개인정보 및 서비스 이용 중 생성되는 개인정보를 보호하여야 합니다.</li>
		<li>
			한국고용정보원은 개인정보를 이용고객의 별도의 동의 없이 제3자에게 제공하지 않으며, 다음 각 호의 경우는 이용고객의 별도 동의 없이 제3자에게 <br>
			등록자의 개인정보를 제공할 수 있습니다.
			<ol class="reset-list">
				<li>1) 수사상 목적에 따른 수사기관의 서면 요구가 있는 경우에 수사협조의 목적으로 국가수사 기관에 성명, 주소등 신상정보를 제공하는 경우</li>
				<li>2) 신용정보의 이용 및 보호에 관한 법률, 전기통신 관련법률 등 법률에 특별한 규정이 있는 경우</li>
				<li>3) 통계작성, 학술연구 또는 시장조사를 위하여 필요한 경우로서 특정 개인을 식별할 수 없는 형태로 제공하는 경우</li>
			</ol>
		</li>
		<li>이용자는 언제나 자신이 입력한 개인정보를 열람할 수 있으며, 오류를 수정 할 수 있습니다. 자세한 방법은 이용안내에서정한 바에 따릅니다.</li>
		<li>이용자는 언제나 이용계약을 해지함으로써 개인정보의 수집 및 이용에 대한 동의, 목적외 사용에 대한 별도동의, 제3자 제공에 대한 별도 동의를<br>
		철회 할 수 있습니다. 해지는 회원이 원하는 경우 고용안정정보망(1hara)의 해지절차를 통해 하실 수 있습니다.</li>
	</ol>
	
	<h4 class="sub-title-18 bul mb15">제 15 조 (이용자의 의무)</h4>
	<ol class="decimal-list mb40">
		<li>
			이용자는 서비스를 이용할 때 다음 각 호의 행위를 하지 않아야 합니다. 
			<ol class="reset-list">
				<li>1) 다른 이용자의 아이디(ID)를 부정하게 사용하는 행위</li>
				<li>2) 서비스를 이용하여 얻은 정보를 한국고용정보원의 사전 승낙없이 이용자의 이용이외의 목적으로 복제하거나 이를 출판, 방송 등에 사용하거나<br>제3자에게 제공하는 행위</li>
				<li>3) 다른 이용자 또는 제3자를 비방하거나 중상 모략으로 명예를 손상하는 행위</li>
				<li>4) 공공질서 및 미풍양속에 위배되는 내용의 정보, 문장, 도형 등을 타인에게 유포하는 행위</li>
				<li>5) 반국가적, 반사회적, 범죄적 행위와 결부된다고 판단되는 행위</li>
				<li>6) 다른 이용자 또는 제 3 자의 저작권 등 기타 권리를 침해하는 행위</li>
				<li>7) 기타 관계 법령에 위배되는 행위</li>
			</ol>
		</li>
		<li>이용자는 이 약관에서 규정하는 사항과 서비스 이용안내 또는 주의사항을 준수하여야 합니다.</li>
		<li>이용자가 설치하는 단말기 등은 전기통신설비의 기술기준에 관한 규칙이 정하는 기준에 적합하여야 하며, 서비스에 장애를 주지 않아야 합니다.</li>
	</ol>
	
	<h4 class="sub-title-18 bul mb15">제 16 조 (ID 및 비밀번호 등)</h4>
	<ol class="decimal-list mb40">
		<li>ID 및 비밀번호에 대한 모든 관리책임은 이용자에게 있습니다.</li>
		<li>이용자는 ID를 공유, 양도 또는 변경할 수 없습니다.</li>
		<li>이용자에게 부여된 ID에 의하여 발생되는 서비스 이용상의 과실 또는 제3자에 의한 부정사용 등에 대한 모든 책임은 이용자에게 있습니다.</li>
	</ol>

	<h3 class="tit">제 5 장 저작권 및 면책</h3>

	<h4 class="sub-title-18 bul mb15">제 17 조 (게재된 자료에 대한 권리)</h4>
	<p class="txt">서비스에 게재된 자료에 대한 권리는 다음 각 호와 같습니다.</p>
	<ol class="decimal-list mb40">
		<li>게시물에 대한 권리와 책임은 게시자에게 있으며, 한국고용정보원은 게시자의 동의 없이는 이를 영리적 목적으로 사용할 수 없습니다. <br>
		단, 비영리적 목적인 경우 한국고용정보원은 게시자의 동의 없이도 이를 사용할 수 있으며 서비스내의 게재권을 갖습니다.</li>
		<li>게시자의 사전 동의가 없이는 이용자는 서비스를 이용하여 얻은 정보를 가공, 판매하는 행위 등 서비스에 게재된 자료를 상업적 목적으로 이용할 수 없습니다.</li>
	</ol>
	
	<h4 class="sub-title-18 bul mb15">제 18 조 (면책)</h4>
	<p class="txt mb40">한국고용정보원은 이용자간 또는 이용자와 제3자간에 서비스를 매개로 하여 물품거래 혹은 금전적 거래 등과 관련하여 어떠한 책임도 부담하지 아니하고, <br>
	이용자가 서비스의 이용과 관련하여 기대하는 이익에 관하여 책임을 부담하지 않습니다.<br>
	이용자가 한국고용정보원에서 제공하는 서비스 자료에 대한 취사선택 또는 이용으로 발생하는 손해 등에 대해서는 한국고용정보원의 책임이 면제됩니다. </p>
	
	<h4 class="sub-title-18 bul mb15">제 19 조 (분쟁의 해결)</h4>
	<ol class="decimal-list mb40">
		<li>한국고용정보원과 회원은 서비스와 관련하여 발생한 분쟁을 원만하게 해결하기 위하여 필요한 모든 노력을 하여야 합니다.</li>
		<li>전항의 노력에도 불구하고, 동 분쟁에 관한 소송은 민사소송법상의 관할법원을 전속적 관할법원으로 합니다.</li>
	</ol>
	
	<h3 class="tit">부칙</h3>
	<ol class="decimal-list mb40">
		<li>(시행일) 이 약관은 2007년 6월 30일부터 시행합니다.</li>
		<li>2003년 7월 9일부터 시행되던 종전의 약관은 본 약관으로 대체합니다.</li>
	</ol>

	<div class="manager-info">
		<div class="left"><b class="font-bold">담당부서</b> : 일하라팀</div>
		<div class="right"><b class="font-bold">최종수정일</b> : 2015-06-24</div>
		<div class="center"><b class="font-bold">문의</b> : 1577-7114</div>
	</div>
</section>
<!--// contents -->
</div>

<c:import url="footer.jsp" charEncoding="utf-8"/>

</body>
</html>