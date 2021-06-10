<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<h1> ${login.memberid}님 반갑습니다</h1>

<form name="busform" id="_busform" action="buspageUpdateAf.do" method="get">    
    <table border="1">
     	
     	<tr>
     		<th>아이디: </th>
     		<td><input type="text" name="memberid" value="${login.memberid }" readonly="readonly"> (필수) </td>
     	</tr>
     	
    	<tr>
    		<th>회사 이름: </th>
    		<td><input type="text" name="companyname" value="${login.companyname }"> (필수)</td>
    	</tr>
    	
    	<tr>
    		<th>비밀번호: </th>
    		<td><input type="text" name="pwd" value="${login.pwd }"> (필수)</td>
    	</tr>
    	
    	<tr>
    		<th>비밀번호 확인: </th>
    		<td><input type="text" id="pwdch" name="pwdch" value="${login.pwd }"> (필수)</td>
    	</tr>
    	
    	<tr>
    		<th>주소: </th>
    		<td><input type="text" name="comaddress" value="${login.comaddress }"> (필수)</td>
    	</tr>
    	
    	<tr>
    		<th>상세 주소 : </th>
    		<td><input type="text" name="addressdetail" value="${login.addressdetail }"> (필수)</td>
    	</tr>
 		
    	<tr>
    		<th>대표자명 : </th>
    		<td><input type="text" name="name" value="${login.name }"> (필수)</td>
    	</tr>
 		
 		<tr>
			<th>파일 업로드</th>
			<td style="text-align: left;">
			<!-- 기존의 파일 -->
			<input type="hidden" name="newfilename" value="${login.newfilename}">
			<input type="text" name="filename" value="${login.filename}"  readonly="readonly">
			<!-- 수정할 파일 -->
			<input type="file" name="fileload" id="_fileload" style="width: 400px">		
			</td>
		</tr>
    	
    </table>
    	
    <br><br>
    	<div>
    		<button id="busBtn">수정하기</button>
    	</div>
</form>

<script>

$("#busBtn").click(function () {
	
	alert("수정하러 간다잇~");
	$("#_busform").submit();
	}
});

$("#pwd").keyup(function(){
    var pwd=$(this).val();
    // 비밀번호 검증할 정규 표현식
    var reg=/^.{8,}$/;
    if(reg.test(pwd)){//정규표현식을 통과 한다면
                $("#pwdRegErr").hide();
                successState("#pwd");
    }else{//정규표현식을 통과하지 못하면
                $("#pwdRegErr").show();
                errorState("#pwd");
    }
});


$("#pwdch").keyup(function(){
    var rePwd=$(this).val();
    var pwd=$("#pwd").val();
    // 비밀번호 같은지 확인
    if(pwdch==pwd){//비밀번호 같다면
        $("#rePwdErr").hide();
        successState("#rePwd");
    }else{//비밀번호 다르다면
        $("#rePwdErr").show();
        errorState("#rePwd");
    }
});

// 이미지 업로드  
$('#img').on('change', function() {
	alert($('#img').val());
     ext = $(this).val().split('.').pop().toLowerCase(); //확장자
     	//배열에 추출한 확장자가 존재하는지 체크
        if($.inArray(ext, ['gif', 'png', 'jpg', 'jpeg']) == -1) {
             resetFormElement($(this)); //폼 초기화
             window.alert('이미지 파일이 아닙니다! (gif, png, jpg, jpeg 만 업로드 가능)');
           } else {
                file = $('#img').prop("files")[0];
                blobURL = window.URL.createObjectURL(file);
                $('#image_preview img').attr('src', blobURL);
                $('#image_preview').slideDown(); //업로드한 이미지 미리보기 
                $(this).slideUp(); //파일 양식 감춤
            }
});
 
</script>