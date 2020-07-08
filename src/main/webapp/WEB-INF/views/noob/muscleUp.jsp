<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Theme Made By www.w3schools.com - No Copyright -->
  <title>근성장을 위한 페이지</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="resources/jqLib/noobCss.css">
  <link rel="stylesheet" type="text/css" href="resources/jqLib/footer_position2.css">
  <link rel="stylesheet" type="text/css" href="resources/jqLib/topBar.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css" href="resources/jqLib/topBar.css">
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
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50" style="background-color: #ffffff">
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
        <li><a href="#">Blog</a></li>
        <li><a href="#">Inbody</a></li>
        <li><a href="one">1RM</a></li> 
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
        <p><a href = "muscleUpPushP">밀기</a></p>
        <p><a href = "muscleUpPullP">당기기</a></p>
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
