<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>hellchang_project</title>
  <link rel="icon" href="resources/image/logo.jpg">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="resources/jqLib/animation.css">
  <link rel="stylesheet" type="text/css" href="resources/jqLib/footer_position2.css">
  <link rel="stylesheet" type="text/css" href="resources/jqLib/topBar.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="resources/jqLib/jquery-3.2.1.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style type="text/css">
	/* Remove the navbar's default margin-bottom and rounded borders */ 
     .navbar {
      margin-bottom: 0;
      border-radius: 0;
      background-color: #000000;
    }
    .gridA{ text-decoration: none; }
   	
   	.fade-in-bottom {
	-webkit-animation: fade-in-bottom 2s cubic-bezier(0.390, 0.575, 0.565, 1.000) both;
	        animation: fade-in-bottom 2s cubic-bezier(0.390, 0.575, 0.565, 1.000) both;
	}	
    
    .imgb{
    	width: 30%;
    }
    .img{
    	width: 100%;
    }
    .profile{
    	margin-top: 10%;
    }
    .wpO6b{
    	margin-top: 20%;
    }
    /* a:link { color: black; text-decoration: none;}
 	a:visited { color: black; text-decoration: none;}
	a:hover {text-decoration: none;} */

</style>
<script type="text/javascript">
$(function(){
	console.log($('#test').css('height'));
	var height = parseInt($('#test').css('height'));
	
	if(height > 20){
		$('header').css('padding-top', '9px');
		$('header').css('padding-bottom', '9px');
	}else{
		$('#test').css('margin-top', '5px');
		$('#test').css('margin-bottom', '5px');
	}
})
</script>
</head>
<body>
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
	
      <ul class="nav navbar-nav navbar-right">
      <li><a href="prof">UserTest</a></li>
      	<li><a href="joinf">회원가입</a></li>
        <li><a href="loginf"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>
<!-- <div style="height: 100px;"></div> -->
<div style=" width: 614px; padding-top: 50px; margin: 0 auto;">
<header>
	<div style="display: inline-flex;">
		<button class="imgb" title="프로필 사진 바꾸기">
			<img class="img" alt="프로필 사진 바꾸기" src="../image/a1.png">
		</button>
	
	<section>
		<div style="display:inline-flex;">
			<h2>IDID</h2>&nbsp;&nbsp;	
			<a class="profile" href="/account/edit/" tabindex="0" 
			 >프로필 편집</a>&nbsp;&nbsp;
    <div class="AFWDX">
    <button class="wpO6b " type="button">
    <svg aria-label="옵션" class="_8-yf5 " fill="#262626" height="24" viewBox="0 0 48 48" width="24">
    <path clip-rule="evenodd" d="M46.7 20.6l-2.1-1.1c-.4-.2-.7-.5-.8-1-.5-1.6-1.1-3.2-1.9-4.7-.2-.4-.3-.8-.1-1.2l.8-2.3c.2-.5 0-1.1-.4-1.5l-2.9-2.9c-.4-.4-1-.5-1.5-.4l-2.3.8c-.4.1-.8.1-1.2-.1-1.4-.8-3-1.5-4.6-1.9-.4-.1-.8-.4-1-.8l-1.1-2.2c-.3-.5-.8-.8-1.3-.8h-4.1c-.6 0-1.1.3-1.3.8l-1.1 2.2c-.2.4-.5.7-1 .8-1.6.5-3.2 1.1-4.6 1.9-.4.2-.8.3-1.2.1l-2.3-.8c-.5-.2-1.1 0-1.5.4L5.9 8.8c-.4.4-.5 1-.4 1.5l.8 2.3c.1.4.1.8-.1 1.2-.8 1.5-1.5 3-1.9 4.7-.1.4-.4.8-.8 1l-2.1 1.1c-.5.3-.8.8-.8 1.3V26c0 .6.3 1.1.8 1.3l2.1 1.1c.4.2.7.5.8 1 .5 1.6 1.1 3.2 1.9 4.7.2.4.3.8.1 1.2l-.8 2.3c-.2.5 0 1.1.4 1.5L8.8 42c.4.4 1 .5 1.5.4l2.3-.8c.4-.1.8-.1 1.2.1 1.4.8 3 1.5 4.6 1.9.4.1.8.4 1 .8l1.1 2.2c.3.5.8.8 1.3.8h4.1c.6 0 1.1-.3 1.3-.8l1.1-2.2c.2-.4.5-.7 1-.8 1.6-.5 3.2-1.1 4.6-1.9.4-.2.8-.3 1.2-.1l2.3.8c.5.2 1.1 0 1.5-.4l2.9-2.9c.4-.4.5-1 .4-1.5l-.8-2.3c-.1-.4-.1-.8.1-1.2.8-1.5 1.5-3 1.9-4.7.1-.4.4-.8.8-1l2.1-1.1c.5-.3.8-.8.8-1.3v-4.1c.4-.5.1-1.1-.4-1.3zM24 41.5c-9.7 0-17.5-7.8-17.5-17.5S14.3 6.5 24 6.5 41.5 14.3 41.5 24 33.7 41.5 24 41.5z" fill-rule="evenodd">
    </path>
    </svg>
    </button>
    </div>
		</div>
	</section>
	</div>
</header>




	<div style=" width: 614px; align-content: flex-start;">
		<article style="width: 614px;">
			<header style="width: 614px; height: 60px; padding: 16px; border: 1px solid;">
				<div style="display:inline-flex;">
					<img src="resources/image/kang.jpg" alt="강경원" width="32px" height="32px">
				</div>
				<div style="display: inline-block; background-color: purple; width: 522px;" id=test>
					<div>
						<a class="gridA">kang1234</a>
					</div>
<!-- 					<div> -->
<!-- 						<a class="gridA">? 분할</a> -->
<!-- 					</div> -->
				</div>
			</header>
			<div style="width: 614px; height: 614px; border: 1px solid;">
				<p>루틴 출력 칸</p>
			</div>
			<div style="width: 614px; height: 60px;">
				<section style="width: 614px; ">좋아요  댓글(클릭시 화면 전환) 공유버튼  저장버튼</section>
				<section style="width: 614px; ">좋아요 몇개인지 출력</section>
				<div style="width: 614px; "> 본문 및 최근 댓글 출력</div>
				<div style="width: 614px; ">routine upload 시간</div>
				<section style="width: 614px; border: 1px solid;" >
					<form>
						<textarea rows="" cols="" placeholder="댓글달기.." style="height: 18px;"></textarea>
						<button type="submit" disabled>게시</button>
					</form>
				</section>
			</div>
		</article>
	</div>
</div>




<br><br>
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
</body>
</html>