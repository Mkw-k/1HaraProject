<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!------ Include the above in your HEAD tag ---------->
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<style type="text/css">
.register{
    background: -webkit-linear-gradient(left, #3931af, #00c6ff);
    margin-top: 3%;
    padding: 3%;
}
.register-left{
    text-align: center;
    color: #fff;
    margin-top: 4%;
}
.register-left input{
    border: none;
    border-radius: 1.5rem;
    padding: 2%;
    width: 60%;
    background: #f8f9fa;
    font-weight: bold;
    color: #383d41;
    margin-top: 30%;
    margin-bottom: 3%;
    cursor: pointer;
}
.register-right{
    background: #f8f9fa;
    border-top-left-radius: 10% 50%;
    border-bottom-left-radius: 10% 50%;
}
.register-left img{
    margin-top: 15%;
    margin-bottom: 5%;
    width: 25%;
    -webkit-animation: mover 2s infinite  alternate;
    animation: mover 1s infinite  alternate;
}
@-webkit-keyframes mover {
    0% { transform: translateY(0); }
    100% { transform: translateY(-20px); }
}
@keyframes mover {
    0% { transform: translateY(0); }
    100% { transform: translateY(-20px); }
}
.register-left p{
    font-weight: lighter;
    padding: 12%;
    margin-top: -9%;
}
.register .register-form{
    padding: 10%;
    margin-top: 10%;
}
.btnRegister{
    float: right;
    margin-top: 10%;
    border: none;
    border-radius: 1.5rem;
    padding: 2%;
    background: #0062cc;
    color: #fff;
    font-weight: 600;
    width: 50%;
    cursor: pointer;
}
.register .nav-tabs{
    margin-top: 3%;
    border: none;
    background: #0062cc;
    border-radius: 1.5rem;
    width: 28%;
    float: right;
}
.register .nav-tabs .nav-link{
    padding: 2%;
    height: 34px;
    font-weight: 600;
    color: #fff;
    border-top-right-radius: 1.5rem;
    border-bottom-right-radius: 1.5rem;
}
.register .nav-tabs .nav-link:hover{
    border: none;
}
.register .nav-tabs .nav-link.active{
    width: 100px;
    color: #0062cc;
    border: 2px solid #0062cc;
    border-top-left-radius: 1.5rem;
    border-bottom-left-radius: 1.5rem;
}
.register-heading{
    text-align: center;
    margin-top: 8%;
    margin-bottom: -15%;
    color: #495057;
}

</style>

</head>
<body>



<div class="container register">
                <div class="row">
                    <div class="col-md-3 register-left">
                        <img src="https://image.ibb.co/n7oTvU/logo_white.png" alt=""/>
                        <h3>Welcome</h3>
                        <p>You are 30 seconds away from earning your own money!</p>
                        <input type="submit" name="" value="Login"/><br/>
                    </div>
                    <div class="col-md-9 register-right">
                        <ul class="nav nav-tabs nav-justified" id="myTab" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Employee</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Hirer</a>
                            </li>
                        </ul>
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                            <form  id="_recruitcrefrm" method="post">
                                <h3 class="register-heading">Apply as a Employee</h3>
                                <div class="row register-form">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="text" name="companyId" class="form-control" placeholder="회사ID *"/>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" name="jobTitle" class="form-control" placeholder="공고제목 *"/>
                                        </div>
                                        
                                        
                                        
                                        
                                        <div class="form-group">
                                            <input type="number" min="0" max="99" name="jobVolumn" class="form-control"  placeholder="채용인원 *"/>
                                        </div>
                                        <div class="form-group">
                                            <input type="number" min="0" max="9999999" name="salary" class="form-control"  placeholder="급여(연봉입력/만원단위)*"/>
                                        </div>
                                        
                                        
                                        
                                        
                                        
                                        <div class="form-group">
                                            <div class="maxl">
                                                <textarea rows="10" cols="20px" name="jobContent">공고상세내역입력
                                                </textarea>
                                            </div>
                                        </div>
                                        
                                        
                                        <div>
	                                        <div class="form-group" id="_buscodeList1" style="border: 1px solid gold; float: left; width: 33%;">
	                                          	<p>직무분류1</p>
	                                          	 
	                                            <!-- 데이터들어오는자리 -->
	                                        </div>
	                                        <div id="_buscodeList2" style="border: 1px solid red; float: left; width: 33%;">
												<p>직무분류2</p>
	                                            <!-- 데이터들어오는자리 -->
											</div>
											<div id="_buscodeList3" style="border: 1px solid blue; float: left; width: 33%;">
												<p>직무분류3</p>
	                                            <!-- 데이터들어오는자리 -->
											</div>
                                        </div>
                                        
                                        
                                        
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="datetime-local" id="_jobStart" name="jobStart" class="form-control" placeholder="공고시작일 *"/>
                                        </div>
                                        <div class="form-group">
                                            <input type="datetime-local" id="_jobEnd" name="jobEnd" class="form-control" placeholder="공고마감일 *"/>
                                        </div>
                                        <div class="form-group">
                                            <select class="form-control" name="emp_Type"> <!-- 고용타입 -->
                                                <option class="hidden"  selected disabled>고용타입</option>
                                                <option value="1">아르바이트</option>
                                                <option value="2">계약직</option>
                                                <option value="3">정규직</option>
                                            </select>
                                        </div>
                                        <div class="form-group">

                                            <select class="form-control" name="education"> <!-- 고용타입 -->
                                                <option class="hidden"  selected disabled>학력구분 *</option>
                                                <option value="0">무관</option>
                                                <option value="1">고졸</option>
                                                <option value="2">전문대졸</option>
                                                <option value="3">대졸</option>
                                                <option value="4">석사</option>
                                                <option value="5">박사</option>
                                            </select>
                                        </div>
                                        <div class="form-group">

                                             <select class="form-control" name="career_Type"> <!-- 고용타입 -->
                                                <option class="hidden"  selected disabled>경력구분</option>
                                                <option value="0">무관</option>
                                                <option value="1">신입</option>
                                                <option value="2">1~2년</option>
                                                <option value="3">2~4년</option>
                                                <option value="4">4~6년</option>
                                                <option value="5">6~8년</option>
                                                <option value="6">8~10년</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" name="career_Desc" class="form-control" placeholder="경력추가설명 *"/>
                                        </div>
                                        <div class="form-group">
                                            	<input type="text" id="sample6_postcode" placeholder="우편번호">
												<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
												<input type="text" name="area1Name" id="sample6_address" placeholder="주소"><br>
												<input type="text" name="area2Name" id="sample6_detailAddress" placeholder="상세주소">
												<input type="text" id="sample6_extraAddress" placeholder="참고항목">
										</div>
                                        <input type="button" class="btnRegister" onclick="myFunction()"  value="Register"/>
                                    </div>
                                </div>
                              </form>
                              
                              
                              
                              
                              
                              
                            </div>
                            <div class="tab-pane fade show" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                                <h3  class="register-heading">Apply as a Hirer</h3>
                                <div class="row register-form">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="First Name *" value="" />
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Last Name *" value="" />
                                        </div>
                                        <div class="form-group">
                                            <input type="email" class="form-control" placeholder="Email *" value="" />
                                        </div>
                                        <div class="form-group">
                                            <input type="text" maxlength="10" minlength="10" class="form-control" placeholder="Phone *" value="" />
                                        </div>


                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="password" class="form-control" placeholder="Password *" value="" />
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control" placeholder="Confirm Password *" value="" />

                                        </div>
                                        <div class="form-group">
                                             <select class="form-control" name="career_Type"> <!-- 고용타입 -->
                                                <option class="hidden"  selected disabled>경력구분</option>
                                                <option value="경력 무관">무관</option>
                                                <option value="신입">신입</option>
                                                <option value="경력 1~2년">경력1~2</option>
                                                <option value="경력 3~5년">경력3~5</option>
                                                <option value="경력 5~7년">경력5~7</option>
                                                <option value="경력 7~10년">경력7~10</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" name="career_Desc" class="form-control" placeholder="경력추가설명 *"/>
                                        </div>
                                        <input type="submit" class="btnRegister" id="_btnRegister"  value="Register"/>
                                    </div>
                                </div>
                             
                            </div>
                          
                        </div>
                    </div>
                </div>

            </div>


<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">



function myFunction(x) {
 
    var busValue = $("input[name='buscode']").length;
    var busData = new Array(busValue);
    
    for(var i=0; i<busValue; i++){                          
    	busData[i] = $("input[name='buscode']")[i].value;
    }
    
   
    
    $("#_recruitcrefrm").attr("action", "recuruitcreateAf.do").submit();

    
}
 
 



$(".btnRegister").click(function(){
	
	/* var start = $("#_jobStart").val().replace('T', '');
	var end = $("#_jobEnd").val().replace('T', '');
	
	alert("start:" + start);
	alert("end:" + end);
	
	
	document.getElementByID("_jobStart").value = start;
	document.getElementByID("_jobEnd").value = end;
	
	start = $("#_jobStart").val(); 
	end = $("#_jobEnd").val();
	
	alert("start:" + start);
	alert("end:" + end); */
	
	//$("#_recruitcrefrm").submit();	

});




function sample6_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
            if(data.userSelectedType === 'R'){
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                }
                // 조합된 참고항목을 해당 필드에 넣는다.
                document.getElementById("sample6_extraAddress").value = extraAddr;
            
            } else {
                document.getElementById("sample6_extraAddress").value = '';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('sample6_postcode').value = data.zonecode;
            document.getElementById("sample6_address").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("sample6_detailAddress").focus();
        }
    }).open();
}


