<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
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
				<a href="Jobtalklist.do" class="btn-question qnaSpB devLoginLayer" devalert="1">목록</a>
				<div class="myInfoSec">
					<a href="/User/Qstn/MainProfile" class="myInfo">
						<!-- [Dev] 프로필 랜덤 이미지 파일명 : random_1 ~ random_20, 이미지 없음 : random_default -->
						<span class="proThumb">
							<img onerror="this.src='https://i.jobkorea.kr/content/images/m/ver_2/user/qna/profile_thumb/random_default.jpg'" src="https://i.jobkorea.kr/content/images/m/ver_2/user/qna/profile_thumb/random_8.jpg" alt="프로필 이미지">
						</span>
						<dl class="infoBx">
							<dt class="qnaSpA">
								<span class="nickname">${login.memberid }</span> 
							</dt>
						</dl>
					</a>
				</div>
			</div>
</div>

<div id="container">

 <div id="content" class="qnaWriteWrap devQnaWriteLayer">
	<div class="lyWriteBoard">
		<div class="writeBoxWrap">
			<form name="frmForm" id="_frmForm" action="JobtalkupdateAf.do"
				method="post" enctype="multipart/form-data">
			<input type="hidden" name="jobtalkseq" value="${job.jobtalkseq}">
			<div class="top-title-wrap">
               <h2 class="title"><em>${login.name}</em>님</h2>
            </div>
			 <fieldset>
                <legend>질문 수정하기</legend>
				<div class="jkTxInput">
                    <p class="inpWrap">
                        <input type="text" name="jobtalk_title" value="${job.jobtalk_title}" class="jkSchInp devQnaWriteTitle" placeholder="질문 제목을 입력해주세요." onfocus="this.placeholder=''" onblur="this.placeholder='질문 제목을 입력해주세요.'">
                    </p>
                </div>
                <div class="uiPlaceholder">
                               
                   <textarea class="devQnaWriteCntnt" name="jobtalk_content" title="내용 입력" placeholder="내용 입력" onfocus="this.placeholder=''" onblur="this.placeholder='내용 입력'">
                   	${job.jobtalk_content}
                   </textarea>
                      <span class="byte">
                         <b id="count">0</b> / 1,000
                     </span>
                </div>
                <div class="btnCommWrap">
                	<span class="button blue">
						<a href="#none" id="btnupdate" title="수정완료">
							수정하기
						</a>
					</span>
                </div>
	</fieldset>
	</form>
	</div>
	</div>
</div>
	<script>
	$("#btnupdate").click(function(){
	
		alert("수정");
		$("#_frmForm").submit();
	});

		</script>
		</div>
	</div>
</body>





