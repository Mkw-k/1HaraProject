<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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


<script type="text/javascript">
function createRecruit() {
	location.href = "recuruitcreate.do";
}

</script>

</body>
</html>