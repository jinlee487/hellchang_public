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
    	width: 10%;
    	background-color: white;
    	border-color: white;
    	flex-basis: 0;
    -webkit-box-flex: 1;
    flex-grow: 1;
    align-items: stretch;
    border: 0 solid #000;
    }
    .img{
    	width: 50%;
    	margin: 0;
    padding: 0;
    border: 0;
    font: inherit;
    vertical-align: baseline;
    border-radius: 50%;
    
    }
    .profile{
    	margin-top: 10%;
    background-color: transparent;
    border: 1px solid #dbdbdb;
    border: 1px solid rgba(var(--ca6,219,219,219),1);
    color: #262626;
    color: rgba(var(--f75,38,38,38),1);
    border-radius: 4px;
    color: #fff;
    color: rgba(var(--eca,255,255,255),1);
    position: relative;
    text-decoration: none;
        user-select: auto;
        -webkit-appearance: none;
        background: 0 0;
        box-sizing: border-box;
    cursor: pointer;
    display: block;
    font-weight: 600;
    padding: 5px 9px;
    text-align: center;
    text-transform: inherit;
    text-overflow: ellipsis;
    width: auto;
    flex-shrink: 0;
    margin-left: 20px
    }
    .wpO6b{
    	align-items: center;
    background: 0 0;
    border: 0;
    cursor: pointer;
    display: flex;
    justify-content: center;
    padding: 8px;
    -webkit-box-pack: center;
    margin-top: 20%;
}
    	
    }
    .h2{
    display: block;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    color: rgba(var(--i1d,38,38,38),1);
    font-weight: 300;
    font-size: 28px;
    line-height: 32px;
    margin: -5px 0 -6px;
    padding: 0;
    border: 0;
    font: inherit;
    vertical-align: baseline;
    margin-block-start: 0.83em;
    margin-block-end: 0.83em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    }
    .ul{
    margin-bottom: 20px;
    display: flex;
    -webkit-box-orient: horizontal;
    -webkit-box-direction: normal;
    flex-direction: row;
    list-style: none;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
    list-style: none;
    }
	.li{
	display: inline-flex;
	margin-left: 0;
	font-size: 16px;
    margin-right: 40px;
    margin: 0;
    padding: 0;
    border: 0;
    font: inherit;
    vertical-align: baseline;
    display: list-item;
    text-align: -webkit-match-parent;
	}
.h1{
	display: inline;
    font-weight: 600;
        margin: 0;
    padding: 0;
    border: 0;
    font: inherit;
    vertical-align: baseline;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;	
}
    
  .zz{
  	margin-bottom: 20px;
  	-webkit-box-align: center;
  	align-items: center;
    -webkit-box-orient: horizontal;
    -webkit-box-direction: normal;
    flex-direction: row;
    flex-shrink: 1;
    min-width: 0;
    display: flex;
  
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
			<img class="img" alt="프로필 사진 바꾸기" src="resources/image/logo.jpg">
		</button>
	
	<section>
		<div class="zz">
			<h2 class="h2">IDID</h2>&nbsp;&nbsp;	
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
			<h1 class="h1">이름이름</h1><br>
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
					<img src="resources/image/logo.jpg" style="width: 100%; display: inline-flex;"></button>
				</div>
				<div style="display: inline-flex; width: 30%" >
					<a href="#" class="close" data-dismiss="alert" aria-label="close">
					<img src="resources/image/logo.jpg" style="width: 100%; display: inline-flex;"></a>
				</div>
				<div style="display: inline-flex; width: 30%" >
					<a href="#" class="close" data-dismiss="alert" aria-label="close">
					<img src="resources/image/logo.jpg" style="width: 100%; display: inline-flex;"></a>
				</div>
			</div>
		</div>
		<br>
			<div>
			<div style="flex-direction: column; padding-bottom: 0px; padding-top: 0px;">
				<div style="display: inline-flex; width: 30%" >
					<a href="#" class="close" data-dismiss="alert" aria-label="close">
					<img src="resources/image/logo.jpg" style="width: 100%; display: inline-flex;"></a>
				</div>
				<div style="display: inline-flex; width: 30%" >
					<a href="#" class="close" data-dismiss="alert" aria-label="close">
					<img src="resources/image/logo.jpg" style="width: 100%; display: inline-flex;"></a>
				</div>
				<div style="display: inline-flex; width: 30%" >
					<a href="#" class="close" data-dismiss="alert" aria-label="close">
					<img src="resources/image/logo.jpg" style="width: 100%; display: inline-flex;"></a>
				</div>
			</div>
		</div>
		<br>
			<div>
			<div style="flex-direction: column; padding-bottom: 0px; padding-top: 0px;">
				<div style="display: inline-flex; width: 30%" >
					<a href="#" class="close" data-dismiss="alert" aria-label="close">
					<img src="${list.uploadfile}" style="width: 100%; display: inline-flex;"></a>
				</div>
				<div style="display: inline-flex; width: 30%" >
					<a href="#" class="close" data-dismiss="alert" aria-label="close">
					<img src="${list.uploadfile}" style="width: 100%; display: inline-flex;"></a>
				</div>
				<div style="display: inline-flex; width: 30%" >
					<a href="#" class="close" data-dismiss="alert" aria-label="close">
					<img src="${list.uploadfile}" style="width: 100%; display: inline-flex;"></a>
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
        <div class="modal-body" style="display: inline-flex;">
         <table class="table">
		   <thead>
		   <tr style="font-weight: bolder;">
		   <th width="150">Name</th><th width="150">Targeting</th>
		   <th width="50">kg</th><th width="50">rep</th><th width="100">title</th><th width="100">date</th>
		   </tr>
		   </thead>
		   <tbody id = "RoutineTable"></tbody>
		   </table>
		   
		   <div class="modal-body-text">
		    <button type="button" class="close" data-dismiss="modal">&times;</button>
          <img src="resources/image/kang.jpg" alt="강경원" width="30px" height="30px" class="myPhoto" style="float: left; border-radius: 50%">
          <table>
					<tbody><tr><td style="font-size: 15px"><a>kang1234</a></td></tr>
					<tr><td id="myTitle">분할 Title이름</td></tr>
					</tbody></table><hr>
		 
		  <div class="coment">
		<img src="resources/image/kang.jpg" alt="강경원" width="30px" height="30px" class="myPhoto" style="float: left; border-radius: 50%">
          <table>
					<tbody><tr><td style="font-size: 15px"><a>kang1234</a></td></tr>
					<tr><td id="myTitle">댓글 내용내용내용</td></tr>
					</tbody></table><br>
		 <img src="resources/image/kang.jpg" alt="강경원" width="30px" height="30px" class="myPhoto" style="float: left; border-radius: 50%">
          <table>
					<tbody><tr><td style="font-size: 15px"><a>kang1234</a></td></tr>
					<tr><td id="myTitle">댓글 내용내용내용</td></tr>
					</tbody></table><br>
		<img src="resources/image/kang.jpg" alt="강경원" width="30px" height="30px" class="myPhoto" style="float: left; border-radius: 50%">
          <table>
					<tbody><tr><td style="font-size: 15px"><a>kang1234</a></td></tr>
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
         <button class="sqdOP yWX7d     _8A5w5    " type="button">여러 명
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
        
          </div>
        </div>
      </div>
      
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