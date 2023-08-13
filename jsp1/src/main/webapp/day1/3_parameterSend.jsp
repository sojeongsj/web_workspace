<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요청 파라미터 보내기</title>
</head>
<body>
<!-- 요청 파라미터 보내기 방법 1. a태그의 쿼리스트링으로 보내기 
	아래예시는 파라미터 이름을 name, age로 정한것 
	값을 전달받는 서버 url은 href 속성값으로 정함-->
<a href="3parameterReceive.jsp?name=김모모">파라미터 1개 보내기</a><br>
<a href="3parameterReceive.jsp?name=김모모&age=24">파라미터 2개 보내기</a>
</body>
</html>