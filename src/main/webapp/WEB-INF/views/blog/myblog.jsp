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
	var rowcnt = 0;
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
				if(cnt == 0){jsonData = data.forName0; heartCnt = data.heart0}
				else if(cnt == 1){jsonData = data.forName1; heartCnt = data.heart1}
				else if(cnt == 2){jsonData = data.forName2; heartCnt = data.heart2}
				else if(cnt == 3){jsonData = data.forName3; heartCnt = data.heart3}
				else if(cnt == 4){jsonData = data.forName4; heartCnt = data.heart4}
				
				lastNum = Object.keys(jsonData).length;
				var appendT = "";
				var appendH = "";
				appendT += "<table class = 'table'>"
				rowcnt = 0;
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
					rowcnt ++;
					appendT += "</table>"
					$('.blogForm').append(appendT)
				} // for_i
				appendH+="<table>"
				appendH+= "<tr><td><span class = 'heart "+ nowID+"' id ='"+nowTitle+"'><img src = 'resources/image/heart.png'>"+heartCnt+"</span><span id = 'cnt"+nowTitle+"'></span></td></tr>"
				appendH += "</table>"
				$('.blogForm2').append(appendH)
				cnt ++;
			} // for_j 
		},
		error:function(){
			
		}
	}); // ajax 

