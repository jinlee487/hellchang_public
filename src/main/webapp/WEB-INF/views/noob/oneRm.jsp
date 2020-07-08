<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>hellchang_project</title>
  <link rel="icon" href="resources/image/logo.jpg">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="resources/jqLib/animation.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
   <link rel="stylesheet" type="text/css" href="resources/jqLib/footer_position2.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="resources/jqLib/jquery-3.2.1.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script>
  
  /* $(function(){
		stickyFooter();

		$(window).scroll(stickyFooter).resize(stickyFooter);
	});


	function stickyFooter(){
		document_height = $(document).height(); // 문서 전체 높이
		document_scrollTop = $(document).scrollTop(); // 문서 전체 높이 중 스크롤 위치
		window_height = $(window).height(); // 창 높이
		footer_height = $("#footer").height();

		gap = document_height - footer_height - window_height; 
		bottom = document_scrollTop - gap ; 

		if(document_scrollTop > gap){
			$("#footer").css("bottom", bottom+"px");
		}else{
			$("#footer").css("bottom","0");
		}
	}
   */
  
  
	  function rm(){
		  for(var i=1; i<=10; i++)	{
			 
			 $('.num'+i).html(" ");
			 $('.result'+i).html(" ");  
		  }
		  
		
		  
		var kg = parseInt($('#kg').val());
		var rep = parseInt($('#rep').val());
		
		arm = kg/(1.0278-(0.0278*rep));
		// arm = 1rm 구한 값
		var j = rep;
		for(var i=1; i<=rep; i++){
			sum =kg/(1.0278-(0.0278*i));
			sum = sum.toFixed(2);
			$('.num'+i).html(j+ " R M ");
			$('.result'+i).html(sum);
			j--;
		}
	}	 
  

  </script>
  <style>

  #p_pos{
  	margin-right: 80px;
  }
  
  #top_na{
  	position: fixed;
  	z-index: 100;
  	width: 100%;
  }
		  
  address {
	color: white;
	margin-bottom:0px;
	}
  	
  	element.style{
  		bottom : 0px;
  	}
  	
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
      background-color: #3d3b3c;
    }
    
  .carousel-inner img {
      width: 100%; /* Set width to 100% */
      margin: auto;
      min-height:200px;
  }

  /* Hide the carousel text when the screen is less than 600 pixels wide */
  @media (max-width: 600px) {
    .carousel-caption {
      display: none; 
      margin-left: 20	0px;
    }
  }
  @media (min-width: 768px){
	.col-sm-4 {
	  /* margin-left: 200px; */
	  text-align: center;
	}
button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 30%;
  opacity: 0.9;
}

button:hover {
  opacity:1;
}
.cancelbtn {
  padding: 14px 20px;
  background-color: #f44336;
  text-align: center;
  border-radius: 8px
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
  float: center;
  width: 60%;
  text-align: center;
  border-radius: 8px
}	
.signupbtn1{
 float: center;
  width: 50%;
  text-align: center;
  border-radius: 8px
}
.tablink{
  float: center;
  width: 10%;
  text-align: center;
  border-radius: 8px;
 
  
}
.tab{
	 text-align: center;
}
  </style>
</head>
<body>

<nav  class="navbar navbar-inverse" id="top_na">
  <div class="container-fluid" style="background-color: black;">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="home">
      <img src = "resources/image/logo.jpg" width="80" height="25">
      </a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
      	    <li><a href="noob">Noob</a></li>
			<li><a href="#">Routine</a></li>
			<li><a href="dataf">Blog</a></li>
			<li><a href="one">OneRM</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
      	<li><a href="prof">MyProfile</a></li>
      	<li><a href="joinf">회원가입</a></li>
        <li><a href="loginf"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>

  

<div class="container text-center">    
  <h2>1RM</h2><br> 
  <div class="row">
    <div class="col-sm-4" style="display: inline-block; margin: 0 0 0 17%; ">
    <h3>INPUT</h3>
       		<label for="KG" class="int">KG</label><br>
       		<input  style="width: 60%; padding: 15px;  display: inline-block; border: none; background: #f1f1f1; border-radius: 8px" type="text"  placeholder="무게를 입력하세요." id="kg" ><br>
       		<label for="REP" class="int">REP</label><br>
       		<input  style="width: 60%; padding: 15px;  display: inline-block; border: none; background: #f1f1f1; border-radius: 8px" type="text"  placeholder="개수를 입력하세요." id="rep">
       		<br>
       		<button type="button" class="signupbtn" onclick="rm()">결과확인</button>
    </div>
    <div class="col-sm-4" style="display: inline-block; margin: 0; ">
       <h3>RESULT</h3>
       <c:forEach begin="1" end="10" varStatus="status">
	   			<%-- <output class="num${status.count} " ></output>
	   			<output class="result${status.count}"></output> --%>
	   			
	   			
	   			 <table style="text-align: center;">
	   				<tr>
	   				</tr>
	   				<tr>
	   					<td style="border: ; text-align:center; width: 178px; height: 26px; " class="num${status.count}"></td>
	   					<td style="border: ; text-align:center; width: 178px; height: 26px; " class="result${status.count}"></td>
	   				</tr>
	   			</table>
	   </c:forEach>
    </div>
    
  </div>
