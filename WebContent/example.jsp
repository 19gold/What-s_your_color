<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>What's your color</title>

<link href="mainStyle.css" rel="stylesheet" type="text/css">
 <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
   <script>
   $(function () {
       $("#btn1").mouseover(function () { $("#p1").slideUp("slow"); });
       $("#btn1").mouseout(function () { $("#p1").slideDown("slow"); });
   });
   
   $(function () {
       $("#btn2").mouseover(function () { $("#p1").slideUp("slow"); });
       $("#btn2").mouseout(function () { $("#p1").slideDown("slow"); });
   });
    </script>
</head>

<body style="overflow:hidden;">
   <p class="title">What's your color</p>
  
    <p id="p1"><br><br></p>
    	<button id="btn1" class="button a" onclick = "location.href='member.jsp'">회원 </button>
    	<button id="btn2" class="button b">비회원 </button>
    	
</body>
</html>