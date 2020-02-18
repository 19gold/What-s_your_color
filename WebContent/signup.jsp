<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.Connection"%>
<%@page import="DB.databases"%>
<%@page import="DB.DBvar"%>
<%@page import="DB.DBlist"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<%
	request.setCharacterEncoding("euc-kr");
	
	databases databases = new databases();
	DBvar dv=new DBvar();
	DBlist dl=new DBlist();
	Connection con=databases.getCon(); 
	
	String msg, url;
	
	
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String psw = request.getParameter("psw");
		String email = request.getParameter("email");
		
		dv.setName(name);
		dv.setId(id);
		dv.setEmail(email);
		dv.setPsw(psw);
		
		System.out.println("set 하는 부분 ");
		
		int result=dl.insertmember(dv);
		System.out.println("result"+result);
		msg="회원가입 실패";
		url="member.jsp";
		if(result==1){
			msg="회원가입 성공";
			url="member.jsp";
		}
		
	
	
%>

<script>
	alert("<%=msg%>");
	location.href="<%=url%>";
	
</script>
</body>
</html>