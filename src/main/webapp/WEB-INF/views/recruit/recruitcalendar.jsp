<%@page import="bit.com.a.dto.RecruitParam"%>
<%@page import="bit.com.a.dto.RecruitDto"%>
<%@page import="bit.com.a.util.UtilEx"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- 부트스트랩 제이쿼리 및 공통태그 -->
<c:import url="script.jsp" charEncoding="utf-8"/>

<!-- TO_BE CSS.. -->
<link rel="stylesheet" href="static/css/import.css" media="all">

<style>
a {
color: #fff; text-decoration: none; outline: none;
}

table {
    border-collapse: collapse;
}

table, td, th {
    border: 1px solid #707070;
    font-weight: bold;
    font-size: 20px;
    background-color: #f8f9fa;
}
.sunday a{
	color: red !important;
	text-align: left;
	vertical-align: top;
	background-color: #e4e6ff;
}
.satday a{
	color: blue !important;
	text-align: left;
	vertical-align: top;
	background-color: #e4e6ff;
	font-weight: bolder;
}
.otherday a{
	color: black !important;
	text-align: left;
	vertical-align: top;
}
.days2{
	font-size:20px;
	color: #4D6BB3;
	text-align: center;
	vertical-align: middle;
}
.days3{
	font-size:16px;
	color: #4D6BB3;
	text-align: center;
	vertical-align: middle;
	background-color:#f8f9fa; color:#1d2124; line-height:1.7em; font-weight:normal;
}
.innerTable {
    border: 0px ;
}

.nodays{
	background-color: #d7d7d7;
}



</style>

<%
 List<RecruitDto> list = new ArrayList<>();
Object objlist = request.getAttribute("flist");
if(objlist != null){
	list = (List<RecruitDto>)objlist;

}

/* System.out.println("list:" + list.get(0).getJobTitle()); */
RecruitParam cal = (RecruitParam)request.getAttribute("cal");

// 요일
int dayOfWeek = cal.getDayOfWeek();
int lastDayOfMonth = cal.getLastDay();
int year = cal.getYear();
int month = cal.getMonth();





//<< year--
String pp = String.format("<a href='%s?year=%d&month=%d'>" + "<img src='./image/left.gif'></a>",
								"calendarlist1.do", year-1, month);

// < month--
String p = String.format("<a href='%s?year=%d&month=%d'>" + "<img src='./image/prec.gif'></a>",
								"calendarlist1.do", year, month-1);

// > month++
String n = String.format("<a href='%s?year=%d&month=%d'>" + "<img src='./image/next.gif'></a>",
								"calendarlist1.do", year, month+1);

// >> year++
String nn = String.format("<a href='%s?year=%d&month=%d'>" + "<img src='./image/last.gif'></a>",
								"calendarlist1.do", year+1, month);

// 월별 일정
String url = String.format("%s?year=%d&month=%d", "calendarMonth.do", year, month);
%>
<c:import url="script.jsp" charEncoding="utf-8"/>

<c:import url="../header2.jsp" charEncoding="utf-8"/>




<!-- 프론트 작업중 다중 셀렉트 박스  -->
 <div class="container con" style="margin-top: 100px;padding-top: 0px;padding-bottom: 100px;margin-left: auto;margin-right: auto;">
      <div class="header clearfix">
         <nav>
            <ul class="nav nav-pills float-right">

            </ul>
         <div style="text-align : center;">
            <img alt="" src="/sample10/image/찾잡.png" style="width: 1080px;">
            </div></nav>


         <div class="m-5"></div>
      </div>



<form action="#" id="_frmFormSearch" name="dataForm" method="post" novalidate="novalidate">
   <input type="hidden" id="_page" value="0">
      <div class="py-5">
         <div class="container" >

            <div class="row">
               <div class="col-md-12">
                  <ul class="nav nav-pills" style="
    margin-left: 450px;
">
                     <li class="nav-item"><a href="" class="nav-link active show" data-toggle="pill" data-target="#tabone">직종별</a></li>
                     <li class="nav-item"><a class="nav-link" href="" data-toggle="pill" data-target="#tabtwo">지역별</a></li>

                  </ul>

