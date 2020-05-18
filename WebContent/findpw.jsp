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
<meta charset="utf-8">

<title>비밀번호 찾기</title>
<link href="findpw.css?after" rel="stylesheet" type="text/css">

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
	String findId = request.getParameter("id");
	String findName = request.getParameter("name");

	System.out.println("findId: " + findId);
	System.out.println("findName: " + findName);

	String result=null;
	
	dv.setId(findId);
	dv.setName(findName);
	
	
	
	

	result = dl.FindPsw(dv);
	
	
	System.out.println("findpsw의 result값 - > " + result);
	if(result.equals("nofindpsw")) {%>
		<script>alert("아이디가 없습니다. \n 회원가입 해주세요"); location.replace("signupup.jsp");</script>
	<% }%>
	
			<div class="content">
				<span>YOUR PASSWORD IS</span><BR> 
				<input type="text" id="txt2" disabled value="<%=result%>" />
			</div>
		<a href="member.jsp">
			<button type="button" class="enter" id="ent">ENTER</button>
		</a>
</body>
</html>