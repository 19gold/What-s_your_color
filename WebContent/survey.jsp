
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="check.css" rel="stylesheet" type="text/css">
<title>Insert title here</title>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script text="text/javascript" src="survey.js"></script>
</head>
<body style="overflow-x: hidden;">
	<button id="btn1">Go to survey</button>
	<form>
	<div id="" class=""></div>
	<div class="survey1" id="survey1">

		
			<input type="button" class="button select_country" name="japan1"
				value="훗카이도"onclick="change1(this)"><br /> <input type="button"
				class="button select_country" name="japan2" value="혼슈"onclick="change1(this)"><br />
			<input type="button" class="button select_country" name="japan3"
				value="시코쿠"onclick="change1(this)"><br /> <input type="button"
				class="button select_country" name="japan4" value="큐수"onclick="change1(this)"><br />
			<input type="button" class="button select_country" name="japan5"
				value="오키나와"onclick="change1(this)"><br /> <input type="button" id="submit1"
				class="submit1" value="next" width="100">
		
	</div>
	<div id="div2" class="absolute2">
		<input type="button" class="button people" name="1" value="1"onclick="change1(this)"><br>
		<input type="button" class="button people" name="2" value="2"onclick="change1(this)"><br>
		<input type="button" class="button people" name="3" value="3"onclick="change1(this)"><br>
		<input type="button" class="button people" name="4" value="4"onclick="change1(this)"><br>
		<input type="button" class="button people" name="5" value="5명 이상"onclick="change1(this)"><br>
		<input type="button" id="submit2" class="submit2" value="next"
			width="100">
	</div>
	<div id="div3" class="absolute3">
		<input type="button" class="button mood" name="slient" value="조용한 분위기"onclick="change1(this)"><br>
		<input type="button" class="button mood" name="noisy" value="활기찬 분위기"onclick="change1(this)"><br>
		<input type="button" class="button mood" name="relaxed"
			value="느긋한 분위기"onclick="change1(this)"><br> <input type="button"
			class="button mood" name="unique" value="독특한 분위기"onclick="change1(this)"><br> <input
			type="button" class="button mood" name="EXOTIC" value="이국적인 분위기"onclick="change1(this)"><br>
		<input type="button" id="submit3" class="submit3" value="next"
			width="100">
	</div>

	<div id="div4" class="absolute4">

		<input type="button" class="button nature" name="mountain" value="산"onclick="change1(this)"><br>
		<input type="button" class="button nature" name="beach" value="바다"onclick="change1(this)"><br>
		<input type="button" class="button nature" name="country" value="시골"onclick="change1(this)"><br>
		<input type="button" class="button nature" name="city" value="도시"onclick="change1(this)"><br>
		<input type="button" class="button nature" name="snow" value="눈"onclick="change1(this)"><br>
		<input type="button" id="submit4" class="submit4" value="next"
			width="100">
	</div>
	<div id="div5" class="absolute5">
		<input type="button" class="button activity" name="nature" value="자연"onclick="change1(this)"><br />
		<input type="button" class="button activity" name="history" value="역사"onclick="change1(this)"><br />
		<input type="button" class="button activity" name="culture"
			value="문화체험"onclick="change1(this)"><br /> <input type="button"
			class="button activity" name="food" value="먹거리"onclick="change1(this)"><br /> <input
			type="button" class="button activity" name="activities" value="액티비티"onclick="change1(this)"><br />
		<input type="button" id="submit5" class="submit5" value="next"
			width="100">
	</div>
	<div id="div6" class="absolute6">
		<input type="button" class="button character" name="activitely"
			value="활발한 성격"onclick="change1(this)"><br /> <input type="button"
			class="button character" name="relax" value="느긋한 성격" onclick="change1(this)"/><br /> <input
			type="button" class="button character" name="hottemper" value="급한 성격" onclick="change1(this)"/><br />
		<input type="button" class="button character" name="gentle"
			value="온화한 성격" onclick="change1(this)"/><br /> <input type="button" class="button character"
			name="lazy" value="게으른 성격"onclick="change1(this)" /><br /> <input type="button" id="submit6"
			class="submit6" value="next" width="100" />
	</div>
	<div id="div7" class="absolute7">
		<button type="submit" id="submit7" class="submit7">Result</button>
		
		</form>
		<script>
		function change1( obj){
			obj.style.color = '#d92c45';
		}
		</script>
</body>
</html>