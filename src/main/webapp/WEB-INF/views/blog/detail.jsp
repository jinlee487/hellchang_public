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
html, body {
height: 100%;
margin: 0px;
}
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
.sendR{
	color: rgb(0, 149, 246);
	font-weight: bold;
	background-color: white;
	border: 0;
	padding-top: 16px;
	padding-bottom: 16px;
	vertical-align: middle;
}
textarea{
	border : 0px;
	outline: none;
	resize: none;
	min-height: 18px;
	max-height: 72px;
	padding-top: 16px;
	padding-bottom: 16px;
	background-origin: padding-box;
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
.parent {
    display: flex;
    height : 96%;
}
.child {
	margin-right : 5px;
	margin-left : 5px;
	width : 30%;
    flex: 1;
    vertical-align: middle;
}
.myPhoto{
	border-radius: 50%;
}

.myButton {
	background-color:#e7f5e9;
	width : 100%;
	border-radius:36px;
	border:1px solid #f0f0f0;
	display:inline-block;
	cursor:pointer;
	color:#5e545e;
	font-family:Verdana;
	font-size:16px;
	font-style:italic;
	padding:32px 76px;
	text-decoration:none;
	text-shadow:3px 2px 4px #929492;
	margin-right: 3px;
}
.myButton:hover {
	background-color:#ffffff;
}
.myButton:active {
	position:relative;
	top:1px;
}

.profile {
	background-color:#000000;
	border-radius:12px;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:17px;
	padding:3px 8px;
	text-decoration:none;
	text-shadow:0px 0px 0px #2f6627;
}
.profile:hover {
	background-color:#000000;
}
.profile:active {
	position:relative;
	top:1px;
}

</style>
<script type="text/javascript">
var logID = "<%=session.getAttribute("logID") %>"
console.log("session : "+logID);

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
<div class = "form" align="center" style="width: 100%; vertical-align: middle;">
<table>
<tr align="left" style="vertical-align: middle;" height="200px">
<td colspan="1"  align="center">
<img class="myPhoto" alt="프로필 사진 바꾸기" src="${myImage }" width="100px" height="100px">
</td>
<td colspan="2" align="left">
&nbsp;&nbsp;${myId}&nbsp;&nbsp;&nbsp;<a href ="updatef" class ="profile">update</a><br>
&nbsp;&nbsp;게시글 : ${countRoutine}<br>
</td>
</tr>
<c:forEach items="${myInfo}" var="titleList" varStatus="status">
   <td width="200" height="150" align="center" style="font-size: large;">
   <button class = "myButton" data-toggle="modal" id = "${titleList.title }" onclick="showModal('${titleList.id}', '${titleList.title }')">${titleList.title }</button> 
   <c:if test="${status.count % 3 ==0}">
   </tr>
   </c:if>
   </td>
</c:forEach>
</table>
</div>
<script>
var Userid = "";
var Usertitle = "";
function showModal(id,title) {
	$.ajax({
		type:'Get',
		dataType : "json",
		url:'routineDetail',
		data : {
			id : id,
			title : title
		},
		success:function(data){
			arrayReply = data.arrayReply
			arrayModal = data.arrayModal;
			Userid = arrayModal[0].id;
			Usertitle = arrayModal[0].title;
			var modalT = "";
			modalT += "<div  style='overflow: auto; width:105%; height:400px;'>"
			modalT += "<table class = 'table' border = '0' width = '100%'";
			modalT += "<tr align = 'center'><th>Name</th><th>Target</th><th>Kg</th><th>Rep</th><th>Title</th></tr>"
			
			for(var i = 0; i<data.num; i++){
				modalT += "<tr align = 'center'><td>"+arrayModal[i].name+"</td><td>"+arrayModal[i].target+"</td><td>"+arrayModal[i].kg+"</td><td>"+arrayModal[i].rep+"</td><td>"+arrayModal[i].title+"</td></tr>"
			}
			
			var modalSide = "ID : "+arrayModal[0].name+"<br>Title : "+Usertitle +"<hr>";
			modalSide += "<span class = 'heart'><img src = 'resources/image/heart.png'>"+data.heartCnt+"</span><br><hr>";
			for(var i = 0; i<data.replyCnt; i++){
				modalSide += "<img src = "+ arrayReply[i].userImage+" class = 'myPhoto' width =25px height = 25px >"  + arrayReply[i].userName + " : " + arrayReply[i].replyContent+"<br>"
			}
			modalSide += "<textarea style='vertical-align: bottom; width: 90%;' rows='1' placeholder='댓글달기...'></textarea>"
			modalT += "</table>";
			modalT += "</div>"
			$('#content').html(modalT);
			$('#modalSide').html(modalSide);
			$("#myModal").modal('show');
		},
		error:function(){
		}
	}); // ajax 
}

$(document).on("click",".heart", function(){
    console.log(Userid);
    console.log(Usertitle);
    $.ajax({
		type:'get',
		url : "heartUp",
		data:{
			id : Userid,
			title: Usertitle
		},
		success:function(data){
			data.countHeartTest;
			console.log(data.countHeartTest)
			$('.heart').html("<img src = 'resources/image/heart.png'>"+data.countHeartTest)
		}, // success
		error:function(){
			alert("Error")
		}
	}) // ajax
	
}) // heart_click 이벤트
</script>

<!-- Modal 시험중  -->
<div class="container">
  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog" style="min-width: 75%; height: 500px;"  >
      <!-- Modal content-->
      <div class="modal-content parent"  style="width: 100%">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title" id="title"></h4>
        </div>
        <div class="modal-body child" style="width: 75%">
          <p id="content"></p>
        </div>
        <div class="modal-body child" style="width: 25%">
          <p id="modalSide"></p>
          <div style="position: absolute; right: 5px; bottom: 5px;" >
          <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
		  </div>
        </div>
      </div>
    </div>
  </div>  
</div>
</body>
</html>