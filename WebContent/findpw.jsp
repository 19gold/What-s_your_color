<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DB.databases"%>
<%@page import="DB.DBvar"%>
<%@page import="DB.DBlist"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="findpw.css" rel="stylesheet" type="text/css">
<title>PWisfounded</title>
</head>
<body>

<%
	request.setCharacterEncoding("euc-kr");

	databases databases = new databases();
	DBvar dv = new DBvar();
	DBlist dl = new DBlist();
	Connection con = databases.getCon();
	System.out.println("findpw에서 db연동 확인");

	String findId=request.getParameter("id");
	String findName=request.getParameter("name");
	
	System.out.println("findId: "+findId);
	System.out.println("findName: "+findName);
	
	dv.setId(findId);
	dv.setName(findName);
	
	String result=dl.FindPsw(dv);
	System.out.println("findpsw의 result값 - > "+result);
	
	
	
%>
	<div>
		<span>YOUR PASSWORD IS</span><BR> <input type="text" id="txt2"
			disabled  value="<%=result%>"/>
	</div>
	<a href="member.jsp">
		<button type="button" class="enter" id="ent">ENTER</button>
	</a>



</body>
</html>