<!-- 다중이 중중이 시작 -->
                  <div class="tab-content mt-2">
                     <div class="tab-pane fade active show" id="tabone" role="tabpanel">
                        <div class="py-5">
                       <!-- 폰트스타일  -->





    <div class="container" style="border: outset; background-color: #2076eb2b;">
                              <div class="row">

                                 <div class="col-md-4">
                                    <div class="form-group wrapper">
                                       <label>대분류🌏</label> <select class="form-control" id="_buscodeList1" size="5" onfocus="this.size=5;" onblur="this.size=5;" onchange="this.size=5; this.blur();" style="width: 346px; height: 154px;">


                                       <option value="1" class="list_col1" name="buscode1" id="buscode1">경영·사무</option><option value="2" class="list_col1" name="buscode1" id="buscode1">영업·고객상담</option><option value="3" class="list_col1" name="buscode1" id="buscode1">생산·제조</option><option value="4" class="list_col1" name="buscode1" id="buscode1">IT·인터넷</option><option value="5" class="list_col1" name="buscode1" id="buscode1">전문직</option><option value="6" class="list_col1" name="buscode1" id="buscode1">교육</option><option value="7" class="list_col1" name="buscode1" id="buscode1">미디어</option><option value="8" class="list_col1" name="buscode1" id="buscode1">특수계층·공공</option><option value="9" class="list_col1" name="buscode1" id="buscode1">건설</option><option value="10" class="list_col1" name="buscode1" id="buscode1">유통·무역</option><option value="11" class="list_col1" name="buscode1" id="buscode1">서비스</option><option value="12" class="list_col1" name="buscode1" id="buscode1">디자인</option><option value="13" class="list_col1" name="buscode1" id="buscode1">의료</option></select>
                                    </div>

                                 </div>

                                 <div class="col-md-4">
                                    <div class="form-group wrapper">
                                       <label>중분류🌴</label> <select class="form-control" id="_buscodeList2" size="5" onfocus="this.size=5;" onblur="this.size=5;" onchange="this.size=5; this.blur();" style="width: 346px;height: 154px;">


                                       </select>
                                    </div>

                                 </div>

                                 <div class="col-md-4">
                                    <p>소분류🥥</p>
                                    <div id="_buscodeList3" style="overflow: auto; width: 330px; height: 150px; border-style:outset;">

                                    </div>

                                 </div>




                              </div>
                           </div>
                        </div>
                     </div>


                     <div class="tab-pane fade" id="tabtwo" role="tabpanel">
                        <div class="py-5">
                           <div class="container"style="border: outset; background-color: #2076eb2b;">
                              <div class="row">


                                 <div class="col-md-4">
                                    <div class="form-group wrapper">
                                       <label>지역대</label> <select class="form-control" id="_areacodeList1" size="5" onfocus="this.size=5;" onblur="this.size=5;" onchange="this.size=5; this.blur();">


                                       <option value="11" class="list_col4" name="areacode1" id="areacode1">서울</option><option value="21" class="list_col4" name="areacode1" id="areacode1">부산</option><option value="22" class="list_col4" name="areacode1" id="areacode1">대구</option><option value="23" class="list_col4" name="areacode1" id="areacode1">인천</option><option value="24" class="list_col4" name="areacode1" id="areacode1">광주</option><option value="25" class="list_col4" name="areacode1" id="areacode1">대전</option><option value="26" class="list_col4" name="areacode1" id="areacode1">울산</option><option value="29" class="list_col4" name="areacode1" id="areacode1">세종특별자치시</option><option value="31" class="list_col4" name="areacode1" id="areacode1">경기</option><option value="32" class="list_col4" name="areacode1" id="areacode1">강원</option><option value="33" class="list_col4" name="areacode1" id="areacode1">충북</option><option value="34" class="list_col4" name="areacode1" id="areacode1">충남</option><option value="35" class="list_col4" name="areacode1" id="areacode1">전북</option><option value="36" class="list_col4" name="areacode1" id="areacode1">전남</option><option value="37" class="list_col4" name="areacode1" id="areacode1">경북</option><option value="38" class="list_col4" name="areacode1" id="areacode1">경남</option><option value="39" class="list_col4" name="areacode1" id="areacode1">제주특별자치도</option></select>
                                    </div>

                                 </div>


                                    <div class="col-md-4">
                                    <p>지역소</p>
                                    <div id="_areacodeList2" style="overflow: auto; width: 350px; height: 150px;">

                                    </div>

                                 </div>

                              </div>
                           </div>
                        </div>


                     </div>






                     <div class="col-md-12">
                        <p id="selectResult"></p>
                     </div>

                     <p>
                        <button class="deletebtn" type="button" id="deleteResult" style="
    width: 140px;
    height: 50px;
    margin-left: 470px;
