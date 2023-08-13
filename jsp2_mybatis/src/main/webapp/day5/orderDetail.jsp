<%@page import="java.util.List"%>
<%@page import="sample.dto.OrderDto"%>
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
<% 
String email = request.getParameter("email"); 
OrderDao dao = OrderDao.getOrderDao(); 
List<OrderDto> list = dao.selectByEmail(email); 
%> 
<h3> <%=email%> 고객 주문 현황</h3 > 
<hr > 
<table style ="width : 500px ;"> 
<tr> <th style =" width : 200px;"> 상품코드</th ><th style =" width : 100px ;"> 수량</th> 
<th style =" width : 200px ;"> 주문날짜</th> 
</tr> 
<% 
	for(OrderDto dto : list) {
%> 
<tr> <td style =" text-align : center ;"> <%= dto.getPcode() %> </td > 
<td style =" text-align : center ;" > <%= dto.getQuantity() %> </td > 
<td style =" text-align : center ;" > <%= dto.getOrderdate() %> </td > 
</tr> 
<% 
} 
%> 
</table>

<!-- 문제 7. request.getParameter("email") orderList.jsp 에서 orderDetail.jsp?email 로 전달해준 email의 파라미터값을 가져오기 위해 사용한 코드-->
<!-- 문제 8. for(OrderDto dto : list) {
OrderDto 타입의 list를 반복시켜 table에 출력시키기 위해 향상for문 사용 -->
</body>
</html>