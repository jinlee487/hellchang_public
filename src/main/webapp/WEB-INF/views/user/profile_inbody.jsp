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
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="resources/jqLib/jquery-3.2.1.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
  <script src="resources/jqLib/google_chart_functions.js"></script>
  
  <script>

  var r = [];
  var r2 = [];
  var r3 = [];
  var r4 = [];
  var r5 = [];
  var r6 = [];


 		  //console.log("this is the type of date => " + Date.parse(new Date(2020, 0,  1, 19, 30)));
  	  for (var i=0;i<parseInt(20);i++){
  		r.push([(new Date(Date.parse(new Date(2020, 0,  1, 19, 30)) + i * 7 * 24 * 60 * 60 * 1000)), 59.2, 21, 85-i]);
  		r2.push([(new Date(Date.parse(new Date(2020, 0,  1, 19, 30)) + i * 7 * 24 * 60 * 60 * 1000)), 29.9, 6.6, 25.4+i]);
  		r3.push([(new Date(Date.parse(new Date(2020, 0,  1, 19, 30)) + i * 7 * 24 * 60 * 60 * 1000)), 8.3, 7.8, 10-0.1*i]);
  		r4.push([(new Date(Date.parse(new Date(2020, 0,  1, 19, 30)) + i * 7 * 24 * 60 * 60 * 1000)), 18.3, 4.7, 30.1-0.5*i]);
  		r5.push([(new Date(Date.parse(new Date(2020, 0,  1, 19, 30)) + i * 7 * 24 * 60 * 60 * 1000)), 18, 10, 30-0.5*i]);
  		r6.push([(new Date(Date.parse(new Date(2020, 0,  1, 19, 30)) + i * 7 * 24 * 60 * 60 * 1000)), 5, 5, 10-0.1*i]);
  		
  	  }
  google.charts.setOnLoadCallback(function(){
	  inbodybarchart(r,'wChartID','wChartID2');
	  inbodybarchart(r2,'mmChartID','mmChartID2');
	  inbodybarchart(r3,'fmChartID','fmChartID2');
	  inbodybarchart(r4,'bChartID','bChartID2');
	  inbodybarchart(r5,'pChartID','pChartID2');
	  inbodybarchart(r6,'vChartID','vChartID2');
	  calcBMR(r,'bmiID');


  }); 
  $(window).resize(function(){
	  google.charts.setOnLoadCallback(function(){
		  inbodybarchart(r,'wChartID','wChartID2');
		  inbodybarchart(r2,'mmChartID','mmChartID2');	
		  inbodybarchart(r3,'fmChartID','fmChartID2');
		  inbodybarchart(r4,'bChartID','bChartID2');
		  inbodybarchart(r5,'pChartID','pChartID2');
		  inbodybarchart(r6,'vChartID','vChartID2');

	  }); 
	});
 </script>
  
  <style>
  #p_pos{
  	margin-right: 80px;
  }
  		  
  address {
	color: white;
	margin-bottom:0px;
	}
  #footer{
	clear: both;
    margin: 0 auto;
    padding: 30px 0 15px 0;
    text-align: center;
    margin: 0 auto;
	height: 50px;
    max-width: 100%;
    min-width: 460px;
    background-color: #3d3b3c;
    bottom:0px;
    
	}
  
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
      background-color: #000000;
    }
    
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #3d3b3c;
      padding: 25px;
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
.ul-weekday {list-style-type: none;}

.weekday {
  padding: 10px 10px;
  width: 100%;
  background: #ffffff;
  text-align: center;
}

.weekday ul {
  margin: 0;
  padding: 0;
}

.weekday ul li {
  color: #000000;
  font-size: 20px;
  text-transform: uppercase;
  letter-spacing: 3px;
}

.weekday .prev {
  float: left;
  padding-top: 10px;
}

.weekday .next {
  float: right;
  padding-top: 10px;
}
.analysis-title{
text-align: left;
}

/* Style the tab */
.tab {
  overflow: hidden;
  border: 1px solid #ccc;
  background-color: #f1f1f1;
}

/* Style the buttons that are used to open the tab content */
.tab button {
  background-color: inherit;
  float: left;
  border: none;
  outline: none;
  cursor: pointer;
  padding: 14px 16px;
  transition: 0.3s;
}

/* Change background color of buttons on hover */
.tab button:hover {
  background-color: #ddd;
}

/* Create an active/current tablink class */
.tab button.active {
  background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
  display: none;
}
.inbodycontent{
  padding: 6px 12px;
  border: 1px solid #ccc;
  border-top: none;
}
  </style>
</head>
<body >

<nav  class="navbar navbar-inverse" >
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">
      <img src = "resources/image/logo.jpg" width="80" height="25">
      </a>
    </div>
    
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li ><a href="#">Home</a></li>
        <li><a href="noob">noob</a></li>
        <li><a href="#">Routine</a></li>
        <li><a href="#">Inbody</a></li>
        <li><a href="dataf">Data</a></li>
        
      </ul>
      <ul class="nav navbar-nav navbar-right">
      <li><a href="prof">UserTest</a></li>
      	<li><a href="joinf">회원가입</a></li>
        <li><a href="loginf"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>
  
