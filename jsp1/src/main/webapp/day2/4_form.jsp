<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>4form.jsp</title>
</head>
<body>
<h3>파라미터 보내는 폼</h3>
<form action="5_receive.jsp">
	<h4>회원</h4>
	<input name ="name" placeholder="이름" value="김땡땡" readonly >
	<input name ="age" placeholder="나이">
	<hr>
	<h4>상품</h4>	<!-- disabled : 비황성화 -->
	<input name ="pname" placeholder="상품명" value="갤럭시" disabled="disabled">
	<input name ="pcode" placeholder="상품코드">
	<input type="hidden" value="10111" name="pno">
	
	<button>전송(제출,보내기,저장)</button>
	<!-- button type = 'submit' : 폼태그 안에 있을때 type 생략 -->


</form>
</body>
</html>