">선택 초기화</button>


<div class="row" style="margin-left: 60px;">
                <div class="col-lg-12">
                <h6>🎓경력/학력</h6>
                    <div class="row">
                        <div class="col-lg-4 col-md-4 col-sm-12 p-0">

                            <select class="form-control search-slt" name="careerEnd" style="font-size: 12pt">
                                <option disabled="disabled">경력끝</option>
                                <option value="100">무관</option>
                                <option value="1">신입</option>
                                <option value="2">1년</option>
                                <option value="3">2년</option>
                                <option value="4">3년</option>
                                <option value="5">4년</option>
                                <option value="6">5년</option>
                                <option value="7">6년</option>
                                <option value="8">7년</option>
                                <option value="9">8년</option>
                                <option value="10">9년</option>
                                <option value="11">10년</option>
                            </select>
                        </div>


                        <div class="col-lg-3 col-md-3 col-sm-12 p-0">
                            <select class="form-control search-slt" name="education" style="font-size: 12pt">
                                <option disabled="disabled">학력</option>
                                <option value="0">무관</option>
                                <option value="1">고졸</option>
                                <option value="2">전문대졸</option>
                                <option value="3">대졸</option>
                                <option value="4">석사</option>
                                <option value="5">박사</option>

                            </select>
                        </div>
                        <div class="col-lg-1 col-md-1 col-sm-12 p-0">
                            <select class="form-control search-slt" name="choice" style="font-size: 12pt">
                                <option disabled="disabled">학력</option>
                                <option value="title">제목</option>
                        <option value="companyname">회사명</option>
                           </select>
                        </div>
                        <div class="col-lg-2 col-md-2 col-sm-12 p-0">
                            <input type="text" class="form-control search-slt" id="_searchWord" name="search" placeholder="검색어 입력" style="font-size: 12pt">
                        </div>
                        <div class="col-lg-2 col-md-2 col-sm-12 p-0">
                            <button type="button" class="btn btn-secondary wrn-btn" id="btnSearch" onclick="javascript:getrecruitSearchList(0)">Search</button>
                        </div>
                    </div>
                </div>
            </div>
                     </p>


                  </div>
               </div>
            </div>
         </div>
      </div>
</form>
</div>


	<!-- /container -->
<br>



