<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>초보자를 위한 페이지</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="resources/jqLib/seq.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50" style="background-color: #f1f1f1">

<nav class="navbar navbar-inverse">
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
        <li><a href="#">Home</a></li>
        <li><a href="#">Routine</a></li>
         <li><a href="one">Inbody</a></li>
         <li><a href="one">One RM</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>
  
<div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-2 sidenav">
      <p><h4>운동 목적</h4></p>
      <p><a href="muscleUp">근성장</a></p>
      <p><a href="diet">다이어트</a></p>
      <p><a href="maintain">유지어트</a></p>
    </div>
    <div class="col-sm-8 text-center" >
      <h2 align="center">운동을 해야 하는 진짜 이유는?</h2>
      <iframe width="500" height="390"
      src="https://www.youtube.com/embed/_WuS6IuIDGo" 
      frameborder="0" allow="accelerometer; autoplay; 
      encrypted-media; gyroscope; picture-in-picture" 
      allowfullscreen>
      </iframe>
    </div>
    <div class="col-sm-2 sidenav">
      <div class="well">
        <p>여기에는 뭐 그냥</p>
      </div>
      <div class="well">
        <p>저희 소개 적어도 될거같아요</p>
        <p>저희 소개 적어도 될거같아요</p>
      </div>
    </div>
  </div>
</div>

<footer class="container-fluid text-center">
  <p>Footer Text</p>
</footer>

</body>
</html>
