<%@page import="bit.com.a.dto.RecruitDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--
CRUD

채용공고 작성

채용공고 읽기
전체 리스트 뽑아오기
직업별 셀렉트 검색
지역별 셀렉트 검색

채용공고 수정하기

채용공고 삭제하기
-->


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
.createRecruitBtn{
   cursor: pointer;
}

/* .wrapper{
width:200px;
padding:20px;
height: 150px;
} */


</style>

</head>
<body>
<c:import url="script.jsp" charEncoding="utf-8"/>

<c:import url="header.jsp" charEncoding="utf-8"/>


<div class="container-fluid">
      <div class="row">
         <div class="col-12">
            <img alt="" src="<%=request.getContextPath() %>/image/개발자23.gif" style="width: 100%; height: 140px;">
         </div>
      </div>
   </div>
   <br>




<!-- 프론트 작업중 다중 셀렉트 박스  -->
   <div class="container">
      <div class="header clearfix">
         <nav>
            <ul class="nav nav-pills float-right">
               <li class="nav-item"><a class="nav-link" href="#">직업별</a></li>
               <li class="nav-item"><a class="nav-link" href="#">직업별</a></li>
               <li class="nav-item"><a class="nav-link" href="home.do">메인으로</a></li>
            </ul>
         </nav>
         <h3 class="text-muted">채용공고 게시판</h3>
         <div class="m-5"></div>
      </div>



