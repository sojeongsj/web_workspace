<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>14_beanForward.jsp</title>
</head>
<body>
<h3>요청 전달 받기</h3>
<p>13_forward.jsp로부터 요청을 전달받은 페이지
*주의 : 실행은 13_forward.jsp 에서 함</p>
<ul>
	<li>URL = http://localhost:8081/jsp1/day3/13_forward.jsp</li>
	<li>화면에 표시되는 페이지 = 14_beanForward.jsp</li>
</ul>
<p>요청이 전달될 때, url은 변경되지않음. 요청을 전달한 13_forward.jsp의 출력은 버퍼에서 삭제되므로 웹페이지에
표시되지 않음. 
13_forward,jsp 에서 jsp:useBean scope = "request"로 하면 자바빈 데이터가
14_beanForward.jsp 에 요청과 함께 전달됨</p>
<!-- 자바빈을 사용(가져오기)하는 useBean 
scope="request"를 작성하지않으면 pageScope 에서 reqDto빈을 찾음
pageScope 에서는 reqDto 자바빈이 없으므로 null-->
<jsp:useBean id="reqDto" class="sample.dto.MyUser" scope="request"/>
<%out.println(reqDto); %>
</body>
</html>