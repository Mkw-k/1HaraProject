<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 
 <style>
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
<h1 align="center"><strong>기업 정보 수정하기</strong></h1>
<form name="comform" id="_comform" action="companyupdateAf.do" method="get">    
    <table border="1">
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
    		<td><input type="text" name="salaryavg" value="${company.salaryavg }" ></td>
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
    		<td><input type="text" name="website" value="${company.website }" ></td>
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
    		<td><input type="text" name="totalsale" value="${company.totalsale }" ></td>
    	</tr>
 
 		<tr>
     		<th>직원 수:<p class="fontscolor">(숫자로만 입력해주세요)</p></th>
    		<td><input type="text" name="empcount" value="${company.empcount }" >명</td>
    	</tr>
    	
 		<tr>
    		<th>올해 퇴사자 수:<p class="fontscolor">(숫자로만 입력해주세요)</p></th>
    		<td><input type="text" name="retiree" value="${company.retiree }" >명</td>
    	</tr>
    	
    	<tr>
    		<th>올해 입사자 수:<p class="fontscolor">(숫자로만 입력해주세요)</p></th>
    		<td><input type="text" name="joinner" value="${company.joinner }" >명</td>
    	</tr>
    	   	
    </table>
    <br><br>
	    <div align="center">
	    	<button id="companyBtn">수정하기</button>
	    </div>
</form>    


<script>




	$("#companyBtn").click(function () {
		
		alert("클릭크 수정");
		$("#_comform").submit();
		}

	});
		

</script>    
    