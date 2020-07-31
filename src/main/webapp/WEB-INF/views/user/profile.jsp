<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>hellchang_project</title>
  <link rel="icon" href="resources/image/logo.jpg">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="resources/jqLib/animation.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="resources/jqLib/jquery-3.2.1.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
  <link rel="stylesheet" type="text/css" href="resources/jqLib/footer_position.css">
  
  <style>
  	@media (min-width: 768px){
	.col-sm-4 {
	  /* margin-left: 200px; */
	  text-align: center;
	}
	
	/* modal 가운데 위치 (Css) */
	.modal {
        text-align: center;
	}
	@media screen and (min-width: 768px) { 
        .modal:before {
                display: inline-block;
                vertical-align: middle;
                content: " ";
                height: 100%;
        }
	}
	.modal-dialog {
        display: inline-block;
        text-align: left;
	}
	/*ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ*/
	.modal-content{
		margin: 0 auto;
		width: 300px;
	}
	.modal-body{
		padding: 0;
		background-color: white;
	}
	
	.bEffect{
		border: 0;
		outline: 0;
		border-color: #f5f5f5;
		color:#f5f5f5;
		background-color: #f5f5f5;
	}
	.modal-title{
		text-align: center;
		color: #262626;
		font-size: 18px;
		font-style: -apple-system;
	}
	.imageChange{
		width: 100%;
		height: 48px;
		background-color: white;
		border-left: 0;
		border-right: 0;
		border-top: 0;
		border-bottom: 0;
	}
	.sel{
		border-top: 1 solid;
		border-color: rgb(219, 219, 219);
		color: rgb(0, 149, 246);
	}
	.del{
		border-top: 1 solid;
		border-color: rgb(219, 219, 219);
		color: rgb(237, 73, 86);
	}
	.can{
		border-top: 1 solid;
		border-color: rgb(219, 219, 219);
	}
	#image_file{
		width: 0px;
	}
	
  </style>
</head>
<body >

<nav  class="navbar navbar-inverse" >
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="homew">
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
  
<div class="container text-center" style="margin-top:100px" >    
  <div class="row">
    <div class="col-sm-3 well">
      <div class="well">
        <p><a href="myProfile">My Profile</a></p>
        <a type="button" data-toggle="modal" data-target="#myModal">
        <button class="bEffect" title="프로필 사진 바꾸기">
        	<img id="aa" src="${mem.image_path}" class="img-circle" height="100" width="100" alt="프로필 사진 바꾸기">
        </button>
        </a></div>
		<ul class="nav nav-pills nav-stacked">
		  <li><a href="#">Start Workout</a></li>
		  <li><a href="manageWorkout">Manage Workout</a></li>
		  <li><a href="inbodyf">InBody</a></li>
		  <li><a href="#">Diet</a></li>
		  <li><a href="#">Social</a></li>    
		  <li><a href="routine">Test</a></li>
		  <li><a href="mdetail?code=U">Profile Update</a></li>
		  <li><a href="delete">Drop Out</a></li>
		</ul>
    </div>
    <div class="col-sm-7 ">
    
      <div class="row">
        <div class="col-sm-12" >
          <div class="panel panel-default text-center">
          <div class="panel-heading">THIS WEEK</div>
            <div class="panel-body">
				<hr>
         </div>

          </div>
        </div>
      </div>
      
      <div class="row">
        <div class="col-sm-3">
          <div class="well">
           <p>John</p>
           <img src="resources/uploadImage/emptyImage.png" class="img-circle" height="55" width="55" alt="Avatar">
          </div>
        </div>
        <div class="col-sm-9">
          <div class="well">
            <p>Just Forgot that I had to mention something about someone to someone about how I forgot something, but now I forgot it. Ahh, forget it! Or wait. I remember.... no I don't.</p>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-sm-3">
          <div class="well">
           <p>Bo</p>
           <img src="resources/uploadImage/emptyImage.png" class="img-circle" height="55" width="55" alt="Avatar">
          </div>
        </div>
        <div class="col-sm-9">
          <div class="well">
            <p>Just Forgot that I had to mention something about someone to someone about how I forgot something, but now I forgot it. Ahh, forget it! Or wait. I remember.... no I don't.</p>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-sm-3">
          <div class="well">
           <p>Jane</p>
           <img src="resources/uploadImage/emptyImage.png" class="img-circle" height="55" width="55" alt="Avatar">
          </div>
        </div>
        <div class="col-sm-9">
          <div class="well">
            <p>Just Forgot that I had to mention something about someone to someone about how I forgot something, but now I forgot it. Ahh, forget it! Or wait. I remember.... no I don't.</p>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-sm-3">
          <div class="well">
           <p>Anja</p>
           <img src="resources/uploadImage/emptyImage.png" class="img-circle" height="55" width="55" alt="Avatar">
          </div>
        </div>
        <div class="col-sm-9">
          <div class="well">
            <p>Just Forgot that I had to mention something about someone to someone about how I forgot something, but now I forgot it. Ahh, forget it! Or wait. I remember.... no I don't.</p>
          </div>
        </div>
      </div>     
    </div>
    <div class="col-sm-2 well" style="margin-top: 100px">
      <div class="thumbnail">
        <p>Upcoming Events:</p>
        <img src="paris.jpg" alt="Paris" width="400" height="300">
        <p><strong>Paris</strong></p>
        <p>Fri. 27 November 2015</p>
        <button class="btn btn-primary">Info</button>
      </div>      
      <div class="well">
        <p>ADS</p>
      </div>
      <div class="well">
        <p>ADS</p>
      </div>
    </div>
  </div>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
</div>

<div id="footer" role="contentinfo">
<!-- <hr style="width: 100%;">
<hr style="width: 100%; border-color: black;"> -->
		<address>
			<em><a href="home" target="_blank" class="logo footfont"><span class="blind">HellChang</span></a></em>
			<em class="copy footfont">Copyright</em>
			<em class="u_cri footfont">©</em>
			<a href="home" target="_blank" class="u_cra footfont">HellChang Corp.</a>
			<span class="all_r footfont">All Rights Reserved.</span>
		</address>
</div>

<!--ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ modal ver ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ --> 
  <!-- Modal -->
<div class="modal fade" id="myModal" role="dialog">
  <div class="modal-dialog ">
      <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h3 class="modal-title">프로필 사진 바꾸기</h3>
      </div>
      <div class="modal-body" >	
      	<button class="imageChange sel"  tabindex="0">사진업로드</button>
      	<button class="imageChange del" tabindex="0">현재 사진 삭제</button>
        <button class="imageChange can" tabindex="0">취소</button>
        <form style="height: 0;" action="imgUpdate" name="chImg" method="POST" enctype="multipart/form-data">
        	<input type="file" id="image_file" name="image_file">
        </form>
      </div>
    </div>
  </div>
</div>
<script type="text/javascript">
$(function(){
	$('.sel').on('click', function(){
		$('input[type=file]').click();
	}); // file select 
	
	$('input').change(function(){
		var chImg = document.chImg;
		chImg.submit();
	}); // file submit 
	
	$('.del').on('click', function(){
		$.ajax({
			type: "post",
			url: "imgUpdate",
			data: {
				code : 44
			},
			success: function(){
				window.location.href="prof"
			}
		});// ajax
	}); // file del
	$('.can').on('click',function(){
		$('#myModal').modal('hide');
	});
});//ready
</script>
</body>
</html>
