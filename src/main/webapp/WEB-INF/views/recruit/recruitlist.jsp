<%@page import="bit.com.a.dto.RecruitDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 
CRUD

채용공고 작성 

채용공고 읽기 
전체 리스트 뽑아오기 
직업별 셀렉트 검색 
지역별 셀렉트 검색

채용공고 수정하기 

채용공고 삭제하기  
-->


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css"> -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>

<!-- https://github.com/josecebe/twbs-pagination -->
<script type="text/javascript" src="./jquery/jquery.twbsPagination.min.js"></script>
	





<style type="text/css">
.createRecruitBtn{
	cursor: pointer;
}

/* .wrapper{
width:200px;
padding:20px;
height: 150px;
} */


</style>

</head>
<body>
<h1>채용공고게시판</h1>

<!-- 채용공고 작성 -->
<h2 onclick="createRecruit()" class="createRecruitBtn">채용공고 작성</h2>
<h2 onclick="createRecruitNew()" class="createRecruitBtn">채용공고 작성 New</h2>

<!-- 프론트 작업중 다중 셀렉트 박스  -->
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
		
		
  <div class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <ul class="nav nav-pills">
            <li class="nav-item"> <a href="" class="nav-link active show" data-toggle="pill" data-target="#tabone">직종별</a> </li>
            <li class="nav-item"> <a class="nav-link" href="" data-toggle="pill" data-target="#tabtwo">지역별</a> </li>
            <li class="nav-item"> <a href="" class="nav-link" data-toggle="pill" data-target="#tabthree">Tab 3</a> </li>
          </ul>
          
<div class="tab-content mt-2">
  <div class="tab-pane fade active show" id="tabone" role="tabpanel">
     <div class="py-5" >
   	  <div class="container">
      <div class="row">
        
        <div class="col-md-4">
          <div class="form-group wrapper">
	              	<label>대분류</label>
		              <select class="form-control" id="_buscodeList1"  onfocus='this.size=7;' onblur='this.size=7;' onchange='this.size=7; this.blur();' size="7">
			           
			              
		              </select>
	              </div>
       
        </div>
        
        <div class="col-md-4">
          <div class="form-group wrapper">
	              	<label>중분류</label>
		              <select class="form-control" id="_buscodeList2"  onfocus='this.size=7;' onblur='this.size=7;' onchange='this.size=7; this.blur();' size="7">
			             
			             
		              </select>
	              </div>
        
        </div>
        
        
        
        <div class="col-md-4" >
        <label>소분류</label>
        <div id="_buscodeList3" style="overflow:auto; width:350px; height:180px;">
        
        </div>
          
        </div>
        
       
        
        
	    </div>
	  </div>
	</div>
</div>
            
            
            <div class="tab-pane fade" id="tabtwo" role="tabpanel">
              <select name="skills" multiple="" class="ui fluid dropdown">
			    <option value="">Skills</option>
				<option value="angular">Angular</option>
				<option value="css">CSS</option>
				<option value="design">Graphic Design</option>
				<option value="ember">Ember</option>
				<option value="html">HTML</option>
				<option value="ia">Information Architecture</option>
				<option value="javascript">Javascript</option>
				<option value="mech">Mechanical Engineering</option>
				<option value="meteor">Meteor</option>
				<option value="node">NodeJS</option>
				<option value="plumbing">Plumbing</option>
				<option value="python">Python</option>
				<option value="rails">Rails</option>
				<option value="react">React</option>
				<option value="repair">Kitchen Repair</option>
				<option value="ruby">Ruby</option>
				<option value="ui">UI Design</option>
				<option value="ux">User Experience</option>
			  </select>
            </div>
            <div class="tab-pane fade" id="tabthree" role="tabpanel">
              <p class="">A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy.</p>
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
        <form action="#" method="post" novalidate="novalidate">
            <div class="row">
                <div class="col-lg-12">
                    <div class="row">
                        <div class="col-lg-3 col-md-3 col-sm-12 p-0">
                            <select class="form-control search-slt" id="exampleFormControlSelect1" style="font-size: 12pt">
                                <option>지역</option>
                                <option>서울특별시</option>
                                <option>경기도</option>
                                <option>충청남도</option>
                                <option>충청북도</option>
                                <option>전라북도</option>
                                <option>전라남도</option>
                            </select>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-12 p-0">
                            <select class="form-control search-slt" id="exampleFormControlSelect1" style="font-size: 12pt">
                                <option>분야</option>
                                <option>컴퓨터,프로그래밍</option>
                                <option>행정사무</option>
                                <option>예체능,예술</option>
                                <option>회계</option>
                                <option>관리,품질</option>
                                <option>서비스</option>
                            </select>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-12 p-0">
                            <input type="text" class="form-control search-slt" placeholder="회사명" style="font-size: 12pt">
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-12 p-0">
                            <button type="button" class="btn btn-secondary wrn-btn">Search</button>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</section>
