<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<h1> ${login.memberid}님 반갑습니다</h1>

<form name="busform" id="_busform" action="buspageUpdateAf.do" method="get">    
    <table border="1">
     	
     	<tr>
     		<th>아이디: </th>
     		<td><input type="text" name="memberid" value="${login.memberid }" readonly="readonly"></td>
     	</tr>
     	
    	<tr>
    		<th>회사 이름: </th>
    		<td><input type="text" name="companyname" value="${business.companyname }"></td>
    	</tr>
    	
    	<tr>
    		<th>비밀번호: </th>
    		<td><input type="text" name="pwd" value="${business.pwd }"></td>
    	</tr>
    	
    	<tr>
    		<th>비밀번호 확인: </th>
    		<td><input type="text" name="pwdch" value="${business.pwd }"></td>
    	</tr>
    	
    	<tr>
    		<th>주소: </th>
    		<td><input type="text" name="comaddress" value="${business.comaddress }"></td>
    	</tr>
    	
    	<tr>
    		<th>상세 주소 : </th>
    		<td><input type="text" name="addressdetail" value="${business.addressdetail }"></td>
    	</tr>
 		
    	<tr>
    		<th>대표자명 : </th>
    		<td><input type="text" name="name" value="${business.name }"></td>
    	</tr>
 		
 		<tr>
     		<th>회사 이미지: </th>
    		<td><input type="text" name="filename" value="${business.filename }" readonly="readonly"></td>
    	</tr>
    	   	
    	<tr>
     		<th>변경할 회사 이미지: </th>
    		<td><input type="file" name="newfilename" value="${business.newfilename }"></td>
    	</tr>  	
    	
    </table>
    	
    <br><br>
    	<div>
    		<button id="busBtn">수정하기</button>
    	</div>
</form>

<script>

$("#busBtn").click(function () {
	
	alert("수정하러 간다잇~");
	$("#_busform").submit();
	}
});

</script>