$(document).on("click",".heart", function(){
    var title = $(this).attr("id");
    var id = $(this).attr("class");
    id = id.substring(6);
    console.log(id);
    $.ajax({
		type:'Get',
		url : "heartUp",
		data:{
			id : id,
			title: title,
		},
		success:function(data){
			var cnt = data.countHeartTest
			$('#'+title).empty();
			$('#cnt'+title).html("<img src = 'resources/image/heart.png'>"+cnt);
		}, // success
		error:function(){
			alert(rowcnt);
			alert("좋아요 오류 발생\n 지금 row가 여러개인 타이틀 좋아요 오류 수정중")
		}
	}) // ajax
}) // click 이벤트
}) // ready
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
			<a class="profile" data-toggle="modal" data-target="#porfileModal" tabindex="0" href="#"
			 >프로필 편집</a>&nbsp;&nbsp;
    <div class="AFWDX">
    <button class="wpO6b " type="button" data-toggle="modal" data-target="#porfileModal">
    <svg aria-label="옵션" class="_8-yf5 " fill="#262626" height="24" viewBox="0 0 48 48" width="24">
    <path clip-rule="evenodd" d="M46.7 20.6l-2.1-1.1c-.4-.2-.7-.5-.8-1-.5-1.6-1.1-3.2-1.9-4.7-.2-.4-.3-.8-.1-1.2l.8-2.3c.2-.5 0-1.1-.4-1.5l-2.9-2.9c-.4-.4-1-.5-1.5-.4l-2.3.8c-.4.1-.8.1-1.2-.1-1.4-.8-3-1.5-4.6-1.9-.4-.1-.8-.4-1-.8l-1.1-2.2c-.3-.5-.8-.8-1.3-.8h-4.1c-.6 0-1.1.3-1.3.8l-1.1 2.2c-.2.4-.5.7-1 .8-1.6.5-3.2 1.1-4.6 1.9-.4.2-.8.3-1.2.1l-2.3-.8c-.5-.2-1.1 0-1.5.4L5.9 8.8c-.4.4-.5 1-.4 1.5l.8 2.3c.1.4.1.8-.1 1.2-.8 1.5-1.5 3-1.9 4.7-.1.4-.4.8-.8 1l-2.1 1.1c-.5.3-.8.8-.8 1.3V26c0 .6.3 1.1.8 1.3l2.1 1.1c.4.2.7.5.8 1 .5 1.6 1.1 3.2 1.9 4.7.2.4.3.8.1 1.2l-.8 2.3c-.2.5 0 1.1.4 1.5L8.8 42c.4.4 1 .5 1.5.4l2.3-.8c.4-.1.8-.1 1.2.1 1.4.8 3 1.5 4.6 1.9.4.1.8.4 1 .8l1.1 2.2c.3.5.8.8 1.3.8h4.1c.6 0 1.1-.3 1.3-.8l1.1-2.2c.2-.4.5-.7 1-.8 1.6-.5 3.2-1.1 4.6-1.9.4-.2.8-.3 1.2-.1l2.3.8c.5.2 1.1 0 1.5-.4l2.9-2.9c.4-.4.5-1 .4-1.5l-.8-2.3c-.1-.4-.1-.8.1-1.2.8-1.5 1.5-3 1.9-4.7.1-.4.4-.8.8-1l2.1-1.1c.5-.3.8-.8.8-1.3v-4.1c.4-.5.1-1.1-.4-1.3zM24 41.5c-9.7 0-17.5-7.8-17.5-17.5S14.3 6.5 24 6.5 41.5 14.3 41.5 24 33.7 41.5 24 41.5z" fill-rule="evenodd">
    </path>
    </svg>
    </button>
    </div>
		</div>
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
					<button id ="testT" type="button" data-toggle="modal" data-target="#myModal2">
					<img src="resources/image/dBench.jpg" style="width: 100%; display: inline-flex;"></button>
				</div>
				<div style="display: inline-flex; width: 30%" >
					<button id ="testT" type="button" data-toggle="modal" data-target="#myModal3">
					<img src="resources/image/latPull.jpg" style="width: 100%; display: inline-flex;"></button>
				</div>
			</div>
		</div>
		<br>
		<div>
			<div style="flex-direction: column; padding-bottom: 0px; padding-top: 0px;">
				<div style="display: inline-flex; width: 30%" >
					<button id ="testT" type="button" data-toggle="modal" data-target="#myModal4">
					<img src="resources/image/hammerCurl.jpg" style="width: 100%; display: inline-flex;"></button>
				</div>
				<div style="display: inline-flex; width: 30%" >
					<button id ="testT" type="button" data-toggle="modal" data-target="#myModal5">
					<img src="resources/image/barbellCurl.jpg" style="width: 100%; display: inline-flex;"></button>
				</div>
				<div style="display: inline-flex; width: 30%" >
					<button id ="testT" type="button" data-toggle="modal" data-target="#myModal6">
					<img src="resources/image/ibench.jpg" style="width: 100%; display: inline-flex;"></button>
				</div>
			</div>
		</div>
		<br>
		<div>
			<div style="flex-direction: column; padding-bottom: 0px; padding-top: 0px;">
				<div style="display: inline-flex; width: 30%" >
					<button id ="testT" type="button" data-toggle="modal" data-target="#myModa7">
					<img src="resources/image/dBench.jpg" style="width: 100%; display: inline-flex;"></button>
				</div>
				<div style="display: inline-flex; width: 30%" >
					<button id ="testT" type="button" data-toggle="modal" data-target="#myModal8">
					<img src="resources/image/squat.jpg" style="width: 100%; display: inline-flex;"></button>
				</div>
				<div style="display: inline-flex; width: 30%" >
					<button id ="testT" type="button" data-toggle="modal" data-target="#myModal9">
					<img src="resources/image/logo.jpg" style="width: 100%; display: inline-flex;"></button>
				</div>
			</div>
		</div>
		<br>
	</article>

