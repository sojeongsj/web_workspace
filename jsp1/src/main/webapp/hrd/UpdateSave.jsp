<%@page import="sample.dao.MemberDao"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Date"%>
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
	
	out.print(custNo);
	out.print(name);
	out.print(custPhone);
	out.print(custAdd);
	out.print(custGrade);
	out.print(custCity);

	MemberDto mt = new MemberDto(custNo,name,custPhone,custAdd,
			null,custGrade,custCity);
			
	MemberDao dao = MemberDao.getMemberDao();
	dao.update(mt);
	
	/* out.print("<script>");
	out.print("alert('회원 정보 수정이 완료되었습니다.');");
	out.print("</script>"); 
	out.print("location.href='MemberList.jsp'");  */
%>


<script type="text/javascript">alert('정보수정이 완료되었습니다!')</script>
<jsp:forward page="MemberList.jsp"></jsp:forward>
