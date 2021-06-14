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
<link href="csss/contents.css" rel="stylesheet" type="text/css">

</head>
<body>

<!-- 헤더생성기 (붙여넣기전 코어태그 생성하세요)-->
<c:import url="script.jsp" charEncoding="utf-8"/>
<c:import url="header.jsp" charEncoding="utf-8"/>  
<!-- 헤더 생성기 끝 -->



<section id="contents">
	
	<div class="tit-util">
		<h2 class="tit">일하라 BI</h2>
		<div class="page-util">
			<span class="hide-location" id="navi_1">이용안내</span>
			<span class="hide-location" id="navi_2">워크넷 소개</span>
			<span class="hide-location" id="navi_3">워크넷 BI</span>
		</div>
	</div>
	

	<div class="bi-wrap mb50">
		<img src="static/images/ico-bi.png" alt="1hara">
	</div>

	<h3 class="tit pd00">일하라 배너 가져가기</h3>
	<div class="txt clearfix">
		<p class="img-area float-l"><img src="static/images/img-UI-OPG-W08B01C.png" alt="1hara"></p>
		<p class="txt float-l ml20">일하라 배너 이미지 파일을 저장하셔서 원하시는 홈페이지의 디렉토리 아래 저장하시고<br>아래의 html을 복사하셔서 해당 홈페이지 소스에 붙여 사용하시기 바랍니다</p>
	</div>

	<div class="box-gray v3 pd25 mb40">
		<strong>사용 예 </strong><br>
		&lt;a href="/images/"&gt;&lt;img src="해당디렉토리명/배너명.gif" width="배너폭" height="배너높이" border="0" alt="워크넷 홈페이지로 이동합니다"&gt;&lt;/a&gt;<br><br>						
		<span class="font-red">※ 주의</span> : 해당 디렉토리는 이미지를 저장하는 디렉토리로 사용자가 직접 작성하시고 배너폭과 높이는 이미지 크기를 이용
	</div>

	<div class="data-table bi-table mb40">
		<table>
			<caption>bi 정보표</caption>
			<colgroup>
				<col style="width:160px;">
				<col>
			</colgroup>
			<tbody>
				<tr>
					<th scope="row" class="a-c">이미지 크기</th>
					<td class="font-bold font-blue">140 x 40 <img src="static/images/140x40.png" alt="worknet 140 * 40 사이즈"></td>
				</tr>
				<tr>
					<th scope="row" class="a-c">이미지 주소</th>
					<td>img src="http://www.1hara.co.kr/ext/images/utility/140x40" border="0"</td>
				</tr>
				<tr>
					<th scope="row" class="a-c">링크 주소</th>
					<td>a href="http://www.1hara.co.kr/"</td>
				</tr>								
			</tbody>
		</table>
	</div>정보표입니다
표표</caption>
			<colgroup>
				<col style="width:160px;">
				<col>
			</colgroup>
			<tbody>
				<tr>
					<th scope="row" class="a-c">이미지 크기</th>
					<td class="font-bold font-blue">180 x 45 <img src="/static/images/userguide/work_180_45.gif" alt="worknet 180 * 45 사이즈"></td>
				</tr>
				<tr>
					<th scope="row" class="a-c">이미지 주소</th>
					<td>img src="http://www.work.go.kr/ext/images/utility/work_180_45.gif" border="0"</td>
				</tr>
				<tr>
					<th scope="row" class="a-c">링크 주소</th>
					<td>a href="http://www.work.go.kr/"</td>
				</tr>								
			</tbody>
		</table>
	</div>

	<div class="data-table bi-table mb40">
		<table>
			<caption>bi 정보표</caption>
			<colgroup>
				<col style="width:160px;">
				<col>
			</colgroup>
			<tbody>
				<tr>
					<th scope="row" class="a-c">이미지 크기</th>
					<td class="font-bold font-blue">260 x 44 <img src="/static/images/userguide/work_260_44.gif" alt="worknet 260 * 44 사이즈"></td>
				</tr>
				<tr>
					<th scope="row" class="a-c">이미지 주소</th>
					<td>img src="http://www.work.go.kr/ext/images/utility/work_260_44.gif" border="0"</td>
				</tr>
				<tr>
					<th scope="row" class="a-c">링크 주소</th>
					<td>a href="http://www.work.go.kr/"</td>
				</tr>								
			</tbody>
		</table>
	</div>

	<div class="data-table bi-table mb40">
		<table>
			<caption>bi 정보표</caption>
			<colgroup>
				<col style="width:160px;">
				<col>
			</colgroup>
			<tbody>
				<tr>
					<th scope="row" class="a-c">이미지 크기</th>
					<td class="font-bold font-blue">280 x 50 <img src="/static/images/userguide/work_280_50.gif" alt="worknet 280 * 50 사이즈"></td>
				</tr>
				<tr>
					<th scope="row" class="a-c">이미지 주소</th>
					<td>img src="http://www.work.go.kr/ext/images/utility/work_280_50.gif" border="0"</td>
				</tr>
				<tr>
					<th scope="row" class="a-c">링크 주소</th>
					<td>a href="http://www.work.go.kr/"</td>
				</tr>								
			</tbody>
		</table>
	</div>

</section>


<c:import url="footer.jsp" charEncoding="utf-8"/>


</body>
</html>