<%@page import="bit.com.a.dto.BusinessDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<!-- 제이쿼리 -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- PAGE settings -->
<link rel="icon" href="https://templates.pingendo.com/assets/Pingendo_favicon.ico">
<title>Checkout</title>
<meta name="description" content="Wireframe design of a checkout form by Pingendo">
<meta name="keywords" content="Pingendo bootstrap example template wireframe checkout form">
<meta name="author" content="Pingendo">
<!-- CSS dependencies -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
<!-- 외부css파일과 연결 -->
<link rel="stylesheet" href="./css/wireframe.css">


<style type="text/css">
#selectResult{
	color: red;
}
</style>

</head>

<body class="bg-light">
  <div class="py-5">
    <div class="container">
      <div class="row">
        <div class="text-center col-md-7 mx-auto"> <i class="fa d-block fa-bullseye fa-5x mb-4 text-info"></i>
          <h2><b style="	box-shadow: 0px 0px 4px  black;	text-shadow: 0px 0px 4px black;">채용공고 등록</b></h2>
          <p class="lead">Below is an example form built entirely with Bootstrap's form controls. Each required form group has a validation state that can be triggered by attempting to submit the form without completing it.</p>
        </div>
      </div>
    </div>
  </div>
  <div class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <ul class="nav nav-pills">
            <li class="nav-item"> <a href="" class="nav-link active show" data-toggle="pill" data-target="#tabone">Tab 1</a> </li>
            <li class="nav-item"> <a class="nav-link" href="" data-toggle="pill" data-target="#tabtwo">Tab 2</a> </li>
            <li class="nav-item"> <a href="" class="nav-link" data-toggle="pill" data-target="#tabthree">Tab 3</a> </li>
          </ul>
          <div class="tab-content mt-2">
            <div class="tab-pane fade active show" id="tabone" role="tabpanel">
              <p class="">Which was created for the bliss of souls like mine. I am so happy, my dear friend, so absorbed in the exquisite.</p>
            </div>
            <div class="tab-pane fade" id="tabtwo" role="tabpanel">
              <p class="">When, while the lovely valley teems with vapour around me, and the meridian sun strikes the upper surface.</p>
            </div>
            <div class="tab-pane fade" id="tabthree" role="tabpanel">
              <p class="">A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy.</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="py-5" >
    <div class="container">
      <div class="row">
        <div class="col-md-12" style="	margin-bottom: 20px;">
          <div class="btn-group">
            <button class="btn btn-primary dropdown-toggle" contenteditable="true" data-toggle="dropdown"> 전체내역</button>
            <div class="dropdown-menu"> <a class="dropdown-item" href="#_writeFrm1">입력내역1</a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="#_writeFrm2">입력내역2</a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="#_writeFrm3">입력내역3</a>
              <div class="dropdown-divider"></div>
            </div>
          </div>
          <a class="btn btn-light" href="#_writeFrm1">입력내역1</a>
          <a class="btn btn-light" href="#_writeFrm2">입력내역2</a>
          <a class="btn btn-light" href="#_writeFrm3" style="">입력내역3</a>
        </div>
      </div>
    </div>
    <div class="">
      
      
      <div class="container">
        
          <div class="col-md-12 order-md-1">
            <form class="needs-validation" id="_recruitcrefrm" novalidate="" method="post">
              <h1 class="" id="_writeFrm1">입력내역1(기본입력사항)</h1>
              <div class="row">
                <div class="col-md-6 mb-3"> 
                <label for="firstName">회사이름</label>
                  <input type="text" class="form-control" id="" placeholder="회사이름" value="${login.companyname }" required="" readonly="readonly">
                  <div class="invalid-feedback"> Valid first name is required. </div>
                </div>
                <div class="col-md-6 mb-3"> 
                <label for="lastName">회사ID *</label>
                  <input type="text" name="companyId" class="form-control" id="_companyId" placeholder="회사ID *" value="${login.memberid }" readonly="readonly" required="">
                  <div class="invalid-feedback"> Valid last name is required. </div>
                </div>
              </div>
              <div class="row">
                <div class="col-md-4 mb-3"> 
                <label for="country">고용형태</label> 
          			<select class="custom-select d-block w-100" name="emp_Type">
                    	 <option class="hidden"  selected disabled>고용타입</option>
                    	<option value=1 <c:if test='${dto.education == 1}'>selected="selected" </c:if>> 아르바이트 </option>
                    	<option value=2 <c:if test='${dto.education == 2}'>selected="selected" </c:if>> 계약직 </option>
                    	<option value=3 <c:if test='${dto.education == 3}'>selected="selected" </c:if>> 정규직 </option>
                	</select>
                  <div class="invalid-feedback"> Please select a valid country. </div>
                </div>
                <div class="col-md-4 mb-3"> <label for="state">학력사항</label> 
                	<select class="custom-select d-block w-100" name="education">
                    	<option class="hidden"  selected disabled>학력구분 *</option>
                        <option value="0"
                         <c:if test='${dto.education == 0}'>
                         selected="selected" 
                         </c:if>
                         > 무관 </option>
                        <option value="1"
                        <c:if test='${dto.education == 1}'>
                        selected="selected"
                        </c:if> 
                        > 고졸 </option>
                        <option value="2"
                        <c:if test='${dto.education == 2}'>
                        selected="selected"
                        </c:if> 
                        > 전문대졸 </option>
                        <option value="3"
                        <c:if test='${dto.education == 3}'>
                        selected="selected"
                        </c:if> 
                        > 대졸 </option>
                        <option value="4"
                        <c:if test='${dto.education == 4}'>
                        selected="selected"
                        </c:if> 
                        > 석사 </option>
                        <option value="5"
                        <c:if test='${dto.education == 5}'>
                        selected="selected"
                        </c:if> 
                        > 박사 </option>
                  	</select>
                  <div class="invalid-feedback"> Please provide a valid state. </div>
                </div>
                <div class="col-md-4 mb-3"> <label for="state">경력사항</label> 
                	<select class="custom-select d-block w-100" name="career_Type">
                    	<option class="hidden"  selected disabled>경력구분</option>
                        <option value="0"
                        <c:if test="${dto.career_Type == 0}">selected</c:if>>무관</option>
                        <option value="1"
                        <c:if test="${dto.career_Type == 1}">selected</c:if>>신입</option>
                        <option value="2"
                        <c:if test="${dto.career_Type == 2}">selected</c:if>>1~2년</option>
                        <option value="3"
                        <c:if test="${dto.career_Type == 3}">selected</c:if>>2~4년</option>
                        <option value="4"
                        <c:if test="${dto.career_Type == 4}">selected</c:if>>4~6년</option>
                        <option value="5"
                        <c:if test="${dto.career_Type == 5}">selected</c:if>>6~8년</option>
                        <option value="6"
                        <c:if test="${dto.career_Type == 6}">selected</c:if>>8~10년</option>
                      
                  	</select>
                  <div class="invalid-feedback"> Please provide a valid state. </div>
                </div>
              </div>
              <!-- <div class="mb-3"> <label for="address">경력상세</label>
                <input type="text" name="career_Desc" class="form-control"placeholder="경력추가설명 *" >
                <div class="invalid-feedback"> Please enter your shipping address. </div>
              </div> -->
              <div class="row">
                <div class="col-md-6 mb-3"> <label for="country">채용인원</label>
                <input type="number" name="jobVolumn" value="${dto.jobVolumn }" id="_jobVolumn" placeholder="채용인원(숫자로 입력) *" min="0" max="99" class="form-control">
                  <div class="invalid-feedback"> Please select a valid country. </div>
                </div>
                <div class="col-md-6 mb-3"> <label for="zip">급여</label>
                  <input type="number" min="0" max="9999999" value="${dto.salary }" name="salary" class="form-control" id="_jobVolumn" placeholder="급여입력(0은 회사내규, 1은 면접후결정)" required="">
                  <div class="invalid-feedback"> Zip code required. </div>
                </div>
               
               <br><br>
              
              <div class="col-md-6 mb-3"> <label for="address">공고제목</label>
                <input type="text" name="jobTitle" value="${dto.jobTitle }" class="form-control" id="_jobTitle" placeholder="공고제목입력" required="">
                <div class="invalid-feedback"> Please enter your shipping address. </div>
              </div>
              
              <div class="row">
              <div class="col-md-10 mb-6"> <label for="address">공고상세내역</label>
              	 <textarea rows="10" cols="100 px" name="jobContent">${dto.jobContent }             
                 </textarea>
              </div>
              </div>
              
              </div>
              <hr class="mb-4">
              
        
        
        
        
        <!-- <div class="container"> -->
        <div class="row">
          <div class="col-md-12">
            <h1 class="" id="_writeFrm2">입력내역2(직업분류입력)</h1>
          </div>
        </div>
        
         <div class="row" >
          <span class="col-md-4" id="_buscodeList1">
            	<p>직무분류1</p>
            	<!-- 데이터들어오는자리 -->
          </span>
          <span class="col-md-4" id="_buscodeList2">
            	<p>직무분류2</p>
                <!-- 데이터들어오는자리 -->
			</span>
          <div class="col-md-4" style="" id="_buscodeList3">
           	<p>직무분류3</p>
                <!-- 데이터들어오는자리 -->
				</div>
			</div>
			<p id="selectResult"></p>
     
        
        <div class="row">
          <div class="col-md-12">
            
              <div class="form-group">
                  	<input type="text" id="sample6_postcode" placeholder="우편번호">
					<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
					<input type="text" name="area1Name" id="sample6_address" placeholder="주소" value="${dto.area1Name}&nbsp;${dto.area2Name}"><br>
					<input type="text" name="area2Name" id="sample6_detailAddress" placeholder="상세주소">
					<input type="text" id="sample6_extraAddress" placeholder="참고항목">
			</div>
         
          	
          </div>
        </div>
        
        <hr class="mb-4">
        
        
        <div class="container">
        <h4 class="mb-3" id="_writeFrm3">입력사항3</h4>
    
       
        <div class="row">
          <div class="col-md-6 mb-3"> <label for="cc-name">담당자명</label>
            <input type="text" class="form-control" name="manager" id="_manager" placeholder="담당자명" > <small class="text-muted">Full name as displayed on card</small>
            <div class="invalid-feedback"> Name on card is required </div>
          </div>
          <div class="col-md-6 mb-3"> <label for="cc-number">전화번호</label>
            <input type="text" class="form-control" name="managerPhone" id="_managerPhone" placeholder="담당자연락처" >
            <div class="invalid-feedback"> Credit card number is required </div>
          </div>
        </div>
        
        <div class="row">
          <div class="col-md-12">
            <div class="mb-3"> <label for="email">이메일&nbsp;<span class="text-muted">(Optional)</span></label>
              <input type="email" class="form-control" name="managerEmail" id="_managerEmail" placeholder="you@example.com">
              <div class="invalid-feedback"> Please enter a valid email address for shipping updates. </div>
            </div>
          </div>
        </div>
        
        <div class="row">
          <div class="col-md-3 mb-3"> <label for="cc-expiration">공고시작일</label>
            <input type="datetime-local" value="${dto.jobStart }" name="jobStart" class="form-control" id="_jobStart" placeholder="공고시작일" required="">
            <div class="invalid-feedback"> Expiration date required </div>
          </div>
          <div class="col-md-3 mb-3"> <label for="cc-expiration">공고종료일</label>
            <input type="datetime-local" value="${dto.jobEnd }" name="jobEnd" class="form-control" id="_jobEnd" placeholder="공고종료일" required="">
            <div class="invalid-feedback"> Security code required </div>
          </div>
        </div>
        
        
        
        
        
        
        
        <div class="row">
          
          <div class="col-md-12"><a class="btn btn-secondary" href="javascript:myFunction();">submit</a></div>
        </div>
        </form>
        <hr class="mb-4">
        </div>
       </div>
        
      
    
    <div class="py-5 text-muted text-center">
      
        <div class="row">
          <div class="col-md-12 my-4">
            <div class="col-md-12 text-center d-md-flex align-items-center"> <i class="d-block fa fa-stop-circle fa-2x mr-md-5 text-primary"></i>
              <ul class="nav mx-md-auto d-flex justify-content-center">
                <li class="nav-item"> <a class="nav-link active" href="#">Home</a> </li>
                <li class="nav-item"> <a class="nav-link" href="#">Features</a> </li>
                <li class="nav-item"> <a class="nav-link" href="#">Pricing</a> </li>
                <li class="nav-item"> <a class="nav-link" href="#">About</a> </li>
              </ul>
              <div class="row">
                <div class="col-md-12 d-flex align-items-center justify-content-md-between justify-content-center my-2"> <a href="#">
                    <i class="d-block fa fa-facebook-official text-muted fa-lg mx-2"></i>
                  </a> <a href="#">
                    <i class="d-block fa fa-instagram text-muted fa-lg mx-2"></i>
                  </a> <a href="#">
                    <i class="d-block fa fa-twitter text-muted fa-lg ml-2"></i>
                  </a> </div>
              </div>
            </div>
            <p class="mb-1" contenteditable="true">© 2021 1hara Corp.</p>
            <ul class="list-inline">
              <li class="list-inline-item">
                <a href="#">Privacy</a>
              </li>
              <li class="list-inline-item">
                <a href="#">Terms</a>
              </li>
              <li class="list-inline-item">
                <a href="#">Support</a>
              </li>
            </ul>
          </div>
        </div>
    
    
    </div>
    <!-- <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script> -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <script src="assets/js/validation.js" style=""></script>
  </div>
  <!-- <pingendo onclick="window.open('https://pingendo.com/', '_blank')" style="cursor:pointer;position: fixed;bottom: 20px;right:20px;padding:4px;background-color: #00b0eb;border-radius: 8px; width:220px;display:flex;flex-direction:row;align-items:center;justify-content:center;font-size:14px;color:white">Made with Pingendo Free&nbsp;&nbsp;<img src="https://pingendo.com/site-assets/Pingendo_logo_big.png" class="d-block" alt="Pingendo logo" height="16"></pingendo> -->
  
  
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">



