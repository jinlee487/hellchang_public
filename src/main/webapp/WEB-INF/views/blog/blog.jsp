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
    .gridA{ 
		color: black; text-decoration: none;
	}
    .gridA:link{ 
		color: black; text-decoration: none;
	}
	.gridA:visited{ 
		color: black; text-decoration: none;
	}
	.gridA:hover{ 
		color: black; text-decoration: none;
	}
   	
   	#headerImg{
   		border-radius: 70%;
   		overflow: hidden;
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
		<li><a href="myblog">Blog</a></li>
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

<div style="position: relative; width: 614px; margin: 0 auto; margin-top: 50px; border: 1px solid; overflow: visible;">
	<div style=" width: 614px;">
		<article style="width: 614px;">
			<header style="width: 614px; height: 60px; padding: 16px; border-bottom: 1px solid">
				<div style="display:inline-flex;">
					<img id="headerImg" src="resources/image/kang.jpg" alt="강경원" width="32px" height="32px">
				</div>
				<div style="margin-left: 10px; display: inline-block; width: 522px;" id=test>
					<div>
						<a class="gridA">kang1234</a>
					</div>
 					<div>
						<a class="gridA">분할</a>
					</div>
				</div>
			</header>
			<div style="width: 614px; height: 614px; border-bottom: 1px solid;">
				<p>루틴 출력 칸</p>
			</div>
			<div style="width: 614px;">
				<section style="width: 614px; ">좋아요  댓글(클릭시 화면 전환) 공유버튼  저장버튼</section>
				<section style="width: 614px; ">좋아요 몇개인지 출력</section>
				<div style="width: 614px; "> 본문 및 최근 댓글 출력</div>
				<div style="width: 614px; ">routine upload 시간</div>
				<section style="width: 614px; border-top: 1px solid; padding: 0px 16px;" >
					<form>
						<textarea rows="1" cols="" placeholder="댓글달기.." style="width: 80%; background-color: rgba(0,0,0,0.2); border: none; outline: none; resize: none; margin: 10px 0px;"></textarea>
						<button type="submit"  disabled>게시</button>
					</form>
				</section>
			</div>
		</article>
	</div>
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
</body>
</html>