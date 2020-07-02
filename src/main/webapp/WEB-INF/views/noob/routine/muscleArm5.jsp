<!-- 리스트 클릭하면 popup으로 동영상 -->

<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>5분할 팔운동</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="resources/jqLib/noobCss.css">
  <link rel="stylesheet" type="text/css" href="resources/jqLib/footer_position2.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="resources/jqLib/noobCss.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src = "resources/jqLib/jquery-3.2.1.min.js"></script>
  <script src = "resources/jqLib/popUp.js"></script>
  <style>

  </style>
</head>
<body style="background-color: #ffffff">

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
        <li><a href="one">1rm</a></li>
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
  <div>스트레칭  - 바벨컬 - 해머컬 - 케이블컬 -
  		오버헤드익스텐션 - 라잉 트라이셉스 익스텐션 - 케이블푸쉬다운 - 삼두딥스</div>
  <hr>
  
    <!-- 가슴운동 -->
    
    <div class="col-sm-3">
      <a onclick="aStretch()">1.스트레칭<br>
      <img src = "resources/image/stretch.gif"
      width="100%" height="250"></a>
    </div>
    <div class="col-sm-3">
      <a onclick="barbellCurl()">2.바벨컬
	  <img src = "resources/image/barbellCurl.jpg"
      width="100%" height="250"></a>
    </div>
    <div class="col-sm-3">
      <a onclick="hammerCurl()">3.해머컬
	  <img src = "resources/image/hammerCurl.jpg"
      width="100%" height="250"></a>
    </div>
    <div class="col-sm-3">
      <a onclick="cableCurl()">4.케이블컬
	  <img src = "resources/image/cableCurl.jpg"
      width="100%" height="250"></a>
    </div>
  </div>
</div><br>

<div class="container-fluid bg-3 text-center">    
  <div class="row">
  	<div class="col-sm-3"> 
      <a onclick="ohEx()">5.오버헤드익스텐션
	  <img src = "resources/image/ohEx.png"
      width="100%" height="250"></a>
    </div>
    
    <div class="col-sm-3"> 
      <a onclick="ltEx()">6.라잉 트라이셉스 익스텐션
	  <img src = "resources/image/ltEx.jpg"
      width="100%" height="250"></a>
    </div>
    
    <div class="col-sm-3">
      <a onclick="CPushDown()">7.케이블푸쉬다운
	  <img src = "resources/image/CPushDown.jpg"
      width="100%" height="250"></a>
    </div>

    <div class="col-sm-3">
      <a onclick="bDips()">8.삼두딥스
	  <img src = "resources/image/bDips.png"
      width="100%" height="250"></a>
    </div>
  </div>
</div><br><br>

<footer class="container-fluid text-center">
  <p><a onclick="javascript:history.go(-1)">이전화면</a></p>
</footer>

</body>
</html>
