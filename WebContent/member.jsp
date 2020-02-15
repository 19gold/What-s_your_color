<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="member.css" rel="stylesheet" type="text/css">

</head>
<body style="overflow: hidden;">

	<center>
		<img src="img/login_bg.gif" height="40%" width="40%"
			oncontextmenu="return false"><br>
		<button class="fbtn"
			onclick="document.getElementById('id01').style.display='block'"
			style="width: auto;">Login</button>
		<button class="fbtn"
			onclick="document.getElementById('id02').style.display='block'"
			style="width: auto;">Sign Up</button>
	</center>

	<script>
		// Get the modal
		var modal = document.getElementById('id01');

		// When the user clicks anywhere outside of the modal, close it
		window.onclick = function(event) {
			if (event.target == modal) {
				modal.style.display = "none";
			}
		}
	</script>

	<div id="id01" class="modal">

		<form class="modal-content animate" action="signin.jsp" method="post"
			class="signin_form">
			<div class="containsignin">
				<div class="imgcontainer">
					<img src="img/login_bg.gif" alt="Avatar" class="avatar"
						oncontextmenu="return false">
				</div>

				<div class="container">
					<label for="uname"><b>Username</b></label> <input type="text"
						placeholder="Enter Id" name="uname" required
						oncontextmenu="return false"> <label for="psw"><b>Password</b></label>
					<input type="password" placeholder="Enter Password" name="psw"
						required oncontextmenu="return false">

					<button type="submit">Login</button>
				</div>

				<div class="container" style="background-color: #f1f1f1">
					<button type="button"
						onclick="document.getElementById('id01').style.display='none'"
						class="cancelbtn">Cancel</button>
					<span class="psw">Forgot <a href="#">password?</a></span>
				</div>
			</div>
		</form>
	</div>

	<!-- 회원가입 -->

	<div id="id02" class="modal">
		<form class="modal-content animate" action="signup.jsp"
			class="signup_form">
			<div class="container">
				<h1>Sign Up</h1>
				<p>Please fill in this form to create an account.</p>
				<hr>
				<label for="name"><b>name</b></label> <input type="text"
					placeholder="Enter name" name="name" required
					oncontextmenu="return false"> <label for="id"><b>id</b></label>
				<input width="75%" type="text" id="id"
					placeholder="Enter id(영문자와 숫자로만 조합해주세요~~)" name="id" required
					oncontextmenu="return false">
				<button class="checkid" onclick="openConfirmid(this.form)">check
					id</button>

				<label for="email"><b>Email</b></label> <input type="text"
					placeholder="Enter Email" name="email" required
					oncontextmenu="return false"> <label for="psw"><b>Password</b></label>
				<input id="psw" type="password"
					placeholder="Enter Password(비밀번호는 6글자 이상, 16글자 이하만 이용 가능합니다.)"
					name="psw" required oncontextmenu="return false" maxlength="20">

				<label for="psw-repeat"><b>Repeat Password</b></label> <input
					id="pwCheck" type="password" onchange=" repeatpw()"
					onclick="cntpw()" placeholder="Repeat Password" name="pswrepeat"
					required oncontextmenu="return false" maxlength="20" /> <span
					id="same">     </span>

				<div class="clearfix">
					<button type="reset"
						onclick="document.getElementById('id02').style.display='none'"
						class="cancelbtn">
						Cancel<br />
					</button>
					<button type="button" class="signupbtn" onclick="confirm()"
						id="btnJoin">Sign Up</button>
				</div>
			</div>
		</form>
	</div>

	<script>
		var i = 0;
		//아이디 중복 여부를 판단
		function openConfirmid(inputid) {
			//아이디를 입력했는지 검사
			if (inputid.id.value == "") {
				alert("중복확인에러 : 아이디를 입력하세요");
				return;
			}
			//url과 사용자 입력 id를 조합합니다
			url = "confirmID.jsp?id=" + inputid.id.value;
			//새로운 윈도우 열기
			open(
					url,
					"confirm",
					"toolar=no, location=no, status=no, menubar=no, scrollbars=no, resizable=no, width=310, height=180");
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
					document.getElementById('same').innerHTML = '비밀번호가 일치합니다.';
					document.getElementById('same').style.color = 'green';
					i = 1;
					console.log("일치");
					bt.type = "submit";
				} else {
					document.getElementById('same').innerHTML = '비밀번호가 일치하지 않습니다.';
					document.getElementById('same').style.color = 'red';
					confirmPW.focus();
					console.log("불일치");
					bt.type = "button";
					i = 0;
				}

			}
		}
		function confirm() {
			var pw = document.getElementById('pwCheck');
			if (i != 1) {
				alert("비밀번호 확인을 해주세요!");
				pw.focus();
			}
		}
	</script>

</body>
</html>