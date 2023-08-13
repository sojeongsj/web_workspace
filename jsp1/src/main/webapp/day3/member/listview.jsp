<%@page import="java.util.List"%>
<%@page import="sample.dao.MemberDao"%>
<%@page import="sample.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ListView.jsp-화면출력 페이지</title>
<link rel="stylesheet" href="../../hrd/Layout.css">
<link rel="stylesheet" href="../../hrd/MemberList.css?v=3">
</head>
<body>
<header>
	<h2>홈쇼핑 회원관리 ver1.0</h2>
	</header>
	<nav>
		<ul>
			<li><a href="MemberRegister.jsp">회원등록</a></li>
			<li><a href="MemberList.jsp">회원목록조회/수정</a></li>
			<li><a href="MemberSales.html">회원매출조회</a></li>
			<li><a href="index.html">홈으로</a></li>
		</ul>
	</nav>
	<section>
		<h3>회원목록 조회/수정</h3>
		<table>
			<tr>
				<th>회원번호</th>
				<th>회원성명</th>
				<th>전화번호</th>
				<th>주소</th>
				<th>가입일자</th>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
				<th>고객등급</th>
				<th>거주지역</th>
			</tr>

	<c:forEach var="mem" items="${list}">
	<tr>
		<td>${mem.custno}</td>
		<td>${mem.custname}</td>
		<td>${mem.phone}</td>
		<td>${mem.address}</td>
		<td>${mem.joindate}</td>
		<td>${mem.grade}</td>
		<td>${mem.city}</td>
	</tr>
	</c:forEach>

		</table>
	</section>
	<footer>
	<h4>HRDKOREA Copyright@2016 All rights reserved. Human Resources Development Service of Korea.</h4>
	</footer>
</body>
</html>