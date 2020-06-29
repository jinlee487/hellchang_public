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
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="resources/jqLib/jquery-3.2.1.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script>
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
	/* 	
	//var sum = 0;
		//if(rep == 1){
			for(var i=1; i<=10; i++){
				sum = kg + (kg*0.025*i);
				//sum = sum.toFixed(2);

				$('.num'+i).html(i+ " R M ");
				$('.result'+i).html(sum);
			}	*/		
		 // }else if(rep )
	
  	
  
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
		  
  address {
	color: white;
	margin-bottom:0px;
	}
  #footer{
	clear: both;
    margin: 0 auto;
    padding: 30px 0 15px 0;
    text-align: center;
    margin: 0 auto;
	height: 50px;
    max-width: 100%;
    min-width: 460px;
    background-color: #3d3b3c;
	}
  
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
      background-color: #3d3b3c;
    }
    
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #3d3b3c;
      padding: 25px;
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
        <li ><a href="#">Home</a></li>
        <li><a href="noob">Blog</a></li>
        <li><a href="#">Routine</a></li>
        <li><a href="#">Inbody</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
      	<li><a href="joinf">회원가입</a></li>
        <li><a href="loginf"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>

<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="resources/image/main2.jpg" alt="main2" style="width: 800px; height: 554px;">
        <div class="carousel-caption">
          <!-- <h3>More Sell $</h3>
          <p>Lorem ipsum...</p> -->
       </div>      
    </div>

      <div class="item">
        <img src="resources/image/main3.png" alt="main3" style="width: 2000px; height: 554px;">
        <div class="carousel-caption">
          <!-- <h3>More Sell $</h3>
          <p>Lorem ipsum...</p> -->
        </div>      
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div>
  



<div class="container text-center">    
  <h3>What We Do</h3><br>
  <div class="row">
    <div class="col-sm-4">
      <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
      <p>Current Project</p>
    </div>
    <div class="col-sm-4"> 
      <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
      <p>Project 1</p>    
    </div>
    <div class="col-sm-4"> 
      <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
      <p>Project 2</p>    
    </div>
    <div class="col-sm-4"> 
      <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
      <p>Project 3</p>    
    </div>
    <div class="col-sm-4"> 
      <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
      <p>Project 4</p>    
    </div>
    <div class="col-sm-4"> 
      <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
      <p>Project 5</p>    
    </div>
    <div class="col-sm-4"> 
      <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
      <p>Project 6</p>    
    </div>
    <div class="col-sm-4"> 
      <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
      <p>Project 7</p>    
    </div>
    <div class="col-sm-4"> 
      <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
      <p>Project 8</p>    
    </div>
    <div class="col-sm-4"> 
      <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
      <p>Project 9</p>    
    </div>
    <div class="col-sm-4">
      <div class="well">
       <p>Some text..</p>
      </div>
      <div class="well">
       <p>Some text..</p>
      </div>
    </div>
  </div>
</div><br>

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
		<address>
			<em><a href="home" target="_blank" class="logo"><span class="blind">HellChang</span></a></em>
			<em class="copy">Copyright</em>
			<em class="u_cri">©</em>
			<a href="home" target="_blank" class="u_cra">HellChang Corp.</a>
			<span class="all_r">All Rights Reserved.</span>
		</address>
	</div>

</body>
</html>