<br><br><br>


<div class="box border" style="margin-top: 5px; margin-bottom: 10px">
<form action="" id="_frmFormSearch" method="get">

<table style="margin-left: auto; margin-right: auto; margin-top: 3px; margin-bottom: 3px;">
<tr>
	<td>검색</td>
	<td style="padding-left: 5px;">
		<select id="_choice" name="choice">
	 		<option value="" selected="selected" disabled="disabled">선택</option> 
			<option value="title" >제목</option>
			<!-- <option value="content">내용</option> -->
			<option value="companyname">회사명</option>
		</select>
	</td>
	
	<td style="padding-left: 5px;">
		<input type="text" id="_searchWord" name="searchWord">
	</td>
	<td style="padding-left: 5px;">
		<span class="button blue">
			<button type="button" id="btnSearch" onclick="javascript:getrecruListData(0)">검색</button>
		</span>
	</td>
</tr>
</table>
</form>
</div>


<br><br><br>


		<div class="row marketing"></div>

		<div class="container">
			<table class="table" style="" id="table">
					<thead>
						<tr>
							<th>#</th>

							<th>회사명</th>

							<th>공고제목</th>
							<th>지원자격(학력·경력)</th>
							<th>채용인원</th>
							<th>근무조건</th>
							<th>마감일·등록일</th>
						</tr>
					</thead>
					
					
				</table>
				<p></p>
		</div>

		

		

	</div>
	<!-- /container -->
	
	<div class="container">
	<nav aria-label="Page navigation">
		<ul class="pagination" id="pagination" style="justify-content:center;">
		</ul>
	</nav>
	</div>


<div class="container-fluid" style="">
<footer class="footer">
<p>© 1hara Corp. 2021 </p>
</footer>
</div>

	

<script type="text/javascript">
getrecruListData();
getRecruitListCount();

//작성목록으로 이동
function createRecruit() {
	location.href = "recuruitcreate.do";
}

//작성목록으로 이동(New)
function createRecruitNew() {
	location.href = "createTest.do";
}

//댓글달때 화살표 만들어주는기능(댓글이 필요없으므로 삭제예정)
/*
function arrow(depth) {
	let rs = "<img src='./image/arrow.png' width='20px' heiht='20px'/>";
	let nbsp = "&nbsp;&nbsp;&nbsp;&nbsp;";	// 여백
	
	let ts = "";
	
	for(var i = 0;i < depth; i++){
		ts += nbsp;
	}
	
	return depth==0 ? "":ts + rs;	
}
*/
		
//조건에 맞는 채용공고 데이터 가져오는 함수(AJAX)
function getrecruListData( pNumber, search ){
	//alert('데이터취득');

	$.ajax({
		url : "./recruitPagingListData.do", 
		type : "get", 
		data: {"page":pNumber, "choice":$("#_choice").val(), "search":$("#_searchWord").val()}, 
		success:function(list){
			//alert('success');
			//alert(list);
			
			$(".list_col").remove();
			
			$.each(list, function(i, val){

				//alert(val.jobSeq);

				let app = "<tr class= 'list_col'>"
							+"<td>" + val.rnum +"</td>";
							
							if(val.del==0){
								
								
								/* let empT = "";
								if(val.empType == 3){
									empT = "정규직";
								} */

								app +="<td>" + val.companyname + "</td>"
									+"<td style='text-align:left'>" 
									//+ arrow(val.depth)
									+"<a href='RecruitDetail.do?jobseq=" + val.jobSeq + "'>" + val.jobTitle+ "</a>"
									+"</td>"
									+"<td>" + val.eduname +"<br>"+val.career_Desc + "</td>"
									+"<td>" + val.jobVolumn + "</td>"
									+"<td>" + val.emp_name +"<br>"+ val.area1Name+" " + val.area2Name +"<br>"+val.salary+" 만원"+ "</td>"
									+"<td>" + val.jobEnd +"<br>"+val.regdate+ "&nbsp;&nbsp;"
									+"<input type='button' value='공고삭제' onClick='deleteRecruit("+val.jobSeq +")' >"+ "</td>";
							}
							
							else{
								app += "<td style='text-align:left' colspan='6'>"
										+"<font color='#ff0000'>********* 이 글은 작성자에 의해서 삭제되었습니다</font>"
										+"</td>";
							}
							
							+"</tr>";
							
					$("#table").append(app);
			});
		}, 
		error:function(){
			alert('error');
		}
		
	});
}