function myFunction() {
 
    var busValue = $("input[name='buscode']").length;
    var busData = new Array(busValue);
    
    for(var i=0; i<busValue; i++){                          
    	busData[i] = $("input[name='buscode']")[i].value;
    }
    
   
    
    $("#_recruitcrefrm").attr("action", "recuruitcreateAf.do").submit();

    
}

function update() {
	
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


//첫번째 BUSCODE1 DATA를 받아서 체크박스로 뿌려주는 코드 
$(document).ready(function() {
	
	
$.ajax({
	url : "./buscodeListData.do", 
	type : "get", 
	success:function(list){
		//alert('success');
		//alert(list);
		
		//JSTL로 받아온 지역 정보의 대분류 네임이 서울이면 (일단 자바스크립트 변수로 변경) selected 조건을 줌 
		var area1Name = '<c:out value="${dto.area1Name}"/>';
		
		$(".list_col1").remove();
		
		$.each(list, function(i, val){

			//alert(val.jobSeq);

			//let app = "<input type='checkbox' class='list_col' name='buscode' value='"+val.buscode1+"' class='form-control'>"+val.buscodename1
			let app = "<div>"+
					"<input type='radio' class='list_col1' id='buscode1'"+ 
					
					"name='buscode1' value='"+val.buscode1+"'><label for='huey'>"+val.buscodename1+"</label>"+
					"</div>";
				
				$("#_buscodeList1").append(app);
		});
	}, 
	error:function(){
		alert('error');
	}
	
 });
 



//두번째 BUSCODE2 DATA를 받아서 체크박스로 뿌려주는 코드 
$(document).on("change",".list_col1", function(){
	
	if($(this).is(":checked")){
        //alert("체크");
        //alert($(this).val());
        let buscode = $(this).val();
        
        $.ajax({
        	url : "./buscode2ListData.do", 
        	type : "get", 
        	data: {"buscode":buscode}, 
        	success:function(list){
        		//alert('success');
        		//alert(list);
        		
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

//input Tag (BUSCODE3)에 동적 id를 주기 위한 인덱스용 넘버 
let count = 1;

//마지막 BUSCODE3 DATA를 받아서 체크박스로 뿌려주는 코드 
$(document).on("change",".list_col2", function(){
	
	if($(this).is(":checked")){
        //alert("체크");
        //alert($(this).val());
        let buscode = $(this).val();
        
        $.ajax({
        	url : "./buscode2ListData.do", 
        	type : "get", 
        	data: {"buscode":buscode}, 
        	success:function(list){
        		//alert('success');
        		//alert(list);
        		
        	
        		//$("_buscodeList3 *").remove(); //내부 요소만 삭제 
        		
        		$(".list_col3").remove(); 
        		
        		var parent = document.getElementById('_buscodeList3');
        		var var1   = parent.getElementsByTagName('br');

        		for(var i = var1.length; i--;) {
        		    var1[i].parentNode.removeChild(var1[i]);
        		}
        		
        		
        		
        		$.each(list, function(i, val){
		        	let app = "";
        			
		        	//stackname = 밑에태그 아이디.val (elements) 배열로 해야될듯 
        			
        			if(val.busname == stackname){
        				app = "<span class='list_col3'>"+
						  "<input type='checkbox' class='list_col3' name="+count+" id='buscode3data"+count+"' value='"+val.busname+"' class='form-control' checked>"+val.busname+
						  "</span>";
					}else{
        				app = "<span class='list_col3'>"+
						  "<input type='checkbox' class='list_col3' name="+count+" id='buscode3data"+count+"' value='"+val.busname+"' class='form-control'>"+val.busname+
						  "</span>";
					}
        					
							   	  
						 if((i+1)%2==0){
	        				app += "</br>";
	        			}
						   

				$("#_buscodeList3").append(app);
				count+=1;
        		
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

//span Tag에 동적 id를 주기 위한 인덱스용 넘버 
let cnt = 1;

$(document).on("change",".list_col3", function(){
	
	let app ="";
	
	
	if($(this).is(":checked")){
		
		let buscode = $(this).val();
		var count = $(this).attr('name');
		alert(buscode);
		
		app = "<span class=arrBusdata id=selectedBuscode"+cnt+">"+buscode+
			  "<input name='buscode' type='hidden' value="+buscode+">"+
			  "<a onclick='delSelBuscode("+cnt+","+count+")'>"+
			  "<img alt='왜안뜨지' src='ma.jpg' style='width:30px; height:30px;'>"+
			  "</a>"+"</span>"+"&nbsp;&nbsp;";
			  

	  	var id = $(this).attr("id");
		//alert(id);
		let input = document.getElementById(id);
		//HTML data 속성 사용
		input.dataset.code = 'selectedBuscode'+cnt;
		
		$("#selectResult").append(app);
		cnt += 1;
		
	}
	
	
	//체크박스에서 체크 해제 했을때 체크박스 해제가 될때 밑에 부분에 적재되있는 같은 데이터의 span태그도 삭제
	
	if($(this).is(":checked") == false){
		
		//alert($(this).data("code"));
		//data 속성 가져오기 (data-code) 
		var selectedBuscode = $(this).data("code");
		//alert(selectedBuscode);
		document.getElementById(selectedBuscode).remove();
	}
	
	
});


//밑에 쌓여있는 span태그에서 X버튼을 눌렀을때 위에 체크박스도 같이 체크 해제가 되도록 해주는 코드  
function delSelBuscode(cnt, count) {
	//alert(count);
	
	var spanid = "selectedBuscode"+cnt;
	//alert(spanid);
	
	var buscodeTag ="buscode3data"+count;
	//alert(buscodeTag);
	
	const spantag = document.getElementById(spanid);
	//alert(spantag);
	
	//스판태그 삭제
	document.getElementById(spanid).remove();
	
	//체크박스 체크해제
	document.getElementById(buscodeTag).checked = false;


}


</script>
  
  
  
  
  
  
  
  
</body>

</html>