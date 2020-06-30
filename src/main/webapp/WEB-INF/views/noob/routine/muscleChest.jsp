<!-- 리스트 클릭하면 popup으로 동영상 -->

<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>3분할 가슴운동</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src = "resources/jqLib/jquery-3.2.1.min.js"></script>
  <script src = "resources/jqLib/popUp.js"></script>
  
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
    <h1>3분할</h1>      
    <p>3분할 운동법은 한 부위를 조금 더 강도 있게 운동할 수 있는 반면 휴식 기간이 길다.<br>
    그러므로 고강도 운동이 어려운 초급자나 중급자에게는 맞지 않을 수도 있다.
	</p>
  </div>
</div>
  
<div class="container-fluid bg-3 text-center">    
  <div class="row">
  <div>스트레칭  - 벤치프레스 - 인클라인 벤치프레스 - 덤벨프레스 -
  		인클라인 덤벨프레스 - 딥스 - 오버헤드익스텐션 - 케이블푸쉬다운</div>
  <hr>
  
    <!-- 가슴운동 -->
    
    <div class="col-sm-3">
      <a onclick="cStretch()">1.스트레칭<br>
      <img src = "resources/image/stretch.gif"
      width="100%" height="250"></a>
    </div>
    <div class="col-sm-3"> 
       <a onclick="bench()">2.벤치프레스
	  <img src = "resources/image/bench.png"
      width="100%" height="250"></a>
    </div>
    <div class="col-sm-3">
     <a onclick="ibench()">3.인클라인 벤치프레스
	  <img src = "resources/image/ibench.jpg"
      width="100%" height="250"></a>
    </div>
    <div class="col-sm-3"> 
	  <a onclick="dBench()">4.덤벨프레스
	  <img src = "resources/image/dBench.jpg"
      width="100%" height="250"></a>
    </div>
  </div>
</div><br>

<div class="container-fluid bg-3 text-center">    
  <div class="row">
  	<div class="col-sm-3"> 
      <a onclick="dIbench()">5.인클라인 덤벨프레스
	  <img src = "resources/image/dIbench.jpg"
      width="100%" height="250"></a>
    </div>
    <div class="col-sm-3">
       <a onclick="dips()">6.딥스
	  <img src = "resources/image/dips.jpg"
      width="100%" height="250"></a>
    </div>
    
    <!-- 삼두운동  -->
    
    <div class="col-sm-3"> 
      <a onclick="ohEx()">7.오버헤드익스텐션
	  <img src = "resources/image/ohEx.png"
      width="100%" height="250"></a>
    </div>
    <div class="col-sm-3">
      <a onclick="CPushDown()">8.케이블푸쉬다운
	  <img src = "resources/image/CPushDown.jpg"
      width="100%" height="250"></a>
    </div>
  </div>
</div><br><br>

<footer class="container-fluid text-center">
  <p><a onclick="javascript:history.go(-1)">이전화면</a></p>
</footer>

</body>
</html>
