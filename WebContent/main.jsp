<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>What's your color</title>
<link href="maintest.css" rel="stylesheet" type="text/css">
</head>

<body style="overflow: hidden;">
	<center>
		<div class="contain">
			<span id="bt1"> <img class="btn-img" src="img\mem.png"
				onclick="location.href='member.jsp'" width="40%"></span>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span id="bt2"> <img
				class="btn-img" src="img\nomem.png"
				onclick="location.href='menu_notmem.jsp'" width="40%">
			</span>
		</div>
	</center>
	<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
	<script>
		$(".contain").hover(function() {
			$(this).stop().animate({
				marginBottom : '-60px'
			}, 500)
		}, function() {
			$(this).stop().animate({
				marginBottom : '-515px'
			}, 500)
		});
	</script>
</body>
</html>