<form action="#" id="_frmFormSearch" name="dataForm" method="post" novalidate="novalidate">
   <input type="hidden"  id="_page" >
      <div class="py-5">
         <div class="container">

            <div class="row">
               <div class="col-md-12">
                  <ul class="nav nav-pills">
                     <li class="nav-item"><a href="" class="nav-link active show"
                        data-toggle="pill" data-target="#tabone">직종별</a></li>
                     <li class="nav-item"><a class="nav-link" href=""
                        data-toggle="pill" data-target="#tabtwo">지역별</a></li>

                  </ul>

                  <div class="tab-content mt-2">
                     <div class="tab-pane fade active show" id="tabone"
                        role="tabpanel">
                        <div class="py-5">
                           <div class="container">
                              <div class="row">

                                 <div class="col-md-4">
                                    <div class="form-group wrapper">
                                       <label>대분류</label> <select class="form-control"
                                          id="_buscodeList1" size="5" onfocus='this.size=5;'
                                          onblur='this.size=5;' onchange='this.size=5; this.blur();'>


                                       </select>
                                    </div>

                                 </div>

                                 <div class="col-md-4">
                                    <div class="form-group wrapper">
                                       <label>중분류</label> <select class="form-control"
                                          id="_buscodeList2" size="5" onfocus='this.size=5;'
                                          onblur='this.size=5;' onchange='this.size=5; this.blur();'>


                                       </select>
                                    </div>

                                 </div>

                                 <div class="col-md-4">
                                    <p>소분류</p>
                                    <div id="_buscodeList3"
                                       style="overflow: auto; width: 350px; height: 150px;">

                                    </div>

                                 </div>




                              </div>
                           </div>
                        </div>
                     </div>


                     <div class="tab-pane fade" id="tabtwo" role="tabpanel">
                        <div class="py-5">
                           <div class="container">
                              <div class="row">


                                 <div class="col-md-4">
                                    <div class="form-group wrapper">
                                       <label>지역대</label> <select class="form-control"
                                          id="_areacodeList1" size="5" onfocus='this.size=5;'
                                          onblur='this.size=5;' onchange='this.size=5; this.blur();'>


                                       </select>
                                    </div>

                                 </div>


                                    <div class="col-md-4">
                                    <p>지역소</p>
                                    <div id="_areacodeList2"
                                       style="overflow: auto; width: 350px; height: 150px;">

                                    </div>

                                 </div>

                              </div>
                           </div>
                        </div>


                     </div>






							<div class="col-md-12">
								<p id="selectResult"></p>
							</div>

							<p>
								<button type="button" id="deleteResult">삭제하기</button>
							</p>

                  </div>
               </div>
            </div>
         </div>
      </div>












   <section class="search-sec">
    <div class="container">

            <div class="row">
                <div class="col-lg-12">
                    <div class="row">
                        <div class="col-lg-4 col-md-4 col-sm-12 p-0">
                            <select class="form-control search-slt" name="careerStart" style="font-size: 12pt">
                                <option disabled="disabled">경력시작</option>
                                <option value="100">무관</option>
                                <option value="1">신입</option>
                                <option value="2">1년</option>
                                <option value="3">2년</option>
                                <option value="4">3년</option>
                                <option value="5">4년</option>
                                <option value="6">5년</option>
                                <option value="7">6년</option>
                                <option value="8">7년</option>
                                <option value="9">8년</option>
                                <option value="10">9년</option>
                                <option value="11">10년</option>

                            </select>
                            <h3>~</h3>
                            <select class="form-control search-slt" name="careerEnd" style="font-size: 12pt">
                                <option disabled="disabled">경력끝</option>
                                <option value="100">무관</option>
                                <option value="1">신입</option>
                                <option value="2">1년</option>
                                <option value="3">2년</option>
                                <option value="4">3년</option>
                                <option value="5">4년</option>
                                <option value="6">5년</option>
                                <option value="7">6년</option>
                                <option value="8">7년</option>
                                <option value="9">8년</option>
                                <option value="10">9년</option>
                                <option value="11">10년</option>
                            </select>
                        </div>


                        <div class="col-lg-3 col-md-3 col-sm-12 p-0">
                            <select class="form-control search-slt" name="education" style="font-size: 12pt">
                                <option disabled="disabled">학력</option>
                                <option value="0">무관</option>
                                <option value="1">고졸</option>
                                <option value="2">전문대졸</option>
                                <option value="3">대졸</option>
                                <option value="4">석사</option>
                                <option value="5">박사</option>

                            </select>
                        </div>
                        <div class="col-lg-1 col-md-1 col-sm-12 p-0">
                            <select class="form-control search-slt" name="choice" style="font-size: 12pt">
                                <option disabled="disabled">학력</option>
                                <option value="title">제목</option>
                        <option value="companyname">회사명</option>
                           </select>
                        </div>
                        <div class="col-lg-2 col-md-2 col-sm-12 p-0">
                            <input type="text" class="form-control search-slt" id="_searchWord" name="search" placeholder="검색어 입력" style="font-size: 12pt">
                        </div>
                        <div class="col-lg-2 col-md-2 col-sm-12 p-0">
                            <button type="button" class="btn btn-secondary wrn-btn" id="btnSearch"
                           onclick="javascript:getrecruitSearchList(0)">Search</button>
                        </div>
                    </div>
                </div>
            </div>

    </div>
</section>
<br><br><br>

</form>
</div>
   <!-- /container -->



<!--    <div class="container">

      <div class="box border" style="margin-top: 5px; margin-bottom: 10px">
         <form action="" id="_frmFormSearch" method="get">

            <table
               style="margin-left: auto; margin-right: auto; margin-top: 3px; margin-bottom: 3px;">
               <tr>
                  <td>검색</td>
                  <td style="padding-left: 5px;"><select id="_choice"
                     name="choice">
                        <option value="" selected="selected" disabled="disabled">선택</option>
                        <option value="title">제목</option>
                        <option value="content">내용</option>
                        <option value="companyname">회사명</option>
                  </select></td>

                  <td style="padding-left: 5px;"><input type="text"
                     id="_searchWord" name="searchWord"></td>
                  <td style="padding-left: 5px;"><span class="button blue">
                        <button type="button" id="btnSearch"
                           onclick="javascript:getrecruListData(0)">검색</button>
                  </span></td>
               </tr>
            </table>
         </form>
      </div>
   </div> -->

   <br><br><br>

   <div class="container">
      <div class="row">
         <div class="col-12">
         	<span><a href="javascript:priMember()">프리미엄회원결제</a></span>
            <img alt="" src="<%=request.getContextPath() %>/image/개발자23.gif" style="width: 100%; height: 140px;">
         </div>
      </div>
   </div>
   <br><br>


   <div class="container">
      <div class="row marketing">


         <table class="table table-hover col-sm-12 " style="" id="table">
            <thead>
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




   <div class="container">
      <nav aria-label="Page navigation">
         <ul class="pagination" id="pagination"
            style="justify-content: center;">
         </ul>
      </nav>
   </div>


   <div class="container" style="">
      <footer class="footer">
         <p>© 1hara Corp. 2021</p>
      </footer>
   </div>



