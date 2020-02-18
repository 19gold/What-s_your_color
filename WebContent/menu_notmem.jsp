<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="menu_notmem.css" rel="stylesheet" type="text/css">
<title>Insert title here</title>
</head>
<body>
<div class="survey">
	<br><br>
	<image src="img\menu_survey.png" style="width: 70%; height:40%; vertical-align: middle; display: block; margin: 0px auto" />
		<div class="title_text"><b>Find My Travel Color</b></div>
	<image src="img\paint.png" style="display: block; margin: -10px auto;">
		<div class="explain_text">Find your own travel style<br>through the survey!</div>
		<Button id="btn1" onclick="location.href='survey.jsp'">GO SURVEY ></Button>
</div>

<div class="review_all">
<br>
	<image src="img\menu_allreview.png" style="width: 70%; height:40%; vertical-align: middle; display: block; margin: 0px auto" />
		<div class="title_text"><b>View All Review</b></div>
	<image src="img\paint.png" style="display: block; margin: 15px auto;">
		<div class="explain_text"><br>Look at people own travel records!</div>
		<Button id="btn2">VIEW ALL REVIEW ></Button>
</div>

<div class="review_my">
	<image src="img\menu_myreview.png" style="width: 77%; height:45%; vertical-align: middle; display: block; margin: 0px auto" />
		<div class="title_text"><b>View My Review</b></div>
	<image src="img\paint.png" style="display: block; margin: -7px auto;">
		<div class="explain_text">Look at my own travel records<br>and the color of my feelings!</div>
		<Button id="btn2">VIEW MY REVIEW ></Button>
</div>
</body>
</html>