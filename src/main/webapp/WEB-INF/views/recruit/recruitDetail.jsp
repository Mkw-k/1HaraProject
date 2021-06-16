<%@page import="bit.com.a.dto.MemberDto"%>
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

<%-- <%
Object ologin = session.getAttribute("login");
String logincheck = (String)(request.getAttribute("logincheck"));
MemberDto mem = null;

if(ologin == null){
   %>
   <script>
   alert('로그인 해 주십시오');
   location.href="login1.do"

   </script>
   <%
}
else{
   mem = (MemberDto)ologin;
   request.setAttribute("mem", mem);
}


if(logincheck != null) {
	if(logincheck.equals("NO")) {
%>
		<script>
			alert('아이디, 패드워드가 맞지 않습니다.');
		</script>
<%
	}
}
%>
 --%>
<!DOCTYPE html>
<html>

<head>
  <!-- CK-editor -->
<link rel="stylesheet" href="ckeditor5/sample/styles.css">
<script src="ckeditor5/build/ckeditor.js"></script>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">

 <!-- 전체 공통 스크립트 임포트 -->
  <c:import url="script.jsp" charEncoding="utf-8"/>

  <!-- <link rel="stylesheet" href="static/csss/bootstrap.css" media="all"> -->

 <link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">
  <!-- 카카오맵스 -->
  <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  <!-- 카카오맵스 -->
  <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=685fcbb766340d7c8812f4e0a29a6661&libraries=services"></script>
	<link href="csss/gnb.css" rel="stylesheet" type="text/css">
	<link href="csss/view.css" rel="stylesheet" type="text/css">

  <!-- 입사지원 모달 -->
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- 테이블 -->
<!-- <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script> -->

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

p{
 font-weight: bold;
}

.companydetail{
display: flex;
}

.jobtitle{
font-weight: bold;
}


.titles{
margin-left: 370px;
font-weight: bold;

}

.table .thead-dark th {
    color: #fff;
    background-color: #2186eb;
    border-color: #eee;
}

.JobSumData{
	font-weight: bold;
}

</style>



<body>


