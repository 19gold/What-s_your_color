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
		<a href="signupup.jsp"><button class="fbtn"style="width: auto;">Sign Up</button></a>
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

	
	

</body>
</html>