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
  <link rel="stylesheet" type="text/css" href="resources/jqLib/button.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="resources/jqLib/jquery-3.2.1.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
   
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">  
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
  padding: 70px 25px;
  width: 100%;
  background: #1abc9c;
  text-align: center;
}

.weekday ul {
  margin: 0;
  padding: 0;
}

.weekday ul li {
  color: white;
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

 
</style>

<script>
$(function(){
	$('#target').change(function(){
		var sel = $('#target').val();
		
		
	})

});



</script>
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
        <p><a href="myProfile">My Profile</a></p>
        <img src="resources/uploadImage/emptyImage.png" class="img-circle" height="100" width="100" alt="Avatar">
      </div>

		<ul class="nav nav-pills nav-stacked">
		  <li><a href="#">Start Workout</a></li>
		  <li><a href="manageWorkout">Manage Workout</a></li>
		  <li><a href="inbodyf">InBody</a></li>
		  <li><a href="#">Diet</a></li>
		  <li><a href="#">Social</a></li>  
		  <li><a href="#">Setting</a></li>  
		  
		</ul>
    </div>
    <div class="col-sm-7 ">
      <div class="row">
        <div class="col-sm-12">
			<div class="weekday">      
			  <ul style="list-style-type: none;">
			    
			    <li class="test"></li>
			    <li class="prev">&#10094;</li>
			    <li class="next">&#10095;</li>		
			  </ul>
			</div>  
        </div>
      </div>
      <div class="row">
        <div class="col-sm-12">
           <div class="well well-sm analysis-title" align="center"> 
			
           </div>   
        </div>        
      </div>
      <div class="row">
       
<hr>
 <select id = "target">
     <option>-------------
     <option value = "chest" >Chest
     <option value = "back"  >Back
     <option value = "leg" >Leg
     <option value = "sholder">Sholder
     <option value = "biceps">biceps
     <option value = "triceps">triceps
     <option value = "abs" >abs
     <option value = "aerobic">aerobic
     <option value = "core">core
     
     
     </select>
       
     <select id="targeting" name="targeting">
     <option value="">--------------------</option>
     </select>
<table id = "mytest">
  <thead align="left">
    <button onclick="add_row()" style="width: 75px">+</button>
	<button onclick="delete_row()" style="width: 75px">-</button>
	<th width="50">Target</th>
    <th width="100" align="center">List</th>
    <th width="50">KG</th>
    <th width="50">REP</th>
  </thead>
  <form>
  <tbody id="my-tbody"></tbody>
  
  </form>
</table>

<script>
function add_row() {
    var my_tbody = document.getElementById('my-tbody');
    // var row = my_tbody.insertRow(0); // 상단에 추가
    var row = my_tbody.insertRow( my_tbody.rows.length ); // 하단에 추가
    var cell0 = row.insertCell(0);
    var cell1 = row.insertCell(1);
    var cell2 = row.insertCell(2);
    var cell3 = row.insertCell(3);
	cell0.innerHTML =
$('#target').val();

	cell1.innerHTML =
$('#targeting').val();

    cell2.innerHTML = 
'<input type = "text" class = "kg" width = "50">';

    cell3.innerHTML = 
'<input type = "text" class = "rep" width = "50">';
  }

  function delete_row() {
    var my_tbody = document.getElementById('my-tbody');
    if (my_tbody.rows.length < 1) return;
    // my_tbody.deleteRow(0); // 상단부터 삭제
    my_tbody.deleteRow( my_tbody.rows.length-1 ); // 하단부터 삭제
  }


</script>    
	 
	
	
    
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
</html>
