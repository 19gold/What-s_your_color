<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>FINDPW</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="forgotpw.css?after" rel="stylesheet" type="text/css">
</head>
<body>
   <form action="findpw.jsp">
      <table>

         <tr>
            <td class="left">#NAME</td>
            <td><input type="text" id="fdname" name="name" required
               oncontextmenu="return false"></td>
         </tr>
         <tr>
            <td class="left">#ID</td>
            <td><input id="fdid" type="text" name="id" required
               oncontextmenu="return false"></td>
         </tr>
         <tr>
            <td colspan=" 2"><!-- <a href="findpw.jsp"> -->
                  <button type="submit" class="enter" id="ent">FIND</button>
            <!--  </a>--></td>
         </tr>
      </table>
   </form>
</body>
</html>