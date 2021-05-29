<%@page import="bit.com.a.dto.RecruitDto"%>
<%@page import="bit.com.a.util.UtilEx"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bit.com.a.dto.CalendarParam"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>
a {
color: #fff; text-decoration: none; outline: none;
}

table {
    border-collapse: collapse;
}

table, td, th {
    border: 1px solid #707070;
    font-weight: bold;
    font-size: 20px;
    background-color: #e4e6ff;
}
.sunday a{
   color: red !important;
   text-align: left;
   vertical-align: top;
   background-color: #e4e6ff;
}
.satday a{
   color: blue !important;
   text-align: left;
   vertical-align: top;
   background-color: #e4e6ff;
   font-weight: bolder;
}
.otherday a{
   color: black !important;
   text-align: left;
   vertical-align: top;
}
.days2{
   font-size:20px;
   color: #4D6BB3;
   text-align: center;
   vertical-align: middle;
}
.days3{
   font-size:16px;
   color: #4D6BB3;
   text-align: center;
   vertical-align: middle;
   background-color:#4D6BB3; color:#FFFFFF; line-height:1.7em; font-weight:normal;
}
.innerTable {
    border: 0px ;
}

.nodays{
   background-color: #d7d7d7;
}
</style>

<%
 List<RecruitDto> list = new ArrayList<>();
Object objlist = request.getAttribute("flist");
if(objlist != null){
	list = (List<RecruitDto>)objlist;
}

CalendarParam cal = (CalendarParam)request.getAttribute("cal");

// 요일
int dayOfWeek = cal.getDayOfWeek();
int lastDayOfMonth = cal.getLastDay();
int year = cal.getYear();
int month = cal.getMonth();


//<< year--
String pp = String.format("<a href='%s?year=%d&month=%d'>" + "<img src='./image/left.gif'></a>",
                        "calendarlist.do", year-1, month);

// < month--
String p = String.format("<a href='%s?year=%d&month=%d'>" + "<img src='./image/prec.gif'></a>",
                        "calendarlist.do", year, month-1);

// > month++
String n = String.format("<a href='%s?year=%d&month=%d'>" + "<img src='./image/next.gif'></a>",
                        "calendarlist.do", year, month+1);

// >> year++
String nn = String.format("<a href='%s?year=%d&month=%d'>" + "<img src='./image/last.gif'></a>",
                        "calendarlist.do", year+1, month);

// 월별 일정
String url = String.format("%s?year=%d&month=%d", "calendarMonth.do", year, month);
%>

<div style="text-align: left;">
   <a href="<%=url %>">
      <font size="3em">월별 일정:  ${cal.year}년  ${cal.month}월 </font>
   </a>
</div>

<div class="box_border" style="margin-top: 5px; margin-bottom: 10px">

   <table style="width: 80%; margin-left: auto; margin-right: auto;" >
   <col width="100px">
   <col width="100px">
   <col width="100px">
   <col width="100px">
   <col width="100px">
   <col width="100px">
   <col width="100px">

      <thead>
         <tr height="100px">
            <td class="days2" colspan="7">
               <%=pp %><%=p %>&nbsp;
               <font color="#707070" style="font-size: 42px; font-weight: bold;">
                  <%=String.format("%d년&nbsp;%d월", year, month) %>
               </font>
               <%=n %><%=nn %>
            </td>
         </tr>

         <tr height="50px">
            <th class="days3">일</th>
            <th class="days3">월</th>
            <th class="days3">화</th>
            <th class="days3">수</th>
            <th class="days3">목</th>
            <th class="days3">금</th>
            <th class="days3">토</th>
         </tr>
      </thead>
      <tr height="100px">
         <%
         for(int i = 1;i < dayOfWeek; i++){
            out.println("<td class='nodays'>&nbsp;</td>");
            }

         for(int i = 1;i <= lastDayOfMonth; i++){
            if( (i + dayOfWeek - 1) % 7 == 1){   // 일요일
            %>
               <td class="sunday"><%=UtilEx.callist(year, month, i) %>&nbsp;<%--=UtilEx.showPen(year, month, i) --%>
                   <%=UtilEx.makeTable(year, month, i, list) %>
               </td>
            <%
            }else if( (i + dayOfWeek - 1) % 7 == 0){   // 토요일
               %>
               <td class="satday"><%=UtilEx.callist(year, month, i) %>&nbsp;<%--=UtilEx.showPen(year, month, i) --%>
                   <%=UtilEx.makeTable(year, month, i, list) %>
               </td>
               <%
            }else{   // 평일
               %>
               <td class="otherday"><%=UtilEx.callist(year, month, i) %>&nbsp;<%--=UtilEx.showPen(year, month, i) --%>
                   <%=UtilEx.makeTable(year, month, i, list) %>
               </td>
               <%
               }

            if((i + dayOfWeek - 1) % 7 == 0 && i != lastDayOfMonth ){
               %>
      </tr>
      <tr height="100px">
            <%
            }
         }

      for(int i = 0;i < (7 - (dayOfWeek + lastDayOfMonth - 1)%7)%7 ; i++){
         out.println("<td class='nodays'>&nbsp;</td>");
         }
         %>
      </tr>
   </table>
</div>
