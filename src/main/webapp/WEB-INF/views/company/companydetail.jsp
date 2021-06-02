<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


	<div>
		<p>${company.companyname }</p>
	</div>
<table>
	<tr>
		<th>회사아아디</th>
		<td>${company.companyid }</td>
	</tr>
	
	<tr>
		<th>회사 주소</th>
		<td>${company.address }</td>
	</tr>
	
	<tr>
		<th>사업자 번호</th>
		<td>${company.companynum }</td>
	</tr>
	
	<tr>
		<th>대표자 명</th>
		<td>${company.ceoname }</td>
	</tr>
	
		<tr>
		<th>회사 규모</th>
		<td>${company.companytype }</td>
	</tr>

	<tr>
		<th>직종번호  :</th>
		<td>${company.buscode }</td>
	</tr>

	<tr>
		<th>회사 이미지</th>
		<td>${company.comimage }</td>
	</tr>
	
	<tr>
		<th>사원수</th>
		<td>${company.empcount } 명</td>
	</tr>
	
	<tr>
		<th>평균 연봉</th>
		<td>${company.salaryavg }</td>
	</tr>
	
	<tr>
		<th>초봉</th>
		<td>${company.salarystart }</td>
	</tr>
	
	<tr>
		<th>회사 설립일</th>
		<td>${company.comyear }</td>
	</tr> 

	<tr>
		<th>입사자 수</th>
		<td>${company.joinner } 명</td>
	</tr>
	
	<tr>
		<th>퇴사자 수</th>
		<td>${company.retiree } 명</td>
	</tr>
	
	<tr>
		<th>웹사이트 주소</th>
		<td><a href="${company.website }">${company.website }</a></td>
	</tr>
	
	<tr>
		<th>주요 복지</th>
		<td>${company.mainservice }</td>
	</tr>
	
	<tr>
		<th>연매출</th>
		<td>${company.totalsale }</td>
	</tr>
</table>
