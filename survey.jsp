<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="check.css" rel="stylesheet" type="text/css">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script>
	$(document).ready(function(){
		$('#btn1').click(function(){
			var offset = $('#div1').offset(); 
	        $('html').animate({scrollTop : offset.top}, 1000);
		});
	});
	
	$(document).ready(function(){
		$('#submit1').click(function(){
			var offset = $('#div2').offset(); 
	        $('html').animate({scrollTop : offset.top}, 1000);
		});
	});		
	
	$(document).ready(function(){
		$('#submit2').click(function(){
			var offset = $('#div3').offset(); 
	        $('html').animate({scrollTop : offset.top}, 1000);
		});
	});			
	
	$(document).ready(function(){
		$('#submit3').click(function(){
			var offset = $('#div4').offset(); 
	        $('html').animate({scrollTop : offset.top}, 1000);
		});
	});		
	
	$(document).ready(function(){
		$('#submit4').click(function(){
			var offset = $('#div5').offset(); 
	        $('html').animate({scrollTop : offset.top}, 1000);
		});
	});	
	
	$(document).ready(function(){
		$('#submit5').click(function(){
			var offset = $('#div6').offset(); 
	        $('html').animate({scrollTop : offset.top}, 1000);
		});
	});	
	
	$(document).ready(function(){
		$('#submit6').click(function(){
			var offset = $('#div7').offset(); 
	        $('html').animate({scrollTop : offset.top}, 1000);
		}); 
	});	
</script>
</head>
<body style="overflow-x:hidden;">
<button id="btn1">Go to survey</button>
<div id="div1" class="absolute1"> </div>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<div class = "survey1">
	<form> 
		<input type="button" class= "button" name="japan1" value="훗카이도"><br><br><br>
		<input type="button" class= "button" name="japan2" value="혼슈"><br><br><br>
		<input type="button" class= "button" name="japan3" value="시코쿠"><br><br><br>
		<input type="button" class= "button" name="japan4" value="큐수"><br><br><br>
		<input type="button" class= "button" name="japan5" value="오키나와"><br><br><br>
		<input type="button" id= "submit1" class= "submit1" value="next" width="100">
	</form> 
</div>
<br><br><br><br><br>
<div id="div2" class="absolute2"> </div>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
		<input type="button" class= "button" name="1" value="1"><br><br><br>
		<input type="button" class= "button" name="2" value="2"><br><br><br>
		<input type="button" class= "button" name="3" value="3"><br><br><br>
		<input type="button" class= "button" name="4" value="4"><br><br><br>
		<input type="button" class= "button" name="5" value="5명 이상"><br><br><br>
 <input type="button" id= "submit2" class= "submit2" value="next" width="100">
<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<div id="div3" class="absolute3"> </div>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
		<input type="button" class= "button" name="slient" value="조용한 분위기"><br><br><br>
		<input type="button" class= "button" name="noisy" value="시끄러운 분위기"><br><br><br>
		<input type="button" class= "button" name="relaxed" value="느긋한 분위기"><br><br><br>
		<input type="button" class= "button" name="unique" value="독특한 분위기"><br><br><br>
		<input type="button" class= "button" name="EXOTIC" value="이국적인 분위기"><br><br><br>
		<input type="button" id= "submit3" class= "submit3" value="next" width="100">
<br><br><br><br><br><br><br><br><br><br><br><br>
<div id="div4" class="absolute4"> </div>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
 		<input type="button" class= "button" name="mountain" value="산"><br><br><br>
		<input type="button" class= "button" name="beach" value="바다"><br><br><br>
		<input type="button" class= "button" name="country" value="시골"><br><br><br>
		<input type="button" class= "button" name="city" value="도시"><br><br><br>
		<input type="button" class= "button" name="snow" value="눈"><br><br><br>
		<input type="button" id= "submit4" class= "submit4" value="next" width="100">
<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<div id="div5" class="absolute5"> </div>
<br><br><br><br><br><br><br><br><br><br><br><br><br>
		<input type="button" class= "button" name="nature" value="자연"><br><br><br>
		<input type="button" class= "button" name="history" value="역사"><br><br><br>
		<input type="button" class= "button" name="culture" value="문화체험"><br><br><br>
		<input type="button" class= "button" name="food" value="먹거리"><br><br><br>
		<input type="button" class= "button" name="activities" value="액티비티"><br><br><br>
		<input type="button" id= "submit5" class= "submit5" value="next" width="100">
<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<div id="div6" class="absolute6"> </div>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
		<input type="button" class= "button" name="activitely" value="활발한 성격"><br><br><br>
		<input type="button" class= "button" name="relax" value="느긋한 성격"><br><br><br>
		<input type="button" class= "button" name="hottemper" value="급한 성격"><br><br><br>
		<input type="button" class= "button" name="gentle" value="온화한 성격"><br><br><br>
		<input type="button" class= "button" name="lazy" value="게으른 성격"><br><br><br>
		<input type="button" id= "submit6" class= "submit6" value="next" width="100">
<br><br><br><br><br><br><br><br><br><br><br>
<div id="div7" class="absolute7"> </div>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<form action="result.jsp">
	<input type="submit" id= "submit7" class= "submit7" value="result" width="100" >
</form>
</body>
</html>