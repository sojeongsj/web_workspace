<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<body> 
<h3> 주문 입력</h3> 
<hr> 
<form action = "orderConfirm2.jsp" method="post"> <!-- 문제 1 -->
<input type = "text" name = "email" placeholder = "고객이 메일을 입력하세요."> 
<input type = "text" name = "pcode" placeholder = "상품코드 입력하세요."> 
<input type = "number" name = "quantity" placeholder = "수량을 입력하세요."> 
<button>주문</button> 


<!-- 문제 1. method="post" 실행화면에서 URL이
http://localhost:8081/jsp1/day5/orderConfirm2.jsp?email=%ED%99%8D%EA%B8%B8%EB%8F%99&pcode=112312&quantity=3
처럼 보이지않고
http://localhost:8081/jsp1/day5/orderConfirm2.jsp
처럼 보이기때문에 전송방식이 post인것을 알 수 있다.
 -->
<!-- 문제 2. form 태그 안에서 button은 type="submit" 이 생략된 형태이다. -->
<!-- 문제 3. email, pcode, quantity -->
</form> 
</body> 
</body>
</html>