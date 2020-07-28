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
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment.js"></script>
  <script src="resources/jqLib/jquery-3.2.1.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/js/bootstrap-datetimepicker.min.js"></script>

  <link rel="stylesheet" type="text/css" href="resources/jqLib/animation.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/css/bootstrap-datetimepicker.min.css" rel="stylesheet"/>
<!-- https://stackoverflow.com/questions/45649430/how-to-fix-weird-styling-using-bootstrap-3-datetimepicker
 -->
  <link rel="stylesheet" type="text/css" href="resources/jqLib/animation.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
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
		<div class="panel panel-default">
  <div class="panel-heading">Press and edit the values to record your most recent results manually</div>
  <div class="panel-body">
	
        <form action="inbodyInsert" method="post" style="border:none" name="regform">
        <table style="border-collapse:separate;border-spacing:0 5px;border-style: hidden">
		<tr><td><label for="test_date" class="int"><b>Test Date</b></label></td>
		   <td style="width:70%">
			            <div class="form-group">
			                <div class='input-group date' id='datetimepicker1'>
			                    <input type='text' class="form-control" name="date_date" data-date-format="YYYY-MM-DD HH:mm" type="text"/>
			                    <span class="input-group-addon">
			                        <span class="glyphicon glyphicon-calendar"></span>
			                    </span>
			                </div>
			            </div>
			        <script type="text/javascript">
			            $(function () {
			                $('#datetimepicker1').datetimepicker();
			            });
			        </script></td>
	   </tr>
			<tr><td><label for="weight" class="int"><b>Weight(kg):</b></label></td>
	    	<td><input type="number" id="weight" placeholder="Enter weight"  name="weight" class="input"></td></tr>
	    			<tr><td></td></tr>
	    	
	        <tr><td><label for="mm" class="int"><b>Muscle Mass(kg):</b></label></td>
	    	<td><input type="number" id="muscleMass" placeholder="Enter muscle mass"  name="muscle_mass" class="input"></td></tr>
	    			<tr><td></td></tr>
	    	
	    	<tr><td><label for="fm" class="int"><b>Fat Mass:</b></label></td>
	   		<td><input type="number" id="fatMass" placeholder="Enter fat mass"  name="fat_mass" class="input"></td></tr>
	    			<tr><td></td></tr>
	   		
	    	<tr><td><label for="BMI" class="int"><b>BMI:</b></label></td>
	   		<td><input type="number" id="BMI" placeholder="Enter bmi"  name="bmi" class="input"></td></tr>
	    			<tr><td></td></tr>
	   		
	    	<tr><td><label for="PBF" class="int"><b>percent Body Fat:</b></label></td>
	        <td><input type="number" id="PBF" placeholder="Enter percent body fat"  name="pbf" class="input"></td></tr>
	    			<tr><td></td></tr>
	        
	    	<tr><td><label for="VFL" class="int"><b>Visceral Fat Level:</b></label></td>
	   		<td><input type="number" id="VFL" placeholder="Enter visceral fat level"  name="vfl" class="input"></td></tr>
	    			<tr><td></td></tr>
	   		
	    	<tr><td><label for="BMR" class="int"><b>Basal Metabolic Rate:</b></label></td>
	 	   	<td><input type="number" id="BMR" placeholder="Enter basal metabolic rate"  name="bmr" class="input"></td></tr>
	    			<tr><td></td></tr>
	 	   	
	 	   	<tr><td></td><td style=""><button type="submit" class="signupbtn">Submit</button>
	 	   	</td></tr>
		</table>
	
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
