<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="bit.com.a.dto.RecruitDto"%>

<%
RecruitDto recuDto = (RecruitDto)request.getAttribute("dto");

%>    
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- 전체 공통 스크립트 임포트 -->
  <c:import url="script.jsp" charEncoding="utf-8"/>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <!-- <link rel="stylesheet" href="static/csss/bootstrap.css" media="all"> -->
  
  <link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">
  <!-- 카카오맵스 -->
  <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=685fcbb766340d7c8812f4e0a29a6661&libraries=services"></script>
</head>

<body>


<c:import url="header.jsp" charEncoding="utf-8"/>


 <div class="py-0 pt-3">
    <div class="container">
      <div class="row">
        <div class="col-md-8">
          <h3 class="">${dto.companyname}&nbsp; &nbsp;&nbsp;<a style="color:red" class="btn btn-secondary" href=""><i class="fa fa-star fa-fw fa-1x py-1"></i></a><br>${dto.jobTitle}</h3>
        </div>
        <div class="col-md-4 text-right" style="">
          <a class="btn btn-secondary" href="javascript:jobFavorite(${dto.jobSeq })"><i class="fa fa-star fa-fw fa-1x py-1"></i></a>
          <a class="btn btn-secondary" href="#">입사지원</a>
          <a class="btn btn-secondary" href="javascript:updateRecruit(${dto.jobSeq })">수정하기</a>
          <a class="btn btn-secondary" href="javascript:deleteRecruit(${dto.jobSeq })">삭제</a></div>
       </div>
          
      </div>
      <hr class="mb-12">
      <div class="row">
      </div>
    </div>
  </div>
  <div class="">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <li>경력&nbsp; &nbsp; &nbsp; &nbsp; <font>${dto.career_Desc }</font>
          </li>
          <li>학력&nbsp; &nbsp; &nbsp; &nbsp; <font>${dto.eduname }</font>
          </li>
        </div>
        <div class="col-md-6">
          <li>근무형태&nbsp; &nbsp; &nbsp;&nbsp;<font>${dto.emp_name }</font>
          </li>
          <li>직군&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
          <span>
          	<c:forTokens var="item" items="${dto.busname}" delims=":">
						    ${item}
			</c:forTokens>
          </span>
          
          </li>
          <li>채용인원&nbsp; &nbsp; &nbsp; ${dto.jobVolumn }</li>
          <li>급여&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<font>${dto.salary }&nbsp;만원</font>
          </li>
          <li>근무지역&nbsp; &nbsp; &nbsp;&nbsp;<font>${dto.area1Name }&nbsp;${dto.area2Name }</font>
          <input type="hidden" id="regdate" value="${dto.regdate }">
          <input type="hidden" id="regdate" value="${dto.buscode }">
          </li>
        </div>
      </div>
    </div>
  </div>
  <div class="">
    <div class="container">
      <div class="row">
        <div class="col-md-12" style="float:left;">
          <li class="text-right mb-3">조회수&nbsp;&nbsp;<font>${dto.readcount }</font>
          </li>
        </div>
      </div>
    </div>
  </div>
  <div class="py-5" style="" >
    <div class="container">
      <div class="row">
        <div class="col-md-12"> ${dto.jobContent } </div>
      </div>
    </div>
  </div>
  <div class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-4 bg-light border-right" style="">
          <dl class="info_period"> 남은기간 <p> 남은 시간 타이머 </p>
            <dt>시작일</dt>
            <dd>${dto.jobStart }</dd>
            <dt class="end">마감일</dt>
            <dd>${dto.jobEnd }</dd>
          </dl>
        </div>
        <div class="col-md-8 bg-light" style="">
          <div> 지원방법&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;일하라 입사지원 </div>
          <div>
            <a class="btn btn-secondary" href="#">입사지원</a>
          </div>
        </div>
        <div class="text-primary" style=""> 마감일은 기업의 사정에 따라 조기 마감될수 있습니다. 
        <a class="btn btn-secondary" href="recuruitlist.do">목록으로</a>
        </div>
      </div>
    </div>
  </div>
  <div class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-12"> 지원현황(선택) </div>
      </div>
    </div>
  </div>
  <div class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-4 bg-light border-right" style="">
          <dl class="info_period"> 
          
          	<p>담당자 및 근무지</p> 
            <dt id="keyword1">${dto.area1Name } ${dto.area2Name } ${dto.detailAdress1 } ${dto.detailAdress2 }</dt>
            <dd>
            
            	<p style="margin-top:-12px">
			    <em class="link">
			       <!--  <a href="javascript:void(0);" onclick="window.open('http://fiy.daum.net/fiy/map/CsGeneral.daum', '_blank', 'width=981, height=650')">
			            혹시 주소 결과가 잘못 나오는 경우에는 여기에 제보해주세요.
			        </a> -->
			    </em>
			</p>
			<div id="map" style="width:100%;height:350px;"></div>
				            
	        
	            
            
            
            </dd>
          </dl>
        </div>
        <div class="col-md-8 bg-light" style="" id="_mgData">
          <div> 담당자명&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${dto.mgName }</div>
          <div> 담당자연락처&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${dto.mgPhone }</div>
          <div> 담당자이메일주소&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${dto.mgEmail }</div>
          
        </div>
        <div class="text-primary" style=""> 담당자 정보 수정을 원하시면 버튼을 클릭하세요 &nbsp;&nbsp;&nbsp;
        <a class="btn btn-secondary" href="javascript:mgUpdate()">담당자 정보수정</a>
        </div>
      </div>
    </div>
  </div>
  <div class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-12"> 기업정보(위치정보-지도포함) </div>
      </div>
    </div>
  </div>
  <div class="py-5">
    <div class="container">
      <div class="row"> 인기기업 HOT10 <div class="col-md-12"> 옆으로 넘어가는 슬라이딩 </div>
      </div>
    </div>
  </div>
  <div class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-12"> 광고 </div>
      </div>
    </div>
  </div>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous" style=""></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous" style=""></script>
  <!-- 카카오맵스 -->
  <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  
  <script type="text/javascript">
