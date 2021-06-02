<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h2 style="text-align: center;">회원목록</h2>
<table border="1">
	<tr>
		<td>아이디</td>
		<td>비밀번호</td>
		<td>이름</td>
		<td>이메일</td>
		
	</tr>
	<c:forEach items="${member}" var="mb">	
		<tr>
			<td><c:out value="${mb.memberid}"></c:out></td>
			<td><c:out value="${mb.pwd}"></c:out></td>
			<td><c:out value="${mb.name}"></c:out></td>
			<td><c:out value="${mb.email}"></c:out></td>
		</tr>
	</c:forEach>
</table>
<input type="button" value="메인으로" class="btn" onclick="location.href='/test/member/main'">
	
</body>
</html>