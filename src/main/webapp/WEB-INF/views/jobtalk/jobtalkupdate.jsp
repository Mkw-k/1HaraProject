<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<form name="frmForm" id="_frmForm" action="noticeupdateAf.do"
	method="post" enctype="multipart/form-data">
<input type="hidden" name="noticeseq" value="${notice.noticeseq}">

<table class="list_table" style="width: 85%">
<colgroup>
	<col width="200"><col width="500">
</colgroup>

<tr>
	<th>아이디</th>
	<td style="text-align: left;">${notice.memberid}</td>
</tr>

<tr>
	<th>제목</th>
	<td style="text-align: left;">
		<input type="text" name="title" size="50" value="${notice.title}">
	</td>
</tr>

<tr>
	<th>파일 업로드</th>
	<td style="text-align: left;">
		<!-- 기존의 파일 -->
		<input type="hidden" name="newfilename" value="${notice.newfilename}">
		<input type="text" name="filename" value="${notice.filename}" size="50" readonly="readonly">
		<!-- 수정할 파일 -->
		<input type="file" name="fileload" id="_fileload" style="width: 400px">		
	</td>
</tr>

<tr>
	<th>내용</th>
	<td style="text-align: left;">
		<textarea rows="10" cols="50" name="content" id="_content">${notice.content}</textarea>
	</td>
</tr>

<tr>
	<td colspan="2" style="height: 50px; text-align: center;">
		<span class="button blue">
			<a href="#none" id="btnupdate" title="수정완료">
				수정하기
			</a>
		</span>
	</td>
</tr>

</table>	
</form>

<script>
$("#btnupdate").click(function(){
	
	alert($("#_fileload").val());
	$("#_frmForm").submit();
});

</script>







