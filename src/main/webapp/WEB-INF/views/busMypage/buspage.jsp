<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 코어테그 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- 제이쿼리 -->
<script src="//https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


<style>
.ullist{list-style-type: none;}

</style>  


<div class="login-mypage">
						<a href="#"> 
								<span>[기업]</span>
							  ${login.memberid}님
						</a>
						<ul>
							
								<!-- 개인 -->
								<li><a href="/indivMemberSrv/main/indivMemberSrvMain.do">마이페이지
										홈</a></li>
								<li><a href="/indivMemberSrv/custInfoAdmin/retrieveIndivCustInfo.do">회원정보관리</a></li>
								<li><a href="/indivMemberSrv/seekApplyAdmin/resumeMng/resumeMngMain.do">구직신청관리</a></li>
								<li><a href="#" onclick="worknet.popup.popCenterSuppAgree(); return false;" target="_blank" title="새창">고객지원</a></li>
							
							
						</ul>
</div>









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

