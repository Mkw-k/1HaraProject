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
                                            <input type="text" name="area1Name" class="form-control" placeholder="지역대분류 *"/>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" name="area2Name" class="form-control"  placeholder="지역소분류 *"/>
                                        </div>
                                        <div class="form-group">
                                            <input type="number" min="0" max="99" name="jobVolumn" class="form-control"  placeholder="채용인원 *"/>
                                        </div>
                                        <div class="form-group">
                                            <input type="number" min="0" max="9999999" name="salary" class="form-control"  placeholder="급여(연봉입력/만원단위)*"/>
                                        </div>
                                        <div class="form-group">
                                            <input type="checkbox" name="buscode" value="11111" class="form-control">1번
                                            <input type="checkbox" name="buscode" value="11112" class="form-control">2번
                                            <input type="checkbox" name="buscode" value="11113" class="form-control">3번
                                            <input type="checkbox" name="buscode" value="11114" class="form-control">4번
                                        </div>
                                        
                                        <div class="form-group">
                                            <div class="maxl">
                                                <textarea rows="10" cols="50px" name="jobContent">공고상세내역입력
                                                </textarea>
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
                                            <select class="form-control" name="careerType"> <!-- 고용타입 -->
                                                <option class="hidden"  selected disabled>경력구분 *</option>
                                                <option value="신입">신입</option>
                                                <option value="1~2년">1~2년</option>
                                                <option value="2~4년">2~4년</option>
                                                <option value="4~6년">4~6년</option>
                                                <option value="6~8년">6~8년</option>
                                                <option value="8~10년">8~10년</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" name="careerDesc" class="form-control" placeholder="경력추가설명 *"/>
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


</script>

</body>
</html>