<script type="text/javascript">
getrecruitSearchList(0);
getRecruitListCount();

//작성목록으로 이동
function createRecruit() {
   location.href = "recuruitcreate.do";
}

//작성목록으로 이동(New)
function createRecruitNew() {
   location.href = "createTest.do";
}

//결제페이지로 이동 
function priMember() {
   location.href = "priMember.do?memberid="+'${login.memberid}'+"&companyname="+'${login.companyname}'+"&name="+'${login.name}'+"&comaddress="+'${login.comaddress}';
}

//댓글달때 화살표 만들어주는기능(댓글이 필요없으므로 삭제예정)
/*
function arrow(depth) {
   let rs = "<img src='./image/arrow.png' width='20px' heiht='20px'/>";
   let nbsp = "&nbsp;&nbsp;&nbsp;&nbsp;";   // 여백

   let ts = "";

   for(var i = 0;i < depth; i++){
      ts += nbsp;
   }

   return depth==0 ? "":ts + rs;
}
*/

//5단 검색바 사용 검색할 경우
function getrecruitSearchList(pnum) {
    var pnum = pnum;
    $("#_page").val(pnum);
    var queryString = $("form[name=dataForm]").serialize()+ "&page="+pnum;

    var selectSearchData1 = $("form[name=dataForm]").serialize();
    getRecruitListCount(selectSearchData1);

     $.ajax({
         type : 'post',
         url : './recruitTest.do',
         data : queryString,
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

//조건에 맞는 채용공고 데이터 가져오는 함수(AJAX)
function getrecruListData( pNumber, search ){

   //alert('데이터취득');
   $.ajax({
      url : "./recruitPagingListData.do",
      type : "get",
      data: {"page":pNumber, "choice":$("#_choice").val(), "search":$("#_searchWord").val()},
      success:function(list){
         //alert('success');
         //alert(list);

         $(".list_col").remove();

         $.each(list, function(i, val){
            //alert(val.jobSeq);
            let app = "<tr class= 'list_col'>"
                     +"<td>" + val.rnum +"</td>";

                     if(val.del==0){

                        app +="<td>"
                           + "<a href='companydetail.do?companyid=" + val.companyId  + "'>" + val.companyname+"</a>"
                            + "</td>"
                           +"<td style='text-align:left'>"
                           //+ arrow(val.depth)
                           +"<a href='RecruitDetail.do?jobseq=" + val.jobSeq + "'>" + val.jobTitle+ "</a>"
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




//글의 총수를 취득
function getRecruitListCount(selectSearchData1) {

   /*  var pnum = pnum;
    $("#_page").val(pnum);
    alert("페이지넘버:"+$("#_page").val(pnum)) */
    var selectSearchData = $("form[name=dataForm]").serialize();
    //var selectSearchData = selectSearchData1;



     $.ajax({
         type : 'get',
         url : './recruitlistCount.do',
         data : selectSearchData,
         success: function( count ) {
          //alert('success');
         //alert(count);

          loadPage(count);
       },
         error: function(xhr, status, error){
             alert("글의 총수 불러오기 에러발생");
         }
     });



}


/* function getRecruitListCount() {
   $.ajax({
      url : "./recruitlistCount.do",
      type: "get",
      data: {page:0, choice:$("#_choice").val(), search:$("#_searchWord").val()},
      success: function( count ) {
         //alert('success');

         loadPage(count);
      },
      error: function() {
         alert('error');
      }
   });
}
 */

//paging 처리
function loadPage( totalCount ) {

    //alert("토탈카운트"+totalCount);

   let pageSize = 5;
   let nowPage = 1;

//   let totalCount = 51;      //글의 총수
//   let pageSize = 10;         //페이지의 크기 [1]~[10]
//   let nowPage = 1;         //현재페이지

   let _totalPages = totalCount/pageSize;
   if(totalCount % pageSize > 0 ){
      _totalPages++;
   }

   //alert('몇개냐 :'+_totalPages);

   $("#pagination").twbsPagination({
      startPage: 1,
      totalPages : _totalPages,
      visiblePages : 7,
      first: '<span aria-hidden = "true">«</span>',
      prev : "이전",
      next : "다음",
      last : '<span aria-hidden = "true">»</span>',
      initiateStartPageClick:false,            //onPageClick 자동 실행되지 않도록 한다
      onPageClick : function(event, page) {
         nowPage = page;
         //alert('nowPage:'+ page);
         //getrecruListData(page -1);
         getrecruitSearchList(page -1);
      }
   });
}


function deleteRecruit(jobSeq) {
   location.href="deleteRecruit.do?jobSeq="+jobSeq;
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
         let app = "<option value='"+val.buscode1+"'class='list_col1' name='buscode1' id='buscode1'>"+
                 val.buscodename1+
                 "</option>";

         $("#_buscodeList1").append(app);
      });
   },
   error:function(){
      alert('error');
   }

 }); // ajax

}); // document ready


//두번째 BUSCODE2 DATA를 받아서 체크박스로 뿌려주는 코드
$(document).on("change","#_buscodeList1", function(){

   //alert('변경');
   //alert( $(this).prop("selected"));

    let buscode = $(this).find(":selected").val();
     //alert(buscode);


        //alert("체크");
        //alert($(this).val());


        $.ajax({
           url : "./buscode2ListData.do",
           type : "get",
           data: {"buscode":buscode},
           success:function(list){
              //alert('success');
              //alert(list);

              $(".list_col2").remove();



              $.each(list, function(i, val){
                     let app = "<option class='list_col2' id='buscode2' name='buscode2' value='"+val.buscode2+"'>"+
                              val.buscodename2+
                                "</option>";

                  $("#_buscodeList2").append(app);
              });
           },
           error:function(){
              alert('error');
           }

         });



    });
    /* else if($(this).is(":checked")==false){
        alert("체크 해제");
    } */




let count = 1;
//마지막 BUSCODE3 DATA를 받아서 체크박스로 뿌려주는 코드
$(document).on("change","#_buscodeList2", function(){


      //alert("체크");
        //alert($(this).val());

        let buscode = $(this).find(":selected").val();
        //alert(buscode);

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



              //기존에 체크 되어있던 값은 체크가 되어있도록 속성 설정해주는 코드 초기셋팅
              var stackValue = $("input[name='buscode']").length;
             var stackData = new Array(stackValue);
              //alert(stackValue);

              for(var i=0; i<stackValue; i++){
                 stackData[i] = $("input[name='buscode']")[i].value;
              }
              //alert("길이"+stackData.length);


              $.each(list, function(i, val){
                 let app = "";

                 //stackname = 밑에태그 아이디.val (elements) 배열로 해야될듯

                    app +=    "<div class='form-check mt-2 form-check-inline list_col3' id='buscodeList3'>"+
                     "<input class='form-check-input list_col3' name="+count+" id='buscode3data"+count+"' value='"+val.buscode+"' data-value='"+val.busname+"' type='checkbox'>"+
                     "<label class='form-check-label' for='exampleCheck1'>"+val.busname+
                     "</label></div>";

                     if((i+1)%2==0){
                       app += "</br>";
                    }

            $("#_buscodeList3").append(app);


            //기존에 체크 되어있던 값은 체크가 되어있도록 속성 설정해주는 코드 최종진행
            var buscodeTag ="buscode3data"+count;

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

      let buscode = $(this).val();
      var count = $(this).attr('name');

      //데이터 밸류 값으로 busname값을 받아옴
      let busname = $(this).data("value");
      //alert("버스네임(데이터밸류네임):"+busname);
      //alert(buscode);

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


   //체크박스에서 체크 해제 했을때
   //체크박스 해제가 될때 밑에 부분에 적재되있는 같은 데이터의 span태그도 삭제
   //else{
   else if($(this).is(":checked") == false){
      //alert("위에 셀렉코드 : "+$(this).data("code"));
      //data 속성 가져오기 (data-code)
      selectedBuscode = $(this).data("code");
      //alert('위에 셀렉코드 :'+ selectedBuscode);

      document.getElementById(selectedBuscode).remove();
   }


});


//밑에 쌓여있는 span태그에서 X버튼을 눌렀을때 위에 체크박스도 같이 체크 해제가 되도록 해주는 코드
function delSelBuscode(cnt, count) {
   //alert(count);

   var spanid = "selectedBuscode"+cnt;
   //alert('밑에셀렉코드 :'+spanid);

   var buscodeTag ="buscode3data"+count;
   //alert(buscodeTag);

   const spantag = document.getElementById(spanid);
   //alert(spantag);

   //스판태그 삭제
   document.getElementById(spanid).remove();

   //체크박스 체크해제
   document.getElementById(buscodeTag).checked = false;


}





//첫번째 AREA1 DATA를 받아서 체크박스로 뿌려주는 코드
//AREA LIST -> 클래스 네임 : list_col4(area1) list_col5(area2)
$(document).ready(function() {


$.ajax({
   url : "./areacodeListData.do",
   type : "get",
   success:function(list){
      //alert('success');
      //alert(list);


      $(".list_col4").remove();

      $.each(list, function(i, val){

         //alert(val.jobSeq);

         //let app = "<input type='checkbox' class='list_col' name='buscode' value='"+val.buscode1+"' class='form-control'>"+val.buscodename1
         let app = "<option value='"+val.area1code+"'class='list_col4' name='areacode1' id='areacode1'>"+
                 val.area1name+
                 "</option>";

         $("#_areacodeList1").append(app);
      });
   },
   error:function(){
      alert('error');
   }

 }); // ajax

}); // document ready

let count2 = 1;
//마지막 AREA DATA를 받아서 체크박스로 뿌려주는 코드
$(document).on("change","#_areacodeList1", function(){


      //alert("체크");
      //alert($(this).val());

      let areacode = $(this).find(":selected").val();
      //alert(areacode);

      $.ajax({
         url : "./areacode2ListData.do",
         type : "get",
         data: {"areacode":areacode},
         success:function(list){
            //alert('success');
            //alert(list);


            //$("_buscodeList3 *").remove(); //내부 요소만 삭제


            $("#_areacodeList2 *").remove();
            $("#areacodeList2").remove();

          var parent = document.getElementById('_areacodeList2');
          var var1   = parent.getElementsByTagName('br');

          for(var i = var1.length; i--;) {
              var1[i].parentNode.removeChild(var1[i]);
          }


            //기존에 체크 되어있던 값은 체크가 되어있도록 속성 설정해주는 코드 초기셋팅
               var stackValue = $("input[name='areacode']").length;
             var areaStackData = new Array(stackValue);
              //alert(stackValue);

              for(var i=0; i<stackValue; i++){
                 areaStackData[i] = $("input[name='areacode']")[i].value;
              }
              //alert("길이"+stackData.length);


            $.each(list, function(i, val){
                 let app = "";

                 //stackname = 밑에태그 아이디.val (elements) 배열로 해야될듯

                    app +=    "<div class='form-check mt-2 form-check-inline' id='areacodeList2'>"+
                     "<input class='form-check-input list_col5' name="+count2+" id='areacode2data"+count2+"' value='"+val.area2name+"' type='checkbox'>"+
                     "<label class='form-check-label' for='exampleCheck1'>"+val.area2name+
                     "</label></div>";

                     if((i+1)%2==0){
                       app += "</br>";
                    }

            $("#_areacodeList2").append(app);


            //기존에 체크 되어있던 값은 체크가 되어있도록 속성 설정해주는 코드 최종진행
            var areacodeTag ="areacode2data"+count2;

            for(var i=0; i<stackValue; i++){
                if(areaStackData[i] == val.area2name){
                   document.getElementById(areacodeTag).checked = true;
                }
              }



            count2+=1;

            });



         },
         error:function(){
            alert('error');
         }

       });

  /* else if($(this).is(":checked")==false){
      alert("체크 해제");
  } */

});



//span Tag에 동적 id를 주기 위한 인덱스용 넘버
let cnt2 = 1;

var selectedAreacode = "";

//지역 소분류 체크박스가 변경될때 실행
$(document).on("change", ".list_col5" , function(){
   //$(".list_col3").change(function(){


   let app ="";



      //if($("input:checkbox['.list_col3']").is(":checked") == true){
      //if($(this).is(":checked") == true){
      if($(this).is(":checked") == true){

      let areacode = $(this).val();
      var count2 = $(this).attr('name');
      //alert(buscode);

      app = "<span class=arrAreadata id=selectedAreacode"+cnt2+">"+areacode+
           "<input name='area2name' type='hidden' value='"+areacode+"'>"+
           "<a onclick='delSelAreacode("+cnt2+","+count2+")'>"+
           "<img alt='왜안뜨지' src='ma.jpg' style='width:30px; height:30px;'>"+
           "</a>"+"</span>"+"&nbsp;&nbsp;";


        var id = $(this).attr("id");
      //alert(id);
      let input = document.getElementById(id);

      $(this).removeData('code');

       //HTML data 속성 사용
      input.dataset.code = 'selectedAreacode'+cnt2;

      //alert('datacode 생성: '+'selectedBuscode'+cnt);

      //alert('datacode 리얼: ' + $(this).data("code"));

      $("#selectResult").append(app);
      cnt2 += 1;

   }


   //체크박스에서 체크 해제 했을때
   //체크박스 해제가 될때 밑에 부분에 적재되있는 같은 데이터의 span태그도 삭제
   //else{
   else if($(this).is(":checked") == false){
      //alert("위에 셀렉코드 : "+$(this).data("code"));
      //data 속성 가져오기 (data-code)
      selectedAreacode = $(this).data("code");
      //alert('위에 셀렉코드 :'+ selectedBuscode);

      document.getElementById(selectedAreacode).remove();
   }


});


//밑에 쌓여있는 span태그에서 X버튼을 눌렀을때 위에 체크박스도 같이 체크 해제가 되도록 해주는 코드
function delSelAreacode(cnt2, count2) {
   //alert(count);

   var spanid = "selectedAreacode"+cnt2;
   //alert('밑에셀렉코드 :'+spanid);

   var areacodeTag ="areacode2data"+count2;
   //alert(buscodeTag);

   const spantag = document.getElementById(spanid);
   //alert(spantag);

   //스판태그 삭제
   document.getElementById(spanid).remove();

   //체크박스 체크해제
   document.getElementById(areacodeTag).checked = false;


}



$("#deleteResult").click(function() {
	alert('선택함');
	$(".arrAreadata").remove();
	$(".arrBusdata").remove();

	$( ".list_col5" ).prop("checked", false);
	$( ".list_col3" ).prop("checked", false);

});





</script>

</body>
</html>
