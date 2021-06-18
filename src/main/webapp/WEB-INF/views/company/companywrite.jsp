<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<head>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<link href="csss/header.css" rel="stylesheet" type="text/css">


<style type="text/css">
 

/* 버튼 */
a.box-btn {
	background-color: #2186eb;
	padding: 5px 20px;
	display: inline-block;
	color: #fff;
	text-transform: capitalize;
	border-radius: 3px;
	font-size: 15px;
	transition: .3s;
}

/* 버튼  */
a.box-btn:hover, a.border-btn:hover {
	background-color: #2186eb;
}



/* 테이블 속성 */
.table-bordered {
border: 1px solid #dddddd;
border-collapse: separate;
border-left: 0;
-webkit-border-radius: 4px;
-moz-border-radius: 4px;
border-radius: 4px;
}

.table {
width: 100%;
margin-bottom: 20px;
background-color: transparent;
border-collapse: collapse;
border-spacing: 0;
display: table;
}



body {
  font-family: "Noto Sans KR", sans-serif !important;
	margin: auto;
    width: 500px;
    

}

.fontscolor{
 color:blue;
 }
 .fontscolor2{
 color:red;
 }
 .fontscolor3{
 color:green
 }




</style>

</head>



<div class="container"></div>
   
<form name="comform" action="companywriteAf.do" id="_comform" method="get">    
    <table border="1" class="table table-striped table-bordered">
     	<tr>
    		<th>회사이름:<p class="fontscolor2">* 변경할수없습니다</p></th>
    		<td><input type="text" name="companyname" value="${login.companyname }" readonly="readonly"></td>
    	</tr>

    	<tr>
    		<th>주소:<p class="fontscolor2">* 변경할수없습니다</p></th>
    		<td><input type="text" name="address" value="${login.comaddress }" readonly="readonly"></td>
    	</tr>

    	<tr hidden="">
    		<th>사업자 번호(비공개입니다):<p class="fontscolor2">* 변경할수없습니다</p></th>
    		<td><input type="text" name="comanynum" value="${company.companynum }" readonly="readonly"></td>
    	</tr>

    	<tr>
    		<th>대표자 이름:<p class="fontscolor2">* 변경할수없습니다</p></th>
    		<td><input type="text" name="ceoname" value="${login.name }" readonly="readonly"></td>
    	</tr>

    	<tr>
    		<th>기업 아이디:<p class="fontscolor2">* 변경할수없습니다</p></th>
    		<td><input type="text" name="memberid" value="${login.memberid }" readonly="readonly"></td>
    	</tr>

    	<tr>
    		<th>회사 규모 (중소기업 , 대기업):</th>
    		<td><input type="text" name="companytype" value="${company.companytype}"></td>
    	</tr>

     	<tr hidden="">
    		<th>기업 이미지:</th>
    		<td>${company.comimage }</td>
    	</tr>

		<tr>
    		<th>평균 연봉:</th>
    		<td><input type="text" name="salaryavg" value="${company.salaryavg }"></td>
    	</tr>

    	<tr>
    		<th>초봉:</th>
    		<td><input type="text" name="salarystart" value="${company.salarystart }"></td>
    	</tr>

    	<tr>
    		<th>회사 설립일:<p class="fontscolor3">예시)1995년6월17일</p></th>
    		<td><input type="text" name="comyear" value="${company.comyear }"></td>
    	</tr>

    	<tr>
    		<th>웹사이트 주소:</th>
    		<td><input type="text" name="website" value="${company.website }"></td>
    	</tr>

    	<tr>
    		<th>회사 복지: </th>
    		<td><input type="text" name="mainservice" value="${company.mainservice }"></td>
    	</tr>

    	<tr>
    		<th>주요 업무 :</th>
    		<td><input type="text" name="content" value="${company.content }"></td>
    	</tr>

    	<tr>
    		<th>연매출 :</th>
    		<td><input type="text" name="totalsale" value="${company.totalsale }"></td>
    	</tr>

 		<tr>
     		<th>직원 수:<p class="fontscolor">(숫자로만 입력해주세요)</p></th>
    		<td><input type="text" name="empcount" value="${company.empcount }">명</td>
    	</tr>

 		<tr>
    		<th>올해 퇴사자 수:<p class="fontscolor">(숫자로만 입력해주세요)</p></th>
    		<td><input type="text" name="retiree" value="${company.retiree }">명</td>
    	</tr>

    	<tr>
    		<th>올해 입사자 수:<p class="fontscolor">(숫자로만 입력해주세요)</p></th>
    		<td><input type="text" name="joinner" value="${company.joinner }">명</td>
    	</tr>

	</table>

		    <div align="center">
	    	<c:if test="${company.companyseq == null}">	    	
	    	<button id="companyBtn" class="box-btn">등록하기</button>
	    	</c:if>
	    	
	    	<c:if test="${company.companyseq != null }">
	    	
	    	<p>중복등록을 할수없습니다 수정하기로 가주세요</p>
	    	<a href="companyupdate.do?companyid=${company.memberid }" style="color:#2186eb">기업수정</a>
	    	</c:if>
	    	
	    	
	    </div>

</form>    



<script>



$("#companyBtn").click(function () {
	
	alert("클릭크 수정");
	$("#_comform").submit();
	}

});
	



</script>