<div class="box_border" style="margin-top: 50px; margin-bottom: 10px;">

	<table style="width: 1082px;margin-left: auto;margin-right: auto;" >
	<col width="100px">
	<col width="100px">
	<col width="100px">
	<col width="100px">
	<col width="100px">
	<col width="100px">
	<col width="100px">

		<thead>
			<tr height="100px">
				<td class="days2" colspan="7">
					<%=pp %><%=p %>&nbsp;
					<font color="#707070" style="font-size: 42px; font-weight: bold;">
						<%=String.format("%d년&nbsp;%d월", year, month) %>
					</font>
					<%=n %><%=nn %>
				</td>
			</tr>

			<tr height="50px">
				<th class="days3" style="color:red">일</th>
				<th class="days3">월</th>
				<th class="days3">화</th>
				<th class="days3">수</th>
				<th class="days3">목</th>
				<th class="days3">금</th>
				<th class="days3" style="color:blue">토</th>
			</tr>
		</thead>
		<tr height="100px">
			<%
			for(int i = 1;i < dayOfWeek; i++){
				out.println("<td class='nodays'>&nbsp;</td>");
				}

			for(int i = 1;i <= lastDayOfMonth; i++){
				if( (i + dayOfWeek - 1) % 7 == 1){	// 일요일
				%>
					<td class="sunday" style="color:#ff384b"> <%=UtilEx.callist(year, month, i) %>&nbsp;<%--=UtilEx.showPen(year, month, i) --%>
						 <%=UtilEx.makeTable(year, month, i, list) %>
					</td>
				<%
				}else if( (i + dayOfWeek - 1) % 7 == 0){	// 토요일
					%>
					<td class="satday"><%=UtilEx.callist(year, month, i) %>&nbsp;<%--=UtilEx.showPen(year, month, i) --%>
						 <%=UtilEx.makeTable(year, month, i, list) %>
					</td>
					<%
				}else{	// 평일
					%>
					<td class="otherday"> <%=UtilEx.callist(year, month, i) %> &nbsp;<%--=UtilEx.showPen(year, month, i) --%>
						 <%=UtilEx.makeTable(year, month, i, list) %>
					</td>
					<%
					}

				if((i + dayOfWeek - 1) % 7 == 0 && i != lastDayOfMonth ){
					%>
		</tr>
		<tr height="100px">
				<%
				}
			}

		for(int i = 0;i < (7 - (dayOfWeek + lastDayOfMonth - 1)%7)%7 ; i++){
			out.println("<td class='nodays'>&nbsp;</td>");
			}
			%>
		</tr>
	</table>
</div>


