<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="member.css" rel="stylesheet" type="text/css">
</head>
<body style="overflow:hidden;">

<center>
<img src="img/login_bg.gif" height="40%" width="40%"><br>
<button class = "fbtn" onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Login</button>
<button class = "fbtn" onclick="document.getElementById('id02').style.display='block'" style="width:auto;">Sign Up</button>
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
  
  <form class="modal-content animate" action="check_01.jsp" method="post" class = "signin_form">
  <div class = "containsignin">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
      <img src="img/login_bg.gif" alt="Avatar" class="avatar">
    </div>

    <div class="container">
      <label for="uname"><b>Username</b></label>
      <input type="text" placeholder="Enter Username" name="uname" required>

      <label for="psw"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="psw" required>
        
      <button type="submit">Login</button>
    </div>

    <div class="container" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
      <span class="psw">Forgot <a href="#">password?</a></span>
    </div>
    </div>
  </form>
</div>

<!-- 회원가입 -->

    <div id="id02" class="modal">
        <form class="modal-content animate" action="check_01.jsp"class = "signup_form">
            <div class="container">
            <div>
                <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>
                <h1>Sign Up</h1>
                </div>
                <p>Please fill in this form to create an account.</p>
                <hr>
                <label for="name"><b>name</b></label>
                <input type="text" placeholder="Enter name" name="name" required>

                <label for="id"><b>id</b></label>
                <input type="text" placeholder="Enter id" name="id" required>

                <label for="email"><b>Email</b></label>
                <input type="text" placeholder="Enter Email" name="email" required>

                <label for="psw"><b>Password</b></label>
                <input type="password" placeholder="Enter Password" name="psw" required>

                <label for="psw-repeat"><b>Repeat Password</b></label>
                <input type="password" placeholder="Repeat Password" name="psw-repeat" required>

                
                <div class="clearfix">
                    <button type="button" onclick="document.getElementById('id02').style.display='none'"
                        class="cancelbtn">Cancel</button>
                    <button type="submit" class="signupbtn">Sign Up</button>
                </div>
            </div>
        </form>
    </div>

    <script>
        // Get the modal
        var modal = document.getElementById('id02');

        // When the user clicks anywhere outside of the modal, close it
        window.onclick = function (event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }
    </script>


</body>
</html>