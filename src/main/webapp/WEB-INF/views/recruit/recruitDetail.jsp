<%@page import="bit.com.a.dto.ResumeDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="bit.com.a.dto.RecruitDto"%>

<%
RecruitDto recuDto = (RecruitDto)request.getAttribute("dto");

%>

<%
List<ResumeDto> resumelist =(List<ResumeDto>) request.getAttribute("resumelist");
System.out.println("resumelist" +resumelist);
%>

<!DOCTYPE html>
<html>

<head>
  <!-- CK-editor -->
<link rel="stylesheet" href="ckeditor5/sample/styles.css">
<script src="ckeditor5/build/ckeditor.js"></script>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- 전체 공통 스크립트 임포트 -->
  <c:import url="script.jsp" charEncoding="utf-8"/>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <!-- <link rel="stylesheet" href="static/csss/bootstrap.css" media="all"> -->

  <link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">
  <!-- 카카오맵스 -->
  <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=685fcbb766340d7c8812f4e0a29a6661&libraries=services"></script>


  <!-- 입사지원 모달 -->
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


<style type="text/css">
.star-on {
  color: gray;
}
.star-off {
  color: #7cccc2;
}
</style>

</head>

<style>
.modal {
  text-align: center;
}

@media screen and (min-width: 768px) {
  .modal:before {
    display: inline-block;
    vertical-align: middle;
    content: " ";
    height: 100%;
  }
}

.modal-dialog {
  display: inline-block;
  text-align: left;
  vertical-align: middle;
}
</style>

<body>


<c:import url="header.jsp" charEncoding="utf-8"/>


 <div class="py-0 pt-3">
    <div class="container">
      <div class="row">
        <div class="col-md-8">
          <h3 class="">${dto.companyname}&nbsp; &nbsp;&nbsp;
          	
          		<c:choose>
          		<c:when test="${dto.favoriteCom >0 }">
          					<a style="color:red" class="btn btn-secondary red" href="javascript:dropFavoriteCom(${dto.jobSeq }, '${dto.companyId }', '${login.memberid }')">
          					<i class="fa fa-star icon-gray fa-fw fa-1x py-1"></i></a>
          		</c:when>
          		<c:otherwise>
          					<a class="btn btn-secondary red" href="javascript:comFavorite(${dto.jobSeq }, '${dto.companyId }', '${login.memberid }')">
          					<i class="fa fa-star icon-gray fa-fw fa-1x py-1"></i></a>
          		</c:otherwise>
          	</c:choose>
          	
         
          
          <br>${dto.jobTitle}</h3>
        </div>
        <div class="col-md-4 text-right" style="">

          <button type="button" class="btn btn-primary" id="_apply" data-toggle="modal" data-target="#exampleModal">입사지원</button>


          	<c:choose>
          		<c:when test="${dto.favoriteJob >0 }">
          					<a style="color:red" class="btn btn-secondary" href="javascript:dropFavoriteJob(${dto.jobSeq }, '${login.memberid }')">
				          <i class="fa fa-star icon-gray fa-fw fa-1x py-1"></i>
				          </a>
          		</c:when>
          		<c:otherwise>
          					<a class="btn btn-secondary" href="javascript:jobFavorite(${dto.jobSeq }, '${login.memberid }')">
				            <i class="fa fa-star icon-gray fa-fw fa-1x py-1"></i>
				            </a>
          		</c:otherwise>
          	</c:choose>



          <a class="btn btn-secondary" href="javascript:updateRecruit(${dto.jobSeq })">수정하기</a>
          <a class="btn btn-secondary" href="javascript:deleteRecruit(${dto.jobSeq })">삭제</a>
          </div>
       </div>





								 <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
								  <div class="modal-dialog" role="document" style="width: -webkit-fill-available;">
								    <div class="modal-content">
								      <div class="modal-header">
								        <h5 class="modal-title" id="exampleModalLabel" style="width: 700px;">입사지원</h5>
								        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
								          <span aria-hidden="true">×</span>
								        </button>
								      </div>
								      <div class="modal-body">
								       <table>
								       <colgroup>
								       <col width="400"><col width="50">
											<tr><td colspan="2">이력서list</td></tr>
										<%
										for(int i=0; i<resumelist.size(); i++){
										%>

											<tr>
											<td><a href="Resumedetail.do?seq=<%=resumelist.get(i).getResumeseq()%>"><%=resumelist.get(i).getResumetitle() %></a></td>
											<td><button type="button" class="btn btn-primary" onclick="javascript:jobApply('${dto.jobSeq}','${login.memberid }','<%=resumelist.get(i).getResumeseq()%>')">지원하기</button></td>
											</tr>
										<%
										}
										%>

									</table>
								      </div>
								      <div class="modal-footer">
								        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
								      </div>
								    </div>
								  </div>
								</div>




























      </div>
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
        <hr class="mb-12">
          <li class="text-right mb-3">조회수&nbsp;&nbsp;<font>${dto.readcount }</font>
          </li>
        </div>
      </div>
    </div>
  </div>
  <div class="py-5" style="" >
    <div class="container">
      <div class="row">
        <div class="col-md-12">
				<div class="editor" >
	              	${dto.jobContent }  </div>
		</div>
      </div>
    </div>
  </div>
  <div class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-4 bg-light border-right" style="">
          <dl class="info_period">
            <dt>남은시간</dt>
            <dd><em id="timeDeal"></em></dd>
            <dt>시작일</dt>
            <dd>${dto.jobStart }</dd>
            <dt class="end">마감일</dt>
            <dd>${dto.jobEnd }</dd>
          </dl>
        </div>
        <div class="col-md-8 bg-light" style="">
          <div> 지원방법&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;일하라 입사지원 </div>
          <div>
            <a class="btn btn-secondary" href="#" id="_apply">입사지원</a>
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



