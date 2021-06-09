<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 코어테그 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- 제이쿼리 -->
<script src="//https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


<style>
.ullist{list-style-type: none;}

</style>  

<ul class="ullist">

<%-- <c:choose>
	<c:when test='${company.updatecompanylist=="YES"}'>	
			<li>
				<a href="companywrite.do">기업 상세정보 수정</a>
			</li>
	</c:when>
	
	<c:otherwise>
			<li>
				<a href="companyupdate.do">기업 상세정보 작성하기</a>
			</li>
	</c:otherwise>
</c:choose> --%>
	
	
	
	<li>
		<a href="javaScript:updateBtn()">기업 상세정보 수정</a>
	</li>
	
	<li>
		<a href="javaScript:writeBtn()">기업 상세정보 작성하기</a>
	</li>
	
	<li>
		<a href="javaScript:detailBtn()">기업 상세정보 보기</a>
	</li>
	
	
	<li>
		<a href="buspageUpdate.do">기업 정보 수정</a>
	</li>

	<li>
		<a href=""></a>
	</li>

</ul>  
  
  
  
<script>
	
function updateBtn(){
	location.href ="companywrite.do";
}

function writeBtn(){
	location.href= "companywrite.do";
}

function detailBtn(){
	location.href= "companydetail.do";
}



</script>  

