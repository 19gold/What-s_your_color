<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="author" content="19gold">
<meta name="description" content="설문을 통해 자신에 맞는 관광지를 찾아주는 웹">
<meta name="keywords" content="웹표준, 웹접근성, 사이트">
<meta name="generator" content="eclipse">
<meta name="viewport" content="width=device-width, height=device-height">
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" href="signupup.css">
<!-- <link rel="stylesheet" href="css/reset.css"> -->
<title>회원가입</title>
</head>
<body style="overflow: hidden;">
	<!-- <div id="id02" class="modal"> -->
			<img src="img/signupicon.PNG" class="image">
	<form class="modal-content animate signup_form" action="signup.jsp">

		<div class="container">

			<table>
				<tr>
					<td colspan="2"><div class="welcome">WELCOME</div></td>
				</tr>
				<tr>
					<td class="left">#NAME</td>
					<td><input type="text" name="name" required
						oncontextmenu="return false"></td>
				</tr>
				<tr>
					<td class="left">#ID</td>
					<td><input type="text" id="id" name="id" required
						oncontextmenu="return false">
						<button class="checkid" onclick="openConfirmid(this.form)">CHECK
							ID</button></td>
				</tr>
				<tr>
					<td class="left">#PW</td>
					<td><input id="psw" type="password"
						placeholder="비밀번호는 6글자 이상, 16글자 이하만 이용 가능합니다." name="psw" required
						oncontextmenu="return false" maxlength="20"></td>
				</tr>
				<tr>
					<td class="left"></td>
					<td><input id="pwCheck" type="password" onchange=" repeatpw()"
						onclick="cntpw()" placeholder="repeat PW" name="pswrepeat"
						required oncontextmenu="return false" maxlength="20" /></td>
				</tr>
				<tr>
					<td colspan="2" style="text-align: right;"><span id="same"></span></td>
				</tr>
				<tr>
					<Td class="left">#EMAIL</Td>
					<td><input type="text" name="email" required
						oncontextmenu="return false"></td>
				</tr>
				<tr>
					<td colspan="2"><button type="button" class="signupbtn"
							onclick="confirm()" id="btnJoin">SIGN UP</button></td>
				</tr>
				<!-- signup.jsp 파일에 회원가입 되고 가는 링크 있음 -->
			</table>
		</div>
	</form>
	<script text="text/javascript" src="signup.js"></script>
</body>
</html>