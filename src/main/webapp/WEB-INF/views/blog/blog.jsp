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

	.myPhoto{
	width: 100px;
	height: 100px;
    border-radius: 50%;
	}
 .table {
     border-collapse: collapse;
     border-top: 3px solid #168;
}  
.table th {
     color: #168;
     background: #f0f6f9;
     text-align: center;
}
.table th, .table td {
     padding: 10px;
     border: 1px solid #ddd;
}
.table th:first-child, .table td:first-child {
     border-left: 0;
}
.table th:last-child, .table td:last-child {
     border-right: 0;
}
.table tr td:first-child{
     text-align: center;
}
.table caption{caption-side: bottom; display: none;}   
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
});

$(function(){
	console.log('test');
	$.ajax({
	type:'Get',
	url:'allRoutine',
	success:function(data){
		jsonData = data.AllTest;
		
		for(var i = 0; i<Object.keys(jsonData).length; i++){
			$('#myTitle').empty();
			$('#myTitle').html("[TITLE] " +jsonData[i].title);
			var option = $('<tr><td>'+ jsonData[i].name+'</td><td>'+jsonData[i].target+'</td><td>'+ jsonData[i].kg+'</td><td>'+jsonData[i].rep+'</td><td>'+jsonData[i].title+'</td><td>'+jsonData[i].date+'</td></tr>');
			$('#RoutineTable').append(option);
		}
		},
	error:function(){
		alert("실패")
		}
		}); // ajax
}); 
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
	<div style=" width: 614px; align-content: flex-start;">
		<article style="width: 614px;">
			<header style="width: 614px; height: 120px; padding: 16px; border: 1px solid;">
				<div style="display:inline-flex;">
					<img src="resources/image/kang.jpg" alt="강경원" width="32px" height="32px" class="myPhoto" style="float: left;">
					&nbsp;&nbsp;&nbsp;
					<table>
					<tr><td style="font-size: 30px"><a>kang1234</a></td></tr>
					<tr><td id="myTitle">분할 Title이름</td></tr>
					</table>
				</div>
				<div id=test>

				</div>
			</header>
			<div style="width: 614px; height: 800px; border: 1px solid;">
				 <table class="table">
		   <thead>
		   <tr style="font-weight: bolder;">
		   <th width="150">Name</th><th width="150">Targeting</th>
		   <th width="50">kg</th><th width="50">rep</th><th width="100">title</th><th width="100">date</th>
		   </tr>
		   </thead>
		   <tbody id = "RoutineTable"></tbody>
		   </table>
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