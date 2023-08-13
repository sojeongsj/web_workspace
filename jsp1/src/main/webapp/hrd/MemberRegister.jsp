<%@page import="sample.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Layout(외부평가)</title>
<link rel="stylesheet" href="Layout.css?v=3">
<link rel="stylesheet" href="MemberRegister.css?v=3">
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
		<h3>홈쇼핑 회원 등록</h3>
		<form action="RegisterSave2.jsp">
		<table>
			<tr>
				<td><label for="custNo">회원번호(자동발생)</label></td>
				<td><input type="text" id="custNo" name="number">
					
				</td>
			</tr>


			<tr>
				<td><label for="custName">회원성명</label></td>
				<td><input type="text" id="custName" name="name">
				</td>
			</tr>

			<tr>
				<td><label for="custPhone">회원전화</label></td>
				<td><input type="text" id="custPhone" name="phone"></td>
			</tr>

			<tr>
				<td><label for="custAdd">회원주소</label></td>
				<td><input type="text" id="custAdd" name="add"></td>
			</tr>
			<tr>
				<td><label for="custDate">가입일자</label></td>
				<td><input type="date" id="custDate" name="date"></td>
			</tr>
			<tr>
				<td><label for="custGrade">고객등급[A:VIP B:일반 C:직원]</label></td>
				<td><input type="text" id="custGrade" name="grade"></td>
			</tr>
			<tr>
				<td><label for="custCity">도시코드</label></td>
				<td><input type="number" id="custCity" name="city"></td>
			</tr>
			
			<tr>
				<td colspan="2">
					<button>등록</button>
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
	<script type="text/javascript">
	<% 
		MemberDao dao = MemberDao.getMemberDao();
		int custNew = dao.getCustNo()+1;
	%>
	
	function dateFormat(vdate, symbol) {
		let year = vdate.getFullYear()
		let month = (vdate.getMonth() + 1).toString().padStart(2, '0')
		let dates = vdate.getDate().toString().padStart(2, '0')
		let result = [ year, month, dates ].join(symbol)
		return result
	}
	
	const today = document.forms[0].date
	
	today.value = dateFormat(new Date(), '-')
	
	const custNumber = document.forms[0].number
	
	custNumber.value = <%= custNew%>
	</script>



</body>
</html>