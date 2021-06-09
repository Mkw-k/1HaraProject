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
 
 <style type="text/css">
@import url(//fonts.googleapis.com/earlyaccess/notosanskr.css);

body {
  font-family: "Noto Sans KR", sans-serif !important;
}
</style>

<!-- 버튼 모달 -->
<style type="text/css">


* {box-sizing: border-box}

/* Set a style for all buttons */
button {
  background-color: #04AA6D;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

button:hover {
  opacity:1;
}

/* Float cancel and delete buttons and add an equal width */
.cancelbtn, .deletebtn {
  float: left;
  width: 50%;
}

/* Add a color to the cancel button */
.cancelbtn {
  background-color: #ccc;
  color: black;
}

/* Add a color to the delete button */
.deletebtn {
  background-color: #f44336;
}

/* Add padding and center-align text to the container */
.container {
  padding: 16px;
  text-align: center;
}

.foota {
width:2000px;
}

.con{
border-top-left-radius: 2em; border-top-right-radius: 2em; border-bottom-right-radius: 2em; border-bottom-left-radius: 2em;

}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: #474e5d;
  padding-top: 50px;
}

/* Modal Content/Box */
.modal-content {
  background-color: #fefefe;
  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 1px solid #888;
  width: 80%; /* Could be more or less, depending on screen size */
}

/* Style the horizontal ruler */
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* The Modal Close Button (x) */
.close {
  position: absolute;
  right: 35px;
  top: 15px;
  font-size: 40px;
  font-weight: bold;
  color: #f1f1f1;
}

.close:hover,
.close:focus {
  color: #f44336;
  cursor: pointer;
}

/* Clear floats */
.clearfix::after {
  content: "";
  clear: both;
  display: table;
  

}

/* Change styles for cancel button and delete button on extra small screens */
@media screen and (max-width: 300px) {
  .cancelbtn, .deletebtn {
    width: 100%;
  }
}
</style>


<header>헤더</header>



<div class="container"></div>
   
<form name="comform" id="_comform" method="get">    
    <table border="1" >
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
          			<div class="col-md-12"><button type="button" class="button cancel" onclick="location.href='javascript:ComUpdate()'">수정하기</button></div>
          			<%-- <input type="hidden" value="${company.memberid }"> --%>          		
          		</c:when> 
        	    <c:otherwise>
          			<div class="col-md-12"><button type="button" class="button cancel" onclick="location.href='javascript:ComRegi()'">작성하기</button></div>
          		</c:otherwise> 
          	</c:choose> 
    	
    	
          	<button class="btn btn-secondary" onclick="location.href='javascript:ComUpdate()'">수정하기</button>
          	
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
    