<c:import url="header.jsp" charEncoding="utf-8"/>

 <div class="py-0 pt-3" style="background-color: #2186eb; color: white; height: 174px;">
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

          ${dto.jobTitle}
         </h3>

        <div class="col-md-10">
	        <div>
	          <p class="" style="color: #eee;">${dto.companyname}&nbsp; &nbsp;&nbsp;</p>
			</div>

			<div>
			  <h3 class="jobtitle">
	           <c:if test="${login.auth==1}">
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
				</c:if>
	          ${dto.jobTitle}
	         </h3>
	         </div>

        </div>
        <div class="col-md-2 text-right" style="margin-top: 45px;">

		 	<c:if test="${login.auth==1 }">
         		 <button type="button" class="btn btn-primary" id="_apply" data-toggle="modal" data-target="#exampleModal">입사지원</button>
			</c:if>

          	<c:choose>
          		<c:when test="${login.auth == 1 }">
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
          		</c:when>
          	</c:choose>

			<c:choose>
				<c:when test="${login.auth == 2}">
 					<c:if test="${login.memberid == dto.companyId }">
          				<a class="btn btn-secondary" href="javascript:updateRecruit(${dto.jobSeq })">수정하기</a>
          				<a class="btn btn-secondary" href="javascript:deleteRecruit(${dto.jobSeq })">삭제</a>
          			</c:if>
          		</c:when>
          	</c:choose>
          </div>
       </div>



			<!-- 입사지원 모달 -->
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
  	<div class="" style="margin-top: 20px;">
    	<div class="container">
      		<div class="row">
        		<div class="col-md-6">
        		  <li class="companydetail"><p>경력</p>&nbsp; &nbsp; &nbsp; &nbsp; <font class="JobSumData">${dto.career_Desc }</font>
          		  </li>
          		  <li class="companydetail"><p>학력</p>&nbsp; &nbsp; &nbsp; &nbsp; <font class="JobSumData">${dto.eduname }</font>
         		  </li>
        		</div>
        		<div class="col-md-6">
        		  <li class="companydetail"><p>근무형태</p>&nbsp; &nbsp; &nbsp;&nbsp;<font class="JobSumData">${dto.emp_name }</font>
        		  </li>
          		  <li class="companydetail"><p>직군</p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
          			<span>
          				<c:forTokens var="item" items="${dto.busname}" delims=":">
						    <font class="JobSumData">${item}</font>
						</c:forTokens>
          			</span>
          		</li>
          		<li class="companydetail"><p>채용인원</p>&nbsp; &nbsp; &nbsp; <font class="JobSumData">${dto.jobVolumn }</font></li>
          		<li class="companydetail"><p>급여</p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<font class="JobSumData">${dto.salary }&nbsp;만원</font>
          		</li>
          		<li class="companydetail"><p>근무지역</p>&nbsp; &nbsp; &nbsp;&nbsp;<font class="JobSumData">${dto.area1Name }&nbsp;${dto.area2Name }</font>
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
	              	${dto.jobContent }
	            </div>
		</div>
      </div>
    </div>
  </div>

  <div class="py-5">
  <h3 class="titles">접수기간 및 방법</h3>
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
             <dd><c:if test="${login.auth==1 }">
         		 <button type="button" class="btn btn-primary" id="_apply" data-toggle="modal" data-target="#exampleModal">입사지원</button>
			</c:if></dd>
          </dl>
        </div>
        <div class="col-md-8 bg-light" style="">
          <div class="companydetail"> <p>지원방법</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;일하라 입사지원 </div>

          <div>
           <!--  <a class="btn btn-secondary" href="#" id="_apply">입사지원</a> -->
          </div>
        </div>
        <div class="text-primary" style=""> 마감일은 기업의 사정에 따라 조기 마감될수 있습니다.
        	<a class="btn btn-secondary" href="recuruitlist.do">목록으로</a>
        </div>
      </div>
    </div>
  </div>
  <div class="py-5">
  <h3 class="titles">지원현황</h3>
    <div class="container">
      <div class="row">
        <div class="col-md-12"> 지원현황(선택) </div>
      </div>
    </div>
  </div>
  <div class="py-5">
  <h3 class="titles">근무지</h3>
    <div class="container">
      <div class="row">
        <div class="col-md-4 bg-light border-right" style="">
          <dl class="info_period">

          	<p>담당자 및 근무지</p>
            <dt id="keyword1">${dto.area1Name } ${dto.area2Name } ${dto.detailAdress1 } ${dto.detailAdress2 }</dt>
            <dd>

            	<p style="margin-top:-12px">
			    <em class="link">


			    </em>
			</p>
			<div id="map" style="width:100%;height:350px;"></div>
            </dd>
          </dl>
        </div>
        <div class="col-md-8 bg-light" style="" id="_mgData">
          <div class="companydetail"> <p>담당자명</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${dto.mgName }</div>
          <div class="companydetail"> <p>담당자연락처</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${dto.mgPhone }</div>
          <div class="companydetail"> <p>담당자이메일주소</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${dto.mgEmail }</div>
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
        <div class="col-md-12">
			<table class="table table-hover col-sm-12 " >
				<tr>
					<th>사업</th><td>${com.content }</td>
				</tr>
				<tr>
					<%-- <th><img alt="" src="./upload/${com.filename}"></th> --%>
					<th>사원수</th><td>${com.empcount }</td>
				</tr>
				<tr>
					<th>평균연봉</th><td>${com.salaryavg }</td>
				</tr>



			</table>

		</div>
      </div>
    </div>
  </div>






  <div class="py-5">
    <div class="container">
      <div class="row"> 인기기업 HOT10
      <div class="col-md-12">




         <table class="table table-hover col-sm-12 " style="" id="table">
            <thead class="thead-dark">
               <tr>
                  <th>#</th>

                  <th>회사명</th>

                  <th>공고제목</th>
                  <th>지원자격(학력·경력)</th>
                  <th>채용인원</th>
                  <th>근무조건</th>
                  <th>마감일·등록일</th>
               </tr>
            </thead>


         </table>
         <p></p>


       </div>
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


  <!-- 댓글 -->
				<c:if test="${login.memberid != null }">

					<div class="inputBox">
						<div class="writeBoxWrap cmtWrite">
							<form action="insertreplyRecruit.do" method="post">
								<input type="hidden" name="jobSeq" value="${dto.jobSeq}">
								<fieldset>
									<div class="uiplaceholder">
										<span class="ph">솔직하고 따뜻한 답변을 남겨주세요.<br>*휴대폰 번호, 메일 주소, 카카오톡 ID 등 개인정보가 포함된 내용은 비노출 처리 될 수 있습니다.</span>
										<textarea class="devTxtAreaAnswerWrite" name="reply_content" maxlength="1000" title="답변쓰기"></textarea>
									</div>
									<div class="btnWrap">
                               			<div class="infoBx">
                            	    	   <a href="/User/Qstn/MainProfile?Target=16755209" class="my-profile" target="_blank">
                                    		   <span class="proThumb"><img src="https://i.jobkorea.kr/content/images/m/ver_2/user/qna/profile_thumb/random_8.jpg" target="_blank" alt="프로필 이미지" onerror="this.src='https://i.jobkorea.kr/content/images/m/ver_2/user/qna/profile_thumb/random_default.jpg'"></span>
                                    	  	   <span class="info">${login.memberid}</span>
                                   	   	   	   <input type="hidden" name="memberid" value="${login.memberid}">
                                   	   	   </a>
                                   	   	 </div>
                                  	  	 <span class="byte"><b id="count">0</b> / 1,000</span>
                               	         <button type="submit" id="btnSubmit" class="btnSbm devBtnAnswerWrite">등록</button>
                           	   		</div>
								</fieldset>
							</form>
						</div>
						<ul class="notice-box-wrap">
                		    <li>답변을 등록하면 닉네임으로 질문자에게 전달됩니다.</li>
                	   		<li>개인정보를 공유 및 요청하거나, 명예 훼손, 무단 광고, 불법정보 유포 시 이에 대한 민형사상 책임은 작성자에게 있습니다.</li>
                  			<li>개인정보가 포함되거나 부적절한 답변은 비노출 또는 해당 서비스 이용 불가 처리될 수 있습니다.</li>
               			</ul>
					</div>
				</c:if>
				<c:forEach var="row" items="${replylist}">
				<input type="hidden" name="replyrecruitseq" value="${row.replyrecruitseq}">
				<input type="hidden" name="jobSeq" value="${row.jobSeq}">
				<div class="viewListWrap">
                	<div class="headerWrap">
                    	<div class="numBx">
                           <span>답변 <span class="num">${row.reply_count}</span></span>
                        </div>
                    </div>
					<div class="listWrap commonSecWrap">
   						 	<ul class="answerArea">
                				<li>
                					<div class="contSec devContSection" style="display: block;">
                						<div class="writeBoxWrap cmtWrite">
                							<div class="infoBx">
                								<a href="mypage.do" class="my-profile">
                									<span class="nickname">${row.memberid}</span>
                								</a>
                							</div>
                							<p class="cont">${row.reply_content}</p>
                							<div class="cellBx">
                								<span class="cell devAnswerDate">${row.rdate.substring(0,10)}</span>
                							</div>
                							<div class="btnBx devComtRoot" data-answerno="205449">
                            					<!-- 댓글, 좋아요 버튼 클릭시 클래스 active 추가 -->
                            					<button type="button" class="btnCmt devBtnComtList active">댓글 <em>${row.reply_count}</em></button>
                            					<button type="button" class="btnHeart qnaSpB devBtnAnswerLike ">0</button>
                        					</div>
                						</div>
                						<div class="commentSec" style="display: block;">
                							<div class="cmtArea">
                								<div class="cmtList replyWrap">
                									<ul class="cmtList replyWrap">
                                						<!-- [Dev] 내 댓글일 경우 contSec에 클래스 myCmt 추가, cellBx 버튼: 삭제만 노출 -->
                            						</ul>
                								</div>
                							</div>
                						</div>
                					</div>
                				</li>
					  		</ul>
						</div>
			   		</div>
			   	</c:forEach>

  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous" style=""></script>


  <input type="hidden" id="phonenumber">
  <button onclick="charchen()">charchen</button>



  <!-- <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous" style=""></script> -->