</div>
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
       <div align="left" class = "blogForm"><br><br>
		</div> 
		  
		   <div class="modal-body-text" style="width : 350px; margin-left: 50px; margin-top: 50px;">
		    <button type="button" class="close" data-dismiss="modal">&times;</button>
          <img src="resources/image/kang.jpg" alt="강경원" width="30px" height="30px" class="myPhoto1" style="float: left; border-radius: 50%">
          <table>
					<tbody><tr><td style="font-size: 15px"><a>${logName}</a></td></tr>
					<tr><td id="myTitle">분할 Title이름</td></tr>
					</tbody></table><hr>
		 
		 
		 
		  <div class="coment">
		<img src="resources/image/lee.jpg" alt="lee" width="30px" height="30px" class="myPhoto1" style="float: left; border-radius: 50%">
          <table>
					<tbody><tr><td style="font-size: 15px"><a>lee</a></td></tr>
					<tr><td id="myTitle">댓글 내용내용</td></tr>
					</tbody></table><br>
		 <img src="resources/image/kang.jpg" alt="강경원" width="30px" height="30px" class="myPhoto1" style="float: left; border-radius: 50%">
          <table>
					<tbody><tr><td style="font-size: 15px"><a>kang1234</a></td></tr>
					<tr><td id="myTitle">댓글 내용내용</td></tr>
					</tbody></table><br>
		<img src="resources/image/hwang.jpg" alt="hwang" width="30px" height="30px" class="myPhoto1" style="float: left; border-radius: 50%">
          <table>
					<tbody><tr><td style="font-size: 15px"><a>hwang</a></td></tr>
					<tr><td id="myTitle">댓글 내용내용</td></tr>
					</tbody></table><br>		
		  </div>
		<div align="left" class="blogForm2"></div>
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
    
    	<div class="modal fade" id="myModal2" role="dialog">
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
					<tbody><tr><td style="font-size: 15px"><a>${logName}</a></td></tr>
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
		<div align="center" class="blogForm2"></div>
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
    
    	<div class="modal fade" id="myModal3" role="dialog">
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
					<tbody><tr><td style="font-size: 15px"><a>${logName}</a></td></tr>
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
		<div align="center" class="blogForm2"></div>
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
    
    	<div class="modal fade" id="myModal4" role="dialog">
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
					<tbody><tr><td style="font-size: 15px"><a>${logName}</a></td></tr>
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
		<div align="center" class="blogForm2"></div>
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
    
    	<div class="modal fade" id="myModal5" role="dialog">
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
					<tbody><tr><td style="font-size: 15px"><a>${logName}</a></td></tr>
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
		<div align="center" class="blogForm2"></div>
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
    
    	<div class="modal fade" id="myModal6" role="dialog">
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
					<tbody><tr><td style="font-size: 15px"><a>${logName}</a></td></tr>
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
		<div align="center" class="blogForm2"></div>
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
    
    	<div class="modal fade" id="myModal7" role="dialog">
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
					<tbody><tr><td style="font-size: 15px"><a>${logName}</a></td></tr>
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
		<div align="center" class="blogForm2"></div>
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
    
    	<div class="modal fade" id="myModal8" role="dialog">
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
					<tbody><tr><td style="font-size: 15px"><a>${logName}</a></td></tr>
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
		<div align="center" class="blogForm2"></div>
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
    
    	<div class="modal fade" id="myModal9" role="dialog">
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
					<tbody><tr><td style="font-size: 15px"><a>${logName}</a></td></tr>
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
		<div align="center" class="blogForm2"></div>
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
    
    
    
  
  <div class="modal fade" id="porfileModal" role="dialog">
    <div class="modal-dialog">
      <!-- Modal content-->	
      <div class="modal-content2">
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
       <div>
       <button type="button" class="close" data-dismiss="modal">×</button><br>
  <form action="mupdate" method="post" enctype="multipart/form-data">
   <label for="name" class="int"><b>Email</b></label><br>
      <p class="text-center">${logID }</p><br>
   
    <label for="name" class="int"><b>Name</b></label><br>
      <p class="text-center">${logName }</p>
      <a href="#name" data-toggle="collapse">
      <b>이름 수정하기</b>
      </a>
      <div id="name" class="collapse" >
        <input style="width: 60%; padding: 15px; display: inline-block; border: none; background: #f1f1f1; border-radius: 8px" type="text" placeholder="Name" name="name" id="name" class="input" value="${myInfo.name }"><br>
       <a href="#name" data-toggle="collapse">
      <input type="reset" value="취소"></a>
       <input type="submit" value="전송">&nbsp;&nbsp;
      
      </div><br><br>
    
    <label for="phonenumber" class="int"><b>Phone Number</b></label><br>
    <p class="text-center">${logPhone}</p>
      <a href="#phonenumber" data-toggle="collapse">
      <b>폰 번호 수정하기</b>
      </a>
      <div id="phonenumber" class="collapse">
      <select style="width: 60%; padding: 15px;  display: inline-block; border: none; background: #f1f1f1; border-radius: 8px; cursor: pointer;" id="nationNo" name="nationNo" class="gen" aria-label="전화번호 입력">
                                        <option value="233">
                                            가나 +233
                                        </option>
                                        <option value="241">
                                            가봉 +241
                                        </option>
                                        <option value="592">
                                            가이아나 +592
                                        </option>
                                        <option value="220">
                                            감비아 +220
                                        </option>
                                        <option value="502">
                                            과테말라 +502
                                        </option>
                                        <option value="1671">
                                            괌 +1 671
                                        </option>
                                        <option value="1473">
                                            그레나다 +1 473
                                        </option>
                                        <option value="30">
                                            그리스 +30
                                        </option>
                                        <option value="224">
                                            기니 +224
                                        </option>
                                        <option value="245">
                                            기니비사우 +245
                                        </option>
                                        <option value="264">
                                            나미비아 +264
                                        </option>
                                        <option value="674">
                                            나우루 +674
                                        </option>
                                        <option value="234">
                                            나이지리아 +234
                                        </option>
                                        <option value="672">
                                            남극,오스트레일리아의외 +672
                                        </option>
                                        <option value="27">
                                            남아프리카공화국 +27
                                        </option>
                                        <option value="31">
                                            네덜란드 +31
                                        </option>
                                        <option value="599">
                                            네덜란드령보네르 +599
                                        </option>
                                        <option value="297">
                                            네덜란드령아루바 +297
                                        </option>
                                        <option value="977">
                                            네팔 +977
                                        </option>
                                        <option value="47">
                                            노르웨이 +47
                                        </option>
                                        <option value="64">
                                            뉴질랜드 +64
                                        </option>
                                        <option value="683">
                                            뉴질랜드령니우에 +683
                                        </option>
                                        <option value="690">
                                            뉴질랜드령토켈라우제도 +690
                                        </option>
                                        <option value="227">
                                            니제르 +227
                                        </option>
                                        <option value="505">
                                            니카라과 +505
                                        </option>
                                        <option value="82" selected="">
                                            대한민국 +82
                                        </option>
                                        <option value="45">
                                            덴마크 +45
                                        </option>
                                        <option value="299">
                                            덴마크령그린란드 +299
                                        </option>
                                        <option value="298">
                                            덴마크령페로제도 +298
                                        </option>
                                        <option value="1809">
                                            도미니카공화국 +1 809
                                        </option>
                                        <option value="1829">
                                            도미니카공화국 2 +1 829
                                        </option>
                                        <option value="1849">
                                            도미니카공화국 3 +1 849
                                        </option>
                                        <option value="49">
                                            독일 +49
                                        </option>
                                        <option value="670">
                                            동티모르 +670
                                        </option>
                                        <option value="856">
                                            라오스 +856
                                        </option>
                                        <option value="231">
                                            라이베리아 +231
                                        </option>
                                        <option value="371">
                                            라트비아 +371
                                        </option>
                                        <option value="7">
                                            러시아/카자흐스탄 +7
                                        </option>
                                        <option value="961">
                                            레바논 +961
                                        </option>
                                        <option value="266">
                                            레소토 +266
                                        </option>
                                        <option value="40">
                                            루마니아 +40
                                        </option>
                                        <option value="352">
                                            룩셈부르크 +352
                                        </option>
                                        <option value="250">
                                            르완다 +250
                                        </option>
                                        <option value="218">
                                            리비아 +218
                                        </option>
                                        <option value="370">
                                            리투아니아 +370
                                        </option>
                                        <option value="423">
                                            리히텐슈타인 +423
                                        </option>
                                        <option value="261">
                                            마다가스카르 +261
                                        </option>
                                        <option value="692">
                                            마셜제도공화국 +692
                                        </option>
                                        <option value="691">
                                            마이크로네시아연방 +691
                                        </option>
                                        <option value="853">
                                            마카오 +853
                                        </option>
                                        <option value="389">
                                            마케도니아공화국 +389
                                        </option>
                                        <option value="265">
                                            말라위 +265
                                        </option>
                                        <option value="60">
                                            말레이시아 +60
                                        </option>
                                        <option value="223">
                                            말리 +223
                                        </option>
                                        <option value="52">
                                            멕시코 +52
                                        </option>
                                        <option value="377">
                                            모나코 +377
                                        </option>
                                        <option value="212">
                                            모로코 +212
                                        </option>
                                        <option value="230">
                                            모리셔스 +230
                                        </option>
                                        <option value="222">
                                            모리타니아 +222
                                        </option>
                                        <option value="258">
                                            모잠비크 +258
                                        </option>
                                        <option value="382">
                                            몬테네그로 +382
                                        </option>
                                        <option value="373">
                                            몰도바 +373
                                        </option>
                                        <option value="960">
                                            몰디브 +960
                                        </option>
                                        <option value="356">
                                            몰타 +356
                                        </option>
                                        <option value="976">
                                            몽골 +976
                                        </option>
                                        <option value="1">
                                            미국/캐나다 +1
                                        </option>
                                        <option value="1670">
                                            미국령북마리아나제도 +1 670
                                        </option>
                                        <option value="95">
                                            미얀마 +95
                                        </option>
                                        <option value="678">
                                            바누아투 +678
                                        </option>
                                        <option value="973">
                                            바레인 +973
                                        </option>
                                        <option value="1246">
                                            바베이도스 +1 246
                                        </option>
                                        <option value="1242">
                                            바하마 +1 242
                                        </option>
                                        <option value="880">
                                            방글라데시 +880
                                        </option>
                                        <option value="229">
                                            베냉 +229
                                        </option>
                                        <option value="58">
                                            베네수엘라 +58
                                        </option>
                                        <option value="84">
                                            베트남 +84
                                        </option>
                                        <option value="32">
                                            벨기에 +32
                                        </option>
                                        <option value="375">
                                            벨라루스 +375
                                        </option>
                                        <option value="501">
                                            벨리즈 +501
                                        </option>
                                        <option value="387">
                                            보스니아헤르체고비나 +387
                                        </option>
                                        <option value="267">
                                            보츠와나 +267
                                        </option>
                                        <option value="591">
                                            볼리비아 +591
                                        </option>
                                        <option value="257">
                                            부룬디 +257
                                        </option>
                                        <option value="226">
                                            부르키나파소 +226
                                        </option>
                                        <option value="975">
                                            부탄 +975
                                        </option>
                                        <option value="359">
                                            불가리아 +359
                                        </option>
                                        <option value="55">
                                            브라질 +55
                                        </option>
                                        <option value="673">
                                            브루나이 +673
                                        </option>
                                        <option value="685">
                                            사모아 +685
                                        </option>
                                        <option value="966">
                                            사우디아라비아 +966
                                        </option>
                                        <option value="378">
                                            산마리노 +378
                                        </option>
                                        <option value="239">
                                            상투메프린시페 +239
                                        </option>
                                        <option value="221">
                                            세네갈 +221
                                        </option>
                                        <option value="381">
                                            세르비아 +381
                                        </option>
                                        <option value="248">
                                            세이셀 +248
                                        </option>
                                        <option value="1784">
                                            세인트빈센트그레나딘 +1 784
                                        </option>
                                        <option value="252">
                                            소말리아 +252
                                        </option>
                                        <option value="677">
                                            솔로몬제도 +677
                                        </option>
                                        <option value="249">
                                            수단 +249
                                        </option>
                                        <option value="597">
                                            수리남 +597
                                        </option>
                                        <option value="94">
                                            스리랑카 +94
                                        </option>
                                        <option value="268">
                                            스와질랜드 +268
                                        </option>
                                        <option value="46">
                                            스웨덴 +46
                                        </option>
                                        <option value="41">
                                            스위스 +41
                                        </option>
                                        <option value="34">
                                            스페인 +34
                                        </option>
                                        <option value="421">
                                            슬로바키아 +421
                                        </option>
                                        <option value="386">
                                            슬로베니아 +386
                                        </option>
                                        <option value="963">
                                            시리아 +963
                                        </option>
                                        <option value="232">
                                            시에라리온 +232
                                        </option>
                                        <option value="65">
                                            싱가포르 +65
                                        </option>
                                        <option value="971">
                                            아랍에미리트 +971
                                        </option>
                                        <option value="374">
                                            아르메니아 +374
                                        </option>
                                        <option value="54">
                                            아르헨티나 +54
                                        </option>
                                        <option value="1684">
                                            아메리칸사모아 +1 684
                                        </option>
                                        <option value="354">
                                            아이슬란드 +354
                                        </option>
                                        <option value="509">
                                            아이티 +509
                                        </option>
                                        <option value="353">
                                            아일랜드 +353
                                        </option>
                                        <option value="994">
                                            아제르바이잔 +994
                                        </option>
                                        <option value="93">
                                            아프가니스탄 +93
                                        </option>
                                        <option value="376">
                                            안도라 +376
                                        </option>
                                        <option value="355">
                                            알바니아 +355
                                        </option>
                                        <option value="213">
                                            알제리 +213
                                        </option>
                                        <option value="244">
                                            앙골라 +244
                                        </option>
                                        <option value="251">
                                            에디오피아 +251
                                        </option>
                                        <option value="291">
                                            에리트레아 +291
                                        </option>
                                        <option value="372">
                                            에스토니아 +372
                                        </option>
                                        <option value="593">
                                            에콰도르 +593
                                        </option>
                                        <option value="503">
                                            엘살바도르 +503
                                        </option>
                                        <option value="44">
                                            영국 +44
                                        </option>
                                        <option value="290">
                                            영국령세인트헬레나 +290
                                        </option>
                                        <option value="246">
                                            영국령인도양지역 +246
                                        </option>
                                        <option value="350">
                                            영국령지브롤터 +350
                                        </option>
                                        <option value="500">
                                            영국령포클랜드제도 +500
                                        </option>
                                        <option value="967">
                                            예멘 +967
                                        </option>
                                        <option value="968">
                                            오만 +968
                                        </option>
                                        <option value="43">
                                            오스트리아 +43
                                        </option>
                                        <option value="504">
                                            온두라스 +504
                                        </option>
                                        <option value="962">
                                            요르단 +962
                                        </option>
                                        <option value="256">
                                            우간다 +256
                                        </option>
                                        <option value="598">
                                            우루과이 +598
                                        </option>
                                        <option value="998">
                                            우즈베키스탄 +998
                                        </option>
                                        <option value="380">
                                            우크라이나 +380
                                        </option>
                                        <option value="964">
                                            이라크 +964
                                        </option>
                                        <option value="98">
                                            이란 +98
                                        </option>
                                        <option value="972">
                                            이스라엘 +972
                                        </option>
                                        <option value="20">
                                            이집트 +20
                                        </option>
                                        <option value="39">
                                            이탈리아 +39
                                        </option>
                                        <option value="91">
                                            인도 +91
                                        </option>
                                        <option value="62">
                                            인도네시아 +62
                                        </option>
                                        <option value="81">
                                            일본 +81
                                        </option>
                                        <option value="1876">
                                            자메이카 +1 876
                                        </option>
                                        <option value="260">
                                            잠비아 +260
                                        </option>
                                        <option value="240">
                                            적도기니 +240
                                        </option>
                                        <option value="995">
                                            조지아 +995
                                        </option>
                                        <option value="86">
                                            중국 +86
                                        </option>
                                        <option value="236">
                                            중앙아프리카공화국 +236
                                        </option>
                                        <option value="253">
                                            지부티 +253
                                        </option>
                                        <option value="263">
                                            짐바브웨 +263
                                        </option>
                                        <option value="235">
                                            차드 +235
                                        </option>
                                        <option value="420">
                                            체코 +420
                                        </option>
                                        <option value="56">
                                            칠레 +56
                                        </option>
                                        <option value="237">
                                            카메룬 +237
                                        </option>
                                        <option value="238">
                                            카보베르데 +238
                                        </option>
                                        <option value="974">
                                            카타르 +974
                                        </option>
                                        <option value="855">
                                            캄보디아왕국 +855
                                        </option>
                                        <option value="254">
                                            케냐 +254
                                        </option>
                                        <option value="269">
                                            코모로,마요트 +269
                                        </option>
                                        <option value="506">
                                            코스타리카 +506
                                        </option>
                                        <option value="225">
                                            코트디부아르 +225
                                        </option>
                                        <option value="57">
                                            콜롬비아 +57
                                        </option>
                                        <option value="242">
                                            콩고 +242
                                        </option>
                                        <option value="243">
                                            콩고민주공화국 +243
                                        </option>
                                        <option value="53">
                                            쿠바 +53
                                        </option>
                                        <option value="965">
                                            쿠웨이트 +965
                                        </option>
                                        <option value="682">
                                            쿡제도 +682
                                        </option>
                                        <option value="385">
                                            크로아티아 +385
                                        </option>
                                        <option value="996">
                                            키르기스스탄 +996
                                        </option>
                                        <option value="686">
                                            키리바시 +686
                                        </option>
                                        <option value="357">
                                            키프로스 +357
                                        </option>
                                        <option value="886">
                                            타이완 +886
                                        </option>
                                        <option value="992">
                                            타지키스탄 +992
                                        </option>
                                        <option value="255">
                                            탄자니아 +255
                                        </option>
                                        <option value="66">
                                            태국 +66
                                        </option>
                                        <option value="90">
                                            터키 +90
                                        </option>
                                        <option value="228">
                                            토고 +228
                                        </option>
                                        <option value="676">
                                            통가 +676
                                        </option>
                                        <option value="993">
                                            투르크메니스탄 +993
                                        </option>
                                        <option value="216">
                                            튀니지 +216
                                        </option>
                                        <option value="1868">
                                            트리니다드토바고 +1 868
                                        </option>
                                        <option value="507">
                                            파나마 +507
                                        </option>
                                        <option value="595">
                                            파라과이 +595
                                        </option>
                                        <option value="92">
                                            파키스탄 +92
                                        </option>
                                        <option value="675">
                                            파푸아뉴기니 +675
                                        </option>
                                        <option value="680">
                                            팔라우 +680
                                        </option>
                                        <option value="970">
                                            팔레스타인 +970
                                        </option>
                                        <option value="51">
                                            페루 +51
                                        </option>
                                        <option value="351">
                                            포르투갈 +351
                                        </option>
                                        <option value="48">
                                            폴란드 +48
                                        </option>
                                        <option value="1787">
                                            푸에르토리코 +1 787
                                        </option>
                                        <option value="33">
                                            프랑스 +33
                                        </option>
                                        <option value="590">
                                            프랑스령과들루프 +590
                                        </option>
                                        <option value="594">
                                            프랑스령기아나 +594
                                        </option>
                                        <option value="687">
                                            프랑스령뉴칼레도니아 +687
                                        </option>
                                        <option value="262">
                                            프랑스령레위니옹 +262
                                        </option>
                                        <option value="596">
                                            프랑스령마르티니크 +596
                                        </option>
                                        <option value="508">
                                            프랑스령생피에르미클롱 +508
                                        </option>
                                        <option value="681">
                                            프랑스령월리스푸투나제 +681
                                        </option>
                                        <option value="689">
                                            프랑스령폴리네시아 +689
                                        </option>
                                        <option value="679">
                                            피지 +679
                                        </option>
                                        <option value="358">
                                            핀란드 +358
                                        </option>
                                        <option value="63">
                                            필리핀 +63
                                        </option>
                                        <option value="36">
                                            헝가리 +36
                                        </option>
                                        <option value="61">
                                            호주 +61
                                        </option>
                                        <option value="852">
                                            홍콩 +852
                                        </option>
                        </select><br><br>
    <input  style="width: 60%; padding: 15px;  display: inline-block; border: none; background: #f1f1f1; border-radius: 8px" type="text" name="phoneNo"  id="phoneNo" placeholder="Ex 010-1234-5678" class="input" value="${myInfo.phone}"><br>
       <a href="#phonenumber" data-toggle="collapse">
       <input type="reset" value="취소"></a>
       <input type="submit" value="전송">&nbsp;&nbsp;
      </div><br><br>
	 </form>
      </div><br>
          </div>
        </div>
        <div class="modal-footer2">
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
     <!-- 모달종료 -->
  
  
  
  




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