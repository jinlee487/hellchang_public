<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
  <link rel="stylesheet" type="text/css" href="resources/jqLib/myblog.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="resources/jqLib/jquery-3.2.1.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<script type="text/javascript">
$(function(){
	var cnt = 0;
	var last = 0;
	$.ajax({
		type:'Get',
		dataType : "json",
		url:'blogTest',
		
		success:function(data){
			var nowID = "";
			var nowTitle = "";
			var num = data.num;
			console.log(num);
			for(var j=0; j<5; j++){
				var lastNum = 0;
				if(cnt == 0){jsonData = data.forName0}
				else if(cnt == 1){jsonData = data.forName1}
				else if(cnt == 2){jsonData = data.forName2}
				else if(cnt == 3){jsonData = data.forName3}
				else if(cnt == 4){jsonData = data.forName4}
				
				lastNum = Object.keys(jsonData).length;
				var appendT = "";
				appendT += "<table class = 'table'>"
				for(var i = 0; i<Object.keys(jsonData).length; i++){	
					if(i==0){
						appendT += '<tr style="margin-left: 5px; font-size: medium; font-weight: bold;"><td><img src="resources/image/lee.jpg" alt="이준호" class = "myPhoto"></td><td colspan = "2"><br>Title : '+jsonData[i].title+'<br>Name : '+jsonData[i].userName+'<br>Date : '+jsonData[i].date+'</td><td colspan ="3"></td></tr>'
						appendT += '<tr><th>Name</th><th>Target</th><th>KG</th><th>Rep</th><th>Title</th></tr>'
						appendT += "<tr><td>"+jsonData[i].name +"</td><td>"+ jsonData[i].target +"</td><td>"+jsonData[i].kg +"</td><td>"+jsonData[i].rep +"</td><td>"+jsonData[i].title +"</td></tr>"							
					}else if(i!=0 || i!=lastNum){
						appendT += "<tr><td>"+jsonData[i].name +"</td><td>"+ jsonData[i].target +"</td><td>"+jsonData[i].kg +"</td><td>"+jsonData[i].rep +"</td><td>"+jsonData[i].title +"</td></tr>"
					}else if(i==lastNum){
						appendT += "<tr><td>"+jsonData[i].name +"</td><td>"+ jsonData[i].target +"</td><td>"+jsonData[i].kg +"</td><td>"+jsonData[i].rep +"</td><td>"+jsonData[i].title +"</td></tr>"
						
					}
					nowTitle = jsonData[i].title ;
					nowID = jsonData[i].id; 
				} // for_i
				appendT += "</table>"
				$('.blogForm').append(appendT)
				cnt ++;
			} // for_j 
		},
		error:function(){
			
		}
	}); // ajax 
$(window).scroll(function(){
	if($(document).height() <= $(window).scrollTop() + $(window).height()){	
	loadNext();
	}
	function loadNext(){
		var cnt = 0;
		var nowID = "";
		var nowTitle = "";
		$.ajax({
			type:'Get',
			url : "scrollP",
			success:function(data){
				
				var num = data.num;
				console.log(num);
				for(var j=0; j<num; j++){
					var lastNum = 0;
					if(cnt == 0){jsonData = data.forName0}
					else if(cnt == 1){jsonData = data.forName1}
					else if(cnt == 2){jsonData = data.forName2}
					else if(cnt == 3){jsonData = data.forName3}
					else if(cnt == 4){jsonData = data.forName4}
					
					lastNum = Object.keys(jsonData).length;
					var appendT = "";
					appendT += "<table class = 'table'>"
					for(var i = 0; i<Object.keys(jsonData).length; i++){
						if(i==0){
							appendT += '<tr style="margin-left: 5px; font-size: medium; font-weight: bold;"><td><img src="resources/image/lee.jpg" alt="이준호" class = "myPhoto"></td><td colspan = "2"><br>Title : '+jsonData[i].title+'<br>Name : '+jsonData[i].userName+'<br>Date : '+jsonData[i].date+'</td><td colspan ="3"></td></tr>'
							appendT += '<tr><th>Name</th><th>Target</th><th>KG</th><th>Rep</th><th>Title</th></tr>'
							appendT += "<tr><td>"+jsonData[i].name +"</td><td>"+ jsonData[i].target +"</td><td>"+jsonData[i].kg +"</td><td>"+jsonData[i].rep +"</td><td>"+jsonData[i].title +"</td></tr>"							
						}else if(i!=0 || i!=lastNum){
							appendT += "<tr><td>"+jsonData[i].name +"</td><td>"+ jsonData[i].target +"</td><td>"+jsonData[i].kg +"</td><td>"+jsonData[i].rep +"</td><td>"+jsonData[i].title +"</td></tr>"
						}else if(i==lastNum){
							appendT += "<tr><td>"+jsonData[i].name +"</td><td>"+ jsonData[i].target +"</td><td>"+jsonData[i].kg +"</td><td>"+jsonData[i].rep +"</td><td>"+jsonData[i].title +"</td></tr>"
							
						}
						nowTitle = jsonData[i].title ;
						nowID = jsonData[i].id; 
					} // for_i
					appendT += "</table>"
					$('.blogForm').append(appendT)
					cnt ++;
				} // for_j 
			},
			error:function(){
				alert("실패")
			}
	})
	}
});
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
<!-- <div style="height: 100px;"></div> -->
<div style=" width: 614px; padding-top: 50px; margin: 0 auto;">
<header>
	<div style="display: inline-flex;">
		<button class="imgb" title="프로필 사진 바꾸기">
			<img class="img" alt="프로필 사진 바꾸기" src="resources/image/logo.jpg">
		</button>
	
	<section>
		<div class="zz">
			<h2 class="h2">${logName}</h2>&nbsp;&nbsp;	
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
		<ul class="ul">
		<li class="li"  >
		<span>
			게시물&nbsp;<span>92</span>&nbsp;&nbsp;&nbsp;
		</span>
		</li>
		<li class="li" >
		<span>
			팔로워&nbsp;<span>177</span>&nbsp;&nbsp;&nbsp;
		</span>
		</li>
		<li class="li" >
		<span>
			팔로잉&nbsp;<span>322</span>&nbsp;&nbsp;&nbsp;
		</span>
		</li>
		</ul>
		<div>
			<h1 class="h1">${logName}</h1><br>
			<span>간단 소개</span>
		</div>
	</section>
	</div>
</header>
<hr>
<div>
	<article>
		<div>
			<div style="flex-direction: column; padding-bottom: 0px; padding-top: 0px;">
				<div style="display: inline-flex; width: 30%" >
					<button id ="testT" type="button" data-toggle="modal" data-target="#myModal">
					<img src="resources/image/armPull.jpg" style="width: 100%; display: inline-flex;"></button>
				</div>
				<div style="display: inline-flex; width: 30%" >
					<button id ="testT" type="button" data-toggle="modal" data-target="#myModal">
					<img src="resources/image/dBench.jpg" style="width: 100%; display: inline-flex;"></button>
				</div>
				<div style="display: inline-flex; width: 30%" >
					<button id ="testT" type="button" data-toggle="modal" data-target="#myModal">
					<img src="resources/image/latPull.jpg" style="width: 100%; display: inline-flex;"></button>
				</div>
			</div>
		</div>
		<br>
		
	</article>

</div>
	<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
      <!-- Modal content-->	
      <div class="modal-content">
        <div class="modal-header">
        <!--   <button type="button" class="close" data-dismiss="modal">&times;</button>
          <img src="resources/image/kang.jpg" alt="강경원" width="60px" height="60px" class="myPhoto" style="float: left; border-radius: 50%">
          <table>
					<tbody><tr><td style="font-size: 30px"><a>kang1234</a></td></tr>
					<tr><td id="myTitle">분할 Title이름</td></tr>
					</tbody></table> -->
        <!--   <h4 class="modal-title"> List 저장하기 </h4> -->
        </div>
        <div class="modal-body" style="display: inline-flex; ">
       
       
       <div align="center" class = "blogForm"><br><br>


		</div>
		
		   <div class="modal-body-text" style="width : 350px; margin-left: 50px; margin-top: 50px;">
		    <button type="button" class="close" data-dismiss="modal">&times;</button>
          <img src="resources/image/kang.jpg" alt="강경원" width="30px" height="30px" class="myPhoto1" style="float: left; border-radius: 50%">
          <table>
					<tbody><tr><td style="font-size: 15px"><a>kang1234</a></td></tr>
					<tr><td id="myTitle">분할 Title이름</td></tr>
					</tbody></table><hr>
		 
		 
		 
		  <div class="coment">
		<img src="resources/image/lee.jpg" alt="lee" width="30px" height="30px" class="myPhoto1" style="float: left; border-radius: 50%">
          <table>
					<tbody><tr><td style="font-size: 15px"><a>lee</a></td></tr>
					<tr><td id="myTitle">댓글 내용내용내용</td></tr>
					</tbody></table><br>
		 <img src="resources/image/kang.jpg" alt="강경원" width="30px" height="30px" class="myPhoto1" style="float: left; border-radius: 50%">
          <table>
					<tbody><tr><td style="font-size: 15px"><a>kang1234</a></td></tr>
					<tr><td id="myTitle">댓글 내용내용내용</td></tr>
					</tbody></table><br>
		<img src="resources/image/hwang.jpg" alt="hwang" width="30px" height="30px" class="myPhoto1" style="float: left; border-radius: 50%">
          <table>
					<tbody><tr><td style="font-size: 15px"><a>hwang</a></td></tr>
					<tr><td id="myTitle">댓글 내용내용내용</td></tr>
					</tbody></table><br>		
		  </div>
		 <section class="ltpMr Slqrh" style="display: inline-flex;">
         <span class="fr66n">
         <button class="wpO6b " type="button">
         <div class="">
         <svg aria-label="좋아요" class="_8-yf5 " fill="#262626" height="24" viewBox="0 0 48 48" width="24">
         <path d="M34.6 6.1c5.7 0 10.4 5.2 10.4 11.5 0 6.8-5.9 11-11.5 16S25 41.3 24 41.9c-1.1-.7-4.7-4-9.5-8.3-5.7-5-11.5-9.2-11.5-16C3 11.3 7.7 6.1 13.4 6.1c4.2 0 6.5 2 8.1 4.3 1.9 2.6 2.2 3.9 2.5 3.9.3 0 .6-1.3 2.5-3.9 1.6-2.3 3.9-4.3 8.1-4.3m0-3c-4.5 0-7.9 1.8-10.6 5.6-2.7-3.7-6.1-5.5-10.6-5.5C6 3.1 0 9.6 0 17.6c0 7.3 5.4 12 10.6 16.5.6.5 1.3 1.1 1.9 1.7l2.3 2c4.4 3.9 6.6 5.9 7.6 6.5.5.3 1.1.5 1.6.5.6 0 1.1-.2 1.6-.5 1-.6 2.8-2.2 7.8-6.8l2-1.8c.7-.6 1.3-1.2 2-1.7C42.7 29.6 48 25 48 17.6c0-8-6-14.5-13.4-14.5z"></path></svg></div></button></span><span class="_15y0l">
         <button class="wpO6b " type="button">
         <div class="" style="display: inline-flex;">
         <svg aria-label="댓글 달기" class="_8-yf5 " fill="#262626" height="24" viewBox="0 0 48 48" width="24">
         <path clip-rule="evenodd" d="M47.5 46.1l-2.8-11c1.8-3.3 2.8-7.1 2.8-11.1C47.5 11 37 .5 24 .5S.5 11 .5 24 11 47.5 24 47.5c4 0 7.8-1 11.1-2.8l11 2.8c.8.2 1.6-.6 1.4-1.4zm-3-22.1c0 4-1 7-2.6 10-.2.4-.3.9-.2 1.4l2.1 8.4-8.3-2.1c-.5-.1-1-.1-1.4.2-1.8 1-5.2 2.6-10 2.6-11.4 0-20.6-9.2-20.6-20.5S12.7 3.5 24 3.5 44.5 12.7 44.5 24z" fill-rule="evenodd"></path>
         </svg>
         </div>
         </button></span>
         <button class="wpO6b " type="button" style="margin: 8px 0px 0px">
         <div class="" style="display: inline-flex;">
         <svg aria-label="게시물 공유" class="_8-yf5 " fill="#262626" height="24" viewBox="0 0 48 48" width="24">
         <path d="M47.8 3.8c-.3-.5-.8-.8-1.3-.8h-45C.9 3.1.3 3.5.1 4S0 5.2.4 5.7l15.9 15.6 5.5 22.6c.1.6.6 1 1.2 1.1h.2c.5 0 1-.3 1.3-.7l23.2-39c.4-.4.4-1 .1-1.5zM5.2 6.1h35.5L18 18.7 5.2 6.1zm18.7 33.6l-4.4-18.4L42.4 8.6 23.9 39.7z"></path>
         </svg></div>
         </button>
         <span class="wmtNn">
         <button class="wpO6b " type="button">
         <div class="" style="display: inline-flex;">
         <svg aria-label="저장" class="_8-yf5 " fill="#262626" height="24" viewBox="0 0 48 48" width="24">
         <path d="M43.5 48c-.4 0-.8-.2-1.1-.4L24 29 5.6 47.6c-.4.4-1.1.6-1.6.3-.6-.2-1-.8-1-1.4v-45C3 .7 3.7 0 4.5 0h39c.8 0 1.5.7 1.5 1.5v45c0 .6-.4 1.2-.9 1.4-.2.1-.4.1-.6.1zM24 26c.8 0 1.6.3 2.2.9l15.8 16V3H6v39.9l15.8-16c.6-.6 1.4-.9 2.2-.9z">
         </path></svg></div></button></span></section>
         <section class="EDfFK ygqzn"><div class="  Igw0E IwRSH  eGOV_  ybXk5 vwCYk  ">
         <div class="Nm9Fw"><span class="Jv7Aj  MqpiF  ">
         <a class="FPmhX notranslate  cqXBL" title="oh_h_s_98" href="/oh_h_s_98/" tabindex="0">oh_h_s_98</a></span>님 
         <button class="sqdOP yWX7d _8A5w5" type="button">여러 명
         </button>이 좋아합니다</div></div></section>
         <div class="k_Q0X NnvRN">
         <a class="c-Yi7" href="/p/CCSwYzaFcsMsL-hOcqx575R1LM08awaev6DBDo0/" tabindex="0">
         <time class="_1o9PC Nzb55" datetime="2020-07-06T07:57:24.000Z" title="2020년 7월 6일">7월 6일</time></a></div>
          <section>
          	<div class="">
          		<form method="post">
          			<textarea aria-label="댓글달기" placeholder="댓글달기"></textarea>
          			<button disabled="disabled" type="submit">게시</button>
          		</form>
          	</div>
          </section>
          </div>
          
        </div>
        
        
        <div class="modal-footer">
        <address>
			<em><a href="home" target="_blank" class="logo footfont"><span class="blind">HellChang</span></a></em>
			<em class="copy footfont">Copyright</em>
			<em class="u_cri footfont">©</em>
			<a href="home" target="_blank" class="u_cra footfont">HellChang Corp.</a>
			<span class="all_r footfont">All Rights Reserved.</span>
		</address>
          </div>
        </div>
      </div>
      
    </div> <!-- 모달종료 -->
  
  
  
  
  
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