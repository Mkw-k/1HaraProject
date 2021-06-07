<%@page import="bit.com.a.dto.BusinessDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>


<c:import url="header.jsp" charEncoding="utf-8" >
<c:param name="query" value="민원" />
<c:param name="method" value="get" />
</c:import>




<head>
<meta charset="utf-8">
<!-- 제이쿼리 -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- PAGE settings 페이지네이션-->
<link rel="icon" href="https://templates.pingendo.com/assets/Pingendo_favicon.ico">
<title>Checkout</title>
<!-- 핀젠도 프론트 ui  -->
<meta name="description" content="Wireframe design of a checkout form by Pingendo">
<meta name="keywords" content="Pingendo bootstrap example template wireframe checkout form">
<meta name="author" content="Pingendo">
<!-- CSS dependencies -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
<!-- 외부css파일과 연결 -->
<link rel="stylesheet" href="./css/wireframe.css">

<!-- CK-editor -->
<link rel="stylesheet" href="ckeditor5/sample/styles.css">
<script src="ckeditor5/build/ckeditor.js"></script>

<%-- <link rel="stylesheet" href="${pageContext.request.contextPath }/WEB-INF/lib/ckeditor5/sample/styles.css"> --%>
<%-- <script src="${contextPath }/WEB-INF/lib/ckeditor5/build/ckeditor.js"></script> --%>

<style type="text/css">
/* buscode selected 된거 쌓는곳 */
#selectResult{
	color: red;
}
</style>

</head>

<body class="">
  <div class="py-5">
    <div class="container">
      <div class="row">
        <div class="text-center col-md-7 mx-auto">
          <h1>채용공고 등록</h1>
          <p class="lead">채용공고 등록 페이지입니다 (*)가 들어간 부분은 빠짐없이 입력해주세요</p>
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
          <a class="btn btn-primary" href="#_writeFrm1">입력내역1</a>
          <a class="btn btn-primary" href="#_writeFrm2">입력내역2</a>
          <a class="btn btn-primary" href="#_writeFrm3" style="">입력내역3</a>
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
                        <c:if test="${dto.career_Type == 2}">selected</c:if>>1년</option>
                        <option value="3"
                        <c:if test="${dto.career_Type == 3}">selected</c:if>>2년</option>
                        <option value="4"
                        <c:if test="${dto.career_Type == 4}">selected</c:if>>3년</option>
                        <option value="5"
                        <c:if test="${dto.career_Type == 5}">selected</c:if>>4년</option>
                        <option value="6"
                        <c:if test="${dto.career_Type == 6}">selected</c:if>>5년</option>
                        <option value="6"
                        <c:if test="${dto.career_Type == 7}">selected</c:if>>6년</option>
                        <option value="6"
                        <c:if test="${dto.career_Type == 8}">selected</c:if>>7년</option>
                        <option value="6"
                        <c:if test="${dto.career_Type == 9}">selected</c:if>>8년</option>
                        <option value="6"
                        <c:if test="${dto.career_Type == 10}">selected</c:if>>9년</option>
                        <option value="6"
                        <c:if test="${dto.career_Type == 11}">selected</c:if>>10년</option>
                      
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
              
             
              
              </div>
               <div class="row">
              <div class="col-md-12 mb-12">
	               <p><label for="address">공고상세내역</label></p>
	              	<div class="editor" >   	
	              	${dto.jobContent }  </div>
	              	
	              	
	              	<input type="hidden" name="jobContent" id="_jobContent">              	 
	              
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
					<input type="text" name="area1Name" id="sample6_address" placeholder="주소" value="${dto.area1Name } ${dto.area2Name}"><br>
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
        
        
        
        
        
        <!-- 채용공고 수정일경우 : 수정일경우엔 jobSeq가 히든 태그로 존재함 and 버튼이 수정하기 버튼  --> 
        <!-- 작성하기 일경우 : jobSeq 존재안함  -->
        <div class="row">
         	<c:choose> 
          		<c:when test="${dto.certifyUpdate == 'YES'}">
          			<div class="col-md-12"><a class="btn btn-secondary" href="javascript:jobUpdate();">수정하기</a></div>
          			<input type="hidden" value="${dto.jobSeq }" id="_jobSeq" name="jobSeq">          		
          		</c:when> 
        	    <c:otherwise>
          			<div class="col-md-12"><a class="btn btn-secondary" id="submit" href="javascript:jobRegi();">작성하기</a></div>
          		</c:otherwise> 
          	</c:choose> 
          	
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
var html = "";
//$(".editor").html(html);


