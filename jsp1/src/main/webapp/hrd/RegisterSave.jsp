<%@page import="sample.dao.MemberDao"%>
<%@page import="sample.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% 
	request.setCharacterEncoding("UTF-8");
	    
	String temp = request.getParameter("number");
	String name = request.getParameter("name");
	String custPhone = request.getParameter("phone");
	String custAdd = request.getParameter("add");
	String custGrade = request.getParameter("grade");
	String custCity = request.getParameter("city");
	int custNo = 0;
	if (temp != null){
		custNo = Integer.parseInt(temp);
	}
	
	
	MemberDto md = new MemberDto(custNo,name,custPhone,custAdd,
			null,custGrade,custCity);
	
	MemberDao dao = MemberDao.getMemberDao();
	
	dao.insert(md);
%>

<jsp:forward page="MemberList.jsp"></jsp:forward>
<jsp:useBean id="memberbean" class="sample.dto.MemberDto"></jsp:useBean>