</div><br>
 
<div style="margin-left: 650px;">
 <label for="KG" class="int">결과입력</label><br>
 <input  style="width: 60%; padding: 15px;  display: inline-block; border: none; background: #f1f1f1; border-radius: 8px" type="text"  placeholder="무게를 입력하세요." id="kg" >
 <button type="button" class="signupbtn" onclick="drawChart()">결과확인</button>
 <div id="columnchart_material" style="width: 60%; height: 400px;"></div>
 
 </div> 

 
    

  <div class="col-sm-7 inbodycontent" style="width: 100%">
 				<div class="tab">	
 					 <h2>3대 중량 입력</h2>
 					 </div>
     <div class="tab">
        <button class="tablink" onclick="openPage(event,'results_tab')" id="defaultOpen">2주전</button>
		<button class="tablink" onclick="openPage(event,'history_tab')">1주전</button>
		<button class="tablink" onclick="openPage(event, 'ranking_tab')">현재</button>
    </div>   
      <div class="row">
        <div class="col-sm-12 tabcontent" id="results_tab">
		 <div class="container text-center">    
  <h2>2주전</h2><br> 
       		<label for="Bench" class="int">Dead</label><br>
       		<input  style="width: 50%; padding: 15px;  display: inline-block; border: none; background: #f1f1f1; border-radius: 8px" type="text"  placeholder="무게를 입력하세요." id="Dead" ><br>
       		<label for="Dead" class="int">Bench</label><br>
       		<input  style="width: 50%; padding: 15px;  display: inline-block; border: none; background: #f1f1f1; border-radius: 8px" type="text"  placeholder="무게를 입력하세요." id="Bench"><br>
       		<label for="Sq" class="int">Sq</label><br>
       		<input  style="width: 50%; padding: 15px;  display: inline-block; border: none; background: #f1f1f1; border-radius: 8px" type="text"  placeholder="무게를 입력하세요." id="Sq">
       		<br>
       		<button type="button" class="signupbtn1" onclick="drawVisualization()">결과확인</button>
    </div>
        </div>
        
        <div class="col-sm-12 tabcontent" id="history_tab">
            <div class="container text-center">    
 			 <h2>1주전</h2><br> 
       		<label for="Bench" class="int">Dead</label><br>
       		<input  style="width: 50%; padding: 15px;  display: inline-block; border: none; background: #f1f1f1; border-radius: 8px" type="text"  placeholder="무게를 입력하세요." id="Dead2" ><br>
       		<label for="Dead" class="int">Bench</label><br>
       		<input  style="width: 50%; padding: 15px;  display: inline-block; border: none; background: #f1f1f1; border-radius: 8px" type="text"  placeholder="무게를 입력하세요." id="Bench2"><br>
       		<label for="Sq" class="int">Sq</label><br>
       		<input  style="width: 50%; padding: 15px;  display: inline-block; border: none; background: #f1f1f1; border-radius: 8px" type="text"  placeholder="무게를 입력하세요." id="Sq2">
       		<br>
       		<button type="button" class="signupbtn1" onclick="drawVisualization()">결과확인</button>
    </div>
        </div>
        
        <div class="col-sm-12 tabcontent" id="ranking_tab">
             <div class="container text-center">    
 		 <h2>현재</h2><br> 
       		<label for="Bench" class="int">Dead</label><br>
       		<input  style="width: 50%; padding: 15px;  display: inline-block; border: none; background: #f1f1f1; border-radius: 8px" type="text"  placeholder="무게를 입력하세요." id="Dead3" ><br>
       		<label for="Dead" class="int">Bench</label><br>
       		<input  style="width: 50%; padding: 15px;  display: inline-block; border: none; background: #f1f1f1; border-radius: 8px" type="text"  placeholder="무게를 입력하세요." id="Bench3"><br>
       		<label for="Sq" class="int">Sq</label><br>
       		<input  style="width: 50%; padding: 15px;  display: inline-block; border: none; background: #f1f1f1; border-radius: 8px" type="text"  placeholder="무게를 입력하세요." id="Sq3">
       		<br>
       		<button type="button" class="signupbtn1" onclick="drawVisualization()">결과확인</button>
    </div>
        </div>
       </div>
     </div>
     
     <div class="col-sm-4" style="display: inline-block; margin: 0; width: 100%">
      	<label for="gra" class="int">3대 중량 그래프</label>
	   <div id="chart_div" style="width: 50%; height: 400px; margin-left: 500px"></div>
    </div>
 <div id="footer" role="contentinfo">
