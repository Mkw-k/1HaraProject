<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>






<form name="frmForm" id="_frmForm" action="pdsupload.do" method="post"
	enctype="multipart/form-data">

<table>

 <tr>
	<th>아이디</th>
	<td>
	<%-- 	<input type="hidden" name="memberid" readonly="readonly" value="${login.id }" size="50"> --%>
		<input type="hidden" name="memberid" readonly="readonly" value="admin" size="50">
	</td>
</tr>

<tr>
	<th>제목</th>
	<td style="text-align: left;">
		<input type="text" name="title" size="50">
	</td>
</tr>

 <tr>
	<th>파일 업로드</th>
	<td>
		<input type="file" name="fileload" id="_fileload" style="width: 400px">
	</td>
</tr>

<tr>
	<th>내용</th>
	<td>
		<textarea rows="10" cols="50" name="content"></textarea>
	</td>
</tr>

<tr>
	<td colspan="2" style="height: 50px; text-align: center;">
		<a href=#none id="_btnPds" title="자료올리기">
			<img alt="" src="image/bwrite.png">
		</a>
	</td>
</tr>

</table>

</form>

<script>
$("#_btnPds").click(function () {
	
	// 제목, 내용
	alert($("#_fileload").val());
	$("#_frmForm").submit();
});
</script>




