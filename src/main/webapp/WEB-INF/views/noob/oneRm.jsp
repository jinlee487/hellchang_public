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
  <link rel="stylesheet" type="text/css" href="resources/jqLib/footer_position.css">
  <link rel="stylesheet" type="text/css" href="resource/jqLib/topBar.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="resources/jqLib/jquery-3.2.1.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script>
  
  /* $(function(){
		stickyFooter();

		$(window).scroll(stickyFooter).resize(stickyFooter);	
	});


	function stickyFooter(){
		document_height = $(document).height(); // 문서 전체 높이
		document_scrollTop = $(document).scrollTop(); // 문서 전체 높이 중 스크롤 위치
		window_height = $(window).height(); // 창 높이
		footer_height = $("#footer").height();

		gap = document_height - footer_height - window_height; 
		bottom = document_scrollTop - gap ; 

		if(document_scrollTop > gap){
			$("#footer").css("bottom", bottom+"px");
		}else{
			$("#footer").css("bottom","0");
		}
	}
   */
  
  
	  function rm(){
		  for(var i=1; i<=10; i++)	{
			 
			 $('.num'+i).html(" ");
			 $('.result'+i).html(" ");  
		  }
		  
		
		  
		var kg = parseInt($('#kg').val());
		var rep = parseInt($('#rep').val());
		
		arm = kg/(1.0278-(0.0278*rep));
		// arm = 1rm 구한 값
		var j = rep;
		for(var i=1; i<=rep; i++){
			sum =kg/(1.0278-(0.0278*i));
			sum = sum.toFixed(2);
			$('.num'+i).html(j+ " R M ");
			$('.result'+i).html(sum);
			j--;
		}
	}	 
  
  </script>
  <style>

  #p_pos{
  	margin-right: 80px;
  }
  
  #top_na{
  	position: fixed;
  	z-index: 100;
  	width: 100%;
  }
  	
  	element.style{
  		bottom : 0px;
  	}
  	
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
      background-color: #3d3b3c;
    }
    
    
  .carousel-inner img {
      width: 100%; /* Set width to 100% */
      margin: auto;
      min-height:200px;
  }

  /* Hide the carousel text when the screen is less than 600 pixels wide */
  @media (max-width: 600px) {
    .carousel-caption {
      display: none; 
      margin-left: 20	0px;
    }
  }
  @media (min-width: 768px){
	.col-sm-4 {
	  /* margin-left: 200px; */
	  text-align: center;
	}
  </style>
</head>
<body>

<nav  class="navbar navbar-inverse" id="top_na">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">
      <img src = "resources/image/logo.jpg" width="80" height="25">
      </a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
    	<ul class="nav navbar-nav">
    		<li><a href="noob">Noob</a></li>
			<li><a href="#">Routine</a></li>
			<li><a href="#">Blog</a></li>
			<li><a href="#">Inbody</a></li>
			<li><a href="dataf">1RM</a></li>
		  </ul>
		  <ul class="nav navbar-nav navbar-right" >
		  	<li><a href="prof">UserTest</a></li>
			<li><a href="joinf">회원가입</a></li>
			<li><a href="loginf"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
		  </ul>
		</div>
  </div>
</nav>

  

<div class="container text-center">    
  <h2>1RM</h2><br> 
  <div class="row">
    <div class="col-sm-4" style="display: inline-block; margin: 0 0 0 17%; ">
    <h3>INPUT</h3>
        <form>
       		<table>
       			<tr>
       				<th style="text-align: center;">KG</th><th style="text-align: center;">REP</th>
       			</tr>
       			<tr>
       				<td><input type="text"  placeholder="무게를 입력하세요." id="kg"></td>
       				<td>
       					<input type="text"  placeholder="개수를 입력하세요." id="rep">
       				</td>
       			</tr>
       		</table>
       		<br>
       		<button type="button" onclick="rm()">결과확인</button>
       </form>
    </div>
    <div class="col-sm-4" style="display: inline-block; margin: 0; ">
       <h3>RESULT</h3>
       <c:forEach begin="1" end="10" varStatus="status">
	   			<table style="text-align: center;">
	   				<tr>
	   				</tr>
	   				<tr>
	   					<td style="border: solid 1px; text-align:center; width: 178px; height: 26px;" class="num${status.count}"></td>
	   					<td style="border: solid 1px; text-align:center; width: 178px; height: 26px;" class="result${status.count}"></td>
	   				</tr>
	   			</table>
	   </c:forEach>
    </div>
    
  </div>
</div><br>

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
