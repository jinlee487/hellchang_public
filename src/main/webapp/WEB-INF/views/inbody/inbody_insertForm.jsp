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
  
  <link rel="stylesheet" type="text/css" href="resources/jqLib/footer_position.css">
  <link rel="stylesheet" type="text/css" href="resources/jqLib/topBar.css">
  <link rel="stylesheet" type="text/css" href="resources/jqLib/inbodyButton.css">
  
  <script>
   $(document).ready(function(){
		$('#testdate').val(new Date().toJSON().slice(0,16));
  }) 
 </script>
  
  <style>
  @media (min-width: 768px){
	.col-sm-4 {
	  /* margin-left: 200px; */
	  text-align: center;
		}
	}
  @media screen and (max-width:1199px){
    table {width:100%;}
	td { display:block; width:100%; }
	th{ display:none;}
	input{width: 100%;}
	}
	input {
	text-align: center;
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
		<div class="panel panel-default">
  <div class="panel-heading">Press and edit the values to record your most recent results manually</div>
  <div class="panel-body table-responsive">
	
        <form action="inbodyInsert" method="post" style="border:none;" name="regform">
        <table style="border-collapse:separate;border-spacing:0 5px;border-style: hidden">
        
		<tr><td><label for="test_date" class="int"><b>Enter Test Date</b></label></td>
		   <td><input type="datetime-local" id="testdate" name="date_date"></td>
		   
	   </tr></table>
	   <div class="well well-sm analysis-title">Muscle-Fat Analysis</div> 
	   <table style="border-collapse:separate;border-spacing:0 5px;border-style: hidden">
	        <tr><th></th><th>Measurement</th><th>Lower bound</th><th>Upper bound </th></tr>
			<tr><td><label for="weight" class="int"><b>Weight(kg):</b></label></td>
	    	<td><input type="number" step="any" id="weight" placeholder="Enter weight"  name="weight" class="input"></td>
	    	<td><input type="number" step="any" id="weight_under" placeholder="Enter lower bound"  name="weight_under" class="input"></td>
	    	<td><input type="number" step="any" id="weight_over" placeholder="Enter Upper bound"  name="weight_over" class="input"></td></tr>
	    	
	        <tr><td><label for="mm" class="int"><b>Muscle Mass(kg):</b></label></td>
	    	<td><input type="number" step="any" id="muscleMass" placeholder="Enter muscle mass"  name="muscle_mass" class="input"></td>
	    	<td><input type="number" step="any" id="muscleMass_under" placeholder="Enter lower bound"  name="muscle_mass_under" class="input"></td>
	    	<td><input type="number" step="any" id="muscleMass_over" placeholder="Enter Upper bound"  name="muscle_mass_over" class="input"></td></tr>
	        
	        <tr><td><label for="fm" class="int"><b>Fat Mass:</b></label></td>
	   		<td><input type="number" step="any" id="fatMass" placeholder="Enter fat mass"  name="fat_mass" class="input"></td>
	   		<td><input type="number" step="any" id="fatMass_under" placeholder="Enter lower bound"  name="fat_mass_under" class="input"></td>
	   		<td><input type="number" step="any" id="fatMass_over" placeholder="Enter Upper bound"  name="fat_mass_over" class="input"></td></tr>		
	   	</table>	
	   <div class="well well-sm analysis-title">Obesity Analysis</div> 
	   <table style="border-collapse:separate;border-spacing:0 5px;border-style: hidden">
	        <tr><th></th><th>Measurement</th><th>Lower bound</th><th>Upper bound </th></tr>
	    	<tr><td><label for="BMI" class="int"><b>BMI:</b></label></td>
	   		<td><input type="number" step="any" id="BMI" placeholder="Enter bmi"  name="bmi" class="input"></td>
	   		<td><input type="number" step="any" id="BMI_under" placeholder="Enter lower bound"  name="bmi_under" class="input"></td>
	   		<td><input type="number" step="any" id="BMI_over" placeholder="Enter Upper bound"  name="bmi_over" class="input"></td></tr>
	   		
	    	<tr><td><label for="PBF" class="int"><b>percent Body Fat:</b></label></td>
	        <td><input type="number" id="PBF" placeholder="Enter percent body fat"  name="pbf" class="input"></td>
	        <td><input type="number" id="PBF_under" placeholder="Enter lower bound"  name="pbf_under" class="input"></td>
	        <td><input type="number" id="PBF_over" placeholder="Enter Upper bound"  name="pbf_over" class="input"></td></tr>
	        
	   </table>
	   <div class="well well-sm analysis-title">Visceral Fat Analysis</div> 
	   <table style="border-collapse:separate;border-spacing:0 5px;border-style: hidden">   
	        <tr><th></th><th>Measurement</th><th>Lower bound</th><th>Upper bound </th></tr>	    	
	    	<tr><td><label for="VFL" class="int"><b>Visceral Fat Level:</b></label></td>
	   		<td><input type="number" step="any" id="VFL" placeholder="Enter visceral fat level"  name="vfl" class="input"></td>
	   		<td><input type="number" step="any" id="VFL_under" placeholder="Enter lower bound"  name="vfl_under" class="input"></td>
	   		<td><input type="number" step="any" id="VFL_over" placeholder="Enter Upper bound"  name="vfl_over" class="input"></td></tr>
	   		
	   </table>
	   <div class="well well-sm analysis-title">Research Parameters</div> 
	   <table style="border-collapse:separate;border-spacing:0 5px;border-style: hidden">	
	    	<tr><td><label for="BMR" class="int"><b>Basal Metabolic Rate:</b></label></td>
	 	   	<td><input type="number" step="any" id="BMR" placeholder="Enter BMR"  name="bmr" class="input"></td></tr>
		</table>
		<hr>
		    <button type="submit" class="signupbtn btn btn-primary btn-lg">Submit</button>
		</form>


	
	</div>
	</div>
		
		
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

</script>
</html>
