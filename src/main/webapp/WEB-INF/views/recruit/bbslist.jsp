<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 검색 -->
<div class="box border" style="margin-top: 5px; margin-bottom: 10px">
<form action="" id="_frmFormSearch" method="get">

<table style="margin-left: auto; margin-right: auto; margin-top: 3px; margin-bottom: 3px;">
<tr>
	<td>검색</td>
	<td style="padding-left: 5px;">
		<select id="_choice" name="choice">
	<!-- 		<option value="" selected="selected">선택</option> -->
			<option value="title" selected="selected">제목</option>
			<option value="content">내용</option>
			<option value="writer">작성자</option>
		</select>
	</td>
	
	<td style="padding-left: 5px;">
		<input type="text" id="_searchWord" name="searchWord">
	</td>
	<td style="padding-left: 5px;">
		<span class="button blue">
			<button type="button" id="btnSearch" onclick="javascript:getBbsListData(0)">검색</button>
		</span>
	</td>
</tr>
</table>
</form>
</div>

<table class="list_table" style="width: 85%" id="_list_table">
<colgroup>
	<col style="width:70px;">
	<col style="width:auto;">
	<col style="width:100px;">
</colgroup>

<tr>
	<th>번호</th><th>제목</th><th>조회수</th><th>작성자</th>
</tr>




<%-- 
<c:if test="${empty bbslist }">
<tr>
<td colspan="3">작성된 글이 없습니다</td>
</tr>
</c:if>

<c:forEach items="${bbslist}" var="bbs" varstatus="vs">
	<tr>
		<td>${vs.count}</td>
		<td style="text-align: left;">
			<a href="bbsdetail.do?seq=${bbs.seq}">
				${bbs.title}
			</a>
		</td>
		<td>${bbs.id }</td>
	</tr>
	
</c:forEach> --%>


</table>
<br><br>

<div class="container">
	<nav aria-label="Page navigation">
		<ul class="pagination" id="pagination" style="justify-content:center;">
		</ul>
	</nav>
</div>


<script>

function arrow(depth) {
	let rs = "<img src='./image/arrow.png' width='20px' heiht='20px'/>";
	let nbsp = "&nbsp;&nbsp;&nbsp;&nbsp;";	// 여백
	
	let ts = "";
	
	for(var i = 0;i < depth; i++){
		ts += nbsp;
	}
	
	return depth==0 ? "":ts + rs;	
}
</script>


<script type="text/javascript">

getBbsListData(0);
getBbsListCount();

// bbslist를 취득 
function getBbsListData( pNumber, search ){
	//alert('데이터취득');

	$.ajax({
		url : "./bbslistData.do", 
		type : "get", 
		data: {"page":pNumber, "choice":$("#_choice").val(), "search":$("#_searchWord").val()}, 
		success:function(list){
			//alert('success');
			//alert(list);
			$(".list_col").remove();
			
			$.each(list, function(i, val){
				
				let app = "<tr class= 'list_col'>"
							+"<td>" + (i +1) +"</td>";
							
							if(val.del==0){
								
								app +="<td style='text-align:left'>" 
									+ arrow(val.depth)
									+"<a href='bbsdetail.do?seq=" + val.seq + "'>" + val.title+ "</a>"
									+"</td>"
									+"<td>" + val.readcount + "</td>"
									+"<td>" + val.id + "</td>";
							}
							
							else{
								app += "<td style='text-align:left'>"
										+"<font color='#ff0000'>********* 이 글은 작성자에 의해서 삭제되었습니다</font>"
										+"</td>"
										+"<td>" + val.readcount + "</td>"
										+"<td>" + val.id + "</td>";
							}
							
							+"</tr>";
							
					$("#_list_table").append(app);
			});
		}, 
		error:function(){
			alert('error');
		}
		
	});
}


// 글의 총수를 취득 
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

// paging 처리 
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





//검색 페이지 
/* $("#btnSearch").click(function() {
	getBbsListCount();
	
	$.ajax({
		url : "./bbslistData.do", 
		type : "get", 
		data: {choice:$("#_choice").val(), search:$("#_searchWord").val()}, 
		success:function(list){
			alert('success');
			alert(list);
			$(".list_col").remove();
			
			$.each(list, function(i, val){
				let app = "<tr class= 'list_col'>"
							+"<td>" + (i +1) +"</td>"
							+"<td style='text-align:left'>"
					//		+ 댓글이미지 
							+"<a href='bbsdetail.do?seq=" + val.seq + "'>" + val.title+ "</a>"
							+"</td>"
							+"<td>" + val.id + "</td>"
							+"</tr>";
							
					$("#_list_table").append(app);
			});
		}, 
		error:function(){
			alert('error');
		}
		
	});
}); */



</script>





    