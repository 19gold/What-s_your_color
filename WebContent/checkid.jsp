<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import ="java.sql.Connection" %>
<%@ page import ="DB.databases"%>
<%@ page import ="DB.DBvar" %>
<%@ page import ="DB.DBlist" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>id check</title>
</head>
<body>
	<% 
		request.setCharacterEncoding("euc-kr"); 
	
		databases databases = new databases();
		DBvar dv = new DBvar();
		DBlist dl = new DBlist();
		Connection con=databases.getCon();
		
		String msg, url;
		
		String id = request.getParameter("id");	
		
		int check=dl.checkid(id);
		System.out.println("check --> "+check);
		
		if(check==1){%>
		
		<b><font color="red"><%=id%></font>�� �̹� ������� ���̵��Դϴ�.</b>
		<form name="checkForm" method="post" action="checkid.jsp">
		<b>�ٸ� �Ƶ� �����ϼ���.</b><br><br>
		<input type="text" name="id">
		<input type="submit" value="ID�ߺ�Ȯ��">
		</form>
		<%
		}else{
		%>
		<center>
		<b>�Է��Ͻ�<font color="red"><%=id%></font>��<br>
		����Ͻ� �� �ִ� ID�Դϴ�.</b><br><br>
		<input type="submit" value="�ݱ�" onclick="setid()">
		</center>
		<%}%>
	<script>
		function setid(){
			System.out.println("setid()������ => ");
			opener.document.userinput.id.value="<%=id%>";
			self.close();
		}
	</script>
</body>
</html>