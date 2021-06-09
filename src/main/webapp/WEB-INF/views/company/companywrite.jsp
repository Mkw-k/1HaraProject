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
   
<form name="comform" id="_comform" method="get">    
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
    		<td><input type="text" name="companytype" value="${company.companytype}">(필수)</td>
    	</tr>

     	<tr hidden="">
    		<th>기업 이미지:</th>
    		<td>${company.comimage }</td>
    	</tr> 

		<tr>
    		<th>평균 연봉:</th>
    		<td><input type="text" name="salaryavg" value="${company.salaryavg }">(필수)</td>
    	</tr>
    
    	<tr>
    		<th>초봉:</th>
    		<td><input type="text" name="salarystart" value="${company.salarystart }">(필수)</td>
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
    <br><br>
    <div align="center">
    	
    		<c:choose> 
          		<c:when test='${company.updatecompanylist=="YES"}'>
          			<div class="col-md-12"><a class="btn btn-secondary" href="javascript:ComUpdate()">수정하기</a></div>
          			<%-- <input type="hidden" value="${company.memberid }"> --%>          		
          		</c:when> 
        	    <c:otherwise>
          			<div class="col-md-12"><a class="btn btn-secondary" href="javascript:ComRegi()">작성하기</a></div>
          		</c:otherwise> 
          	</c:choose> 
    	
    	
          	<a class="btn btn-secondary" href="javascript:ComUpdate()">수정하기</a>
          	
    	<!-- 
    	<button id="companyBtn" >등록하기</button>
  		<button id="updateBtn">수정하기</button> -->
    </div>
</form>    

	
	

<script>

function ComRegi() {
	 
    
    $("#_comform").attr("action", "companywriteAf.do").submit();

    
}

function ComUpdate() {
	

	$("#_comform").attr("action", "companyupdateAf.do").submit();
}
 
 

	
</script>    
    