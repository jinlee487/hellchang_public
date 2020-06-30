
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>5분할 어깨운동</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src = "resources/jqLib/jquery-3.2.1.min.js"></script>
  <script src = "resources/jqLib/popUp.js"></script>
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
    <h1>5분할</h1>      
    <p>★ 5분할 운동은 고급자를 위한 운동입니다★	</p>
  </div>
</div>
  
<div class="container-fluid bg-3 text-center">    
  <div class="row">
  <div>스트레칭 - 밀리터리프레스 - 숄더프레스 - 비하인드 넥 프레스 -
  		프론트레이즈 - 사이드레터럴레이즈 - 벤트오버레이즈 - 리버스 플라이</div>
  	<hr>
    <!-- 등운동 -->
    
   <div class="col-sm-3">
      <a onclick="sStretch()">1.스트레칭<br>
      <img src = "resources/image/stretch.gif"
      width="100%" height="250"></a>
    </div>
    
    <div class="col-sm-3"> 
     <a onclick="ohp()">2.밀리터리프레스
	  <img src = "resources/image/ohp.jpg"
      width="100%" height="250"></a>
    </div>
    
    <div class="col-sm-3">
      <a onclick="sholderP()">3.숄더프레스
	  <img src = "resources/image/sholderP.png"
      width="100%" height="250"></a>
    </div> 
    
    <div class="col-sm-3">
      <a onclick="bSholderP()">4.비하인드 넥 프레스
	  <img src = "resources/image/bSholderP.jpg" 
      width="100%" height="250"></a>
    </div>
  </div>
</div><br>

<div class="container-fluid bg-3 text-center">    
  <div class="row">
  	
  	<div class="col-sm-3">
      <a onclick="frontRaise()">5.프론트레터럴레이즈
	  <img src = "resources/image/frontRaise.jpg"
      width="100%" height="250"></a>
    </div>
  
  	<div class="col-sm-3"> 
     <a onclick="sideRaise()">6.사이드레터럴레이즈
	  <img src = "resources/image/sideRaise.png"
      width="100%" height="250"></a>
    </div>
    
    <div class="col-sm-3">
       <a onclick="bOverRaise()">7.벤토오버 레이즈
	  <img src = "resources/image/bOverRaise.jpg"
      width="100%" height="250"></a>
    </div>
        
    <div class="col-sm-3"> 
      <a onclick="rFly()">8.리버스플라이
	  <img src = "resources/image/rFly.png"
      width="100%" height="250"></a>
    </div>

  </div>
</div><br><br>

<footer class="container-fluid text-center">
  <p><a onclick="javascript:history.go(-1)">이전화면</a></p>
</footer>

</body>
</html>
