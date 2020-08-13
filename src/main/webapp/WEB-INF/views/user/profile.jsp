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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="resources/jqLib/jquery-3.2.1.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script  src="https://www.gstatic.com/charts/loader.js"></script>
<link rel="stylesheet" type="text/css" href="resources/jqLib/footer_position.css">
<link rel="stylesheet" type="text/css" href="resources/jqLib/topBar.css">
<link rel="stylesheet" type="text/css" href="resources/jqLib/profile_image.css">
<script src="resources/jqLib/profile_profile_script.js"></script>


<style>
@media (min-width: 768px){
	.col-sm-4 {
	  /* margin-left: 200px; */
	  text-align: center;
	}
#dddd > li:hover {
   background-color: #eee;
   color: blue;
   font-weight: bold;
   cursor: pointer;
}
#table_row tr:nth-child(even) {
  background-color: #f5f5f5;
}
</style>
</head>
<body >

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
  
<div class="container text-center" style="margin-top:100px" >    
  <div class="row">
    <div class="col-sm-3 well">
      <div class="well">
        <a href="mdetail?code=U"><span>My Profile</span><br>
        <button class="bEffect" title="프로필 사진 바꾸기">
        	<img id="aa" src="${profile_image}" class="img-circle" height="100" width="100" alt="프로필 사진 바꾸기">
        </button></a>
        </div>
		<ul class="nav nav-pills nav-stacked">
		  <li><a href="prof">Start Workout</a></li>
		  <li><a href="manageWorkout">Manage Workout</a></li>
		  <li><a href="inbodyf">InBody</a></li>
		  <li><a href="dietf">Diet</a></li>
		  <li><a href="socialf">Social</a></li>    
		</ul>
    </div>
    <div class="col-sm-7">    
      <div class="row">
        <div class="col-sm-12">
           <div class="panel-group">
		    <div class="panel panel-default">
		    	<div class="panel-heading">
			        <h4 class="panel-title">
			          <ul class="pager">
			            <li><a data-toggle="collapse" href="#collapse1"><span id="list_title"></span>
			            	<span id="results_sign" class="glyphicon glyphicon-collapse-down"></span></a></li></ul></h4>
			      </div>
		      <div id="collapse1" class="panel-collapse collapse">
		        <ul class="list-group" style="text-align: center;display:inline-block;padding: 5px 14px;
		                               background-color: #fff;border: 1px solid #ddd;border-radius: 15px;" id="dddd">		                               
		        </ul>
		        </div>
		        <div class="panel-footer"></div>
		      </div>
		    </div>	    
            <table class="columns"  style="border-collapse:collapse; table-layout:fixed;width:100%;" >
            <thead>
          	  <tr height=30 bgcolor="#f5f5f5"><th style="text-align:center;">name</th><th style="text-align:center;">target</th>
          	  <th style="text-align:center;">weight</th><th style="text-align:center;">rep</th><th style="text-align:center;">Check</th></tr>
             </thead>
 			 <tbody id="table_row">
		      </tbody>
		    </table><br><br>  
        </div>
      </div>
    </div>
    <div class="col-sm-2 well" style="margin-top: 100px">
      <div class="thumbnail">
        <p><strong>Map Your Runs</strong></p>
        <img src="resources/image/runapp.JPG" width="400" height="300">
        <p>Coming Soon!</p>
      </div>      
      <div class="well">
       <p><strong>Learn new work out tips at the Noob menu!</strong></p>
      </div>
      <div class="well">
        <p><strong>Create new playlists in Routine menu!</strong></p>
      </div>
      <div class="well">
        <p><strong>Insert inbody Data in InBody menu!</strong></p>
      </div>
    </div>
  </div>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
</div>

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

<script type="text/javascript">
</script>
</body>
</html>
