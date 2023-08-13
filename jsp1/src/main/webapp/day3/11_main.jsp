<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>11_main.jsp</title>
</head>
<body>
	<!-- 7_top.jsp 에 전달되는 파라미터
	파라미터 이름 username 값은 kim -->
<jsp:include page="../day2/7_top.jsp">
	<jsp:param value="kim" name="username"/>
</jsp:include>
	<main>
		<h3>:::: MAIN ::::</h3>
		<a href="12_useBean.jsp?uname=김빵빵&age=24">useBean 테스트</a><br>
		<form action="12_useBean.jsp">
			<input placeholder="이름" name="uname">
			<input placeholder="나이" name="age">
			<input placeholder="주소" name="address">
			<button>제출</button>
		</form>
		<hr>
		<h3>useBean의 scope = 'request' 테스트</h3>
		<form action="13_forward.jsp">
			<input placeholder="이름" name="uname">
			<input placeholder="나이" name="age">
			<input placeholder="주소" name="address">
			<button>제출</button>
		</form>
	</main>
<jsp:include page="../day2/8_bottom.jsp"/>
</body>
</html>