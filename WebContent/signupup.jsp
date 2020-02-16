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
<link rel="stylesheet" href="signupup.css">
<!-- <link rel="stylesheet" href="css/reset.css"> -->
<title>회원가입</title>
</head>
<body style="overflow: hidden;">
	<div id="id02" class="modal">
		<form class="modal-content animate" action="signup.jsp"
			class="signup_form">
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
							placeholder="비밀번호는 6글자 이상, 16글자 이하만 이용 가능합니다." name="psw"
							required oncontextmenu="return false" maxlength="20"></td>
					</tr>
					<tr>
						<td class="left"></td>
						<td><input id="pwCheck" type="password"
							onchange=" repeatpw()" onclick="cntpw()" placeholder="repeat PW"
							name="pswrepeat" required oncontextmenu="return false"
							maxlength="20" /></td>
					</tr>
					<tr>
						<td colspan="2" style = "text-align : right;"><span id="same"></span></td>
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
				</table>
			</div>
		</form>
	</div>
	<script>
		var iidd = document.getElementById('id');
		var i = 0;
		var ckinfo = [ 0, 0 ];
		//아이디 중복 여부를 판단
		function openConfirmid(inputid) {
			//아이디를 입력했는지 검사
			if (inputid.id.value == "") {
				alert("중복확인에러 : 아이디를 입력하세요");
				return;
			}
			//url과 사용자 입력 id를 조합합니다
			url = "checkid.jsp?id=" + inputid.id.value;
			//새로운 윈도우 열기
			open(
					url,
					"confirm",
					"toolar=no, location=no, status=no, menubar=no, scrollbars=no, resizable=no, width=310, height=180");
		}
		function ckid(){
			ckinfo[0]=1;
		}
		function cntpw() {
			var pw = document.getElementById('psw');
			if ((pw.value).length < 6 || (pw.value).length > 16) {
				alert("비밀번호는 6글자 이상, 16글자 이하만 이용 가능합니다.");
				pw.focus();
			}
		}
		function repeatpw() {
			var pw = document.getElementById('psw');
			var confirmPW = document.getElementById('pwCheck');
			var bt = document.getElementById('btnJoin');
			if (6 <= pw.value.length <= 16 && 6 <= confirmPW.value.length <= 16) {
				if (pw.value == confirmPW.value) {
					/*document.getElementById('same').innerHTML = '비밀번호가 일치합니다.';
					document.getElementById('same').style.color = 'green';*/
					confirmPW.style.border='3px solid green';
					i = 1;
					console.log("일치");
					ckinfo[1] = 1;
					//bt.type = "submit";
				} else {
					/*document.getElementById('same').innerHTML = '비밀번호가 일치하지 않습니다.';
					document.getElementById('same').style.color = 'red';*/
					confirmPW.style.border='3px solid red';
					confirmPW.focus();
					console.log("불일치");
					bt.type = "button";
					i = 0;
					ckinfo[1] = 0;
				}
			}
		}
		function confirm() {
			var pw = document.getElementById('pwCheck');
			for (z = 0; z <= ckinfo.length; z++) {
				if (ckinfo[z] ==0) {
					if (z == 0) {
						alert("아이디 중복확인을 해주세요");
						iidd.focus();
						break;
					} else if (z == 1) {
						alert("비밀번호 확인을 해주세요");
						pw.focus();
						break;
					}
				}
			}
		}
	</script>
</body>
</html>