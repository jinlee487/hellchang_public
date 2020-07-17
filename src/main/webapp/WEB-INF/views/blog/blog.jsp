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


	.myPhoto{
	width: 100px;
	height: 100px;
    border-radius: 50%;
	}
    
.table {
	width : 650px;
     border-collapse: collapse;
     border-top: 3px solid #168;
     border-bottom: 3px solid #168;
}
  

.table th {
     color: #168;
     background: #f0f6f9;
     text-align: center;
}

.table td:first-child{
	width : 150px;
	vertical-align: middle;
	
}
.table tr:first-child{
	border-right: 3px solid #168;
}

.table th:first-child, .table td:first-child {
     border-left: 3px solid #168;
}


.table th:last-child, .table td:last-child {
	border-right : 3px solid #168;
}

.table td{
	text-align: center;
}
/*
.table tr td:first-child{
     text-align: center;
}
.table caption{caption-side: bottom; display: none;} 
*/
 

   
   
   
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
		
	$.ajax({
		type:'Get',
		url:'blogTest',

		success:function(data){
			
			jsonData1 = data.forName1
			console.log(jsonData1)
			var lastNum = Object.keys(jsonData1).length;
			for(var i =0; i<Object.keys(jsonData1).length; i++){
				if(i==0){
					$('#BlogForm').append("<table>")
					$('#BlogForm').append('<tr style="margin-left: 5px; font-size: medium; font-weight: bold;"><td><img src="resources/image/kang.jpg" alt="이준호" class = "myPhoto"></td><td colspan = "2"><br>Title : '+jsonData1[i].title+'<br>Name : '+jsonData1[i].userName+'<br>Date : '+jsonData1[i].date+'</td><td colspan ="3"></td></tr>')
					$('#BlogForm').append('<tr><th>Name</th><th>Target</th><th>KG</th><th>Rep</th><th>Title</th></tr>')
					$('#BlogForm').append("<tr><td>"+jsonData1[i].name +"</td><td>"+ jsonData1[i].target +"</td><td>"+jsonData1[i].kg +"</td><td>"+jsonData1[i].rep +"</td><td>"+jsonData1[i].title +"</td></tr>")	
				}else if(i==lastNum){
					$('#BlogForm').append("</table>")
				}
				else{
					$('#BlogForm').append("<tr><td>"+jsonData1[i].name +"</td><td>"+ jsonData1[i].target +"</td><td>"+jsonData1[i].kg +"</td><td>"+jsonData1[i].rep +"</td><td>"+jsonData1[i].title +"</td></tr>")	
				}
				
			}
			
			jsonData2 = data.forName2
			console.log(jsonData2)
			for(var i =0; i<Object.keys(jsonData2).length; i++){
				if(i==0){
					$('#BlogForm').append("<table>")
					$('#BlogForm').append('<tr style="margin-left: 5px; font-size: medium; font-weight: bold;"><td><img src="resources/image/lee.jpg" alt="이준호" class = "myPhoto"></td><td colspan = "2"><br>Title : '+jsonData2[i].title+'<br>Name : '+jsonData2[i].userName+'<br>Date : '+jsonData2[i].date+'</td><td colspan ="3"></td></tr>')
					$('#BlogForm').append('<tr><th>Name</th><th>Target</th><th>KG</th><th>Rep</th><th>Title</th></tr>')
					$('#BlogForm').append("<tr><td>"+jsonData2[i].name +"</td><td>"+ jsonData2[i].target +"</td><td>"+jsonData2[i].kg +"</td><td>"+jsonData2[i].rep +"</td><td>"+jsonData2[i].title +"</td></tr>")	
				}else if(i==lastNum){
					$('#BlogForm').append("</table>")
				}
				else{
					$('#BlogForm').append("<tr><td>"+jsonData2[i].name +"</td><td>"+ jsonData2[i].target +"</td><td>"+jsonData2[i].kg +"</td><td>"+jsonData2[i].rep +"</td><td>"+jsonData2[i].title +"</td></tr>")	
				}
				
			}
			
			jsonData3 = data.forName3
			console.log(jsonData3)
			
			for(var i =0; i<Object.keys(jsonData3).length; i++){
				if(i==0){
					$('#BlogForm').append("<table>")
					$('#BlogForm').append('<tr style="margin-left: 5px; font-size: medium; font-weight: bold;"><td><img src="resources/image/kang.jpg" alt="이준호" class = "myPhoto"></td><td colspan = "2"><br>Title : '+jsonData3[i].title+'<br>Name : '+jsonData3[i].userName+'<br>Date : '+jsonData3[i].date+'</td><td colspan ="3"></td></tr>')
					$('#BlogForm').append('<tr><th>Name</th><th>Target</th><th>KG</th><th>Rep</th><th>Title</th></tr>')
					$('#BlogForm').append("<tr><td>"+jsonData3[i].name +"</td><td>"+ jsonData3[i].target +"</td><td>"+jsonData3[i].kg +"</td><td>"+jsonData3[i].rep +"</td><td>"+jsonData3[i].title +"</td></tr>")	
				}else if(i==lastNum){
					$('#BlogForm').append("</table>")
				}
				else{
					$('#BlogForm').append("<tr><td>"+jsonData3[i].name +"</td><td>"+ jsonData3[i].target +"</td><td>"+jsonData3[i].kg +"</td><td>"+jsonData3[i].rep +"</td><td>"+jsonData3[i].title +"</td></tr>")	
				}
				
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
<div id = "BlogForm">













</div>

<div align="center">
	<div>
			
	</div>
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