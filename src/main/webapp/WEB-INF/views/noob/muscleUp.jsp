<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Theme Made By www.w3schools.com - No Copyright -->
  <title>근성장을 위한 페이지</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
  body {
    font: 400 15px/1.8 Lato, sans-serif;
    color: #777;
  }
  h3, h4 {
    margin: 10px 0 30px 0;
    letter-spacing: 10px;      
    font-size: 20px;
    color: #111;
  }
  .container {
    padding: 80px 120px;
  }
  .person {
    border: 10px solid transparent;
    margin-bottom: 25px;
    width: 80%;
    height: 80%;
    opacity: 0.7;
  }
  .person:hover {
    border-color: #f1f1f1;
  }
  .carousel-inner img {
    -webkit-filter: grayscale(90%);
    filter: grayscale(90%); /* make all photos black and white */ 
    width: 100%; /* Set width to 100% */
    margin: auto;
  }
  .carousel-caption h3 {
    color: #fff !important;
  }
  @media (max-width: 600px) {
    .carousel-caption {
      display: none; /* Hide the carousel text when the screen is less than 600 pixels wide */
    }
  }
  .bg-1 {
    background: #2d2d30;
    color: #bdbdbd;
  }
  .bg-1 h3 {color: #fff;}
  .bg-1 p {font-style: italic;}
  .list-group-item:first-child {
    border-top-right-radius: 0;
    border-top-left-radius: 0;
  }
  .list-group-item:last-child {
    border-bottom-right-radius: 0;
    border-bottom-left-radius: 0;
  }
  .thumbnail {
    padding: 0 0 15px 0;
    border: none;
    border-radius: 0;
  }
  .thumbnail p {
    margin-top: 15px;
    color: #555;
  }
  .btn {
    padding: 10px 20px;
    background-color: #333;
    color: #f1f1f1;
    border-radius: 0;
    transition: .2s;
  }
  .btn:hover, .btn:focus {
    border: 1px solid #333;
    background-color: #fff;
    color: #000;
  }
  .modal-header, h4, .close {
    background-color: #333;
    color: #fff !important;
    text-align: center;
    font-size: 30px;
  }
  .modal-header, .modal-body {
    padding: 40px 50px;
  }
  .nav-tabs li a {
    color: #777;
  }
  #googleMap {
    width: 100%;
    height: 400px;
    -webkit-filter: grayscale(100%);
    filter: grayscale(100%);
  }  
  .navbar {
      margin-bottom: 0;
      border-radius: 0;
      background-color: #000000	;
    }
  .navbar li a, .navbar .navbar-brand { 
    color: #d5d5d5 !important;
  }
  .navbar-nav li a:hover {
    color: #fff !important;
  }
  .navbar-nav li.active a {
    color: #fff !important;
    background-color: #29292c !important;
  }
  .navbar-default .navbar-toggle {
    border-color: transparent;
  }
  .open .dropdown-toggle {
    color: #fff;
    background-color: #555 !important;
  }
  .dropdown-menu li a {
    color: #000 !important;
  }
  .dropdown-menu li a:hover {
    background-color: red !important;
  }
  footer {
    background-color: #000000;
    color: #f5f5f5;
    padding: 32px;
  }
  footer a {
    color: #f5f5f5;
  }
  footer a:hover {
    color: #777;
    text-decoration: none;
  }  
  .form-control {
    border-radius: 0;
  }
  textarea {
    resize: none;
  }
  .sidenav {
      padding-top: 20px;
      background-color: #f1f1f1;
      height: 100%;
    }
  .container-fluid{
  	padding-right:15px;
  	padding-left:15px;
  	margin-right:auto;
 	margin-left:auto;
  }
  </style>
  
  <script>
