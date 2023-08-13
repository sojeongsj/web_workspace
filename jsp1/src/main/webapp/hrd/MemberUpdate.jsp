<%@page import="sample.dto.MemberDto"%>
<%@page import="sample.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> <!-- HTML5 -->
<html>
<head>
<meta charset="UTF-8"> <!-- euc-kr : 대한민국 코드 -->
<title>Layout(외부평가)</title>
<link rel="stylesheet" href="Layout.css?v=3">
<link rel="stylesheet" href="MemberUpdate.css?v=3">
</head>
<body>
<!-- 정보 수정 화면은 현재값을 먼저 보여주고 수정할 수 있게 함. custno 즉 PK값으로
db에서 select 한 결과를 화면에 표시하는 코드가 필요함 -->
<!-- MemberList.jsp 에서 보낸 파라미터를 받아 custno 변수에 저장, value에서 출력 -->
<% 
	String custno = request.getParameter("custno");
	MemberDao dao = MemberDao.getMemberDao();
	MemberDto dto = null;
	if(custno != null){		/* 수정할 데이터를 가져오기 (참고 : custno가 테이블 PK 값)  */
		dto = dao.selectOne(Integer.parseInt(custno));
	}
%>
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
		<!-- action은 input 데이터를 전달받고 처리할 url
		MemberSave.jsp를 만들고 전달받은 파라미터로 update 실행
		이 파일에는 자바코드만 작성하고 태그는 필요없음
		MemberUpdate.jsp에서 보내는 파라미터 이름은 input 태그의 name 속성 -->
		<form action="UpdateSave.jsp" method="post">
		<!-- 이후 자바코드 작성할때 가독성, 편리성 위해 input name 이름은 DTO 클래스 변수명과 동일하게
		UpdateSave.jsp 의 파라미터 저장변수도 DTO와 동일하게 -->
		<table>
			<tr>
				<td><label for="custNo">회원번호</label></td>
				<!-- MemberList.jsp 에서 보낸 파라미터를 받아 custno 변수에 저장, value에서 출력 -->
				<td><input type="text" id="custNo" value="<%= custno %>">
					<input type="hidden" name="number" value="<%= custno %>">
				</td>
			</tr>

			<tr>
				<td><label for="custName">회원성명</label></td>
				<td><input type="text" id="custName" name="name" value="<%= dto.getCustname() %>">
				</td>
			</tr>

			<tr>
				<td><label for="custPhone">회원전화</label></td>
				<td><input type="text" id="custPhone" name="phone" value="<%= dto.getPhone() %>"></td>
			</tr>

			<tr>
				<td><label for="custAdd">회원주소</label></td>
				<td><input type="text" id="custAdd" name="add" value="<%= dto.getAddress() %>" ></td>
			</tr>
			<tr>
				<td><label for="custDate">가입일자</label></td>
				<td><input type="text" id="custDate" name="date" value="<%= dto.getJoindate() %>"></td>
			</tr>
			<tr>
				<td><label for="custGrade">고객등급[A:VIP B:일반 C:직원]</label></td>
				<td><input type="text" id="custGrade" name="grade" value="<%= dto.getGrade()  %>" ></td>
			</tr>
			<tr>
				<td><label for="custCity">도시코드</label></td>
				<td><input type="number" id="custCity" name="city" value="<%= dto.getCity() %>"></td>
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