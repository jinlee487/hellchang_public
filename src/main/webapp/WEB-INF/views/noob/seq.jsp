<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>초보자를 위한 페이지</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="resources/jqLib/seq.css">
  
  <link rel="stylesheet" type="text/css" href="resources/jqLib/topBar.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="resources/jqLib/seq.css">
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css" href="resources/jqLib/footer_position2.css">
  <style>
  	html, body{
  		width: 100%;	
     	height:100%; overflow:hidden
  	}
  	#footer{
  		position: absolute;
  	}
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
.child1 {
	margin-right : 5px;
	margin-left : 5px;
	width : 30%;
    flex: 1;
}
  </style>
</head>

<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50" style="background-color: white">

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
        <li><a href="routine">Routine</a></li>
        <li><a href="blog">Blog</a></li>
        <li><a href="one">OneRM</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right" >
		<c:if test="${logID==null }">
			<li><a href="loginf"><span class="glyphicon glyphicon-log-in"></span> Login</a><li>
		</c:if>
		<c:if test="${logID!=null }">
			<li><a style="color: white;">${logName}님</a></li>
			<li><a href="prof">MyProfile</a></li>
			<li><a href="logout"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
		</c:if>
	  </ul>
    </div>
  </div>
</nav>
 <div class="parent" style="width: 100%; height: 95%; ">
    <div class="child" align="center">
		<h3>Diet</h3>
		<div style="height: 40%;">
		<iframe width="100%" height="100%" src="https://www.youtube.com/embed/ky_rALJjKAQ?list=PLA92lMlT0Ro_VmP98tB7Vpt3fvqh2sZu5" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
  		</div>
<div>
    <div class="col-sm-4 child1">
      <br><strong style="font-size:x-small;">전신</strong><br>
      <a href="#demo" data-toggle="collapse">
      <img src="resources/image/list.jpg" class="img-circle person" alt="무분할" width="30%" height="5">
      </a>
      <div id="demo" class="collapse">
        <p><a href = "noSeq">무분할</a></p>
      </div>
    </div>
    <div class="col-sm-4 child1">
    <br><strong style="font-size:x-small;">밀기/당기기</strong><br>
      <a href="#demo1" data-toggle="collapse">
      <img src="resources/image/list.jpg" class="img-circle person" alt="2분할" width="30%" height="5">
      </a>
      <div id="demo1" class="collapse">
        <p><a href = "muscleUpPushP">밀기</a></p>
        <p><a href = "muscleUpPullP">당기기</a></p>
      </div>
    </div>
	<div class="col-sm-4 child1">
    <br><strong style="font-size:x-small;">가슴/등/하체</strong><br>
      <a href="#demo2" data-toggle="collapse">
      <img src="resources/image/list.jpg" class="img-circle person" alt="3분할" width="30%" height="5">
      </a>
      <div id="demo2" class="collapse">
        <p><a href = "muscleChest">가슴</a></p>
        <p><a href = "muscleBack">등</a></p>
        <p><a href = "muscleLeg">하체</a></p>
      </div>
    </div>
    
  </div>
</div>
    <div class="child" align="center">
		<h3>MuscleUp</h3>
		<div style="height: 40%;">
		<iframe width="100%" height="100%" src="https://www.youtube.com/embed/9t3v3SKCXkY?list=PLA92lMlT0Ro_VmP98tB7Vpt3fvqh2sZu5" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
  		</div>
  	<div class="row">
	<div class="col-sm-4 child1">
    <br><strong style="font-size:x-small;">밀기.당기기</strong><br>
      <a href="#demo3" data-toggle="collapse">
      <img src="resources/image/list.jpg" class="img-circle person" alt="2분할" width="30%" height="5">
      </a>
      <div id="demo3" class="collapse">
        <p><a href = "muscleUpPushP">밀기</a></p>
        <p><a href = "muscleUpPullP">당기기</a></p>
      </div>
    </div>
    <div class="col-sm-4 child1">
    <br><strong style="font-size:x-small;">가슴/등/하체</strong><br>
      <a href="#demo4" data-toggle="collapse">
      <img src="resources/image/list.jpg" class="img-circle person" alt="3분할" width="30%" height="5">
      </a>
      <div id="demo4" class="collapse">
        <p><a href = "muscleChest">가슴</a></p>
        <p><a href = "muscleBack">등</a></p>
        <p><a href = "muscleLeg">하체</a></p>
      </div>
    </div>
    <div class="col-sm-4 child1">
    <br><strong style="font-size:x-small;">가슴/하체/등/어깨/팔</strong><br>
      <a href="#demo5" data-toggle="collapse">
      <img src="resources/image/list.jpg" class="img-circle person" alt="5분할" width="30%" height="5">
      </a>
      <div id="demo5" class="collapse">
        <p><a href = "muscleChest5">가슴</a></p>
        <p><a href = "muscleLeg5">하체</a></p>
        <p><a href = "muscleBack5">등</a></p>
        <p><a href = "muscleSholder5">어깨</a></p>
        <p><a href = "muscleArm5">팔</a></p>
      </div>
    </div>
    </div>
    </div>
    <div class="child" align="center">
		<h3>Maintain</h3>
		<div style="height: 40%;">
		<iframe width="100%" height="100%" src="https://www.youtube.com/embed/apeFoDwsUWc?list=PLA92lMlT0Ro_VmP98tB7Vpt3fvqh2sZu5" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
  		</div>
  		 <div class="row">
    <div class="col-sm-4">
      <br><strong style="font-size:x-small;">밀기/당기기</strong><br>
      <a href="#demo6" data-toggle="collapse">
      <img src="resources/image/list.jpg" class="img-circle person" alt="2분할" width="30%" height="5">
      </a>
      <div id="demo6" class="collapse">
        <p><a href = "muscleUpPushP">밀기</a></p>
        <p><a href = "muscleUpPullP">당기기</a></p>
      </div>
    </div>
    <div class="col-sm-4">
    <br><strong style="font-size:x-small;">가슴/등/하체</strong><br>
      <a href="#demo7" data-toggle="collapse">
      <img src="resources/image/list.jpg" class="img-circle person" alt="3분할" width="30%" height="5">
      </a>
      <div id="demo7" class="collapse">
        <p><a href = "muscleChest">가슴</a></p>
        <p><a href = "muscleBack">등</a></p>
        <p><a href = "muscleLeg">하체</a></p>
      </div>
    </div>
    <div class="col-sm-4">
    <br><strong style="font-size:x-small;">가슴/하체/등/어깨</strong><br>
      <a href="#demo8" data-toggle="collapse">
      <img src="resources/image/list.jpg" class="img-circle person" alt="4분할" width="30%" height="5">
      </a>
      <div id="demo8" class="collapse">
        <p><a href = "muscleChest5">가슴</a></p>
        <p><a href = "muscleLeg5">하체</a></p>
        <p><a href = "muscleBack5">등</a></p>
        <p><a href = "muscleSholder5">어깨</a></p>
      </div>
    </div>
  </div>
    </div>
</div>

<div id="footer" role="contentinfo">
		<address>
			<em><a href="home" target="_blank" class="logo footfont"><span class="blind">HellChang</span></a></em>
			<em class="copy footfont">Copyright</em>
			<em class="u_cri footfont">©</em>
			<a href="home" target="_blank" class="u_cra footfont">HellChang Corp.</a>
			<span class="all_r footfont">All Rights Reserved.</span>
		</address>
</div>

</body>
</html>
