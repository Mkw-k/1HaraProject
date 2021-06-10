<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 코어테그 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- 제이쿼리 -->
<script src="//https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


<style>
.ullist{list-style-type: none;}


/* 가로로 정렬 */
.ulli {list-style-type: none; float: left; margin-left: 70px;  }
​
</style>  

<h1> ${login.memberid}님 반갑습니다</h1>







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
		<a href="javaScript:updateBtn('${login.memberid }')">기업 상세정보 수정</a>
	</li>
	
	<li>
		<a href="javaScript:writeBtn('${login.memberid }')">기업 상세정보 작성하기</a>
	</li>
	
	<li>
		<a href="javaScript:detailBtn('${login.memberid }')">기업 상세정보 보기</a>
	</li>

<li>
<h2>기업 정보</h2>
   <table border="">
     	
     	<tr>
     		<!-- <th>이미지:</th> -->
     		<th>	
     	 <img style="width: 100px;height: 100px;margin-left: 0px;margin-right: 100px;"
     	  src="unnamed.png" alt="프로필사진" style="width:126px; height:165px;">
     		</th>
     	
     	<tr>
     		<th>아이디: </th>
     		<td>${login.memberid }</td>
     	</tr>
     	
    	<tr>
    		<th>회사 이름: </th>
    		<td>${login.companyname }</td>
    	</tr>
    	
    	<tr>
    		<th>비밀번호: </th>
    		<td>${login.pwd }</td>
    	</tr>
    	    	
    	<tr>
    		<th>주소: </th>
    		<td>${business.comaddress }</td>
    	</tr>
    	
    	<tr>
    		<th>상세 주소 : </th>
    		<td>${business.addressdetail }</td>
    	</tr>
 		
    	<tr>
    		<th>대표자명 : </th>
    		<td>${login.name }</td>
    	</tr>
 		
 		<%-- <tr>
     		<th>변경할 회사 이미지: </th>
    		<td>
    		 <div id="image_preview">
                 <img style="width: 100px;height: 100px;margin-left: 0px;margin-right: 160px;" src="unnamed.png" alt="프로필사진" style="width:126px; height:165px;">
              </div>
    		<input type="file" name="filename" id="img" value="${login.filename }"></td>
    	</tr>
    	   	
    	<tr hidden="">
     		<th> 회사 이미지: </th>
    		<td><input type="hidden" name="newfilename"  value="${login.newfilename }"></td>
    	</tr>  	 --%>
    	
    </table>
</li>
	
	<li>
		<a href="pwdcheck.do?memberid=${login.memberid}">기업 정보 수정</a>
	</li>

	<li>
		<a href=""></a>
	</li>

</ul>  



  
<script>
	
function updateBtn(memberid){
	location.href ="companyupdate.do?memberid="+memberid;
}

function writeBtn(memberid){
	location.href= "companywrite.do?companyid="+memberid;
}

function detailBtn(memberid){
	location.href= "companydetail.do?companyid="+memberid;
}



</script>  

