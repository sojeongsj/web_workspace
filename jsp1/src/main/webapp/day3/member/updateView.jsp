<%@page import="sample.dto.MemberDto"%>
<%@page import="sample.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> <!-- HTML5 -->
<html>
<head>
<meta charset="UTF-8"> <!-- euc-kr : 대한민국 코드 -->
<title>Layout(외부평가)</title>
<link rel="stylesheet" href="../../css/Layout.css?v=3">
<link rel="stylesheet" href="../../css/MemberUpdate.css?v=3">
</head>
<body>
<!-- 정보 수정 화면은 현재값을 먼저 보여주고 수정할 수 있게 함. custno 즉 PK값으로
db에서 select 한 결과를 화면에 표시하는 코드가 필요함 -->
<!-- MemberList.jsp 에서 보낸 파라미터를 받아 custno 변수에 저장, value에서 출력 -->
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
		<h3>홈쇼핑 회원 수정</h3>
		<!-- el을 쓰면 getAttribute() 역할을 함 -->
		<jsp:useBean id="member" class="sample.dto.MemberDto" scope="request"/>
		<form action="UpdateSave.jsp" method="post">

		<table>
			<tr>
				<td><label for="custNo">회원번호</label></td>
				<!-- param은 getParameter() 동작의 el에서 사용하는 객체 -->
				<td><input type="text" id="custNo" value="${member.custno}">
					<input type="hidden" name="custno" value="${param.custno}">
				</td>
			</tr>

			<tr>
				<td><label for="custName">회원성명</label></td>
				<td><input type="text" id="custName" name="name" value="${member.custname}">
				</td>
			</tr>

			<tr>
				<td><label for="custPhone">회원전화</label></td>
				<td><input type="text" id="custPhone" name="phone" value="${member.phone}"></td>
			</tr>

			<tr>
				<td><label for="custAdd">회원주소</label></td>
				<td><input type="text" id="custAdd" name="add" value="${member.address}" ></td>
			</tr>
			<tr>
				<td><label for="custDate">가입일자</label></td>
				<td><input type="text" id="custDate" name="date" value="${member.joindate}"></td>
			</tr>
			<tr>
				<td><label for="custGrade">고객등급[A:VIP B:일반 C:직원]</label></td>
				<td><input type="text" id="custGrade" name="grade" value="${member.grade}" ></td>
			</tr>
			<tr>
				<td><label for="custCity">도시코드</label></td>
				<td><input type="number" id="custCity" name="city" value="${member.city}"></td>
			</tr>
			
			<tr>
				<td colspan="2">
					<button >수정</button>
					<button type="button" onclick="location.href='MemberList.jsp'">조회</button>
					
		
					<!-- onclick은 자바 스크립트 코드를 작성 -->
				</td>
			</tr>
		</table>
		</form>
	</section>
	<footer>
	<h4>HRDKOREA Copyright@2016 All rights reserved. Human Resources Development Service of Korea.</h4>
	</footer>



</body>
</html>