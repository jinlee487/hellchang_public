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
  <link rel="stylesheet" type="text/css" href="resources/jqLib/topBar.css">
  <link rel="stylesheet" type="text/css" href="resources/jqLib/footer_position2.css">
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


	.myPhoto{
	width: 100px;
	height: 100px;
    border-radius: 50%;
	}
    
.table {
	width : 600px;
     border-collapse: collapse;
     border-top: 3px solid #168;
     border-bottom: 3px solid #168;
}
  

.table th {
     color: #168;
     background: #f0f6f9;
     text-align: center;
}
.allth{
	color: #168;
    background: #f0f6f9;
    text-align: center;
}

.table td:first-child{
	width : 200px;
	vertical-align: middle;
	
}
.table tr:first-child{
	border-right: 3px solid #168;
}
.firsttr{
	border-right: 3px solid #168;
}

.table th:first-child, .table td:first-child {
     border-left: 3px solid #168;
}
.firsttd{
	border-left: 3px solid #168;
	width : 200px;
	vertical-align: middle;
}

.table th:last-child, .table td:last-child {
	border-right : 3px solid #168;
}
.lasttd {
	border-right : 3px solid #168;
}
.table td{
	text-align: center;
}
   
   
   
#footer{
	position: fixed;
	color: black;
	clear: both;
    padding: 30px 0 15px 0;
    text-align: center;
	height: 50px;
    max-width: 100%;
    min-width: 460px;
    background-color: white;    
    width:100%;
    bottom: 0px;
    margin-bottom:0px;
}
</style>
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
				$('.blogForm').append("<h2>더이상 불러 올 데이터가 존재 하지 않습니다</h2>")
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


<div align="center" class = "blogForm"><br><br>
<a href="myblog">임시 my Blog</a>

</div>


<div id="footer" role="contentinfo">
<hr style="width: 100%;">
<hr style="width: 100%; border-color: black;">
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