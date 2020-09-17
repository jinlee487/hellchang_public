<!-- 리스트 클릭하면 popup으로 동영상 -->

<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>2분할 당기기운동</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="resources/jqLib/noobCss.css">
  <link rel="stylesheet" type="text/css" href="resources/jqLib/footer_position.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
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
    <h1>2분할</h1>      
    <p>2분할루틴은 상체와 하체 
이 두가지 안에서 루틴이 돌아가기 떄문에 
훈련빈도가 높아집니다.<br>

훈련빈도가 높아진다는 것은 
곧 볼륨이 높아진다는 뜻과 같다. </p>
  </div>
</div>

<div>

<div class="container-fluid bg-3 text-center">   
  <div class="row">
  <div>스트레칭 - 데드리프트 - 바벨로우 - 풀업 -
  		바벨컬 - 사이드레터럴레이즈 - 레그컬 - 스트레칭</div>
  	<hr>
  
  <div>
    <div class="col-sm-3">
      <a onclick="stretch1()">1.스트레칭<br>
      <img src = "resources/image/stretch.gif"
      width="100%" height="250"></a>
    </div>
    <div class="col-sm-3"> 
      <a onclick="deadlift()">2.데드리프트
	  <img src = "resources/image/deadlift.jpg"
      width="100%" height="250"></a>
    </div>
    <div class="col-sm-3"> 
      <a onclick="barbellrow()">3.바벨로우
	  <img src = "resources/image/barbellRow.jpg"
      width="100%" height="250"></a>
    </div>
    <div class="col-sm-3">
     <a onclick="pullUp()">4.풀업
	  <img src = "resources/image/pullUp.jpg"
      width="100%" height="250"></a>
    </div>
  </div>
</div><br>

<div class="container-fluid bg-3 text-center">    
  <div class="row">
    <div class="col-sm-3">
      <a onclick="barbellCurl()">5.바벨컬
	  <img src = "resources/image/barbellCurl.jpg"
      width="100%" height="250"></a>
    </div>
    <div class="col-sm-3"> 
     <a onclick="sideRaise()">6.사이드레터럴레이즈
	  <img src = "resources/image/sideRaise.png"
      width="100%" height="250"></a>
    </div>
    <div class="col-sm-3"> 
      <a onclick="legCurl()">7.레그컬
	  <img src = "resources/image/legCurl.jpg"
      width="100%" height="250"></a>
    </div>
    <div class="col-sm-3">
     <a onclick="stretch2()">8.스트레칭
	  <img src = "resources/image/stretch.gif"
      width="100%" height="250"></a>
    </div>
    </div>
  </div>
</div>
</div><br><br>

<footer class="container-fluid text-center">
  <p><a href = "#">이전화면</a></p>
</footer>

</body>
</html>