<div id="footer" style="margin-top:100px;">
		<div class="top-area">
			<div class="inner-wrap">
				<div class="link">
					<a href="#1" class="bg-logo-ei" onclick="fn_moelToken('https://www.ei.go.kr/ei/eih/cm/hm/main.do');">고용보험</a>
					<a href="#2" class="bg-logo-hrd" onclick="fn_moelToken('http://www.hrd.go.kr');">직업훈련포털 HRD-Net</a>
				</div>

				<div class="right">
					<div class="link-select">
						<button type="button" class="btn-link-open">패밀리 및 유관기관
							사이트</button>
					</div>
				</div>
			</div>
		</div>


		<div class="familySite-area" style="display: block;">
			<ul>
				<li><strong>패밀리사이트</strong> <a href="/empInfo/empInfoSrch/list/retriveWorkRegionEmpIntroList.do" title="새창 열림" target="_blank">지역워크넷</a> <a href="/ilmoa/jobSearch/retrieveIlmoaJobDetailSearchByMain.do" title="새창 열림" target="_blank">정부지원일자리</a> <a href="#1" title="새창 열림" onclick="f_moveUrl('EI')">고용보험</a> <a href="#2" title="새창 열림" onclick="f_moveUrl('HRD')">직업능력개발훈련</a> <a href="#3" title="새창 열림" onclick="f_moveUrl('WT')">장애인고용포털</a> <a href="http://www.eps.go.kr" title="새창 열림" target="_blank">외국인고용</a>
					<a href="#4" title="새창 열림" onclick="f_moveUrl('CM')">사이버진로교육센터</a>
				</li>
				<li><strong>정부기관</strong> <a href="http://www.moel.go.kr" title="새창 열림" target="_blank">고용노동부</a> <a href="http://www.moef.go.kr" title="새창 열림" target="_blank">기획재정부</a>
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
				<li><strong>유관기관</strong> <a href="http://www.kcomwel.or.kr" title="새창 열림" target="_blank">근로복지공단</a> <a href="http://www.hrdkorea.or.kr" title="새창 열림" target="_blank">한국산업인력공단</a>
					<a href="http://www.kosha.or.kr" title="새창 열림" target="_blank">안전보건공단</a>
					<a href="http://www.kead.or.kr" title="새창 열림" target="_blank">장애인고용공단</a>
					<a href="http://www.socialenterprise.or.kr" title="새창 열림" target="_blank">한국사회적기업진흥원</a> <a href="http://www.kopo.ac.kr" title="새창 열림" target="_blank">한국폴리텍대학</a> <a href="http://www.koreatech.ac.kr" title="새창 열림" target="_blank">한국기술교육대학교</a>
					<a href="http://www.kli.re.kr" title="새창 열림" target="_blank">한국노동연구원</a>
					<!-- <a href="http://news.joins.com/retirement?cloc=joongang|home|subsection5" title="새창 열림" target="_blank">중앙일보 반퇴시대 </a> -->
				</li>
			</ul>
		</div>


		<!-- 푸터미들 -->

		<div class="middle-area">
			<div class="inner-wrap">
				<div class="link-footer">
					<a href="info.do">일하라 소개</a> <a href="infoyakgwan.do">이용약관</a> <a href="infomember.do"><b>개인정보처리방침</b></a> <a href="infoemail.do">이메일주소무단수집거부</a>
					<a href="infowebaccess.do">웹접근성정책</a> <a href="infocopyright.do">저작권정책
						및 제휴문의</a> <a href="infobanner.do">배너 가져가기</a>
				</div>
			</div>
		</div>

		<div class="bottom-area">
			<div class="inner-wrap">
				<div class="link-logo">
					<a href="http://www.moel.go.kr/" class="bg-logo-moel" target="_blank" title="새창 열림">고용노동부</a> <a href="http://www.keis.or.kr/" class="bg-logo-keis" target="_blank" title="새창 열림">한국고용정보원</a>
				</div>

				<div class="info">
					<address class="address">서울특별시 마포구 신수동 63-14 비트캠프 신촌센터</address>
					<p class="copy">
						Copyright © 2021 <span class="bg-txt-moel">고용노동부</span> <span class="bg-txt-keis">한국고용정보원</span> all rights reserved.
					</p>
					<p class="txt">일하라 이용문의 1haramaster@keis.or.kr 1577-7114(유료)</p>
				</div>
				<img src="./static/images/mainlogo.png" style="width: 130px;">
				<div class="etc">
					<a href="/images/useInfo/certification_kor2015.jpg" target="_blank" onclick="try { latte.getEvent(event).stop(); } catch (ex) {}; var remote = window.open('https://www.eprivacy.or.kr/front/certifiedSiteMark/certifiedSiteMarkPopup.do?certCmd=E&amp;certNum=2021-E-R001','EPRIVACY','width=527,height=720'); remote.focus(); return false;" title="새창"><img src="./static/images/brn-epriavcy.png" alt="개인정보보호우수사이트 인증서"></a> <a href="/html/wauMark2020_worknet.html" onclick="try { latte.getEvent(event).stop(); } catch (ex) {};window.open(this.href,'mark2020','width=605,height=850,scrollbars=no');return false;" title="새창" target="_blank" style="margin-top: -3px"><img src="./static/images/brn-wa-2019.png" alt="과학기술정보통신부 WEB ACCESSIBILITY 마크(웹 접근성 품질인증 마크)"></a>

				</div>
			</div>
		</div>
	</div>


<script>

//5단 검색바 사용 검색할 경우
$('#btnSearch').click(function() {
	alert('클릭');
	$('#_frmFormSearch').attr('action', 'calendarlist2.do').submit();

});




//첫번째 BUSCODE1 DATA를 받아서 체크박스로 뿌려주는 코드
$(document).ready(function() {


$.ajax({
	url : "./buscodeListData.do",
	type : "get",
	success:function(list){
		//alert('success');
		//alert(list);

		//JSTL로 받아온 지역 정보의 대분류 네임이 서울이면 (일단 자바스크립트 변수로 변경) selected 조건을 줌
		var area1Name = '<c:out value="${dto.area1Name}"/>';

		$(".list_col1").remove();

		$.each(list, function(i, val){

			//alert(val.jobSeq);

			//let app = "<input type='checkbox' class='list_col' name='buscode' value='"+val.buscode1+"' class='form-control'>"+val.buscodename1
			let app = "<option value='"+val.buscode1+"'class='list_col1' name='buscode1' id='buscode1'>"+
					  val.buscodename1+
					  "</option>";

			$("#_buscodeList1").append(app);
		});
	},
	error:function(){
		alert('error');
	}

 }); // ajax

}); // document ready