>>>>>>> d8ec9437902769692056210040f8be523b7edf9b
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous" style=""></script>




<script>
getTop10List();

//5단 검색바 사용 검색할 경우
function getTop10List() {

    $.ajax({
         type : 'get',
         url : './getTop10List.do',
         error: function(xhr, status, error){
             alert("에러발생");
         },
         success:function(list){
 			//alert('success');
 			//alert(list);

 			$(".list_col").remove();

 			var memberid = '<c:out value="${login.memberid}"/>';

 			$.each(list, function(i, val){
 				//alert(val.jobSeq);
 				let app = "<tr class= 'list_col'>"
 							+"<td>" + val.rnum +"</td>";

 							if(val.del==0){

 								"<td>"
								+ "<a href='companydetail.do?companyid=" + val.companyId  + "'>" + val.companyname+"</a>"
							    + "</td>"
 								/* let empT = "";
 								if(val.empType == 3){
 									empT = "정규직";
 								} */
 								app +="<td>"
 									+ "<a href='companydetail.do?companyid=" + val.companyId  + "'>" + val.companyname + "</a>"
 									+ "</td>"
 									+"<td style='text-align:left'>"
 									//+ arrow(val.depth)
 									+"<a href='RecruitDetail.do?jobseq=" + val.jobSeq +"&memberid="+memberid+"'>" + val.jobTitle+ "</a>"
 									+"</td>"
 									+"<td>" + val.eduname +"<br>"+val.career_Desc + "</td>"
 									+"<td>" + val.jobVolumn + "</td>"
 									+"<td>" + val.emp_name +"<br>"+ val.area1Name+" " + val.area2Name +"<br>"+val.salary+" 만원"+ "</td>"
 									+"<td>" + val.jobEnd +"<br>"+val.regdate+ "&nbsp;&nbsp;"
 									+"<input type='button' value='공고삭제' onClick='deleteRecruit("+val.jobSeq +")' >"+ "</td>";
 							}

 							else{
 								app += "<td style='text-align:left' colspan='6'>"
 										+"<font color='#ff0000'>********* 이 글은 작성자에 의해서 삭제되었습니다</font>"
 										+"</td>";
 							}

 							+"</tr>";

 					$("#table").append(app);
 			});
 		},
 		error:function(){
 			alert('error');
 		}
     });

}






