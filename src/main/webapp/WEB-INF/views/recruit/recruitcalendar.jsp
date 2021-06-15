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
    background-color: #e4e6ff;
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
	background-color:#4D6BB3; color:#FFFFFF; line-height:1.7em; font-weight:normal;
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
								"calendarlist.do", year-1, month);

// < month--
String p = String.format("<a href='%s?year=%d&month=%d'>" + "<img src='./image/prec.gif'></a>", 
								"calendarlist.do", year, month-1);

// > month++
String n = String.format("<a href='%s?year=%d&month=%d'>" + "<img src='./image/next.gif'></a>", 
								"calendarlist.do", year, month+1);

// >> year++
String nn = String.format("<a href='%s?year=%d&month=%d'>" + "<img src='./image/last.gif'></a>", 
								"calendarlist.do", year+1, month);

// 월별 일정
String url = String.format("%s?year=%d&month=%d", "calendarMonth.do", year, month);
%>



<div class="container">
		<div class="header clearfix">
			<nav>
				<ul class="nav nav-pills float-right">
					<li class="nav-item"><a class="nav-link" href="#">직업별</a></li>
					<li class="nav-item"><a class="nav-link" href="#">직업별</a></li>
					<li class="nav-item"><a class="nav-link" href="home.do">메인으로</a></li>
				</ul>
			</nav>
			<h3 class="text-muted">채용공고 게시판</h3>
			<div class="m-5"></div>
		</div>



<form  id="_frmFormSearch" name="dataForm" method="get">
	<input type="hidden"  id="_page" >
		<div class="py-5">
			<div class="container">

				<div class="row">
					<div class="col-md-12">
						<ul class="nav nav-pills">
							<li class="nav-item"><a href="" class="nav-link active show"
								data-toggle="pill" data-target="#tabone">직종별</a></li>
							<li class="nav-item"><a class="nav-link" href=""
								data-toggle="pill" data-target="#tabtwo">지역별</a></li>

						</ul>

						<div class="tab-content mt-2">
							<div class="tab-pane fade active show" id="tabone"
								role="tabpanel">
								<div class="py-5">
									<div class="container">
										<div class="row">

											<div class="col-md-4">
												<div class="form-group wrapper">
													<label>대분류</label> <select class="form-control"
														id="_buscodeList1" size="5" onfocus='this.size=5;'
														onblur='this.size=5;' onchange='this.size=5; this.blur();'>


													</select>
												</div>

											</div>

											<div class="col-md-4">
												<div class="form-group wrapper">
													<label>중분류</label> <select class="form-control"
														id="_buscodeList2" size="5" onfocus='this.size=5;'
														onblur='this.size=5;' onchange='this.size=5; this.blur();'>


													</select>
												</div>

											</div>

											<div class="col-md-4">
												<p>소분류</p>
												<div id="_buscodeList3"
													style="overflow: auto; width: 350px; height: 150px;">

												</div>

											</div>




										</div>
									</div>
								</div>
							</div>


							<div class="tab-pane fade" id="tabtwo" role="tabpanel">
								<div class="py-5">
									<div class="container">
										<div class="row">


											<div class="col-md-4">
												<div class="form-group wrapper">
													<label>지역대</label> <select class="form-control"
														id="_areacodeList1" size="5" onfocus='this.size=5;'
														onblur='this.size=5;' onchange='this.size=5; this.blur();'>


													</select>
												</div>

											</div>


												<div class="col-md-4">
												<p>지역소</p>
												<div id="_areacodeList2"
													style="overflow: auto; width: 350px; height: 150px;">

												</div>

											</div>

										</div>
									</div>
								</div>


							</div>






							<div class="col-md-12">
								<p id="selectResult"></p>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	<section class="search-sec">
    <div class="container">

            <div class="row">
                <div class="col-lg-12">
                    <div class="row">
                        <div class="col-lg-4 col-md-4 col-sm-12 p-0">
                            <select class="form-control search-slt" name="careerStart" style="font-size: 12pt">
                                <option disabled="disabled">경력시작</option>
                                <option value="0">무관</option>
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
                            <h3>~</h3>
                            <select class="form-control search-slt" name="careerEnd" style="font-size: 12pt">
                                <option disabled="disabled">경력끝</option>
                                <option value="0">무관</option>
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
                            <button type="button" class="btn btn-secondary wrn-btn" id="btnSearch">Search</button>
                        </div>
                    </div>
                </div>
            </div>

    </div>
</section>
<br><br><br>

</form>
</div>
	<!-- /container -->



<div style="text-align: left;">
	<a href="<%=url %>">
		<font size="3em">월별 일정:  ${cal.year}년  ${cal.month}월 </font> 
	</a>
</div>

<div class="box_border" style="margin-top: 5px; margin-bottom: 10px">

	<table style="width: 80%; margin-left: auto; margin-right: auto;" >
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
				<th class="days3">일</th>
				<th class="days3">월</th>
				<th class="days3">화</th>
				<th class="days3">수</th>
				<th class="days3">목</th>
				<th class="days3">금</th>
				<th class="days3">토</th>
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
					<td class="sunday"> <%=UtilEx.callist(year, month, i) %>&nbsp;<%--=UtilEx.showPen(year, month, i) --%>
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
			  "<img alt='왜안뜨지' src='ma.jpg' style='width:30px; height:30px;'>"+
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
			  "<img alt='왜안뜨지' src='ma.jpg' style='width:30px; height:30px;'>"+
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



