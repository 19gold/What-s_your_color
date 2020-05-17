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
      var people=["1","2","3","4","5명 이상"];
      var mood=["조용한 분위기","활기찬 분위기","느긋한 분위기","독특한 분위기","독특한 분위기"];
      var nature=["산","바다","시골","도시","눈"];
      var activity=["자연","역사","문화체험","먹거리","액티비티"];
      var character=["활발한 성격","느긋한 성격","급한 성격","온화한 성격","게으른 성격"];
      var tf=[false,false,false,false,false, false];
      
      $(".select_country").click(function(e) {
         selectedOptions['continent'] = e.target.value;
         // var indexCountry=country.indexOf(e.target.value);
         tf[0]='continent' in selectedOptions;
         
         
      });
      $(".people").click(function(e) {
          selectedOptions['people'] = e.target.value;
          // var indexCountry=country.indexOf(e.target.value);
          tf[1]='people' in selectedOptions;
          
          
       });
      $(".mood").click(function(e) {
         selectedOptions['mood'] = e.target.value;
         //var indexMood=mood.indexOf(e.target.value);
         tf[2]='mood' in selectedOptions;
         
      });
      $(".nature").click(function(e) {
         selectedOptions['nature'] = e.target.value;
         //var indexNature=nature.indexOf(e.target.value);
         tf[3]='nature' in selectedOptions;
         
      });
      $(".activity").click(function(e) {
         selectedOptions['activity'] = e.target.value;
         //var indexActivity=activity.indexOf(e.target.value);
         tf[4]='activity' in selectedOptions;
         
      });
      $(".character").click(function(e) {
         selectedOptions['character'] = e.target.value;
         //var indexCharacter=character.indexOf(e.target.value);
         tf[5]='character' in selectedOptions;
         
      });
      var goto1 = ["survey1","div2","div3","div4","div5", "div6"];
      $("#submit7").click(function(e) {
          var i=0;
          var cnt=0;
          for(i;i<6;i++){
             if(tf[i]!=true){
                alert((i+1)+"번 항목이 선택되지 않았습니다");
                /*location.href="survey.jsp";*/
                var offset = $('#'+goto1[i]).offset();
              	console.log("offset"+offset);
                $('html').animate({
                   scrollTop : offset.top
                }, 1000);
                break;
             }
             else{
            	 cnt+=1;
                }
          }
          if(cnt==6){
        	  location.href = "result.jsp?result=" 
            	  + country.indexOf(selectedOptions['continent']) + "," 
            	  +people.indexOf(selectedOptions['people'])+","
            	  +mood.indexOf(selectedOptions['mood'])+","
                  +nature.indexOf(selectedOptions['nature'])+","
                  +activity.indexOf(selectedOptions['activity'])+","
                  +character.indexOf(selectedOptions['character']);
            
          }
       });
    });
   