function jobRegi() {
 
    var busValue = $("input[name='buscode']").length;
    var busData = new Array(busValue);
    
    for(var i=0; i<busValue; i++){                          
    	busData[i] = $("input[name='buscode']")[i].value;
    }
    
    /* var data = CKEDITOR.instances.editor.getData();
    $("#_jobContent").val(data);
    alert($("#_jobContent").val(data)); */
    
    alert($(".editor").text());
    $("#_jobContent").val($(".editor").text());
    
    
    
   
    
    $("#_recruitcrefrm").attr("action", "recuruitcreateAf.do").submit();
    
}
function jobUpdate() {
	alert($("#_jobSeq").val());
	
	//alert("변경시작");
	var areaname = $("#sample6_address").val();
	
	areaname = areaname.split(" ");
	
	alert(areaname);
	//Area1Name쪽 변경된 데이터 변경 (자바쪽에서 nbsp split이 어려워서 nbsp를 ,로 변경)
	$("#sample6_address").val(areaname);
	
	//alert($("#_areaName").val());
	$("#_recruitcrefrm").attr("action", "recuruitupdateAf.do").submit();
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
	
 }); // ajax
 
}); // document ready 
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
        		
        		//부모요소(id:_buscodeList3) 받아서 변수에 넣기 // 부모요소들 안에 있는 br태그들 변수에 넣기(var1) 
        		var parent = document.getElementById('_buscodeList3');
        		var var1   = parent.getElementsByTagName('br');
				
        		//br요소들 삭제 
        		for(var i = var1.length; i--;) {
        		    var1[i].parentNode.removeChild(var1[i]);
        		}
        		
        		
        		
        		//기존에 체크 되어있던 값은 체크가 되어있도록 속성 설정해주는 코드 초기셋팅 
        		var stackValue = $("input[name='buscode']").length;
			    var stackData = new Array(stackValue);
			     //alert(stackValue);
			     
				//stackData 배열에 name값이 buscode인 input태그의 value값을 반복문을 통해 모두 stackData배열에 넣어줌 (들어가는 값은 실제 buscode값)
			     for(var i=0; i<stackValue; i++){                          
			    	 stackData[i] = $("input[name='buscode']")[i].value;
			     }
			     //alert("길이"+stackData.length);
			     
			     
			     /* $.each(stackData, function(i, data){
			    	 alert("이게 값임"+data);
			     }); */
        		
        		
        		
        		$.each(list, function(i, val){
		        	let app = "";
        			
		        
		        	
				//value값 buscode로 바꿧음 (busname에서)
		        		app += "<span class='list_col3'>"+
					  	"<input type='checkbox' class='list_col3' name="+count+" id='buscode3data"+count+"' value='"+val.buscode+"' data-value='"+val.busname+"' class='form-control'>"+val.busname+
					  	"</span>"; 
							   	  
						 if((i+1)%2==0){
	        				app += "</br>";
	        			}
						 
				$("#_buscodeList3").append(app);
				
        		
				//기존에 체크 되어있던 값은 체크가 되어있도록 속성 설정해주는 코드 최종진행
				//each반복문을 통해 현재 생성되는 list_col3의 아이디값을 buscodeTag 변수에 저장  
				var buscodeTag ="buscode3data"+count;
				
				//stackData 배열에 들어가 있는값 (buscode)와 each문을 통해 들어와서 생성되는 input태그의 val.buscode의 값이 같으면 그 아이디의 속성조건을 checked로 변경
				for(var i=0; i<stackValue; i++){                          
			    	if(stackData[i] == val.buscode){
			    		document.getElementById(buscodeTag).checked = true;
			    	}
			     }
				
				
				
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
//span Tag에 동적 id를 주기 위한 인덱스용 넘버 
let cnt = 1;
var selectedBuscode = "";
//소분류 체크박스가 변경될때 실행 
$(document).on("change", ".list_col3" , function(){
	//$(".list_col3").change(function(){
	
	let app ="";
	
	
	
		//if($("input:checkbox['.list_col3']").is(":checked") == true){ 
		//if($(this).is(":checked") == true){
		if($(this).is(":checked") == true){
		
		//실제로 buscode가 들어옴 
		let buscode = $(this).val();
		var count = $(this).attr('name');
		//데이터 밸류 값으로 busname값을 받아옴 
		let busname = $(this).data("value");
		alert("버스네임(데이터밸류네임):"+busname);
		//alert(buscode);
		
		//밑에 stack에 만들어지는 input태그의 value 값은 buscode이다 
		app = "<span class=arrBusdata id=selectedBuscode"+cnt+">"+busname+
			  "<input name='buscode' type='hidden' value='"+buscode+"'>"+
			  "<a onclick='delSelBuscode("+cnt+","+count+")'>"+
			  "<img alt='왜안뜨지' src='ma.jpg' style='width:30px; height:30px;'>"+
			  "</a>"+"</span>"+"&nbsp;&nbsp;";
			  
	  	var id = $(this).attr("id");
		//alert(id);
		let input = document.getElementById(id);
		
		$(this).removeData('code');
		
		 //HTML data 속성 사용
		input.dataset.code = 'selectedBuscode'+cnt;
		
		//alert('datacode 생성: '+'selectedBuscode'+cnt);
		
		//alert('datacode 리얼: ' + $(this).data("code"));
		
		$("#selectResult").append(app);
		cnt += 1;
		
	}
	
	
	
	//체크박스 해제가 될때 밑에 부분에 적재되있는 같은 데이터의 span태그도 삭제
	else if($(this).is(":checked") == false){
		//alert("위에 셀렉코드 : "+$(this).data("code"));
		
		//밑에 선택(스택)된 span Tag의 아이디 가져오기 
		//->input tag의 data 속성 가져오기 (data-code) : data코드는 밑에 stack되는 span tag의 아이디 값과 동일함 
		
		selectedBuscode = $(this).data("code");
		//alert('위에 셀렉코드 :'+ selectedBuscode);
		
		document.getElementById(selectedBuscode).remove();
	}
	
	
});
//밑에 쌓여있는 span태그에서 X버튼을 눌렀을때 위에 체크박스도 같이 체크 해제가 되도록 해주는 코드  
function delSelBuscode(cnt, count) {
	//alert(count);
	
	var spanid = "selectedBuscode"+cnt;
	alert('밑에셀렉코드 :'+spanid);
	
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
  
  
  <script>BalloonEditor
	.create( document.querySelector( '.editor' ), {
		
		toolbar: {
			items: [
				'heading',
				'|',
				'bold',
				'italic',
				'link',
				'bulletedList',
				'numberedList',
				'|',
				'outdent',
				'indent',
				'|',
				'imageUpload',
				'blockQuote',
				'insertTable',
				'fontColor',
				'fontSize',
				'fontBackgroundColor',
				'fontFamily',
				'highlight',
				'imageInsert',
				'mediaEmbed',
				'undo',
				'redo'
			]
		},
		language: 'ko',
		image: {
			toolbar: [
				'imageTextAlternative',
				'imageStyle:full',
				'imageStyle:side',
				'linkImage'
			]
		},
		table: {
			contentToolbar: [
				'tableColumn',
				'tableRow',
				'mergeTableCells'
			]
		},
		licenseKey: '',
		
		
	} )
	.then( editor => {
		window.editor = editor;
		
		
		
		
		
		
	} )
	.catch( error => {
		console.error( 'Oops, something went wrong!' );
		console.error( 'Please, report the following error on https://github.com/ckeditor/ckeditor5/issues with the build id and the error stack trace:' );
		console.warn( 'Build id: x1h6xk4rd95i-65gjhojljtvk' );
		console.error( error );
	} );
  
	//Assuming there is a <button id="submit">Submit</button> in your application.
  document.querySelector( '#submit' ).addEventListener( 'click', () => {
      /* const editorData = editor.getData();
      
      alert(editorData);
      $("#_jobContent").val(editorData); */
      // ...
  } );
  
 
	


	
	
	
	</script>
  
  
  
  
  
</body>

</html>