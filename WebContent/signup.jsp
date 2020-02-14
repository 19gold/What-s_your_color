<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.SQLException" %>
<%@page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Connection" %>
<%@page import ="DB.databases" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
<%
	request.setCharacterEncoding("euc-kr");

	 
	String name = request.getParameter("name");
	String id = request.getParameter("id");
	String psw = request.getParameter("psw");
	String email = request.getParameter("email");
//	String review = request.getParameter("review");


	
	Connection con=null;
	PreparedStatement pstmt=null;
	String sql="insert into member values(?,?,?,?)";
	int n=0;
	System.out.println("sql = "+sql);
	try{
		System.out.println("1");
		con=databases.getCon();
		pstmt=con.prepareStatement(sql);
		pstmt.setString(1,name);
		System.out.println("2");
		pstmt.setString(2,id);
		System.out.println("3");
		pstmt.setString(3,psw);
		System.out.println("4");
		pstmt.setString(4,email);
		System.out.println("5");
		//pstmt.setString(6,"");
		
		n=pstmt.executeUpdate();
		System.out.println(n);
	}catch(SQLException se){
		System.out.println(se.getMessage());
	}finally{
		try{
			if(pstmt!=null)pstmt.close();
			if(con!=null)con.close();
		}catch(SQLException se){
			System.out.println(se.getMessage());
		}
	}
	
%>

<script>
	if(<%=n%> > 0) {
		alert("회원가입 성공");
		location.href="../main.jsp";
	}else{
		alert("회원가입 실패");
		history.go(-1);
	}
	
</script>
</body>
</html>