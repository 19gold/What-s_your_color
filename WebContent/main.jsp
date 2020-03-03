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
    <center>
        <!--<div class='member'>--><br/><br/><br/><br/><br/><br/>
        <div id="p1"><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/></div><br/><br/><br/><br/></div>
        <span id="bt1">
            <img class="btn-img" src="img\mem.png" onclick="location.href='member.jsp'"></span>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <span id="bt2">
            <img class="btn-img" src="img\nomem.png" onclick="location.href='menu_notmem.jsp'">
        </span>
        <!-- </div> -->
    </center>
</body>

</html>