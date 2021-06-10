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
		<a href="pwdcheck.do">기업 정보 수정</a>
	</li>

	<li>
		<a href=""></a>
	</li>

</ul>  

<h2>기업 정보</h2>
   <table border="1">
     	
     	<tr>
     		<th>이미지:</th>
     		<td>	
     	 <img style="width: 100px;height: 100px;margin-left: 0px;margin-right: 160px;"
     	  src="unnamed.png" alt="프로필사진" style="width:126px; height:165px;">
     		</td>
     	
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
    		<td>${login.comaddress }</td>
    	</tr>
    	
    	<tr>
    		<th>상세 주소 : </th>
    		<td>${login.addressdetail }</td>
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

<h2>기업 상세 정보</h2>
  
  
	<ul style="border-bottom: 10px"; class="ulli" >
		<li class="ulli">
			<img alt="" src="./image/comyear4.PNG" width="70px" height="70px"><br>
			<strong>창업 년도</strong><br>
			<span>${company.comyear }</span>
		</li>
		
		<li class="ulli">
			<img alt="" src="./image/companytype.PNG" width="70px" height="70px"><br>
			<strong>기업 형태</strong><br>
			<span>${company.companytype }</span>
		</li>
		
		<li class="ulli">
			<img alt="" src="./image/totalsale2.PNG" width="70px" height="70px"><br>
			<strong>매출액</strong><br>
			<span>${company.totalsale }</span>
		</li>
	
		<li class="ulli">
			<img alt="" src="./image/emp2.PNG" width="70px" height="70px"><br>
			<strong>사원수</strong><br>
			<span>${company.empcount } 명</span>
		</li>
	
		<li class="ulli">
			<img alt="" src="./image/a.PNG" width="70px" height="70px"><br>
			<strong>회사 복지</strong><br>
			<span>${company.mainservice } </span>
		</li>
	
	
	</ul>
	
<br><br>



<table>
	
	<tr>
		<th>대표자 명</th>
		<td>${company.ceoname }</td>
	</tr>
	
	<tr>
		<th>회사아아디</th>
		<td>${company.memberid }</td>
	</tr>
	
	<tr>
		<th>회사 위치</th>
		<td>${login.comaddress }</td>
	</tr>
	
	<tr>
		<th>사업자 번호</th>
		<td>${company.companynum }</td>
	</tr>
	
	<tr >
		<th>주요 업무 :</th>
		<td>${company.content }</td>
	</tr>

	<tr>
		<th>회사 이미지</th>
		<td>${company.comimage }</td>
	</tr>
	
	<tr>
		<th>평균 연봉</th>
		<td>${company.salaryavg }</td>
	</tr>
	
	<tr>
		<th>초봉</th>
		<td>${company.salarystart }</td>
	</tr>

	<tr>
		<th>입사자 수</th>
		<td>${company.joinner } 명</td>
	</tr>
	
	<tr>
		<th>퇴사자 수</th>
		<td>${company.retiree } 명</td>
	</tr>
	
	<tr>
		<th>웹사이트 주소</th>
		<td><a href="javascript:btnweb()">${company.website }</a></td>
	</tr>
	
</table>
  
  

  
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

