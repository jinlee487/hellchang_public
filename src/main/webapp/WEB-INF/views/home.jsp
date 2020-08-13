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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="resources/jqLib/jquery-3.2.1.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="resources/jqLib/footer_position.css">
<link rel="stylesheet" type="text/css" href="resources/jqLib/animation.css">
<link rel="stylesheet" type="text/css" href="resources/jqLib/topBar.css">
  <style>
  	.parent {
    display: flex;
    height : 96%;
}
	.child {
	margin-right : 5px;
	margin-left : 5px;
	width : 30%;
    flex: 1;
}
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

  @media (min-width: 768px){
	.col-sm-4 {
	  /* margin-left: 200px; */
	  text-align: center;
	}
  </style>
</head>
<body>
<div style="width: 100%;">
	<div style="position:relative;">
		<img src = "resources/image/arnold_crop.jpg"  width="100%" style="object-fit:cover;">
		<img class="fe-pulse " src = "resources/image/dd.png" width="100px" style="position:absolute; z-index:99; bottom:0; left:47%; display: block; margin: 0px auto;">
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
	</div>
	
	
	
	
	<div class="container text-center">    
	<h2>HellChang</h2>
	  <div class="bimo parent" style="width: 100%;">
		<br>
		<div class = "child" style="width: 20%" >
		<embed style="width : 100%; height : 480px"  src="https://instagram.com/p/B_wYlARAlVA/embed" frameborder="0" scrolling="no" allowtransparency="true"></embed>
		</div>
		<div class = "child" style="width: 20%">
		<embed style="width : 100%; height : 480px"  src="https://instagram.com/p/CDL6eLBFrV5/embed" frameborder="0" scrolling="no" allowtransparency="true"></embed>
		</div>
		<div class = "child" style="width: 20%">
		<embed style="width : 100%; height : 480px"  src="https://instagram.com/p/B8Nj1MxnNRk/embed" frameborder="0" scrolling="no" allowtransparency="true"></embed>
		</div>
		<div class = "child" style="width: 20%">
		<embed style="width : 100%; height : 480px"  src="https://instagram.com/p/BdoL7wLBcP0/embed" frameborder="0" scrolling="no" allowtransparency="true"></embed>
		</div>
	  </div>  
	  <hr>
	  <br>
	  <br>
      <br>
	  <div class="bimo parent" style="width: 100%;">
		  <div class = "child" style="width: 30%;" align="center">
		  <h2>Front-End</h2>
		  </div>
		  <div class = "child icon" style="width: 70%;" align="left">
		  <img src = "resources/image/jquery_icon.png" width="100" height="100"> 
		  <img src = "resources/image/javascript_icon.png" width="100" height="100"> 
		  <img src = "resources/image/bootstrap_icon.png" width="100" height="100"> 
		  <img src = "resources/image/jsp_icon.png" width="100" height="100">
		  </div>
	  </div>
	  
	  <div class="bimo parent" style="width: 100%;">
		  <div class = "child icon" style="width: 30%;" align="center">
		  <h2>Back-End</h2>
		  </div>
		  <div class = "child" style="width: 70%;" align="left">
		  <img src = "resources/image/spring_icon.png" width="100" height="100">	
		  <img src = "resources/image/mybatis_icon.png" width="100" height="100">
		  <img src = "resources/image/mysql_icon.png" width="100" height="100">
		  </div>
	  </div>
	  <hr>
	  <br>
	  <br>
      <br>
	
	  <div class="bimo" style="width: 100%;">
	  	  <h3>What We Do</h3><br>
		  	<div style="display:inline-block; width: 25%; height: 200px;">
		    	<p><img src = "resources/image/blog_icon.png" width="100%"></p>
		    </div>
		    <div style="width:65%; height:200px; display:inline-block;">
		    	<h3>자신의 운동 루틴 공유<br>
		    	좋아요 기능 구현 및 댓글 기능 구현<br></h3>
		    </div>  
	  </div>
	  <hr>
	  <br>
	  <br>
      <br>
      
	  <div class="bimo" style="width: 100%;">
	  	    <div style="width:65%; height:200px; display:inline-block;">
		    	<h3>횟수와 무게에 따른 1rm 계산<br>
		    	저장된 자신의 3대 무게의 변화 그래프 시각화<br></h3>
		    </div>
		    <div style="display:inline-block; width: 25%; height: 200px;">
		    	<p><img src = "resources/image/1rm_icon.png" width="100%"></p>
		    </div>
		  
	  </div>
	  <hr>
	  <br>
	  <br>
      <br>
	 <div class="bimo" style="width: 100%;">
	  	  	<div style="display:inline-block; background-color: red; width: 25%; height: 200px;">
		    	<p><img src = "resources/image/inbody_icon.png" width="100%"></p>
		    </div>
		    <div style="width:65%; height:200px; display:inline-block;">
		    	<h3>자신의 인바디 결과 저장<br>
		    	저장된 자신의 인바디 변화율 시각화<br></h3>
		    </div>  
	  </div>
	  
	  <hr>
	  <br>
	  <br>
      <br>
	 <div class="bimo" style="width: 100%;">
	  	  <div style="width:65%; height:200px; display:inline-block;">
		    	<h3>자신의 루틴 저장<br>
		    	공유 true/false를 통한 공개/비공개<br></h3>
		  </div>
		  <div style="display:inline-block; width: 25%; height: 200px;">
		    	<p><img src = "resources/image/routine.png" width="100%"></p>
		  </div>
		  
	  </div>
	  <hr>
	  <br>
	  <br>
      <br>  
	  </div>
</div>
<br>
<br>
<br>
<br>
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
<script>
$(document).ready(function(){
	location.href('#topmenu');
})

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
