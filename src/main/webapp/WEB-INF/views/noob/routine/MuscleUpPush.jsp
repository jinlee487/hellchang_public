<!-- 리스트 클릭하면 popup으로 동영상 -->

<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>2분할 밀기운동</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
      background-color: #3d3b3c	;
    }
    
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
  </style>
</head>
<body style="background-color: #f1f1f1">

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

<div class="jumbotron">
  <div class="container text-center" id = "div1">
    <h1>2분할</h1>      
    <p>2분할루틴은 상체와 하체 
이 두가지 안에서 루틴이 돌아가기 떄문에 
훈련빈도가 높아집니다.<br>

훈련빈도가 높아진다는 것은 
곧 볼륨이 높아진다는 뜻과 같다. </p>
  </div>
</div>
  
<div class="container-fluid bg-3 text-center">    
  <h3>2분할 Push</h3><br>
  <div class="row">
    <div class="col-sm-3">
      <p>1.스트레칭</p>
      <iframe width="100%" height="250"
	  src="https://www.youtube.com/embed/ahbAnkN4KJ0" 
	  frameborder="0" allow="accelerometer; autoplay; 
	  encrypted-media; gyroscope; picture-in-picture" 
	  allowfullscreen></iframe>
    </div>
    <div class="col-sm-3"> 
      <p>2.스쿼트</p>
	  <iframe width="100%" height="250"
	  src="https://www.youtube.com/embed/jNs7_-Z8MMw" 
	  frameborder="0" allow="accelerometer; autoplay; 
	  encrypted-media; gyroscope; picture-in-picture" 
	  allowfullscreen></iframe>
    </div>
    <div class="col-sm-3"> 
      <p>3.벤치프레스</p>
      <iframe width="100%" height="250" 
      src="https://www.youtube.com/embed/Et2yw2b5D4k" 
      frameborder="0" allow="accelerometer; autoplay; 
      encrypted-media; gyroscope; picture-in-picture" 
      allowfullscreen></iframe>
    </div>
    <div class="col-sm-3">
      <p>4.인클라인 벤치프레스</p>
      <iframe width="100%" height="250" 
      src="https://www.youtube.com/embed/sIZTgao-YT4"
      frameborder="0" allow="accelerometer; autoplay; 
      encrypted-media; gyroscope; picture-in-picture" 
      allowfullscreen></iframe>
    </div>
  </div>
</div><br>

<div class="container-fluid bg-3 text-center">    
  <div class="row">
    <div class="col-sm-3">
      <p>5.딥스</p>
      <iframe width="100%" height="250" 
      src="https://www.youtube.com/embed/XwGpJmoqwXI" 
      frameborder="0" allow="accelerometer; autoplay; 
      encrypted-media; gyroscope; picture-in-picture" 
      allowfullscreen></iframe>
    </div>
    <div class="col-sm-3"> 
      <p>6.밀리터리프레스</p>
      <iframe width="100%" height="250" 
      src="https://www.youtube.com/embed/8DByXGrk4Ps" 
      frameborder="0" allow="accelerometer; autoplay; 
      encrypted-media; gyroscope; picture-in-picture" 
      allowfullscreen></iframe>
    </div>
    <div class="col-sm-3"> 
      <p>7.레그익스텐션</p>
      <iframe width="100%" height="250"
      src="https://www.youtube.com/embed/BsNxEFKNLvY" 
      frameborder="0" allow="accelerometer; autoplay; 
      encrypted-media; gyroscope; picture-in-picture" 
      allowfullscreen></iframe>
    </div>
    <div class="col-sm-3">
      <p>8.스트레칭</p>
      <iframe width="100%" height="250"
      src="https://www.youtube.com/embed/qE4FLBAKxrA" 
      frameborder="0" allow="accelerometer; autoplay; 
      encrypted-media; gyroscope; picture-in-picture" 
      allowfullscreen></iframe>
    </div>
  </div>
</div><br><br>

<footer class="container-fluid text-center">
  <p><a href = "#">이전화면</a></p>
</footer>

</body>
</html>