</script>



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
	if('${login.memberid}' == 'null'){
		alert('로그인해주십시오');
		location.href="login1.do";
	}
	else{
	location.href = "dropFavoriteJob.do?jobSeq="+jobSeq+"&memberid="+memberid;

	//setTimeout("location.reload()", 15);

	//location.href = "RecruitDetail.do?jobseq=" +jobSeq;
	}

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




	/* let endDate = '${dto.jobEnd}';
	var reserve = charchen(endDate);
	alert("이게 예약시간 : "+ reserve);


	  $.ajax({
	        type : 'get',
	        url : './reserveSendSms.do',
	        data:{phonenum: phone, reserveDate : reserve			// 휴대폰 번호
                },
	       success:function(suc){
				alert("성공");
				alert(suc);

			},
			error:function(){
				alert('error');
			}
	    });   */

	//location.href = "jobApply.do?jobseq="+jobseq+"&memberid="+memberid+"&resumeseq="+resumeseq;






function charchen(endDate) {
endDate = new Date(endDate);
var rest = endDate - 86400000;
var sendDate = getReserveDate(rest);
sendDate = sendDate.slice(0, -2);
alert(sendDate);

return sendDate;
}



function getReserveDate(rest)
{
    var date = new Date(rest);
    var year = date.getFullYear().toString();

    var month = date.getMonth() + 1;
    month = month < 10 ? '0' + month.toString() : month.toString();

    var day = date.getDate();
    day = day < 10 ? '0' + day.toString() : day.toString();

    var hour = date.getHours();
    hour = hour < 10 ? '0' + hour.toString() : hour.toString();

    var minites = date.getMinutes();
    minites = minites < 10 ? '0' + minites.toString() : minites.toString();

    var seconds = date.getSeconds();
    seconds = seconds < 10 ? '0' + seconds.toString() : seconds.toString();

    return year + month + day + hour + minites + seconds;
}


function jobApply(jobseq, memberid, resumeseq) {

	alert("jobApply");
	//alert(jobseq);
	//alert(memberid);
	//alert(resumeseq);
	// alert(phonenum);

	let endDate = '${dto.jobEnd}';
	var reserve = charchen(endDate);
	alert("이게 예약시간 : "+ reserve);

	var phone = getPhonenum(memberid);
	alert("이게 연락처"+phone);

	var title = '${dto.jobTitle}';



	$.ajax({
        type : 'get',
        url : './reserveSendSms.do',
        data:{phonenum: phone, reserveDate : reserve, title : title },
       success:function(suc){
			alert("예약문자성공");
			alert(suc);

		},
		error:function(){
			alert('error');
		}
    });




    location.href = "jobApply.do?jobseq="+jobseq+"&memberid="+memberid+"&resumeseq="+resumeseq;

}



//회원 아이디로 전화번호를 가지고 올수 있는 메서드
function getPhonenum(memberid) {
	var pnumber = "";

	 $.ajax({
	     url : "./getPhonenum.do",
	     type : "get",
	     async: false,
	     data: {"memberid": memberid},
	     success:function(phonenumber){
	        alert('success');
	        alert(phonenumber);
	        phoneNum = phonenumber;
	        $("#phonenumber").val(phonenumber);

			},
	     error:function(){
	        alert('error');
	     }

	   });

	 pnumber = phoneNum;

	 return pnumber;

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