$(document).ready(function(){
  // Initialize Tooltip
  $('[data-toggle="tooltip"]').tooltip(); 
  
  // Add smooth scrolling to all links in navbar + footer link
  $(".navbar a, footer a[href='#myPage']").on('click', function(event) {

    // Make sure this.hash has a value before overriding default behavior
    if (this.hash !== "") {

      // Prevent default anchor click behavior
      event.preventDefault();

      // Store hash
      var hash = this.hash;

      // Using jQuery's animate() method to add smooth page scroll
      // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
      $('html, body').animate({
        scrollTop: $(hash).offset().top
      }, 900, function(){
   
        // Add hash (#) to URL when done scrolling (default click behavior)
        window.location.hash = hash;
      });
    } // End if
  });
})
</script>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50" style="background-color: #f1f1f1">
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="home"> 
      <img src = "resources/image/logo.jpg" width="80" height="25">
      </a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="noob">Noob</a></li>
        <li><a href="#">Routine</a></li>
        <li><a href="#">Inbody</a></li>
        <li><a href="#">1rm</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav> 
<div class="container-fluid text-center">
 <div class="row content" >
	<div class="col-sm-2 sidenav" >
 	 <p>운동 목적</p>
 	 <p><a href="muscleUp">근성장</a></p>
 	 <p><a href="diet">다이어트</a></p>
 	 <p><a href="maintain">유지어트</a></p>
	</div>


<!-- Container (The Band Section) -->
<div id="band" class="container text-center">
  <h3>근성장</h3>
  <p>근성장이 이뤄지는 과정</p>
  <p>
  <iframe width="500" height="390" 
  src="https://www.youtube.com/embed/2tM1LFFxeKg" 
  frameborder="0" allow="accelerometer; autoplay; encrypted-media; 
  gyroscope; picture-in-picture" allowfullscreen>
  </iframe>
  </p>
  <br>
  <div class="row">
    <div class="col-sm-4">
      <p class="text-center"><strong>밀기/당기기</strong></p><br>
      <a href="#demo" data-toggle="collapse">
      <img src="resources/image/list.jpg" class="img-circle person" alt="2분할" width="50" height="50">
      </a>
      <div id="demo" class="collapse">
        <p><a href = "muscleUpPush">밀기</a></p>
        <p><a href = "muscleUpPushP">밀기PopUp</a></p>
        <p><a href = "muscleUpPull">당기기</a></p>
        <p><a href = "muscleUpPullP">당기기PopUp</a></p>
      </div>
    </div>
    <div class="col-sm-4">
      <p class="text-center"><strong>가슴/등/하체</strong></p><br>
      <a href="#demo2" data-toggle="collapse">
      <img src="resources/image/list.jpg" class="img-circle person" alt="3분할" width="50" height="50">
      </a>
      <div id="demo2" class="collapse">
        <p><a href = "muscleChest">가슴</a></p>
        <p><a href = "muscleBack">등</a></p>
        <p><a href = "muscleLeg">하체</a></p>
      </div>
    </div>
    <div class="col-sm-4">
      <p class="text-center"><strong>가슴/하체/등/어깨/팔</strong></p><br>
      <a href="#demo3" data-toggle="collapse">
      <img src="resources/image/list.jpg" class="img-circle person" alt="5분할" width="50" height="50">
      </a>
      <div id="demo3" class="collapse">
        <p><a href = "muscleChest5">가슴</a></p>
        <p><a href = "muscleLeg5">하체</a></p>
        <p><a href = "muscleBack5">등</a></p>
        <p><a href = "muscleSholder5">어깨</a></p>
        <p><a href = "muscleArm5">팔</a></p>
      </div>
    </div>
  </div>
  </div>
  </div>
</div>

<!-- Footer -->
<footer class="text-center">
  <a class="up-arrow" href="#myPage" data-toggle="tooltip" title="TO TOP">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a><br><br>
  <p>Bootstrap Theme Made By <a href="https://www.w3schools.com" data-toggle="tooltip" title="Visit w3schools">www.w3schools.com</a></p> 
</footer>



</body>
</html>
