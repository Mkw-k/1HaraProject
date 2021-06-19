<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="csss/common1.css" rel="stylesheet" type="text/css">
<link href="csss/gnb.css" rel="stylesheet" type="text/css">
<link href="csss/view.css" rel="stylesheet" type="text/css">
<link href="csss/side_navigation.css" rel="stylesheet" type="text/css">
<link href="csss/star_style.css" rel="stylesheet" type="text/css">
<link href="csss/write.css" rel="stylesheet" type="text/css">

</head>
<body class="qnaWrapBody">

	<div id="wrap">
		<div class="side-navigation">
			<h2 class="skip">선배에게 질문하기 세부메뉴</h2>
			<div class="navi-top-area">
				<a href="/User/Qstn/QstnWrite" class="btn-question qnaSpB devLoginLayer" devalert="1">질문하기</a>
				<div class="myInfoSec">
					<a href="/User/Qstn/MainProfile" class="myInfo">
						<!-- [Dev] 프로필 랜덤 이미지 파일명 : random_1 ~ random_20, 이미지 없음 : random_default -->
						<span class="proThumb">
							<img onerror="this.src='https://i.jobkorea.kr/content/images/m/ver_2/user/qna/profile_thumb/random_default.jpg'" src="https://i.jobkorea.kr/content/images/m/ver_2/user/qna/profile_thumb/random_8.jpg" alt="프로필 이미지">
						</span>
						<dl class="infoBx">
							<dt class="qnaSpA">
								<span class="nickname">mentor0642669</span> 
								<span class="lvIcon">Lv.1</span>
							</dt>
							<dd>
								<span>질문 0</span>
								<span>답변 0 (채택 0)</span>
							</dd>
						</dl>
					</a>
					<button type="button" class="myPoint devMainCouponButton">
						<span class="point qnaSpB">0</span><span class="btnCoupon qnaSpA">쿠폰교환</span>
					</button>
				</div>
			</div>
			<div class="navi-list-area">
			<!-- [Dev] 메뉴 on : 클래스 active 추가 -->
				<div class="sideNavLow">
					<strong class="sideNavTit"><a id="devLeftMenuRequireTag" href="/User/Qstn/Index?MainType=1" data-tab="1" class="devLoginLayer " devalert="0">답변하기</a></strong>
				</div>
				<div class="sideNavLow">
					<strong class="sideNavTit"><a id="devLeftMenuOwnerTag" href="/User/Qstn/Index?MainType=2" data-tab="2" class="devLoginLayer " devalert="0">나의질문</a></strong>
				</div>
				<div class="sideNavLow">
					<strong class="sideNavTit"><a id="devLeftMenuEntireTag" href="/User/Qstn/Index?MainType=3" data-tab="3" class="">전체질문</a></strong>
				</div>
				
				<div class="sideNavLow has-tooltip">
					<strong class="sideNavTit no-link">
						<a href="javascript:void()">나의그룹</a>
					</strong>
					<button type="button" class="select-tooltip qnaSpA">
						<span class="skip">나의그룹 설명 보기</span>
					</button>
					<ul class="sideNavList">
									<li><a href="/User/Qstn/QstnBizGroup?GroupCode=1000100">웹프로그래머</a></li>
									<li><a href="/User/Qstn/QstnBizGroup?GroupCode=1000101">응용프로그래머</a></li>
									<li><a href="/User/Qstn/QstnBizGroup?GroupCode=1000109">빅데이터·AI(인공지능)</a></li>
									<li><a href="/User/Qstn/QstnUnivGroup?GroupCode=C0033">김포대학</a></li>
						<!-- [Dev] 신규 아이콘 : 클래스 icnNew 추가 -->
					</ul>

					<div class="tooltip-layer qnaSpB">
						<p class="txt">나의그룹은 기본 이력서의 학력(대학교, 대학원), 경력으로 자동 설정되며<br>답변활동 또는 질문등록 시 매칭조건으로 활용됩니다.</p>
						<button type="button" class="btn-tooltip-close qnaSpB"><span class="skip">닫기</span></button>
					</div>
				</div>
			<div class="sideNavLow devRecentVisitGroup" style="display:none;">
				<strong class="sideNavTit"><a href="javascript:void();">최근 본 그룹</a></strong>
				<ul class="sideNavList boxList"></ul>
			</div>
	</div>