$(document).ready(function() {
	
	
	
$.ajax({
	url : "./buscodeListData.do", 
	type : "get", 
	success:function(list){
		alert('success');
		alert(list);
		
		$(".list_col1").remove();
		
		$.each(list, function(i, val){

			//alert(val.jobSeq);

			//let app = "<input type='checkbox' class='list_col' name='buscode' value='"+val.buscode1+"' class='form-control'>"+val.buscodename1
			let app = "<div>"+
					"<input type='radio' class='list_col1' id='buscode1' name='buscode1' value='"+val.buscode1+"'><label for='huey'>"+val.buscodename1+"</label>"+
					"</div>";
				
				$("#_buscodeList1").append(app);
		});
	}, 
	error:function(){
		alert('error');
	}
	
 });
 




$(document).on("change",".list_col1", function(){
	
	if($(this).is(":checked")){
        alert("체크");
        alert($(this).val());
        let buscode = $(this).val();
        
        $.ajax({
        	url : "./buscode2ListData.do", 
        	type : "get", 
        	data: {"buscode":buscode}, 
        	success:function(list){
        		alert('success');
        		alert(list);
        		
        		$(".list_col2").remove();		
        		
        		$.each(list, function(i, val){
							let app = "<div>"+
        					"<input type='radio' class='list_col2' id='buscode2' name='buscode2' value='"+val.buscode2+"'><label class='list_col2' for='huey'>"+val.buscodename2+"</label>"+
        					"</div>";
        				
        				$("#_buscodeList2").append(app);
        		});
        	}, 
        	error:function(){
        		alert('error');
        	}
        	
         });
   
    }
    /* else if($(this).is(":checked")==false){
        alert("체크 해제");
    } */
	
});


$(document).on("change",".list_col2", function(){
	
	if($(this).is(":checked")){
        alert("체크");
        alert($(this).val());
        let buscode = $(this).val();
        
        $.ajax({
        	url : "./buscode2ListData.do", 
        	type : "get", 
        	data: {"buscode":buscode}, 
        	success:function(list){
        		alert('success');
        		alert(list);
        		
        		$(".list_col3").remove();		
        		
        		$.each(list, function(i, val){
        			
							let app = "<span>"+
									  "<input type='checkbox' class='list_col3' name='buscode' value='"+val.busname+"' class='form-control'>"+val.busname+
									  "</span>";
									  
							if((i+1)%2==0){
		        				app += "<br>";
		        			}
									  

				$("#_buscodeList3").append(app);
        		
        		});
        	}, 
        	error:function(){
        		alert('error');
        	}
        	
         });
   
    }
    /* else if($(this).is(":checked")==false){
        alert("체크 해제");
    } */
	
});



});

  
 



</script>

</body>
</html>





