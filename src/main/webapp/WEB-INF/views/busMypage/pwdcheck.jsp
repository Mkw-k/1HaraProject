<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>




<table>
	<tr>
		<th>비밀번호를 입력해주세요</th>
		<td><input type="password" name="pwd" id="pwdval"  ></td>
	</tr>
</table>
<button onclick="pwdch('${login.pwd}')">확인</button>


<script type="text/javascript">

function pwdch(pwd) {
	//alert("?");
	let pwdchk = document.getElementById('pwdval').value;
	alert(pwdchk);
	if( pwdchk == pwd){
		alert('성동');
		location.href="buspageUpdate.do";
	}
	else{
		alert("다시 입력해주세요");
	}
}



</script>




</body>
</html>