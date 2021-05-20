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

<!------ Include the above in your HEAD tag ---------->
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- https://github.com/josecebe/twbs-pagination -->
<script type="text/javascript" src="./jquery/jquery.twbsPagination.min.js"></script>

<style type="text/css">
.createRecruitBtn{
	cursor: pointer;
}



</style>

</head>
<body>
<h1>채용공고게시판</h1>

<!-- 채용공고 작성 -->
<h2 onclick="createRecruit()" class="createRecruitBtn">채용공고 작성</h2>


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



		<div class="row marketing"></div>

		<div class="container">
			<table class="table" style="" id="table">
					<thead>
						<tr>
							<th>#</th>
							<th>회사이름</th>
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

		<div class="container">
			<nav aria-label="Page navigation">
				<ul class="pagination" id="pagination"
					style="justify-content: center;">
				</ul>
			</nav>
		</div>

		<footer class="footer">
		
			
			<div class="container" style=""></div>
			© 1hara Corp. 2021 
			<p></p>
		</footer>

	</div>
	<!-- /container -->




<script type="text/javascript">
getrecruListData();

function createRecruit() {
	location.href = "recuruitcreate.do";
}

function arrow(depth) {
	let rs = "<img src='./image/arrow.png' width='20px' heiht='20px'/>";
	let nbsp = "&nbsp;&nbsp;&nbsp;&nbsp;";	// 여백
	
	let ts = "";
	
	for(var i = 0;i < depth; i++){
		ts += nbsp;
	}
	
	return depth==0 ? "":ts + rs;	
}
		
		
function getrecruListData( pNumber, search ){
	//alert('데이터취득');

	$.ajax({
		url : "./recuruitlistdata.do", 
		type : "get", 
		data: {"page":pNumber, "choice":$("#_choice").val(), "search":$("#_searchWord").val()}, 
		success:function(list){
			//alert('success');
			//alert(list);
			
			$(".list_col").remove();
			
			$.each(list, function(i, val){
				alert(val.jobseq);
				let app = "<tr class= 'list_col'>"
							+"<td>" + (i +1) +"</td>";
							
							if(val.del==0){
								
								/* let empT = "";
								if(val.empType == 3){
									empT = "정규직";
								} */
								app +="<td>" + val.companyname + "</td>"
									+"<td style='text-align:left'>" 
									//+ arrow(val.depth)
									+"<a href='recruitdetail.do?seq=" + val.jobseq + "'>" + val.jobTitle+ "</a>"
									+"</td>"
									+"<td>" + val.education +"<br>"+"경력"+val.career_Type + "</td>"
									+"<td>" + val.jobVolumn + "</td>"
									+"<td>" + val.emp_Type +"<br>"+ val.area1Name+" " + val.area2Name +"<br>"+val.salary+" 만원"+ "</td>"
									+"<td>" + val.jobEnd +"<br>"+val.jobStart+ "&nbsp;&nbsp;"
									+"<input type='button' value='공고삭제'>"+ "</td>";
							}
							
							else{
								app += "<td style='text-align:left' colsapn='5'>"
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
function getBbsListCount() {
	$.ajax({
		url : "./bbslistCount.do", 
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
	
	
	let pageSize = 10; 
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
	//	startPage: 1, 
		totalPages : _totalPages, 
		visiblePages : 10, 
		first: '<span aria-hidden = "true">«</span>', 
		prev : "이전", 
		next : "다음", 
		last : '<span aria-hidden = "true">»</span>', 
		initiateStartPageClick:false,				//onPageClick 자동 실행되지 않도록 한다 
		onPageClick : function(event, page) {
			nowPage = page;
		//	alert('nowPage:'+ page);
			getBbsListData(page -1);
		}
	});
}


</script>

</body>
</html>