function comFavorite(jobSeq, companyId, memberid) {
	//alert("회사좋아요 등록");
	//alert(companyId);
	//alert(memberid);
	location.href = "favoriteCom.do?jobSeq="+jobSeq+"&companyId="+companyId+"&memberid="+memberid;
}

function dropFavoriteCom(jobSeq, companyId, memberid) {
	//alert("회사좋아요 해제");
	//alert(companyId);
	//alert(memberid);

	location.href = "dropFavoriteCom.do?jobSeq="+jobSeq+"&companyId="+companyId+"&memberid="+memberid;

	//setTimeout("location.reload()", 15);

	//location.href = "RecruitDetail.do?jobseq=" +jobSeq;
}


  
  

function jobFavorite(jobSeq, memberid) {
	//alert("즐겨찾기등록");
	//alert(jobSeq);
	//alert(memberid);

	location.href = "favoriteJob.do?jobSeq="+jobSeq+"&memberid="+memberid;

	//setTimeout("location.reload()", 15);

	//location.href = "RecruitDetail.do?jobseq=" +jobSeq;

}

function dropFavoriteJob(jobSeq, memberid) {
	//alert("즐겨찾기해제");
	//alert(jobSeq);
	//alert(memberid);

	location.href = "dropFavoriteJob.do?jobSeq="+jobSeq+"&memberid="+memberid;

	//setTimeout("location.reload()", 15);

	//location.href = "RecruitDetail.do?jobseq=" +jobSeq;
}

function jobApply(jobseq, memberid, resumeseq) {
	alert("jobApply");
	alert(jobseq);
	alert(memberid);
	alert(resumeseq);

	location.href = "jobApply.do?jobseq="+jobseq+"&memberid="+memberid+"&resumeseq="+resumeseq;

}

function CountDownTimer(dt, id) {
    var end = new Date(dt);
    var _second = 1000;
    var _minute = _second * 60;
    var _hour = _minute * 60;
    var _day = _hour * 24;
    var timer;
    function showRemaining() {
        var now = new Date();
        var distance = end - now;
		
        
       var dEnd = end.getDate();
       var dNow = now.getDate();
       var leftDay = dEnd - dNow;
       
       if(distance == 86400000){
    	   alert("이타이밍임 : " + distance); 	
        	
        }
        
        
        if (distance < 0) {
        	
            clearInterval(timer);
            document.getElementById(id).innerHTML = '공고 기한이 만료되었습니다';
            //$("#_apply").hide();
            //location.reload();
            return;
        }
        var days = Math.floor(distance / _day);
        var hours = Math.floor((distance % _day) / _hour);
        var minutes = Math.floor((distance % _hour) / _minute);
        var seconds = Math.floor((distance % _minute) / _second);
        document.getElementById(id).innerHTML = days + '일 ';
        document.getElementById(id).innerHTML += hours + '시간 ';
        document.getElementById(id).innerHTML += minutes + '분 ';
        document.getElementById(id).innerHTML += seconds + '초';
    }
    timer = setInterval(showRemaining, 1000);
}
CountDownTimer('${dto.jobEnd}', 'timeDeal'); // 2020-12-06 오후10시 50분까지
 	

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

		//읽기전용으로 셋팅 (디테일페이지에서 사용)
		editor.isReadOnly = true;

		//editor.setData();



	} )
	.catch( error => {
		console.error( 'Oops, something went wrong!' );
		console.error( 'Please, report the following error on https://github.com/ckeditor/ckeditor5/issues with the build id and the error stack trace:' );
		console.warn( 'Build id: x1h6xk4rd95i-65gjhojljtvk' );
		console.error( error );
	} );



  </script>


</body>
</html>
