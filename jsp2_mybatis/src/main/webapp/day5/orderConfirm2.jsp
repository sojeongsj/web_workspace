<%@page import="sample.dao.OrderDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id = "order" class = "sample.dto.OrderDto" scope="request"/> 
<jsp:setProperty property = "*" name = "order"/> 
<% 
OrderDao dao = OrderDao.getOrderDao(); 
if (dao.insert(order)==1){ 
%> 
<jsp:forward page = "orderResult.jsp" /> 
<% 
}
%> 
<!-- 문제 9. scope="request" scope란 웹 서버에서 객체 또는 변수가 생성된 후 유효할수 있는 범위를 말함.
scope = "request" 는 하나의 요청이 끝날때까지 정보를 유지하고, forward 액션 태그를 사용하여 다른 
jsp에 요청을 전달해줄때, useBean의 데이터를 다른 jsp에게 전달해주기위해 사용한다. -->
<!-- 문제 10. orderConfirm2.jsp가 받은 요청(request)을 orderResult.jsp 에게 전달해주는 동작을 
forward라 함	-->

</body>
</html>