//두번째 BUSCODE2 DATA를 받아서 체크박스로 뿌려주는 코드
$(document).on("change","#_buscodeList1", function(){

	//alert('변경');
	//alert( $(this).prop("selected"));

	 let buscode = $(this).find(":selected").val();
     //alert(buscode);


        //alert("체크");
        //alert($(this).val());


        $.ajax({
        	url : "./buscode2ListData.do",
        	type : "get",
        	data: {"buscode":buscode},
        	success:function(list){
        		//alert('success');
        		//alert(list);

        		$(".list_col2").remove();



        		$.each(list, function(i, val){
							let app = "<option class='list_col2' id='buscode2' name='buscode2' value='"+val.buscode2+"'>"+
										val.buscodename2+
							  			"</option>";

						$("#_buscodeList2").append(app);
        		});
        	},
        	error:function(){
        		alert('error');
        	}

         });



    });
    /* else if($(this).is(":checked")==false){
        alert("체크 해제");
    } */




let count = 1;
//마지막 BUSCODE3 DATA를 받아서 체크박스로 뿌려주는 코드
$(document).on("change","#_buscodeList2", function(){


		//alert("체크");
        //alert($(this).val());

        let buscode = $(this).find(":selected").val();
        //alert(buscode);

        $.ajax({
        	url : "./buscode2ListData.do",
        	type : "get",
        	data: {"buscode":buscode},
        	success:function(list){
        		//alert('success');
        		//alert(list);


        		//$("_buscodeList3 *").remove(); //내부 요소만 삭제

        		$(".list_col3").remove();

        		var parent = document.getElementById('_buscodeList3');
        		var var1   = parent.getElementsByTagName('br');

        		for(var i = var1.length; i--;) {
        		    var1[i].parentNode.removeChild(var1[i]);
        		}



        		//기존에 체크 되어있던 값은 체크가 되어있도록 속성 설정해주는 코드 초기셋팅
        		var stackValue = $("input[name='buscode']").length;
			    var stackData = new Array(stackValue);
			     //alert(stackValue);

			     for(var i=0; i<stackValue; i++){
			    	 stackData[i] = $("input[name='buscode']")[i].value;
			     }
			     //alert("길이"+stackData.length);


        		$.each(list, function(i, val){
		        	let app = "";

		        	//stackname = 밑에태그 아이디.val (elements) 배열로 해야될듯

		        		app += 	"<div class='form-check mt-2 form-check-inline list_col3' id='buscodeList3'>"+
		        	    "<input class='form-check-input list_col3' name="+count+" id='buscode3data"+count+"' value='"+val.buscode+"' data-value='"+val.busname+"' type='checkbox'>"+
		        	    "<label class='form-check-label' for='exampleCheck1'>"+val.busname+
		        	    "</label></div>";

		        		 if((i+1)%2==0){
	        				app += "</br>";
	        			}

				$("#_buscodeList3").append(app);


				//기존에 체크 되어있던 값은 체크가 되어있도록 속성 설정해주는 코드 최종진행
				var buscodeTag ="buscode3data"+count;

				for(var i=0; i<stackValue; i++){
			    	if(stackData[i] == val.buscode){
			    		document.getElementById(buscodeTag).checked = true;
			    	}
			     }



				count+=1;

        		});



        	},
        	error:function(){
        		alert('error');
        	}

         });

    /* else if($(this).is(":checked")==false){
        alert("체크 해제");
    } */

});





//span Tag에 동적 id를 주기 위한 인덱스용 넘버
let cnt = 1;

var selectedBuscode = "";