function deleteRecruit(jobSeq) {
	location.href="deleteRecruit.do?jobSeq="+jobSeq;
}
function updateRecruit(jobseq) {
	location.href ="RecruitUpdate.do?jobseq="+jobseq;
}
function mgUpdate() {
	$("#_mgData *").remove(); //내부 요소만 삭제
	
	var app = "";
	
	app +=  "<form  id='_mgFrm'  method='get'>"+
			"<input type='text' id='sample6_postcode' placeholder='우편번호'>"+
			"<input type='button' onclick='sample6_execDaumPostcode()' value='우편번호 찾기'><br>"+
			"<input type='text' name='area1Name' id='sample6_address' placeholder='주소' value='"+"${dto.area1Name } ${dto.area2Name} ${dto.detailAdress1 }"+"'><br>"+
			"<input type='text' name='area2Name' id='sample6_detailAddress' placeholder='상세주소' value='"+"${dto.detailAdress2 }"+"'>"+
			"<input type='hidden' name='jobSeq'   value='"+"${dto.jobSeq }"+"'>"+
			"<input type='text' id='sample6_extraAddress' placeholder='참고항목'>"+
			"<input type='text' class='form-control' name='mgName' value='"+"${dto.mgName }"+"' id='_manager' placeholder='담당자명' > "+
     		"<input type='text' class='form-control' name='mgPhone' value='"+"${dto.mgPhone }"+"' id='_managerPhone' placeholder='담당자연락처' >"+
     		"<input type='email' class='form-control' name='mgEmail' value='"+"${dto.mgEmail }"+"' id='_managerEmail' placeholder='you@example.com'>"+
       		"<input type='datetime-local' value='"+"${dto.jobStart }"+"' name='jobStart' class='form-control' id='_jobStart' placeholder='공고시작일' required=''>"+
     		"<input type='datetime-local' value='"+"${dto.jobEnd }"+"' name='jobEnd' class='form-control' id='_jobEnd' placeholder='공고종료일' required=''>";
    app += "<button type='button' value='수정하기' onclick='mgUpdateAf()'>수정하기</button>";
     		
     		$("#_mgData").append(app);
     		
     var start = "${dto.jobStart}";
     var end = "${dto.jobEnd}";
     
     start = start.replace(" ", "T");
     end = end.replace(" ", "T");
     alert(start);
     alert(end);
     
     $("#_jobStart").val(start);
     $("#_jobEnd").val(end);
     
     
}



function mgUpdateAf() {
	
	
	
	$("#_mgFrm").attr("action", "mgDetailUpdate.do").submit();
	
	location.reload();
}
</script>


<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

// 주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();

var dAdress = '${dto.area1Name }'+' '+ '${dto.area2Name }'+' '+ '${dto.detailAdress1 }'; 

// 주소로 좌표를 검색합니다
geocoder.addressSearch(dAdress, function(result, status) {

    // 정상적으로 검색이 완료됐으면 
     if (status === kakao.maps.services.Status.OK) {

        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker = new kakao.maps.Marker({
            map: map,
            position: coords
        });

        // 인포윈도우로 장소에 대한 설명을 표시합니다
        var infowindow = new kakao.maps.InfoWindow({
            content: '<div style="width:150px;text-align:center;padding:6px 0;">근무지</div>'
        });
        infowindow.open(map, marker);

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
    } 
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

function jobFavorite(sjobSeqeq) {
	alert(jobSeq);
	
	location.href = "favoriteJob.do?jobSeq="+jobSeq;
	
}

</script>
	

</body>
</html>