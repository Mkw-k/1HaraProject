<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>



<table>
	<colgroup>
		<col width="200"><col width="500">
	</colgroup>

<tr>
	<th>아이디</th>
	<td>${pds.memberid }</td>
</tr>

<tr>
	<th>제목</th>
	<td>${pds.title }</td>
</tr>

<tr>
	<th>다운로드</th>
	<td>
		<input type="button" name="btnDown" value="다운로드" id="pdsss"
			onclick="filedown('${pds.newfilename}', '${pds.pdsseq }', '${pds.filename}')">
	</td>
</tr>

<tr>
	<th>조회수</th>
	<td>${pds.readcount }</td>
</tr>

<tr>
	<th>다운수</th>
	<td>${pds.downcount }</td>
</tr>


<tr>
	<th>파일명</th>
	<td>${pds.filename }</td>
</tr>

<tr>
	<th>미리보기</th>
	<td>
		<img alt="" src="./upload/${pds.newfilename }" width=600px">
	</td>
</tr>


<tr>
	<th>등록일</th>
	<td>${pds.regdate }</td>
</tr>

<tr>
	<th>내용</th>
	<td>
		<textarea rows="10" cols="50" readonly="readonly">${pds.content }</textarea>
	</td>
</tr>


</table>
<div>
	<button type="button" onclick="_btnback()">목록으로</button>
</div>
<c:if test="${login.auth == 3 }">
<div>
	<button type="button" onclick="deletePds()">삭제</button>
</div>
</c:if>

<!-- 수정하기 -->
<c:if test="${login.memberid eq pds.memberid }">
<div id="buttons_wrap">	
		<button type="button" id="_btnUpdate">수정하기</button>	
</div>
</c:if>

<!-- seq만 필요하므로 -->
<form name="frmForm" id="_frmForm" action="pdsupdate.do" method="post">
	<input type="hidden" name="seq" value="${pds.pdsseq }">
</form>


<form name="file_Down" action="fileDownload.do" method="post">
	<input type="hidden" name="newfilename">
	<input type="hidden" name="filename">
	<input type="hidden" name="seq">
</form>






<script>


function deletePds(){
	if(confirm("정말로 삭제하시겠습니까? DB에서도 영원히 삭제됩니다") == true){
	location.href = "pdsdelete.do?seq=" + ${pds.pdsseq};
	} else{
	return;
	}
	}

function _btnback() {
	location.href = "pdslist.do";
};



var myVar;
function filedown(newfilename, seq, filename) {
	let doc = document.file_Down;
	doc.newfilename.value = newfilename;
	doc.filename.value = filename;
	doc.seq.value = seq;
	doc.submit();	
	
	myVar = setTimeout(_refrush, 10);
}	

function _refrush() {
	location.reload();
	clearTimeout(myVar);
}

$("#_btnUpdate").click(function () {
	$("#_frmForm").submit();
});







</script> 