//글의 총수를 취득 
function getRecruitListCount() {
	$.ajax({
		url : "./recruitlistCount.do", 
		type: "get", 
		data: {page:0, choice:$("#_choice").val(), search:$("#_searchWord").val()}, 
		success: function( count ) {
			//alert('success');
			
			loadPage(count);
		}, 
		error: function() {
			alert('error');
		}
	});
}


//paging 처리 
function loadPage( totalCount ) {
	
	
	let pageSize = 5; 
	let nowPage = 1; 
	
//	let totalCount = 51;		//글의 총수
//	let pageSize = 10;			//페이지의 크기 [1]~[10] 
//	let nowPage = 1;			//현재페이지

	let _totalPages = totalCount/pageSize; 
	if(totalCount % pageSize > 0 ){
		_totalPages++;	
	}
	
	//alert('몇개냐 :'+_totalPages);
	
	$("#pagination").twbsPagination({
		startPage: 1, 
		totalPages : _totalPages, 
		visiblePages : 7, 
		first: '<span aria-hidden = "true">«</span>', 
		prev : "이전", 
		next : "다음", 
		last : '<span aria-hidden = "true">»</span>', 
		initiateStartPageClick:false,				//onPageClick 자동 실행되지 않도록 한다 
		onPageClick : function(event, page) {
			nowPage = page;
		//	alert('nowPage:'+ page);
			getrecruListData(page -1);
		}
	});
}


function deleteRecruit(jobSeq) {
	location.href="deleteRecruit.do?jobSeq="+jobSeq;
}







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
	
	alert('변경');
	//alert( $(this).prop("selected"));
	
	 let buscode = $(this).find(":selected").val();
     alert(buscode);
	
	
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
        alert(buscode);
        
        $.ajax({
        	url : "./buscode2ListData.do", 
        	type : "get", 
        	data: {"buscode":buscode}, 
        	success:function(list){
        		//alert('success');
        		//alert(list);
        		
        	
        		//$("_buscodeList3 *").remove(); //내부 요소만 삭제 
        		
        		$("#buscodeList3").remove(); 
        		
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
		        	
		        		app += 	"<div class='form-check mt-2 form-check-inline' id='buscodeList3'>"+
		        	    "<input class='form-check-input list_col3' name="+count+" id='buscode3data"+count+"' value='"+val.busname+"' type='checkbox'>"+
		        	    "<label class='form-check-label' for='exampleCheck1'>"+val.busname+
		        	    "</label></div>";
		        			
		        		 if((i+1)%2==0){
	        				app += "</br>";
	        			}
						 
				$("#_buscodeList3").append(app);
				
        		
				//기존에 체크 되어있던 값은 체크가 되어있도록 속성 설정해주는 코드 최종진행
				var buscodeTag ="buscode3data"+count;
				
				for(var i=0; i<stackValue; i++){                          
			    	if(stackData[i] == val.busname){
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
		//alert(buscode);
		
		app = "<span class=arrBusdata id=selectedBuscode"+cnt+">"+buscode+
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
	alert('밑에셀렉코드 :'+spanid);
	
	var buscodeTag ="buscode3data"+count;
	//alert(buscodeTag);
	
	const spantag = document.getElementById(spanid);
	//alert(spantag);
	
	//스판태그 삭제
	document.getElementById(spanid).remove();
	
	//체크박스 체크해제
	document.getElementById(buscodeTag).checked = false;


}




</script>

</body>
</html>










