<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<head>


 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"> 

<link href="csss/header.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="static/css/import.css" media="all">

 
 <link rel="stylesheet" href="csss/common.css" media="all">
<link rel="stylesheet" href="csss/top.css" media="all">
<link rel="stylesheet" href="csss/reset.css" media="all">
 

<style type="text/css">


/* 버튼 */
a.box-btn {
   background-color: #2186eb;
   padding: 5px 20px;
   display: inline-block;
   color: #fff;
   text-transform: capitalize;
   border-radius: 3px;
   font-size: 15px;
   transition: .3s;
}

/* 버튼  */
a.box-btn:hover, a.border-btn:hover {
   background-color: #2186eb;
}

body {
     background-color: white;
   margin: auto;
    width: 500px;
    

}

.fontscolor{
 color:blue;
 }
 .fontscolor2{
 color:red;
 }
 .fontscolor3{
 color:green
 }




</style>
</head>

<body style="margin-left: 0px;">

<header id="header"style="height: 300px;" >
   <div class="top-area">
      <div class="inner-wrap">
         <div class="link-out">
            <a href="home.do" target="_blank" title="새창 열림">지역일하라</a>
            <a href="https://www.workplus.go.kr/intro/about.do" target="" title="새창">고용복지<sup></sup>센터</a>
            <a href="https://www.worktogether.or.kr/main.do" title="새창 열림" onclick="f_moveUrl('WT')">장애인고용포털</a>
         </div>
         <div class="util">         
               <div class="login-mypage">
                  
                  <c:choose>
                         <c:when test="${login.memberid ne null }">
                     <c:choose>
                         <c:when test="${login.auth == 1}">
                             <p><b>[개인🧑]${login.name }</b>님</p>
                           </c:when>
                      <c:when test="${login.auth == 2}">
                            <p><b>[기업👨 💼]${login.name }</b>님</p>
                    </c:when>
                      <c:otherwise>
                            <p><b>[관리자👨 ✈️]${login.name }</b>님</p>
                      </c:otherwise>
                      </c:choose>
                      </c:when>
                  </c:choose>
                        
                  
                  <ul>
                        <!-- 개인 -->
                        <li><a href="/indivMemberSrv/main/indivMemberSrvMain.do">마이페이지 홈</a></li>
                        <li><a href="/indivMemberSrv/custInfoAdmin/retrieveIndivCustInfo.do">회원정보관리</a></li>
                        <li><a href="/indivMemberSrv/seekApplyAdmin/resumeMng/resumeMngMain.do">구직신청관리</a></li>
                        <li><a href="#" onclick="worknet.popup.popCenterSuppAgree(); return false;" target="_blank" title="새창">고객지원</a></li>
                  </ul>
               </div>
               <a href="logout.do" onclick="f_logout();" class="font-blue">로그아웃</a>

            <!-- E : 2018-09-28 추가 -->
            <!--// 로그인 후 -->

            <!-- 공통 -->
         
            <a href="Jobtalklist.do">취업톡톡</a><img src="static/images/common/ico/ico-gnb-new.png" style="width:15px;height:15px;margin-top: 8px;" class="va-m" alt="new">

         </div>
      </div>
   </div>

   <div class="middle-area">
      <div class="inner-wrap">
         <h1 class="top-logoWorknet">
            <a href="home.do"><img src="static/images/common/bg/bg-top-logo.png" style="width:130px; height:60px" alt="일하라"></a>
         </h1>
         <form id="searchFrm" name="searchFrm" action="/wnSearch/unifSrch.do" method="post" onsubmit="return false">
            <div class="header-search">
               


               <div id="searchWord" class="auto-complete">
                  <ul>
                     <li><a href="#"><em class="word">사회복지</em> 관련 관리자</a></li>
                  </ul>

                  <button type="button" class="btn-input-reset">자동완성 닫기</button>
               </div>

               
            </div>
         <div>
            <input type="hidden" name="_csrf" value="40c07236-ce2a-46f9-b046-8fbf7137e0fa">
         </div>
      </form>

      
   </div>
</div>

   <nav id="gnb" style="height:50px; width: 1900px;">
      <ul>
         <li><a href="recuruitlist.do" class="menu"><span>채용정보</span></a>
            </li>
            <li>
               <a href="newslist.do" class="menu"><span>기업뉴스</span></a>
               
               </li>
               <li>
                  <a href="pdslist.do" title="새창" class="menu"><span>자료실</span></a>
                  
         </li>
         <li class=""><a href="calendarlist1.do" title="새창" class="menu"><span>공채달력</span></a>
            
         </li>
         <li style="width: 150px;">
         <a href="notice.do" class="menu"><span>공지사항</span></a>
            
         </li>
      </ul>
   </nav>
