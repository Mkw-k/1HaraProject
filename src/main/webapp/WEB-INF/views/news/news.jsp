<%@page import="bit.com.a.dto.NewsDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
List<NewsDto> list=(List<NewsDto>) request.getAttribute("list");
System.out.println("list"+list.toString());
%>

	<table class="list_table" style="width: 100%;border-left: solid;border-color: #cccccc;border-left-width: thin;border-bottom: solid;border-bottom-width: thin;border-bottom-color: #cccccc;"">
				<colgroup >
					<col width="20" style=""><col width="75"><col width="300">
				
				</colgroup>
				
				<thead>
					<tr>
						<th>번호</th><th>제목</th><th>내용</th>
					</tr>
				</thead>
					
					<tr>
						<th></th>
		
					</tr>
					</table>



</body>
</html>