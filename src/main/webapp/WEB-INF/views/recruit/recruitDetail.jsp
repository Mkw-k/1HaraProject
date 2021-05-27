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
  
  <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">
</head>

<body>
  <div class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <h3 class="">${dto.jobTitle}&nbsp;&nbsp;<a class="btn btn-secondary" href="#"><i class="fa fa-star fa-fw fa-1x py-1"></i></a><br></h3>
        </div>
        <div class="col-md-6">
          <a class="btn btn-secondary" href="#"><i class="fa fa-star fa-fw fa-1x py-1"></i></a>
          <a class="btn btn-secondary" href="#">입사지원</a>
          <a class="btn btn-secondary" href="javascript:updateRecruit(${dto.jobSeq })">수정하기</a>
          <a class="btn btn-secondary" href="javascript:deleteRecruit(${dto.jobSeq })">삭제</a></div>
      </div>
      <hr class="mb-12">
      <div class="row">
      </div>
    </div>
  </div>
  <div class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-12" style="">
          <div class="table-responsive">
            <table class="table table-striped table-borderless">
              <thead>
                <tr>
                  <th scope="col">#</th>
                  <th scope="col">First</th>
                  <th scope="col">Last</th>
                </tr>
              </thead>
              <tbody class="tbody">
                <tr>
                  <th scope="row">1</th>
                  <td>회사이름</td>
                  <td class="data">${dto.companyname}</td>
                </tr>
                <tr>
                  <th scope="row">2</th>
                  <td>근무지역</td>
                  <td class="data">${dto.area1Name }&nbsp;${dto.area2Name }</td>
                </tr>
                <tr>
                  <th scope="row">3</th>
                  <td>채용인원</td>
                  <td class="data">${dto.jobVolumn }</td>
                </tr>
                <tr>
                  <th scope="row">4</th>
                  <td>급여조건</td>
                  <td class="data">${dto.salary }&nbsp;만원</td>
                </tr>
                <tr>
                  <th scope="row">5</th>
                  <td>공고시작일</td>
                  <td class="data">${dto.jobStart }</td>
                </tr>
                <tr>
                  <th scope="row">6</th>
                  <td>공고종료일</td>
                  <td class="data">${dto.jobEnd }</td>
                </tr>
                <tr>
                  <th scope="row">7</th>
                  <td>근무형태</td>
                  <td class="data">${dto.emp_name }</td>
                </tr>
                <tr>
                  <th scope="row">8</th>
                  <td>학력사항</td>
                  <td class="data">${dto.eduname }</td>
                </tr>
                <tr>
                  <th scope="row">9</th>
                  <td>경력사항</td>
                  <td class="data">${dto.career_Desc }</td>
                </tr>
                <tr>
                  <th scope="row">10</th>
                  <td>조회수</td>
                  <td class="data">${dto.readcount }</td>
                </tr>
                <tr>
                  <th scope="row">11</th>
                  <td>작성일</td>
                  <td class="data">${dto.regdate }</td>
                </tr>
                <tr>
                  <th scope="row">12</th>
                  <td>직종</td>
                  <td class="data">${dto.buscode }
						<c:forTokens var="item" items="${dto.busname}" delims=":">
						    ${item}
						</c:forTokens>
				  </td>
                </tr>
                <tr>
                  <th scope="row">14</th>
                  <td>공고내용</td>
                  <td class="data">${dto.jobContent }</td>
                </tr>
              </tbody>
            </table>
             <a class="btn btn-secondary" href="recuruitlist.do">목록으로</a>
          </div>
        </div>
      </div>
    </div>
  </div>
  
  

  
  
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous" ></script>
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