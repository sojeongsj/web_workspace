<%@page import="sample.dao.MemberDao"%>
<%@page import="sample.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
request.setCharacterEncoding("UTF-8");
%>

<jsp:useBean id="dto" class="sample.dto.MemberDto"/>

<jsp:setProperty property="custno" name="dto" param="number"/>
<jsp:setProperty property="custname" name="dto" param="name"/>
<jsp:setProperty property="phone" name="dto" param="phone"/>
<jsp:setProperty property="address" name="dto" param="add"/>
<jsp:setProperty property="grade" name="dto" param="grade"/>
<jsp:setProperty property="city" name="dto" param="city"/>
<hr>
<jsp:getProperty property="custno" name="dto"/>
<jsp:getProperty property="custname" name="dto"/>
<jsp:getProperty property="phone" name="dto"/>
<jsp:getProperty property="address" name="dto"/>
<jsp:getProperty property="grade" name="dto"/>
<jsp:getProperty property="city" name="dto"/>




<% 
	MemberDao dao = MemberDao.getMemberDao();
	dao.insert(dto);
%>
<script type="text/javascript">
location.href = ('MemberList.jsp')
</script>