
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
<script>
   window.selectedOptions = {};//한번에 값을 넘기는 방법

   $(function(){
      $("html, body").animate({
         scrollTop: 0}, "slow");
   });
   
   
   $(document).ready(function() {
      $('#btn1').click(function() {
         var offset = $('#survey1').offset();
         $('html').animate({
            scrollTop : offset.top
         }, 1000);
      });
   });

   $(document).ready(function() {
      $('#submit1').click(function() {
         var offset = $('#div2').offset();
         $('html').animate({
            scrollTop : offset.top
         }, 1000);
      });
   });

   $(document).ready(function() {
      $('#submit2').click(function() {
         var offset = $('#div3').offset();
         $('html').animate({
            scrollTop : offset.top
         }, 1000);
      });
   });

   $(document).ready(function() {
      $('#submit3').click(function() {
         var offset = $('#div4').offset();
         $('html').animate({
            scrollTop : offset.top
         }, 1000);
      });
   });

   $(document).ready(function() {
      $('#submit4').click(function() {
         var offset = $('#div5').offset();
         $('html').animate({
            scrollTop : offset.top
         }, 1000);
      });
   });

   $(document).ready(function() {
      $('#submit5').click(function() {
         var offset = $('#div6').offset();
         $('html').animate({
            scrollTop : offset.top
         }, 1000);
      });
   });

   $(document).ready(function() {
      $('#submit6').click(function() {
         var offset = $('#div7').offset();
         $('html').animate({
            scrollTop : offset.top
         }, 1000);
      });
   });

   $(document).ready(function() {
      var country = ["훗카이도","혼슈","시코쿠","큐수","오키나와"];
      var mood=["조용한 분위기","활기찬 분위기","느긋한 분위기","독특한 분위기","독특한 분위기"];
      var nature=["산","바다","시골","도시","눈"];
      var activity=["자연","역사","문화체험","먹거리","액티비티"];
      var character=["활발한 성격","느긋한 성격","급한 성격","온화한 성격","게으른 성격"];
      
      var tf=[false,false,false,false,false];
      
      $(".select_country").click(function(e) {
         selectedOptions['continent'] = e.target.value;
         // var indexCountry=country.indexOf(e.target.value);
         tf[0]='continent' in selectedOptions;
         
      });
      $(".mood").click(function(e) {
         selectedOptions['mood'] = e.target.value;
         //var indexMood=mood.indexOf(e.target.value);
         tf[1]='mood' in selectedOptions;
         
      });
      $(".nature").click(function(e) {
         selectedOptions['nature'] = e.target.value;
         //var indexNature=nature.indexOf(e.target.value);
         tf[2]='nature' in selectedOptions;
         
      });
      $(".activity").click(function(e) {
         selectedOptions['activity'] = e.target.value;
         //var indexActivity=activity.indexOf(e.target.value);
         tf[3]='activity' in selectedOptions;
         
      });
      $(".character").click(function(e) {
         selectedOptions['character'] = e.target.value;
         //var indexCharacter=character.indexOf(e.target.value);
         tf[4]='character' in selectedOptions;
         
      });
      $("#submit7").click(function(e) {
          var i=0;
          for(i;i<5;i++){
             if(tf[i]!=true){
                
                location.href="survey.jsp";
             }
             else{
                location.href = "result.jsp?result=" + country.indexOf(selectedOptions['continent']) + "," 
                      +mood.indexOf(selectedOptions['mood'])+","
                      +nature.indexOf(selectedOptions['nature'])+","
                      +activity.indexOf(selectedOptions['activity'])+","
                      +character.indexOf(selectedOptions['character']);
                }
          }
       });
    });
   

   

   
   </script>
</head>
<body style="overflow-x:hidden;">
<button id="btn1">Go to survey</button>
<div id="div1" class="absolute1"> </div>
 <div class = "survey1" id = "survey1">

	<form>  
		<input type="button" class= "button" name="japan1" value="훗카이도"><br/>
		<input type="button" class= "button" name="japan2" value="혼슈"><br/>
		<input type="button" class= "button" name="japan3" value="시코쿠"><br/>
		<input type="button" class= "button" name="japan4" value="큐수"><br/>
		<input type="button" class= "button" name="japan5" value="오키나와"><br/>
		<input type="button" id= "submit1" class= "submit1" value="next" width="100">
	</form> 
   </div>
   <div id="div2" class="absolute2">
   <input type="button" class="button" name="1" value="1"><br>
   <input type="button" class="button" name="2" value="2"><br>
   <input type="button" class="button" name="3" value="3"><br>
   <input type="button" class="button" name="4" value="4"><br>
   <input type="button" class="button" name="5" value="5명 이상"><br>
   <input type="button" id="submit2" class="submit2" value="next" width="100">
    </div>
   <div id="div3" class="absolute3">
   <input type="button" class="button mood" name="slient" value="조용한 분위기"><br>
   <input type="button" class="button mood" name="noisy" value="활기찬 분위기"><br>
   <input type="button" class="button mood" name="relaxed" value="느긋한 분위기"><br>
   <input type="button" class="button mood" name="unique" value="독특한 분위기"><br>
   <input type="button" class="button mood" name="EXOTIC" value="이국적인 분위기"><br>
   <input type="button" id="submit3" class="submit3" value="next" width="100">
   </div>
   
   <div id="div4" class="absolute4">
   
   <input type="button" class="button nature" name="mountain" value="산"><br>
   <input type="button" class="button nature" name="beach" value="바다"><br>
   <input type="button" class="button nature" name="country" value="시골"><br>
   <input type="button" class="button nature" name="city" value="도시"><br>
   <input type="button" class="button nature" name="snow" value="눈"><br>
   <input type="button" id="submit4" class="submit4" value="next" width="100">
   </div>
   <div id="div5" class="absolute5">
   <input type="button" class="button activity" name="nature" value="자연"><br/>
   <input type="button" class="button activity" name="history" value="역사"><br/>
   <input type="button" class="button activity" name="culture" value="문화체험"><br/>
   <input type="button" class="button activity" name="food" value="먹거리"><br/>
   <input type="button" class="button activity" name="activities" value="액티비티"><br/>
   <input type="button" id="submit5" class="submit5"  value="next" width="100">
   </div>
   <div id="div6" class="absolute6">
   <input type="button" class="button character" name="activitely" value="활발한 성격"><br/>
   <input type="button" class="button character" name="relax" value="느긋한 성격"/><br/>
   <input type="button" class="button character" name="hottemper" value="급한 성격"/><br/>
   <input type="button" class="button character" name="gentle" value="온화한 성격"/><br/>
   <input type="button" class="button character" name="lazy" value="게으른 성격"/><br/>
   <input type="button" id="submit6" class="submit6" value="next" width="100"/>
   </div>
   <div id="div7" class="absolute7">
   <button type="submit" id="submit7" class="submit7" >Result</button>
</body>
</html>