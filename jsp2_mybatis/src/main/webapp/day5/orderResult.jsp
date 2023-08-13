<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>주문 확인</h3>
<hr>
<ul>
	<li>고객 이메일 : ${order.email}</li>
	<li>고객 이메일 : ${order.pcode}</li>
	<li>고객 이메일 : ${order.quantity}</li>
</ul>
<hr>
<button onclick = "location.href='orderForm.jsp'">추가주문</button>
<script type="text/javascript">alert('주문완료 되었습니다.')</script>
</body>

<!-- 문제 11. order.email 
useBean 으로 생성된 자바빈 attribute는 EL기호를 사용하여 값을 가져올 수 있다. 
orderConfirm.jsp 에서 
<jsp:useBean id = "order" class = "sample.dto.OrderDto" scope="request"/> 로 
order 라는 자바빈 attribute를 전달해주었기 때문에, 해당하는 attribute를 사용하기 위해 EL기호를 사용하여
order에 해당하는 email, pcode, quantity 값을 가져온 것이다.
-->
</html>