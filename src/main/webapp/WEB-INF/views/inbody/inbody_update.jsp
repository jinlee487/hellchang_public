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
        <form action="join" method="post" style="border:1px solid #ccc" name="regform">
			<input type="text" id="yy" name="yy" placeholder="년(4자)" aria-label="년(4자)" class="yy" maxlength="4" required>
    		<select id="mm" class="mm" name="mm" aria-label="월" required>
										<option value="">월</option>
										  	 			<option value="01">
                                                            1월
                                                        </option>
										  	 			<option value="02">
                                                            2월
                                                        </option>
										  	 			<option value="03">
                                                            3월
                                                        </option>
										  	 			<option value="04">
                                                            4월
                                                        </option>
										  	 			<option value="05">
                                                            5월
                                                        </option>
										  	 			<option value="06">
                                                            6월
                                                        </option>
										  	 			<option value="07">
                                                            7월
                                                        </option>
										  	 			<option value="08">
                                                            8월
                                                        </option>
										  	 			<option value="09">
                                                            9월
                                                        </option>
										  	 			<option value="10">
                                                            10월
                                                        </option>
										  	 			<option value="11">
                                                            11월
                                                        </option>
										  	 			<option value="12">
                                                            12월
                                                        </option>
									</select>
	
	
	
	
	<input type="text" id="dd" name="dd" placeholder="일" aria-label="일" class="yy" maxlength="2" required><br>
		<label for="weight" class="int"><b>Weight(kg)</b></label><br>
    <input type="number" id="weight" placeholder="Enter weight"  name="weight" class="input" required ><br>
        <label for="psw" class="int"><b>Muscle Mass(kg)</b></label><br>
    <input type="number" id="password" placeholder="Enter Password"  name="password" class="input" required ><br>
    	<label for="psw" class="int"><b>Fat Mass</b></label><br>
    <input type="number" id="password" placeholder="Enter Password"  name="password" class="input" required ><br>
    	<label for="psw" class="int"><b>BMI</b></label><br>
    <input type="number" id="password" placeholder="Enter Password"  name="password" class="input" required ><br>
    	<label for="psw" class="int"><b>percent Body Fat</b></label><br>
    <input type="number" id="password" placeholder="Enter Password"  name="password" class="input" required ><br>
    	<label for="psw" class="int"><b>Visceral Fat Level</b></label><br>
    <input type="number" id="password" placeholder="Enter Password"  name="password" class="input" required ><br>
    	<label for="psw" class="int"><b>Basal Metabolic Rate</b></label><br>
    <input type="number" id="password" placeholder="Enter Password"  name="password" class="input" required ><br>
	</form>
	<br><br><br><br><br><br><br><br><br><br>  
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
