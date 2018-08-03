<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="content">
	<div id="content-box">
	<div id="content-box-search">
		<select name="option" id="option">
			<option value="none">검색조건</option>
			<option value="mem_id">아이디</option>
			<option value="name">이 름</option>
			<option value="team_id">팀 명</option>
		</select>
		<input type="text" id="word" placeholder="검색어 입력"/>
		<input type="button" id="searchBtn" value="검색"/>
	</div>
	<table id="contentBoxTab">
		<tr id="contentBoxMeta">
			<th>아이디</th>
			<th>이 름</th>
			<th>나 이</th>
			<th>성 별</th>
			<th>역 활</th>
			<th>팀 명</th>
		</tr>
		<c:forEach items="${list}" var="member">
		<tr>
			<td>${member.memberId}</td>
			<td><a class="username" id="${member.memberId}">${member.name}</a></td>
			<td>${member.age}</td>
			<td>${member.gender}</td>
			<td>${member.roll}</td>
			<td>${member.teamId}</td>
		</tr>
		</c:forEach>
		<tr>
			<td colspan="6">
				<%-- 전체 회원수 : ${count} --%>
				<c:forEach begin="1" end="${count/5}" step="1" var="i" >
					<span class="pageNum" id="page${i}">${i} </span>				
				</c:forEach> 
			</td>
		</tr>
	</table>
	</div>
</div>
<script>
	admin.main('${context}');
/*
service.addClass(
		document.getElementById(''),
		'className '  한개일땐 뒤에 빈칸넣기
); */




</script>








