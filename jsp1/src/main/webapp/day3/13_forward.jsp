<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>13_forward.jsp</title>
</head>
<body>
<jsp:useBean id="reqDto" class="sample.dto.MyUser" scope="request"/>
<jsp:setProperty property="*" name="reqDto"/>
<jsp:getProperty property="uname" name="reqDto"/>
<jsp:getProperty property="age" name="reqDto"/>
<jsp:getProperty property="address" name="reqDto"/>
<!-- A.jsp가 받은 요청을 B.jsp 에게 전달해주는 동작이 forward	 -->
<h3>요청 받아서 전달하기</h3>
<p>13_forward.jsp가 전달을 보내는 페이지</p>
<jsp:forward page="14_beanForward.jsp"></jsp:forward>
</body>
</html> 