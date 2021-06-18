<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 제이쿼리 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>

       <h1 style="text-align: center;"><i class="fa fa-id-card-o" aria-hidden="true"></i> 일반 회원 정보</h1>

<table border="1">
	<tr>
		<td>아이디</td>
		<td>비밀번호</td>
		<td>이름</td>
		<td>이메일</td>		
	</tr>
	<c:forEach items="${bus}" var="bs">	
		<tr>
			<td><c:out value="${bs.memberid}"></c:out></td>
			<td><c:out value="${bs.pwd}"></c:out></td>
			<td><c:out value="${bs.name}"></c:out></td>
			<td><c:out value="${bs.email}"></c:out></td>
		</tr>
	</c:forEach>
</table>
<br>

<form action ="businessdeletemerong.do" method = "post">
-회원 아이디- <input type = "text" name="memberid" placeholder="탈퇴시킬 회원의 아이디를 입력하세요."><br><br>
<button type = "submit" name = "submit" > 회원 강제 탈퇴</button>
</form>
<br>
<br>
<input type="button" value="메인으로" class="btn" onclick="location.href='home.do'">
	

</body>


<!-- 로그인 실패나 성공시 메시지를 받아서 출력하는 자바스크립트 구문 -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script>
    $(function(){
        var responseMessage = "<c:out value="${message}" />";
        if (responseMessage != ""){
            alert(responseMessage);
        }
    })
</script>
</html>