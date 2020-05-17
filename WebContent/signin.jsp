<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DB.databases"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	//폼의 id & passwd가져오기
	String id = request.getParameter("uname");
	String passwd = request.getParameter("psw");
	String msg="";
	
	//JDBC 변수
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	con=databases.getCon();
	System.out.println("db갔다 옴");
	
	String sql = "select id, psw from member where id=? and psw=?";
	pstmt=con.prepareStatement(sql);
	pstmt.setString(1, id);
	pstmt.setString(2, passwd);
	rs=pstmt.executeQuery();
	System.out.println("rs --> "+rs);
	
	if(rs.next()){
		id=rs.getString("id");
		System.out.println("id-->"+id);
		passwd=rs.getString("psw");
		System.out.println("psw -->"+passwd);
		msg="로그인 성공";
		System.out.println("Login success");
		response.sendRedirect("survey.jsp");//여기 바꾸장
	}else {	
		msg="로그인 실패";
		System.out.println("Login failed");
		//response.sendRedirect("member.jsp");
		System.out.println("알라트제발");%>
		<script>alert('아이디 또는 비밀번호가 일치하지 않습니다.');console.log('alert');</script>
		<%System.out.println("알라트됨?");
		out.println("<script></script>");
		response.sendRedirect("member.jsp");
		
	}
	con.close();
	%>

	<script>
		alert('message -> '+msg);
	
	</script>
</body>
</html> 