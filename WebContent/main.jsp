<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>What's your color</title>

    <link href="mainStyle.css" rel="stylesheet" type="text/css">
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script>
        $(function () {
            $("#bt1").mouseover(function () { $("#p1").slideUp("slow"); });
            $("#bt1").mouseout(function () { $("#p1").slideDown("slow"); });
        });
        $(function () {
            $("#bt2").mouseover(function () { $("#p1").slideUp("slow"); });
            $("#bt2").mouseout(function () { $("#p1").slideDown("slow"); });
        });
    </script>
</head>

<body style="overflow:hidden;">
    <p class="title" id="title">What's your color</p>
    <center>
        <!--<div class='member'>-->
        <div id="p1"><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/></div>
        <span id="bt1">
            <button id="btn1" class="button1 a" onclick="location.href='member.jsp'">회원 </button></span>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <span id="bt2">
            <button id="btn2" class="button2 b" onclick="location.href='member.jsp'">비회원 </button>
            <!-- btn2를 눌렀을 땐 무조건 바로 설문지로 가야댄다능~ -->
        </span>
        <!-- </div> -->
    </center>
</body>

</html>