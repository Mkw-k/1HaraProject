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
	<table style="width:700px">
		<c:forEach var="row" items="${list}">
			<tr>
				<td>
					${row.memberid}(<fmt:formatDate value="${row.wdate}" pattern="yyyy-MM-dd HH:mm:ss"/>)
					<br>
					${row.reply_content}
				</td>
			</tr>
		</c:forEach>
	</table>


</body>
</html>