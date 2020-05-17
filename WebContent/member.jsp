<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="member.css" rel="stylesheet" type="text/css">

</head>
<body style="overflow: hidden;">
<div class = "container">
	<img src="img/login_bg.gif" height="30%" width="30%"
		oncontextmenu="return false">
		<form class="modal-content animate" action="signin.jsp" method="post">
		<table>
			<tr>
				<td class="left">I D</td>
				<td><input type="text" id="idid" name="uname" required
					oncontextmenu="return false"></td>
			</tr>
			<tr>
				<td class="left">PW</td>
				<td><input id="psw" type="password" name="psw" required
					oncontextmenu="return false" maxlength="20"></td>
			</tr>
			<tr>
				<td style="text-align: right;" colspan="2" class="forgot"><a
					href="forgotpw.jsp">FORGOT PW</a></td>
			</tr>
			<tr>
				<td colspan=" 2"><a href="signupup.jsp" class="create">
						<button type="button" class="createaccount" id="cac">CREATE
							ACCOUNT</button>
				</a>
					<button type="submit" class="enter" id="ent">ENTER</button></td>
			</tr>
		</table>
		</form>
	</div>
</body>
</html>