<!-- <hr style="width: 100%;">
<hr style="width: 100%; border-color: black;"> -->
		<address>
			<em><a href="home" target="_blank" class="logo footfont"><span class="blind">HellChang</span></a></em>
			<em class="copy footfont">Copyright</em>
			<em class="u_cri footfont">©</em>
			<a href="home" target="_blank" class="u_cra footfont">HellChang Corp.</a>
			<span class="all_r footfont">All Rights Reserved.</span>
		</address>
</div>    
    
  <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawVisualization);

      function drawVisualization() {
        // Some raw data (not necessarily accurate)
       var week = String($('#week').val());
       var bench = parseInt($('#Bench').val());
	   var dead = parseInt($('#Dead').val());
	   var sq = parseInt($('#Sq').val());
	   total = bench+dead+sq;
	   var bench2 = parseInt($('#Bench2').val());
	   var dead2 = parseInt($('#Dead2').val());
	   var sq2= parseInt($('#Sq2').val());
	   total2 = bench2+dead2+sq2;
	   var bench3 = parseInt($('#Bench3').val());
	   var dead3 = parseInt($('#Dead3').val());
	   var sq3 = parseInt($('#Sq3').val());
	   total3 = bench3+dead3+sq3;
	   
        var data = google.visualization.arrayToDataTable([
          ['Week', 'Dead', 'Bench', 'sq','Total'],
          ['2주전',  dead,      bench,         sq,    	total],
          ['1주전',  dead2,      bench2,         sq2,	    total2],
          ['현재',  dead3,      bench3,         sq3,		total3]
        ]);

        var options = {
          title : '3대 1RM Total',
          vAxis: {title: 'KG'},
          hAxis: {title: 'Week'},
          seriesType: 'bars',
          series: {3: {type: 'line'}}        };

        var chart = new google.visualization.ComboChart(document.getElementById('chart_div'));
        chart.draw(data, options);
      }
    </script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['bar']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Week', 'Sales', 'Expenses', 'Profit','999'],
          ['1Week', 1000, 400, 200,500],
          ['2Week', 1170, 460, 250,600],
          ['3Week', 660, 1120, 300,700],
          ['4Week', 1030, 540, 350,800]
        ]);

        var options = {
          chart: {
            title: 'My 1Rm Check',
          }
        };

        var chart = new google.charts.Bar(document.getElementById('columnchart_material'));

        chart.draw(data, google.charts.Bar.convertOptions(options));
      };
      
      document.getElementById("defaultOpen").click();
      function openPage(evt,tabName) {
      	  var i, tabcontent, tablinks;
      	  // Get all elements with class="tabcontent" and hide them
      	  tabcontent = document.getElementsByClassName("tabcontent");
      	  for (i = 0; i < tabcontent.length; i++) {
      	    tabcontent[i].style.display = "none";
      	  }

      	  // Get all elements with class="tablinks" and remove the class "active"
      	  tablinks = document.getElementsByClassName("tablink");
      	  for (i = 0; i < tablinks.length; i++) {
      	    tablinks[i].className = tablinks[i].className.replace(" active", "");
      	  }

      	  // Show the current tab, and add an "active" class to the button that opened the tab
      	  document.getElementById(tabName).style.display = "block";
      	  evt.currentTarget.className += " active";
      	  google.charts.load('current', {'packages':['gauge','table','line','corechart','bar']}); 

      	  if(tabName=='history_tab'){
      		  google.charts.setOnLoadCallback(function(){
      			  rPage = r.slice(Math.max(r.length - 7, 1));
      			  inbodycombochart(rPage,'wComboID');  
      			  rPage2 = r2.slice(Math.max(r2.length - 7, 1));
      			  inbodycombochart(rPage2,'mmComboID');  
      			  rPage3 = r3.slice(Math.max(r3.length - 7, 1));
      			  inbodycombochart(rPage3,'fmComboID');  
      			  rPage4 = r4.slice(Math.max(r4.length - 7, 1));
      			  inbodycombochart(rPage4,'bComboID');  
      			  rPage5 = r5.slice(Math.max(r5.length - 7, 1));
      			  inbodycombochart(rPage5,'pComboID');  
      			  rPage6 = r6.slice(Math.max(r6.length - 7, 1));
      			  inbodycombochart(rPage6,'vComboID');  

      		  });
      	  }
      	  else if(tabName=='results_tab'){
      		  google.charts.setOnLoadCallback(function(){
      			  inbodybarchart(r[resultPage],'wChartID','wChartID2');
      			  inbodybarchart(r2[resultPage],'mmChartID','mmChartID2');
      			  inbodybarchart(r3[resultPage],'fmChartID','fmChartID2');
      			  inbodybarchart(r4[resultPage],'bChartID','bChartID2');
      			  inbodybarchart(r5[resultPage],'pChartID','pChartID2');
      			  inbodybarchart(r6[resultPage],'vChartID','vChartID2');
      			  calcBMR(r[resultPage],'bmiID');
      		  }); 
      	  }
      	}
    </script>

</body>
</html>
