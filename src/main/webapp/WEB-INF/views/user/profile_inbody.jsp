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
  <link rel="stylesheet" type="text/css" href="resources/jqLib/footer_position.css">
  <link rel="stylesheet" type="text/css" href="resources/jqLib/topBar.css">
  <link rel="stylesheet" type="text/css" href="resources/jqLib/inbodyButton.css">
  
  <script>
  
 </script>
  
  <style>
  @media (min-width: 768px){
	.col-sm-4 {
	  /* margin-left: 200px; */
	  text-align: center;
		}
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
	display: block;
    height: 0;
    overflow-y: hidden;
}
.inbodycontent{
  padding: 6px 12px;
  border: 1px solid #ccc;
  border-top: none;
}
#dddd > li:hover {
    background-color: #eee;
    color: blue;
    font-weight: bold;
    cursor: pointer;
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
        <c:if test="${image_path==null}">
			<img src="resources/uploadImage/emptyImage.png" class="img-circle" height="100" width="100" alt="Avatar">
		</c:if>
		<c:if test="${image_path!=null}">
			<img src="${image_path}" class="img-circle" height="100" width="100" alt="Avatar">
		</c:if>
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
    <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#inbodyOption" id="inbodyBtn"><span class="glyphicon glyphicon-plus"></span></button>
     <!-- Modal -->
	  <div class="modal fade" id="inbodyOption" role="dialog">
	    <div class="modal-dialog">
	    
	      <!-- Modal content-->
	      <div class="modal-content">
	        <div class="modal-header">
	          <button type="button" class="close" data-dismiss="modal">&times;</button>
	          <h4 class="modal-title">Inbody Test</h4>
	        </div>
	        <div class="modal-body">
	          <table class="columns" style="table-layout:fixed;word-break:break-all;width:100%;">
	          <tr>
	          <td><button type="button" class="btn btn-default io" id="ii"><span class="glyphicon glyphicon-pencil"></span></button></td>
	          <td><button type="button" class="btn btn-default io" id="iu"><span class="glyphicon glyphicon-edit"></span></button></td>
	          <td><button type="button" class="btn btn-default io" id="is"><span class="glyphicon glyphicon-share"></span></button></td>
	          </tr>
	          </table>
	        </div>
	      </div>
	      
	    </div>
	  </div>

     <div class="tab">
        <button class="tablink" onclick="openPage(event,'results_tab')" id="defaultOpen">Results</button>
		<button class="tablink" onclick="openPage(event,'history_tab')" >History</button>
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
           <div class="panel-group">
		    <div class="panel panel-default">
		      <div class="panel-heading">
		        <h4 class="panel-title">
		          <ul class="pager">
		            <li class="previous" id="resultsback"><a href="#results_tab"><span class="glyphicon glyphicon-chevron-left"></span></a></li>
		            <li><a data-toggle="collapse" href="#collapse1"><span id="results_date"></span>
		            												<span id="results_sign" class="glyphicon glyphicon-collapse-down"></span></a></li>
		            <li class="next" id="resultsforward"><a href="#results_tab"><span class="glyphicon glyphicon-chevron-right"></span></a></li>
		          </ul>
		        </h4>
		      </div>
		      <div id="collapse1" class="panel-collapse collapse">
		        <ul class="list-group" style="text-align: center;display:inline-block;padding: 5px 14px;
		                               background-color: #fff;border: 1px solid #ddd;border-radius: 15px;" id="dddd">
		        </ul>
		        </div>
		        <div class="panel-footer"></div>
		      </div>
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
		             
		<div class="panel-group">
		  <div class="panel panel-default">
		    <div class="panel-heading">
		      <h4 class="panel-title">
		      	<span><strong>Select Date</strong></span><br><br>
		        <a data-toggle="collapse" href="#collapse2"><span id="selected_date"></span>
		        						<span id="hist_sign" class="glyphicon glyphicon-collapse-down"></span></a>
		      </h4>
		    </div>
		    <div id="collapse2" class="panel-collapse collapse">
		      <div class="panel-body">
		      	<form>
			    <div class="form-group">
			      <label for="sel1">Select Start Date</label>
			      <select class="form-control" id="sel1">
			      </select>
			      <label for="sel2">Select End Date</label>
			      <select class="form-control" id="sel2">
			      </select>
			      <hr>
			      </div>
			    </form>
			        <button id="reset_date" class="btn btn-default">Reset</button>
			        <button id="reset_date_ajax" class="btn btn-default">Submit</button>

		      </div>
		    </div>
		  </div>
		</div>
			        
		      <br>
            <table class="columns" style="table-layout:fixed;word-break:break-all;width:100%;">
		      <tr>
		        <td><strong style="font-size: large;">Weight (kg)</strong></td>		        
		      </tr>
		      <tr>
		        <td style="width:150%;"><div id="wComboID"></div><hr></td>
		      </tr> 
		      <tr>
		        <td><strong style="font-size: large;"><br><br>Muscle Mass (kg)</strong></td>
		      </tr>
		      <tr>
		        <td style="width:150%;"><div id="mmComboID"></div><hr></td>
		      </tr> 
		      <tr>
		        <td><strong style="font-size: large;"><br><br>Fat Mass (kg)</strong></td>
		      </tr>
		      <tr>
		        <td style="width:150%;"><div id="fmComboID"></div><hr></td>
		      </tr> 
		      <tr>
		        <td><strong style="font-size: large;"><br><br>BMI (kg/m2)</strong></td>
		      </tr>
		      <tr>
		        <td style="width:150%;"><div id="bComboID"></div><hr></td>
		      </tr> 
		      <tr>
		        <td><strong style="font-size: large;"><br><br>Percent Body Fat (%)</strong></td>
		      </tr>
		      <tr>
		        <td style="width:150%;"><div id="pComboID"></div><hr></td>
		      </tr> 
		      <tr>
		        <td><strong style="font-size: large;"><br><br>Visceral Fat Level (level)</strong></td>
		      </tr>
		      <tr>
		        <td style="width:150%;"><div id="vComboID"></div><hr></td>
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
	callback(loadPage,function(){
		document.getElementById("defaultOpen").click();	
	})
	
	$(window).resize(function(){callback(reloadPage,
		function() { 
		document.getElementsByClassName("tablink active")[0].click();})}
	); 
	
	$('#resultsback').click(function(){
		$('#collapse1').collapse("hide");
		var data;

			$.ajax({
				type:"Post",
				url:"inbodyDetailAjax",
				data:{
					direction:"backward",
					date_date:document.getElementById("results_date").innerHTML
				},
				success:function(jsondata){
					data=jsondata.InbodyVO;
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
		 
	$('#resultsforward').click(function(){
		$('#collapse1').collapse("hide");
		var data;

			$.ajax({
				type:"Post",
				url:"inbodyDetailAjax",
				data:{
					direction:"forward",
					date_date:document.getElementById("results_date").innerHTML
				},
				success:function(jsondata){
					data=jsondata.InbodyVO;
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
	
	
	$('#sel1').change(function(){
		
		console.log($("#sel1 :selected").attr("id"));
		console.log(parseInt($("#sel1 :selected").attr("id").substr(1)));
		$("#sel2").children().each(function(n, i) {
			var id = this.id;
		
			console.log("this is the index => " + n);
			console.log("this is the id => " + id);
			if (parseInt($("#sel1 :selected").attr("id").substr(1))<parseInt(id.substr(1))){
				$('#'+id).prop('disabled', false).css("background-color", "white");
			}
			else {
				$('#'+id).prop('disabled', true).css("background-color", "grey");
			}
		})
	})
	$('#sel2').change(function(){
		console.log($("#sel2 :selected").attr("id"));
		console.log(parseInt($("#sel2 :selected").attr("id").substr(1)));
		$("#sel1").children().each(function(n, i) {
			var id = this.id;
		
			console.log("this is the index => " + n);
			console.log("this is the id => " + id);
			if (parseInt(id.substr(1))<parseInt($("#sel2 :selected").attr("id").substr(1))){
				$('#'+id).prop('disabled', false).css("background-color", "white");
			}
			else {
				$('#'+id).prop('disabled', true).css("background-color", "grey");
			}
		})
	});
	$('#reset_date').click(function(){
	    $('#sel1 option').prop('selected', function() {
	        return this.defaultSelected;
	        })
       	$('#sel2 option').prop('selected', function() {
	        return this.defaultSelected;
	        })	
	
		$("#sel1").children().each(function(n, i) {
			var id = this.id;
		
			console.log("this is the index => " + n);
			console.log("this is the id => " + id);
			if (parseInt(id.substr(1))<parseInt($("#sel2 :selected").attr("id").substr(1))){
				$('#'+id).prop('disabled', false).css("background-color", "white");
			}
			else {
				$('#'+id).prop('disabled', true).css("background-color", "grey");
			}
		})
		$("#sel2").children().each(function(n, i) {
			var id = this.id;
		
			console.log("this is the index => " + n);
			console.log("this is the id => " + id);
			if (parseInt($("#sel1 :selected").attr("id").substr(1))<parseInt(id.substr(1))){
				$('#'+id).prop('disabled', false).css("background-color", "white");
			}
			else {
				$('#'+id).prop('disabled', true).css("background-color", "grey");
			}
		});
	});
	
	$('#reset_date_ajax').click(function(){
		
		reloadGraphs();		
	
		})
	$("#collapse1").on("hide.bs.collapse", function(){
		$("#results_sign").removeClass('glyphicon-collapse-up').addClass('glyphicon-collapse-down');
		});
	$("#collapse1").on("show.bs.collapse", function(){
		$("#results_sign").removeClass('glyphicon-collapse-down').addClass('glyphicon-collapse-up');
		});	
	$("#collapse2").on("hide.bs.collapse", function(){
		$("#hist_sign").removeClass('glyphicon-collapse-up').addClass('glyphicon-collapse-down');
		});
	$("#collapse2").on("show.bs.collapse", function(){
		$("#hist_sign").removeClass('glyphicon-collapse-down').addClass('glyphicon-collapse-up');
		});		
	$(window).scroll(function () {
		if ($(window).scrollTop() > 20 || $(window).scrollTop() > 20) {
		    $('#inbodyBtn').css("display","block");
		  } else {
			$('#inbodyBtn').css("display","none");
		  }
	});
	$('.io').on("click",function(){
		if($(this).attr("id")=='ii'){
			location.href = "inbodyInsertf";  
		}
		else if($(this).attr("id")=='iu'){
			location.href = "inbodyDetail?code=U&date_date="+$('#results_date').html();
		}
		else if($(this).attr("id")=='is'){
			location.href = "inbodySharef";
		}
	})
});

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
  document.body.scrollTop = 0;
  document.documentElement.scrollTop = 0;
}


function datePick(elmnt, callback){ 
		console.log("elmnt inner html => " + elmnt.innerHTML);
		document.getElementById("results_date").innerHTML=elmnt.innerHTML;
		console.log("results_date inner html => " + document.getElementById("results_date").innerHTML);	  
		callback(); 
	   } 

function loadPage(){

		google.charts.load('current', {'packages':['gauge','table','line','corechart','bar']}); 
		google.charts.setOnLoadCallback(InitialloadGraphs);
		google.charts.setOnLoadCallback(InitialloadResults)


}
function reloadPage() {
		reloadResults();

	 	reloadGraphs();
}

function InitialloadGraphs() {
	var data;

		$.ajax({
			type:"Post",
			url:"inbodyListAjax",
			success:function(jsondata){
				data=jsondata.InbodyVO_List;
				
                var start = "";
                var end = "";
                $('#selected_date').html(data[0].date_date.slice(0, -3) + " ~ " + data[data.length-1].date_date.slice(0, -3));
				console.log("this is length of data => " + data.length)
				var r1 = [], r2 = [], r3 = [], r4 = [], r5 = [], r6 = [];
				
                var idx=0;
                $.each(data, function (id, vo) {
                    console.log("this is  id=>" +id+ "/ date => " + vo.date_date);
                    if (idx==0){                 
                    	start += '<option id="s' + idx + '" selected="selected">'+ vo.date_date.slice(0, -3) + '</option>';
						end +=  '<option id="e' + idx + '">'+ vo.date_date.slice(0, -3) + '</option>'; 
						}
                    
					
                    else if (idx==(data.length-1)){                 
	                    	start += '<option id="s' + idx + '">'+ vo.date_date.slice(0, -3) + '</option>';
							end +=  '<option id="e' + idx + '" selected="selected">'+ vo.date_date.slice(0, -3) + '</option>'; 
							}
                    else {
                    	start += '<option id="s' + idx + '">'+ vo.date_date.slice(0, -3) + '</option>';
    					end +=  '<option id="e' + idx + '">'+ vo.date_date.slice(0, -3) + '</option>';
                    }
					idx++;

				  	r1.push([vo.date_date,vo.weight_under,vo.weight_over-vo.weight_under,vo.weight]);
				  	r2.push([vo.date_date,vo.muscle_mass_under,vo.muscle_mass_over-vo.muscle_mass_under,vo.muscle_mass]);
				  	r3.push([vo.date_date,vo.fat_mass_under,vo.fat_mass_over-vo.fat_mass_under,vo.fat_mass]);
				  	r4.push([vo.date_date,vo.bmi_under,vo.bmi_over-vo.bmi_under,vo.bmi]);
				  	r5.push([vo.date_date,vo.pbf_under,vo.pbf_over-vo.pbf_under,vo.pbf]);
				  	r6.push([vo.date_date,vo.vfl_under,vo.vfl_over-vo.vfl_under,vo.vfl]);

                });
                
                inbodycombochart(r1,'wComboID');
                inbodycombochart(r2,'mmComboID');
                inbodycombochart(r3,'fmComboID');
                inbodycombochart(r4,'bComboID');
                inbodycombochart(r5,'pComboID');
                inbodycombochart(r6,'vComboID');

        		$('#sel1').append(start);
        		$('#sel2').append(end);
/* 				$('#s0').prop('selected', true);
				$('#e' +(idx-1)).prop('selected', true);
				console.log("this is #s0 selected => " + $("#sel1").val());
				console.log("this is #e11 selected => " + $("#sel2").val());
				
			    $('#sel1 option').prop('selected', function() {
			    	if (this.defaultSelected==true)
			        console.log("#sel1 this.defaultSelected => "  + this.id);
			        })
		       	$('#sel2 option').prop('selected', function() {
		       		if (this.defaultSelected==true)
			        console.log("#sel2 default this.defaultSelected => "  + this.id);
			        })	
			         */
		}
	});
}
function reloadGraphs(){

	var data;

	$.ajax({
		type:"Post",
		url:"inbodyListAjax",
		data:{
			start_date:$("#sel1").val(),
			end_date:$("#sel2").val() 
		},
		success:function(jsondata){
			data=jsondata.InbodyVO_List;
			console.log("this is data I wonder if this is working ??")
            var start = "";
            var end = "";
            $('#selected_date').html(data[0].date_date.slice(0, -3) + " ~ " + data[data.length-1].date_date.slice(0, -3));
			console.log("this is length of data => " + data.length)
			var r1 = [], r2 = [], r3 = [], r4 = [], r5 = [], r6 = [];
			
            var idx=0;
            $.each(data, function (id, vo) {
                console.log("this is  id=>" +id+ "/ date => " + vo.date_date);
			  	r1.push([vo.date_date,vo.weight_under,vo.weight_over-vo.weight_under,vo.weight]);
			  	r2.push([vo.date_date,vo.muscle_mass_under,vo.muscle_mass_over-vo.muscle_mass_under,vo.muscle_mass]);
			  	r3.push([vo.date_date,vo.fat_mass_under,vo.fat_mass_over-vo.fat_mass_under,vo.fat_mass]);
			  	r4.push([vo.date_date,vo.bmi_under,vo.bmi_over-vo.bmi_under,vo.bmi]);
			  	r5.push([vo.date_date,vo.pbf_under,vo.pbf_over-vo.pbf_under,vo.pbf]);
			  	r6.push([vo.date_date,vo.vfl_under,vo.vfl_over-vo.vfl_under,vo.vfl]);
            });
            
            inbodycombochart(r1,'wComboID');
            inbodycombochart(r2,'mmComboID');
            inbodycombochart(r3,'fmComboID');
            inbodycombochart(r4,'bComboID');
            inbodycombochart(r5,'pComboID');
            inbodycombochart(r6,'vComboID');

/* 			$('#s0').prop('selected', true);
			$('#e' +(idx-1)).prop('selected', true);
			console.log("this is #s0 selected => " + $("#sel1").val());
			console.log("this is #e11 selected => " + $("#sel2").val());
			
		    $('#sel1 option').prop('selected', function() {
		    	if (this.defaultSelected==true)
		        console.log("#sel1 this.defaultSelected => "  + this.id);
		        })
	       	$('#sel2 option').prop('selected', function() {
	       		if (this.defaultSelected==true)
		        console.log("#sel2 default this.defaultSelected => "  + this.id);
		        })	 */

		}
	});
}
	
	
function InitialloadResults() {
	var data;

		$.ajax({
			type:"Post",
			url:"inbodyDetailAjax",
			success:function(jsondata){
				data=jsondata.InbodyVO;
			    console.log("first try inside success after ajax => \n" + data.date_date)
                var result = "";
                $.each(jsondata.dateList, function (id, pvo) {
                    result += '<li class="list-group-item"><span onclick="datePick(this,reloadResults)">'+ pvo.date_date + '</span></li>';
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
	$('#collapse1').collapse("hide");
	var data; 
	if(document.getElementById("results_date").innerHTML.length!=0){
	    console.log("before ajax => " + document.getElementById("results_date").innerHTML)

		$.ajax({
			type:"Post",
			url:"inbodyDetailAjax",
 			data:{date_date:document.getElementById("results_date").innerHTML},
 			success:function(jsondata){
				data=jsondata.InbodyVO;
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
function callback(a,b){
	a();
	b();
}
function openPage(evt,tabName) {
	  var i, tabcontent, tablinks;
	  // Get all elements with class="tabcontent" and hide them
	  tabcontent = document.getElementsByClassName("tabcontent");
	  for (i = 0; i < tabcontent.length; i++) {
	    tabcontent[i].style.height = 0;
	    tabcontent[i].style.overflowY  = "hidden";
	  }

	  // Get all elements with class="tablinks" and remove the class "active"
	  tablinks = document.getElementsByClassName("tablink");
	  for (i = 0; i < tablinks.length; i++) {
	    tablinks[i].className = tablinks[i].className.replace(" active", "");
	  }

	  // Show the current tab, and add an "active" class to the button that opened the tab
	  document.getElementById(tabName).style.height = "100%";
	  document.getElementById(tabName).style.overflowY  = "auto";

	  evt.currentTarget.className += " active";
	}

</script>
</html>