//소분류 체크박스가 변경될때 실행
$(document).on("change", ".list_col3" , function(){
	//$(".list_col3").change(function(){


	let app ="";



		//if($("input:checkbox['.list_col3']").is(":checked") == true){
		//if($(this).is(":checked") == true){
		if($(this).is(":checked") == true){

		let buscode = $(this).val();
		var count = $(this).attr('name');

		//데이터 밸류 값으로 busname값을 받아옴
		let busname = $(this).data("value");
		//alert("버스네임(데이터밸류네임):"+busname);
		//alert(buscode);

		app = "<span class=arrBusdata id=selectedBuscode"+cnt+">"+busname+
			  "<input name='buscode' type='hidden' value='"+buscode+"'>"+
			  "<a onclick='delSelBuscode("+cnt+","+count+")'>"+
			  "<img alt='왜안뜨지' src='checkbox.png' style='width:30px; height:30px;'>"+
			  "</a>"+"</span>"+"&nbsp;&nbsp;";


	  	var id = $(this).attr("id");
		//alert(id);
		let input = document.getElementById(id);

		$(this).removeData('code');

		 //HTML data 속성 사용
		input.dataset.code = 'selectedBuscode'+cnt;

		//alert('datacode 생성: '+'selectedBuscode'+cnt);

		//alert('datacode 리얼: ' + $(this).data("code"));

		$("#selectResult").append(app);
		cnt += 1;

	}


	//체크박스에서 체크 해제 했을때
	//체크박스 해제가 될때 밑에 부분에 적재되있는 같은 데이터의 span태그도 삭제
	//else{
	else if($(this).is(":checked") == false){
		//alert("위에 셀렉코드 : "+$(this).data("code"));
		//data 속성 가져오기 (data-code)
		selectedBuscode = $(this).data("code");
		//alert('위에 셀렉코드 :'+ selectedBuscode);

		document.getElementById(selectedBuscode).remove();
	}


});


//밑에 쌓여있는 span태그에서 X버튼을 눌렀을때 위에 체크박스도 같이 체크 해제가 되도록 해주는 코드
function delSelBuscode(cnt, count) {
	//alert(count);

	var spanid = "selectedBuscode"+cnt;
	//alert('밑에셀렉코드 :'+spanid);

	var buscodeTag ="buscode3data"+count;
	//alert(buscodeTag);

	const spantag = document.getElementById(spanid);
	//alert(spantag);

	//스판태그 삭제
	document.getElementById(spanid).remove();

	//체크박스 체크해제
	document.getElementById(buscodeTag).checked = false;


}





//첫번째 AREA1 DATA를 받아서 체크박스로 뿌려주는 코드
//AREA LIST -> 클래스 네임 : list_col4(area1) list_col5(area2)
$(document).ready(function() {


$.ajax({
	url : "./areacodeListData.do",
	type : "get",
	success:function(list){
		//alert('success');
		//alert(list);


		$(".list_col4").remove();

		$.each(list, function(i, val){

			//alert(val.jobSeq);

			//let app = "<input type='checkbox' class='list_col' name='buscode' value='"+val.buscode1+"' class='form-control'>"+val.buscodename1
			let app = "<option value='"+val.area1code+"'class='list_col4' name='areacode1' id='areacode1'>"+
					  val.area1name+
					  "</option>";

			$("#_areacodeList1").append(app);
		});
	},
	error:function(){
		alert('error');
	}

 }); // ajax

}); // document ready