<div class="container text-center" style="margin-top:100px" >    
  <div class="row">
    <div class="col-sm-3 well">
      <div class="well">
        <p><a href="#">My Profile</a></p>
        <img src="resources/uploadImage/emptyImage.png" class="img-circle" height="100" width="100" alt="Avatar">
      </div>

		<ul class="nav nav-pills nav-stacked">
		  <li><a href="#">Start Workout</a></li>
		  <li><a href="#">Manage Workout</a></li>
		  <li><a href="inbodyf">InBody</a></li>
		  <li><a href="#">Diet</a></li>
		  <li><a href="#">Social</a></li>  
		  <li><a href="#">Setting</a></li>  
		  
		</ul>
    </div>
    <div class="col-sm-7 inbodycontent">
     <div class="tab">
        <button class="tablink" onclick="openPage(event,'reults_tab')" id="defaultOpen">Results</button>
		<button class="tablink" onclick="openPage(event,'history_tab')">History</button>
		<button class="tablink" onclick="openPage(event, 'ranking_tab')">Ranking</button>
    </div>   
      <div class="row">
        <div class="col-sm-12 tabcontent" id="reults_tab">
            <div class="weekday">      
			  <ul style="list-style-type: none;">
			    <li class="prev">&#10094;</li>
			    <li class="next">&#10095;</li>
			    <li>
			      06.26.2020(Fri) 09:50<br>
			    </li>
			  </ul>
			</div>  
            <div class="well well-sm analysis-title">MUSCLE-FAT ANALYSIS</div>   
            <table class="columns" style="table-layout:fixed;word-break:break-all;width:100%;">
		      <tr>
		        <td style="width:40%;">Weight<br><strong style="font-size: large;" id="wChartID2"></strong>kg</td>
		        <td style="width:150%;"><div id="wChartID"></div></td>
		      </tr>
		      <tr>
		        <td style="width:40%;">Muscle Mass<br><strong style="font-size: large;" id="mmChartID2"></strong>kg</td>
		        <td style="width:150%;"><div id="mmChartID"></div></td>
		      </tr>
		      <tr>
		        <td style="width:40%;">Fat Mass<br><strong style="font-size: large;" id="fmChartID2"></strong>kg</td>
		        <td style="width:150%;"><div id="fmChartID"></div></td>
		      </tr>
		    </table><br><br>
		    <div class="well well-sm analysis-title">Obesity Analysis</div>   
            <table class="columns" style="table-layout:fixed;word-break:break-all;width:100%;">
		      <tr>
		        <td style="width:40%;">BMI<br><strong style="font-size: large;" id="bChartID2"></strong>kg/m2</td>
		        <td style="width:150%;"><div id="bChartID"></div></td>
		      </tr>
		      <tr>
		        <td style="width:40%;">percent<br>Body Fat<br><strong style="font-size: large;" id="pChartID2"></strong>%</td>
		        <td style="width:150%;"><div id="pChartID"></div></td>
		      </tr>
		    </table><br><br>
		    <div class="well well-sm analysis-title">Visceral Fat Analysis</div>   
		     <table class="columns" style="table-layout:fixed;word-break:break-all;width:100%;">
		      <tr>
		        <td style="width:40%;">Visceral <br> Fat Level<br><strong style="font-size: large;" id="vChartID2"></strong>Level</td>
		        <td style="width:150%;"><div id="vChartID"></div></td>
		      </tr>
		      <tr>
		    </table><br><br>
		    <div class="well well-sm analysis-title">Research Parameters</div>   
		     <table class="columns"  style="table-layout:fixed;word-break:break-all;width:100%;">
		      <tr>
		        <td style="width:40%;">Basal Metaboilic Rate</td>
		        <td style="width:150%;text-align: right"><strong style="font-size: large;" id="bmiID"></strong>kcal</td>
		      </tr>
		      <tr>
		    </table><br><br>  
        </div>
        
        <div class="col-sm-12 tabcontent" id="history_tab">
             <div class="weekday">      
			  <ul style="list-style-type: none;">
			    <li class="prev">&#10094;</li>
			    <li class="next">&#10095;</li>
			    <li>
			      This is a Test Tab 2<br>
			    </li>
			  </ul>
			</div>  
        </div>
        
        <div class="col-sm-12 tabcontent" id="ranking_tab">
             <div class="weekday">      
			  <ul style="list-style-type: none;">
			    <li class="prev">&#10094;</li>
			    <li class="next">&#10095;</li>
			    <li>
			      This is a Test Tab 3<br>
			    </li>
			  </ul>
			</div>  
        </div>
        
        
       </div>
 
     </div>
     
    <div class="col-sm-2 well" style="margin-top: 100px">
      <div class="thumbnail">
        <p>Upcoming Events:</p>
        <img src="paris.jpg" alt="Paris" width="400" height="300">
        <p><strong>Paris</strong></p>
        <p>Fri. 27 November 2015</p>
        <button class="btn btn-primary">Info</button>
      </div>      
      <div class="well">
        <p>ADS</p>
      </div>
      <div class="well">
        <p>ADS</p>
      </div>
    </div>
  </div>
</div>

<div id="footer" role="contentinfo">
		<address>
			<em><a href="home" target="_blank" class="logo"><span class="blind">HellChang</span></a></em>
			<em class="copy">Copyright</em>
			<em class="u_cri">©</em>
			<a href="home" target="_blank" class="u_cra">HellChang Corp.</a>
			<span class="all_r">All Rights Reserved.</span>
		</address>
	</div>

</body>
<script>
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
	}
</script>
</html>
