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
.img{
    	width: 50%;
    	margin: 0;
    padding: 0;
    border: 0;
    font: inherit;
    vertical-align: baseline;
    border-radius: 50%;
    
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
<div align="center" style="width: 100%">
<table border = '0'>
<tr align="left" style="vertical-align: middle;">
<td colspan="3" >
<img class="img" alt="프로필 사진 바꾸기" src="${myImage }" width="25%" height="100%">
123</td>
</tr>
<c:forEach items="${myInfo}" var="titleList" varStatus="status">
   <td width="200" height="150" align="center" style="font-size: large;">
   <a href = #>${titleList.title }</a>
   <c:if test="${status.count % 3 ==0}">
   </tr>
   </c:if>
   </td>
</c:forEach>
</table>
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