let count2 = 1;
//마지막 AREA DATA를 받아서 체크박스로 뿌려주는 코드
$(document).on("change","#_areacodeList1", function(){


		//alert("체크");
      //alert($(this).val());

      let areacode = $(this).find(":selected").val();
      //alert(areacode);

      $.ajax({
      	url : "./areacode2ListData.do",
      	type : "get",
      	data: {"areacode":areacode},
      	success:function(list){
      		//alert('success');
      		//alert(list);


      		//$("_buscodeList3 *").remove(); //내부 요소만 삭제


      		$("#_areacodeList2 *").remove();
      		$("#areacodeList2").remove();

    		var parent = document.getElementById('_areacodeList2');
    		var var1   = parent.getElementsByTagName('br');

    		for(var i = var1.length; i--;) {
    		    var1[i].parentNode.removeChild(var1[i]);
    		}


      		//기존에 체크 되어있던 값은 체크가 되어있도록 속성 설정해주는 코드 초기셋팅
      			var stackValue = $("input[name='areacode']").length;
			    var areaStackData = new Array(stackValue);
			     //alert(stackValue);

			     for(var i=0; i<stackValue; i++){
			    	 areaStackData[i] = $("input[name='areacode']")[i].value;
			     }
			     //alert("길이"+stackData.length);


      		$.each(list, function(i, val){
		        	let app = "";

		        	//stackname = 밑에태그 아이디.val (elements) 배열로 해야될듯

		        		app += 	"<div class='form-check mt-2 form-check-inline' id='areacodeList2'>"+
		        	    "<input class='form-check-input list_col5' name="+count2+" id='areacode2data"+count2+"' value='"+val.area2name+"' type='checkbox'>"+
		        	    "<label class='form-check-label' for='exampleCheck1'>"+val.area2name+
		        	    "</label></div>";

		        		 if((i+1)%2==0){
	        				app += "</br>";
	        			}

				$("#_areacodeList2").append(app);


				//기존에 체크 되어있던 값은 체크가 되어있도록 속성 설정해주는 코드 최종진행
				var areacodeTag ="areacode2data"+count2;

				for(var i=0; i<stackValue; i++){
			    	if(areaStackData[i] == val.area2name){
			    		document.getElementById(areacodeTag).checked = true;
			    	}
			     }



				count2+=1;

      		});



      	},
      	error:function(){
      		alert('error');
      	}

       });

  /* else if($(this).is(":checked")==false){
      alert("체크 해제");
  } */

});



//span Tag에 동적 id를 주기 위한 인덱스용 넘버
let cnt2 = 1;

var selectedAreacode = "";

//지역 소분류 체크박스가 변경될때 실행
$(document).on("change", ".list_col5" , function(){
	//$(".list_col3").change(function(){


	let app ="";



		//if($("input:checkbox['.list_col3']").is(":checked") == true){
		//if($(this).is(":checked") == true){
		if($(this).is(":checked") == true){

		let areacode = $(this).val();
		var count2 = $(this).attr('name');
		//alert(buscode);

		app = "<span class=arrAreadata id=selectedAreacode"+cnt2+">"+areacode+
			  "<input name='area2name' type='hidden' value='"+areacode+"'>"+
			  "<a onclick='delSelAreacode("+cnt2+","+count2+")'>"+
			  "<img alt='왜안뜨지' src='checkbox.png' style='width:30px; height:30px;'>"+
			  "</a>"+"</span>"+"&nbsp;&nbsp;";


	  	var id = $(this).attr("id");
		//alert(id);
		let input = document.getElementById(id);

		$(this).removeData('code');

		 //HTML data 속성 사용
		input.dataset.code = 'selectedAreacode'+cnt2;

		//alert('datacode 생성: '+'selectedBuscode'+cnt);

		//alert('datacode 리얼: ' + $(this).data("code"));

		$("#selectResult").append(app);
		cnt2 += 1;

	}


	//체크박스에서 체크 해제 했을때
	//체크박스 해제가 될때 밑에 부분에 적재되있는 같은 데이터의 span태그도 삭제
	//else{
	else if($(this).is(":checked") == false){
		//alert("위에 셀렉코드 : "+$(this).data("code"));
		//data 속성 가져오기 (data-code)
		selectedAreacode = $(this).data("code");
		//alert('위에 셀렉코드 :'+ selectedBuscode);

		document.getElementById(selectedAreacode).remove();
	}


});


//밑에 쌓여있는 span태그에서 X버튼을 눌렀을때 위에 체크박스도 같이 체크 해제가 되도록 해주는 코드
function delSelAreacode(cnt2, count2) {
	//alert(count);

	var spanid = "selectedAreacode"+cnt2;
	//alert('밑에셀렉코드 :'+spanid);

	var areacodeTag ="areacode2data"+count2;
	//alert(buscodeTag);

	const spantag = document.getElementById(spanid);
	//alert(spantag);

	//스판태그 삭제
	document.getElementById(spanid).remove();

	//체크박스 체크해제
	document.getElementById(areacodeTag).checked = false;


}




</script>

<script>
/* function getTodate() {
	var date = nes Date ();
	var year = date.getYear();

}
 */
</script>