</div>


        <div id="container">
            <!-- 쓰기 : qnaWriteWrap -->
            <div id="content" class="qnaWriteWrap devQnaWriteLayer">
                <input type="hidden" id="devGno" name="devGno" value="0">
                <div class="top-title-wrap">
                    <h2 class="title"><em>${login.name}</em>님, 어떤 선배들에게 질문하시겠어요?</h2>
                </div>
                <div class="lyWriteBoard">   
                    <div class="writeBoxWrap">
                       <form name="frmForm" id="_frmForm" method="post" action="JobtalkwriteAf.do">
                           <input type="hidden" value="${login.memberid}" name="memberid" id="devGno" name="devGno" value="0">
                            <fieldset>
                                <legend>질문 등록하기</legend>
                                <div class="jkTxInput">
                                    <p class="inpWrap">
                                        <input type="text" name="jobtalk_title" class="jkSchInp devQnaWriteTitle" placeholder="질문 제목을 입력해주세요." onfocus="this.placeholder=''" onblur="this.placeholder='질문 제목을 입력해주세요.'">
                                    </p>
                                </div>
                                <div class="uiPlaceholder">
                               
                                    <textarea class="devQnaWriteCntnt" name="jobtalk_content" title="내용 입력"  placeholder="내용 입력" onfocus="this.placeholder=''" onblur="this.placeholder='내용 입력'"></textarea>
                                    <span class="byte">
                                        <b id="count">0</b> / 1,000
                                    </span>

                                </div>
                                <div class="agreecheckbox checkboxCommWrap">
                                    <input type="checkbox" id="lb_agreePoint" class="skip">
                                    <label for="lb_agreePoint" class="lb_agreePoint qnaSpB">답변 채택 포인트 추가 (1,100원)<span class="info">일하라의 기본 포인트와 합해져 총 1,500P가 채택된 답변자에게 지급됩니다</span></label>
                                    <p class="txtLayer qnaSpA">답변 채택 포인트를 추가하면, 답변율과 정확도가 높아져요!
                                    	<button type="button" class="btn-txtLyer-close qnaSpB">
                                    		<span class="blind">닫기</span>
                                    	</button>
                                    </p>
                                </div>
                                <div class="btnCommWrap">
                                    <button type="submit" class="btnQuestion devQnaWriteButton">질문하기</button>
                                    <button type="button" onclick="cancle()" class="btnCancel bg_white devQnaWriteCancelButton">취소</button>
                                </div>
                            </fieldset>
                        </form>
                    </div><!-- // writeBoxWrap -->
                    <ul class="txInfoWrap">
                        <li>질문은 지정한 선배들에게 전달되며, 정확한 답변을 위해 질문자의 닉네임을 포함한 기본 정보가 제공됩니다.</li>
                        <li>개인정보를 공유 및 요청하거나, 명예 훼손, 무단 광고, 불법 정보 유포 시 이에 대한 민형사상 책임은 작성자에게 있습니다.</li>
                        <li>개인정보가 포함되거나 부적절한 질문은 비노출 또는 서비스 이용 정지 사유가 될 수 있습니다</li>
                        <li>인기 질문으로 추천될 수 있습니다</li>
                    </ul><!-- // txInfoWrap -->
                </div><!-- // lyWriteBoard -->
            </div><!-- // content -->
        </div>
    </div>

    
	<script type="text/javascript">
		function cancle() {
			location.href="Jobtalklist.do";
		}
	
	</script>
	
	
</body>
</html>