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
  <link rel="stylesheet" type="text/css" href="resources/jqLib/footer_position2.css">
  <link rel="stylesheet" type="text/css" href="resources/jqLib/topBar.css">
  
  <script>
  
 </script>
  
  <style>
  @media (min-width: 768px){
	.col-sm-4 {
	  /* margin-left: 200px; */
	  text-align: center;
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



*,*:after,*:before {
    box-sizing: border-box;
}
.wrapper-dropdown-2 {
    position: relative;
    width: 200px;
    margin: 0 auto;
    padding: 10px 15px;
 
    /* Styles */
    background: #fff;
/*     border-left: 5px solid grey;
 */ 
    cursor: pointer;
    outline: none;
}
.wrapper-dropdown-2:after {
    content: "";
    width: 0;
    height: 0;
    position: absolute;
    right: 16px;
    top: 50%;
    margin-top: -3px;
    border-width: 6px 6px 0 6px;
    border-style: solid;
    border-color: grey transparent;
}
.wrapper-dropdown-2 .dropdown {
  /* Size & position */
    position: absolute;
    top: 60%;
    left: -45px;
    right: 0px;
 
    /* Styles */
    background: white;
    transition: all 0.3s ease-out;
    list-style: none;
 
    /* Hiding */
    opacity: 0;
    pointer-events: none;
}
.wrapper-dropdown-2 .dropdown li span {
    border-style:solid;
    border-width: thick;
    display: block;
    text-decoration: none;
    color: #333;
    border-left: 5px solid;  
    padding: 10px;
    transition: all 0.3s ease-out;
}
 
.wrapper-dropdown-2 .dropdown li:nth-child(1) span { 
    border-left-color: #00ACED;
}
 
.wrapper-dropdown-2 .dropdown li:nth-child(2) span {
    border-left-color: #4183C4;
}
 
.wrapper-dropdown-2 .dropdown li:nth-child(3) span {
    border-left-color: #3B5998;
}
.wrapper-dropdown-2 .dropdown li i {
    margin-right: 5px;
    color: inherit;
    vertical-align: middle;
}
 
/* Hover state */
 
.wrapper-dropdown-2 .dropdown li:hover span {
    color: grey;
    background-color: darkgrey;
}
.wrapper-dropdown-2.active:after {
    border-width: 0 6px 6px 6px;
}
 
.wrapper-dropdown-2.active .dropdown {
    opacity: 1;
    pointer-events: auto;
}
  </style>
</head>
<body>

<nav  class="navbar navbar-inverse" >
  <div class="container-fluid">
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
			<li><a href="routine">Routine</a></li>
			<li><a href="blog">Blog</a></li>
			<li><a href="one">OneRM</a></li>
        
        
      </ul>
        <ul class="nav navbar-nav navbar-right" >
			  <c:if test="${logID != null }">
			  	<li><a style="color: white;">${logName}님</a></li>
			  	<li><a href="prof">MyProfile</a></li>
			  </c:if>
				<li>
					<c:if test="${logID==null }">
						<a href="joinf">회원가입</a>
					</c:if>	
				</li>
				<li>
					<c:if test="${logID==null }">
						<a href="loginf"><span class="glyphicon glyphicon-log-in"></span> Login</a>
					</c:if>
					<c:if test="${logID!=null }">
						<a href="logout"><span class="glyphicon glyphicon-log-in"></span> Logout</a>
					</c:if>
				</li>
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
        <button class="tablink" onclick="openPage(event,'results_tab')" id="defaultOpen">Results</button>
		<button class="tablink" onclick="openPage(event,'history_tab')">History</button>
		<button class="tablink" onclick="openPage(event, 'ranking_tab')">Ranking</button>
    </div>   
      <div class="row">
        <div class="col-sm-12 tabcontent" id="results_tab">
        
<!--          <form>
		    <div class="form-group">
		   		 <br>
		      <label for="sel1">Select Inbody Record</label>
		      <select class="form-control" id="sel1 sel1Results">
		        <option>1</option>
		        <option>2</option>
		        <option>3</option>
		        <option>4</option>
		      </select>
		    </div>
		  </form> -->
        
        
    	  <ul  class="pager">
            <li class="previous" id= "resultback"><a href="#"><span class="glyphicon glyphicon-chevron-left"></span></a></li>
		    <li><span id="dd" class="wrapper-dropdown-2"><span id="results_date"></span>
				  <ul class="dropdown" id="dddd" style="z-index:1;overflow-y:auto;height:285px;width:300px;">

				  </ul></span></li>
            <li class="next" id= "resultforward"><a href="#"><span class="glyphicon glyphicon-chevron-right"></span></a></li> 		    
		  </ul> 
		  
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
		    </table><br><br>
		    <div class="well well-sm analysis-title">Research Parameters</div>   
		     <table class="columns"  style="table-layout:fixed;word-break:break-all;width:100%;">
		      <tr>
		        <td style="width:40%;">Basal Metaboilic Rate</td>
		        <td style="width:150%;text-align: right"><strong style="font-size: large;" id="bmiID"></strong>kcal</td>
		      </tr>
		    </table><br><br>  
        </div>
        
        <div class="col-sm-12 tabcontent" id="history_tab">
		     <form>
		    <div class="form-group">
		      <label for="sel1">Select list (select one):</label>
		      <select class="form-control" id="sel1">
		        <option>1</option>
		        <option>2</option>
		        <option>3</option>
		        <option>4</option>
		      </select>
		       </div>
  			</form>
		      <br>
            <table class="columns" style="table-layout:fixed;word-break:break-all;width:100%;">
		      <tr>
		        <td><strong style="font-size: large;">Weight (kg)</strong></td>
		      </tr>
		      <tr>
		        <td><div id="wComboID" style="width: 100%;"></div></td>
		      </tr> 
		      <tr>
		        <td><strong style="font-size: large;"><br><br>Muscle Mass (kg)</strong></td>
		      </tr>
		      <tr>
		        <td><div id="mmComboID" style="width: 100%;"></div></td>
		      </tr> 
		      <tr>
		        <td><strong style="font-size: large;"><br><br>Fat Mass (kg)</strong></td>
		      </tr>
		      <tr>
		        <td><div id="fmComboID" style="width: 100%;"></div></td>
		      </tr> 
		      <tr>
		        <td><strong style="font-size: large;"><br><br>BMI (kg/m2)</strong></td>
		      </tr>
		      <tr>
		        <td><div id="bComboID" style="width: 100%;"></div></td>
		      </tr> 
		      <tr>
		        <td><strong style="font-size: large;"><br><br>Percent Body Fat (%)</strong></td>
		      </tr>
		      <tr>
		        <td><div id="pComboID" style="width: 100%;"></div></td>
		      </tr> 
		      <tr>
		        <td><strong style="font-size: large;"><br><br>Visceral Fat Level (level)</strong></td>
		      </tr>
		      <tr>
		        <td><div id="vComboID" style="width: 100%;"></div></td>
		      </tr> 
		     </table>
		     <br><br><br><br><br><br><br><br>
		     
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
<br>
<br>
<br>
<br>
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

</body>
<script> 
	  
$(document).ready(function(){
	var data;
	var data1;
	loadPage();
	
	document.getElementById("defaultOpen").click();
/* 	$(document).on('click', '.datePick' , function() {
		console.log("inner html => " + this.html());
		document.getElementById("results_date").innerHTML=this.html();
		loadResults();
	}); */
	$(window).resize(function(){
		loadPage();
		document.getElementsByClassName("tablink active")[0].click();
	}); 

	function DropDown(el) {
		  this.dd = el;
		  this.initEvents();
		}
		DropDown.prototype = {
		  initEvents : function() {
		    var obj = this;
		    obj.dd.on('click', function(event){
		      $(this).toggleClass('active');
		      event.stopPropagation();
		    }); 
		  }
		}
		$(function() {
		  var dd = new DropDown( $('#dd') );
			$(document).click(function() {
			  $('.wrapper-dropdown-2').removeClass('active');
			});
		});


	
	
	$('#resultback').click(function(){
		var data;
		var data1;

			$.ajax({
				type:"Post",
				url:"inbodyDetailAjax",
				data:{
					direction:"backward",
					date_date:document.getElementById("results_date").innerHTML
				},
				success:function(jsondata){
					data=jsondata.InbodyVO;
					data1=jsondata.dateList;
				    console.log("first try inside success after ajax => \n" + data.date_date)

	        	    document.getElementById("results_date").innerHTML = data.date_date;
	        	    console.log("after ajax => " + document.getElementById("results_date").innerHTML)
	        		inbodybarchart(data.weight,data.weight_under,data.weight_over-data.weight_under,'wChartID','wChartID2');
	        		inbodybarchart(data.muscle_mass,data.muscle_mass_under,data.muscle_mass_over-data.muscle_mass_under,'mmChartID','mmChartID2');
	        		inbodybarchart(data.fat_mass,data.fat_mass_under,data.fat_mass_over-data.fat_mass_under,'fmChartID','fmChartID2');
	        		inbodybarchart(data.bmi,data.bmi_under,data.bmi_over-data.bmi_under,'bChartID','bChartID2');
	        		inbodybarchart(data.pbf,data.pbf_under,data.pbf_over-data.pbf_under,'pChartID','pChartID2');
	        		inbodybarchart(data.vfl,data.vfl_under,data.vfl_over-data.vfl_under,'vChartID','vChartID2');
	        		calcBMR(data.bmr,'bmiID');	 
				}
			})

		 });
		 
	$('#resultforward').click(function(){
		var data;
		var data1;

			$.ajax({
				type:"Post",
				url:"inbodyDetailAjax",
				data:{
					direction:"forward",
					date_date:document.getElementById("results_date").innerHTML
				},
				success:function(jsondata){
					data=jsondata.InbodyVO;
					data1=jsondata.dateList;
				    console.log("first try inside success after ajax => \n" + data.date_date)

	        	    document.getElementById("results_date").innerHTML = data.date_date;
	        	    console.log("after ajax => " + document.getElementById("results_date").innerHTML)
	        		inbodybarchart(data.weight,data.weight_under,data.weight_over-data.weight_under,'wChartID','wChartID2');
	        		inbodybarchart(data.muscle_mass,data.muscle_mass_under,data.muscle_mass_over-data.muscle_mass_under,'mmChartID','mmChartID2');
	        		inbodybarchart(data.fat_mass,data.fat_mass_under,data.fat_mass_over-data.fat_mass_under,'fmChartID','fmChartID2');
	        		inbodybarchart(data.bmi,data.bmi_under,data.bmi_over-data.bmi_under,'bChartID','bChartID2');
	        		inbodybarchart(data.pbf,data.pbf_under,data.pbf_over-data.pbf_under,'pChartID','pChartID2');
	        		inbodybarchart(data.vfl,data.vfl_under,data.vfl_over-data.vfl_under,'vChartID','vChartID2');
	        		calcBMR(data.bmr,'bmiID');	 
				}
			})

		 });
});


function datePick(elmnt, callback){ 
		console.log("elmnt inner html => " + elmnt.innerHTML);
		document.getElementById("results_date").innerHTML=elmnt.innerHTML;
		console.log("results_date inner html => " + document.getElementById("results_date").innerHTML);	  
		callback(); 
	   } 

function loadPage(){
	google.charts.load('current', {'packages':['gauge','table','line','corechart','bar']}); 
	document.getElementById('results_tab').style.display = "block";
	document.getElementById('history_tab').style.display = "block";

	google.charts.setOnLoadCallback(InitialloadResults);
 	google.charts.setOnLoadCallback(InitialloadGraphs);
 
	document.getElementById('results_tab').style.display = "none";
	document.getElementById('history_tab').style.display = "none";
}
	
function InitialloadGraphs() {
	var data;
	var data1;

		$.ajax({
			type:"Post",
			url:"inbodyListAjax",
			success:function(jsondata){
				data=jsondata.InbodyVO_List;
                var result = "";
                $.each(data, function (id, vo) {
                    console.log("this is  id=>" +id+ "/ date => " + vo.date_date);
                });

			}
		})

 	}
function reloadGraphs(){
	var data;
	var data1;

		$.ajax({
			type:"Post",
			url:"inbodyListAjax",
			success:function(jsondata){
				data=jsondata.InbodyVO_List;
                var result = "";
                $.each(data, function (id, vo) {
                    console.log("this is  id=>" +id+ "/ date => " + vo.date_date);
                });

			}
		})

}
	
	
function InitialloadResults() {
	var data;
	var data1;

		$.ajax({
			type:"Post",
			url:"inbodyDetailAjax",
			success:function(jsondata){
				data=jsondata.InbodyVO;
				data1=jsondata.dateList;
			    console.log("first try inside success after ajax => \n" + data.date_date)
                var result = "";
                $.each(jsondata.dateList, function (id, pvo) {
                    result += '<li><span onclick="datePick(this,reloadResults)">'+ pvo.date_date + '</span></li>';
                });
        		$('#dddd').append(result);
        	    document.getElementById("results_date").innerHTML = data.date_date;
        	    console.log("after ajax => " + document.getElementById("results_date").innerHTML)
        		inbodybarchart(data.weight,data.weight_under,data.weight_over-data.weight_under,'wChartID','wChartID2');
        		inbodybarchart(data.muscle_mass,data.muscle_mass_under,data.muscle_mass_over-data.muscle_mass_under,'mmChartID','mmChartID2');
        		inbodybarchart(data.fat_mass,data.fat_mass_under,data.fat_mass_over-data.fat_mass_under,'fmChartID','fmChartID2');
        		inbodybarchart(data.bmi,data.bmi_under,data.bmi_over-data.bmi_under,'bChartID','bChartID2');
        		inbodybarchart(data.pbf,data.pbf_under,data.pbf_over-data.pbf_under,'pChartID','pChartID2');
        		inbodybarchart(data.vfl,data.vfl_under,data.vfl_over-data.vfl_under,'vChartID','vChartID2');
        		calcBMR(data.bmr,'bmiID');	 
			}
		})

 	}
function reloadResults(){
	
	if(document.getElementById("results_date").innerHTML.length!=0){
	    console.log("before ajax => " + document.getElementById("results_date").innerHTML)

		$.ajax({
			type:"Post",
			url:"inbodyDetailAjax",
 			data:{date_date:document.getElementById("results_date").innerHTML},
 			success:function(jsondata){
				data=jsondata.InbodyVO;
				data1=jsondata.dateList;
			    console.log(" second try inside success after ajax => \n" + data.date_date)
			    document.getElementById("results_date").innerHTML = data.date_date;
			    console.log("after ajax => " + document.getElementById("results_date").innerHTML)
				inbodybarchart(data.weight,data.weight_under,data.weight_over-data.weight_under,'wChartID','wChartID2');
				inbodybarchart(data.muscle_mass,data.muscle_mass_under,data.muscle_mass_over-data.muscle_mass_under,'mmChartID','mmChartID2');
				inbodybarchart(data.fat_mass,data.fat_mass_under,data.fat_mass_over-data.fat_mass_under,'fmChartID','fmChartID2');
				inbodybarchart(data.bmi,data.bmi_under,data.bmi_over-data.bmi_under,'bChartID','bChartID2');
				inbodybarchart(data.pbf,data.pbf_under,data.pbf_over-data.pbf_under,'pChartID','pChartID2');
				inbodybarchart(data.vfl,data.vfl_under,data.vfl_over-data.vfl_under,'vChartID','vChartID2');
				calcBMR(data.bmr,'bmiID');	
			}
		})	
	}	
}

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
