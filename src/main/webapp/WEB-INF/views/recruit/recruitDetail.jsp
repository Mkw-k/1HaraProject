<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="bit.com.a.dto.RecruitDto"%>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">
</head>

<body>
  <div class="py-0 pt-1">
    <div class="container">
      <div class="row">
        <div class="col-md-8">
          <h3 class="">${dto.companyname}&nbsp; &nbsp;&nbsp;<a class="btn btn-secondary" href="#"><i class="fa fa-star fa-fw fa-1x py-1"></i></a><br>${dto.jobTitle}</h3>
        </div>
        <div class="col-md-4 text-right" style="">
          <a class="btn btn-secondary" href="#"><i class="fa fa-star fa-fw fa-1x py-1"></i></a>
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
        <div class="col-md-12"> 근무지(지도포함) </div>
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
  <pingendo onclick="window.open('https://pingendo.com/', '_blank')" style="cursor:pointer;position: fixed;bottom: 20px;right:20px;padding:4px;background-color: #00b0eb;border-radius: 8px; width:220px;display:flex;flex-direction:row;align-items:center;justify-content:center;font-size:14px;color:white">Made with Pingendo Free&nbsp;&nbsp;<img src="https://pingendo.com/site-assets/Pingendo_logo_big.png" class="d-block" alt="Pingendo logo" height="16"></pingendo>
  
  <script type="text/javascript">
function deleteRecruit(jobSeq) {
	location.href="deleteRecruit.do?jobSeq="+jobSeq;
}

function updateRecruit(jobseq) {
	location.href ="RecruitUpdate.do?jobseq="+jobseq;

}

</script>


</body>

</html>