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
  <link rel="stylesheet" type="text/css" href="resources/jqLib/footer_position2.css">
  <link rel="stylesheet" type="text/css" href="resource/jqLib/topBar.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="resources/jqLib/jquery-3.2.1.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

  <style>

	#bar_top{
		overflow: hidden;
	}
	
	.fade-in-bottom {
	-webkit-animation: fade-in-bottom 2s cubic-bezier(0.390, 0.575, 0.565, 1.000) both;
	        animation: fade-in-bottom 2s cubic-bezier(0.390, 0.575, 0.565, 1.000) both;
}
  
  .sticky {
	  position: fixed;
	  top: 0;
	  width: 100%;
	  z-index: 100;
	}
		  

  
    /* Remove the navbar's default margin-bottom and rounded borders */ 
     .navbar {
      margin-bottom: 0;
      border-radius: 0;
      background-color: #000000;
    } 
    
    /* Add a gray background color and some padding to the footer */
    
  .carousel-inner img {
      width: 1376px; /* Set width to 100% */
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
  </style>
</head>
<body>

<div >
	<img src = "resources/image/arnold.jpg"  width="100%" height="887.14px" style="position: relative;">
	<div style="position:absolute; top: 0px; left: 0px; top: 790px; width: 100%;">
		<img class="fe-pulse " src = "resources/image/dd.png" width="100px" style="display: block; margin: 0px auto;">
	</div>
</div>
<div style="text-align: center;">
	<nav class="navbar navbar-inverse"  id="topmenu">
	  <div class="container-fluid" >
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
			<li><a href="noob">Noob</a></li>
			<li><a href="#">Routine</a></li>
			<li><a href="dataf">Blog</a></li>
			<li><a href="#">Inbody</a></li>
			<li><a href="one">1RM</a></li>
			
		  </ul>
		  <ul class="nav navbar-nav navbar-right" >
		  <li><a href="prof">UserTest</a></li>
			<li><a href="joinf">회원가입</a></li>
			<li><a href="loginf"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
		  </ul>
		</div>
	  </div>
	</nav>
</div>




<div class="container text-center">    
  <div class="bimo" style="width: 1100px;">
	  <h3>What We Do</h3><br>
	  <div  style="width:250px; height: 400px; background-color: blue; display: inline-block; margin: 10px;"></div>
	  <div  style="width:250px; height: 400px; background-color: red ; display: inline-block; margin: 10px;"></div>
	  <div  style="width:250px; height: 400px; background-color: yellow; display: inline-block;margin: 10px;"></div>
	  <div  style="width:250px; height: 400px; background-color: black; display: inline-block; margin: 10px;"></div>
  </div>
  
  <hr>

  <div class="bimo" style="width: 1100px;">
  	  <h3>What We Do</h3><br>
	  <div style="width: 1100px;">
	  	<div style="display:inline-block; background-color: red; width: 300px; height: 200px;">
	    	<p>some text</p>
	    </div>
	    <div style="width:700px; height:200px; display:inline-block; background-color: yellow;">
	    	<p>right some text</p>
	    </div>  
	  </div>
  </div>
  
  <hr>
  
  <div class="bimo" style="width: 1100px;">
	  <h3>What We Do</h3><br>
	  <div style="width:700px; height:200px; display:inline-block; background-color: yellow;">
	  	<p>right some text</p>
	  </div>
	  <div style="display:inline-block; background-color: red; width: 300px; height: 200px;">
	    	<p>some text</p>
	  </div>
  </div>
  
   <hr>
  
  <div class="bimo" style="width: 1100px;">
  <h3>What We Do</h3><br>
   	<div style="display:inline-block; background-color: red; width: 300px; height: 200px;">
    	<p>some text</p>
    </div>
    <div style="width:700px; height:200px; display:inline-block; background-color: yellow;">
    	<p>right some text</p>
    </div>  
  </div>
  
  <hr>
  
  <div class="bimo" style="width: 1100px;">
  <h3>What We Do</h3><br>
   	<div style="width:700px; height:200px; display:inline-block; background-color: yellow;">
    	<p>right some text</p>
    </div>  
   	
   	<div style="display:inline-block; background-color: red; width: 300px; height: 200px;">
    	<p>some text</p>
    </div>
    
  </div>
</div><br>



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
<script>

window.onscroll = function() {
	myFunction();
	bounce();
}

var navbar = document.getElementById("topmenu");
var sticky = navbar.offsetTop;

function myFunction() {
  if (window.pageYOffset >= sticky) {
    navbar.classList.add("sticky")
  } else {
    navbar.classList.remove("sticky");
  }
}

var bounce 

function bounce(){
	var bounce = document.getElementsByClassName("bimo");
	console.log(window.pageYOffset);
	
	if(pageYOffset>=26){
		bounce[0].classList.add("fade-in-bottom")
	}
	if(pageYOffset>=526){
		bounce[1].classList.add("fade-in-bottom")
	}
	if(pageYOffset>=826){
		bounce[2].classList.add("fade-in-bottom")
	}
	if(pageYOffset>=1090){
		bounce[3].classList.add("fade-in-bottom")
	}
	if(pageYOffset>=1386){
		bounce[4].classList.add("fade-in-bottom")
	}
}
	 
  </script>
</body>

</html>