</header>

<div style="padding-left: 450px; background-color: white;">
   
<form name="comform" action="companywriteAf.do" id="_comform" method="get">
   <input type="hidden" value="${company.companyseq }">     
    <table border="1" class="table table-bordered" style="background-color: white;">
        <tr>
          <th>회사이름:<p class="fontscolor2">* 변경할수없습니다</p></th>
          <td><input type="text" name="companyname" value="${login.companyname }" readonly="readonly"></td>
       </tr>

       <tr>
          <th>주소:<p class="fontscolor2">* 변경할수없습니다</p></th>
          <td><input type="text" name="address" value="${login.comaddress }" readonly="readonly"></td>
       </tr>

       <tr hidden="">
          <th>사업자 번호(비공개입니다):<p class="fontscolor2">* 변경할수없습니다</p></th>
          <td><input type="text" name="comanynum" value="${company.companynum }" readonly="readonly"></td>
       </tr>

       <tr>
          <th>대표자 이름:<p class="fontscolor2">* 변경할수없습니다</p></th>
          <td><input type="text" name="ceoname" value="${login.name }" readonly="readonly"></td>
       </tr>

       <tr>
          <th>기업 아이디:<p class="fontscolor2">* 변경할수없습니다</p></th>
          <td><input type="text" name="memberid" value="${login.memberid }" readonly="readonly"></td>
       </tr>

       <tr>
          <th>회사 규모 (중소기업 , 대기업):</th>
          <td><input type="text" name="companytype" value="${company.companytype}"></td>
       </tr>

        <tr hidden="">
          <th>기업 이미지:</th>
          <td>${company.comimage }</td>
       </tr>

      <tr>
          <th>평균 연봉:</th>
          <td><input type="text" name="salaryavg" value="${company.salaryavg }"></td>
       </tr>

       <tr>
          <th>초봉:</th>
          <td><input type="text" name="salarystart" value="${company.salarystart }"></td>
       </tr>

       <tr>
          <th>회사 설립일:<p class="fontscolor3">예시)1995년6월17일</p></th>
          <td><input type="text" name="comyear" value="${company.comyear }"></td>
       </tr>

       <tr>
          <th>웹사이트 주소:</th>
          <td><input type="text" name="website" value="${company.website }"></td>
       </tr>

       <tr>
          <th>회사 복지: </th>
          <td><input type="text" name="mainservice" value="${company.mainservice }"></td>
       </tr>

       <tr>
          <th>주요 업무 :</th>
          <td><input type="text" name="content" value="${company.content }"></td>
       </tr>

       <tr>
          <th>연매출 :</th>
          <td><input type="text" name="totalsale" value="${company.totalsale }"></td>
       </tr>

       <tr>
           <th>직원 수:<p class="fontscolor">(숫자로만 입력해주세요)</p></th>
          <td><input type="text" name="empcount" value="${company.empcount }">명</td>
       </tr>

       <tr>
          <th>올해 퇴사자 수:<p class="fontscolor">(숫자로만 입력해주세요)</p></th>
          <td><input type="text" name="retiree" value="${company.retiree }">명</td>
       </tr>

       <tr>
          <th>올해 입사자 수:<p class="fontscolor">(숫자로만 입력해주세요)</p></th>
          <td><input type="text" name="joinner" value="${company.joinner }">명</td>
       </tr>

   </table>
      <div align="center">
        <c:choose> 
          <c:when test="${company.companyseq eq null}">          
          <button id="companyBtn" class="btn btn-primary">등록하기</button>
          </c:when>
          
          <c:otherwise>
          <p>중복등록을 할수없습니다 수정하기로 가주세요</p>
          </c:otherwise>
       </c:choose>   
          
          
       </div>
   
      <button type="button" class="btn btn-primary" onclick="detail('${login.memberid}')" >상세정보보기</button>
   
</form>    
      

</div>
</body>
<script>



$("#companyBtn").click(function () {
   
   alert("클릭크 수정");
   $("#_comform").submit();
   

});
   
function detail(memberid) {
   location.href = "companydetail.do?companyid="+memberid;
};

</script>