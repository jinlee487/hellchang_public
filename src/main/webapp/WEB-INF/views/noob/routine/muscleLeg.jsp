
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>3분할 하체운동</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="resources/jqLib/noobCss.css">
  <link rel="stylesheet" type="text/css" href="resources/jqLib/footer_position.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src = "resources/jqLib/jquery-3.2.1.min.js"></script>
  <script src = "resources/jqLib/popUp.js"></script>
  <link rel="stylesheet" type="text/css" href="resources/jqLib/topBar.css">
   
</head>
<body style="background-color: #ffffff">
<nav  class="navbar navbar-inverse" >
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
  <div>스트레칭 - 스쿼트 - 레그프레스 - 레그익스텐션 -
  		레그컬 - 밀리터리프레스 - 숄더프레스 - 사이드레터럴레이즈</div>
  <hr>
  	
    <!-- 하체운동 -->
    
    <div class="col-sm-3">
      <a onclick="lStretch()">1.스트레칭<br>
      <img src = "resources/image/stretch.gif"
      width="100%" height="250"></a>
    </div>
    
    <div class="col-sm-3"> 
      <a onclick="squat()">2.스쿼트
	  <img src = "resources/image/squat.jpg"
      width="100%" height="250"></a>
    </div>
    
    <div class="col-sm-3">
     <a onclick="legPress()">3.레그프레스
	  <img src = "resources/image/legPress.png"
      width="100%" height="250"></a>
    </div>
    
    <div class="col-sm-3"> 
      <a onclick="legEx()">4.레그익스텐션
	  <img src = "resources/image/legEx.png"
      width="100%" height="250"></a>
    </div>
    
    
  </div>
</div><br>

<div class="container-fluid bg-3 text-center">    
  <div class="row">
  	<div class="col-sm-3"> 
      <a onclick="legCurl()">5.레그컬
	  <img src = "resources/image/legCurl.jpg"
      width="100%" height="250"></a>
    </div> 
    
    <!-- 어깨운동  -->
    <div class="col-sm-3"> 
     <a onclick="ohp()">6.밀리터리프레스
	  <img src = "resources/image/ohp.jpg"
      width="100%" height="250"></a>
    </div>
    
    <div class="col-sm-3">
      <a onclick="sholderP()">7.숄더프레스
	  <img src = "resources/image/sholderP.png"
      width="100%" height="250"></a>
    </div>
    
    <div class="col-sm-3"> 
     <a onclick="sideRaise()">8.사이드레터럴레이즈
	  <img src = "resources/image/sideRaise.png"
      width="100%" height="250"></a>
    </div>
  </div>
</div><br><br>

<footer class="container-fluid text-center">
  <p><a onclick="javascript:history.go(-1)">이전화면</a></p>
</footer>

</body>
</html>
