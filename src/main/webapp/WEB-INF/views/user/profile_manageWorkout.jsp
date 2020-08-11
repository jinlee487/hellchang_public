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
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">  
<link rel="stylesheet" type="text/css" href="resources/jqLib/footer_position.css">
<link rel="stylesheet" type="text/css" href="resources/jqLib/topBar.css">
<link rel="stylesheet" type="text/css" href="resources/jqLib/profile_image.css">
<script>
var logID = "<%=session.getAttribute("logID") %>"
console.log("session : "+logID);

$(function(){
	$('#dateInfo').change(function(){
	var dateTest = $('#dateInfo').val();
	console.log("dateTest : " + dateTest);
	$.ajax({
	type:'Get',
	url:'mySaveRoutine',
	data:{
		id : logID,
		date: dateTest
		},
	success:function(data){
		$('#RoutineTable').empty();
		jsonData = data.myInfo;
		for(var i = 0; i<Object.keys(jsonData).length; i++){
			var option = $('<tr><td>'+ jsonData[i].name+'</td><td>'+jsonData[i].target+'</td><td>'+ jsonData[i].kg+'</td><td>'+jsonData[i].rep+'</td></tr>');
			$('#RoutineTable').append(option);
		}
		},
	error:function(){
		alert("실패")
		}
		}); // ajax
	}); // alogin_click	
});

</script>


<style>

  @media (min-width: 768px){
	.col-sm-4 {
	  /* margin-left: 200px; */
	  text-align: center;
	}
.analysis-title{
text-align: left;
}
.table {
     border-collapse: collapse;
     border-top: 3px solid #168;
}  
.table th {
     color: #168;
     background: #f0f6f9;
     text-align: center;
}
.table th, .table td {
     padding: 10px;
     border: 1px solid #ddd;
}
.table th:first-child, .table td:first-child {
     border-left: 0;
}
.table th:last-child, .table td:last-child {
     border-right: 0;
}
.table tr td:first-child{
     text-align: center;
}
.table caption{caption-side: bottom; display: none;}

 
</style>

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
    <div class="col-sm-7 ">
      <div class="row">
        <div class="col-sm-12" align="center">
           <div class="panel-group">
		    <div class="panel panel-default">
		    	<div class="panel-heading">
			        <h4 class="panel-title analysis-title" align="center">
			        	<input type ="date" id = "dateInfo">
          			</h4>
       			</div>
   			</div>        
     	 </div>
        <div class = "showMyinfo" align="center">
		   <table class="table">
		   <thead>
		   <tr style="font-weight: bolder;">
		   <th width="150">Name</th><th width="150">Targeting</th>
		   <th width="50">kg</th><th width="50">rep</th>
		   </tr>
		   </thead>
		   <tbody id = "RoutineTable"></tbody>
		   </table>
		</div>
 
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
        <p>ADS</p>
      </div>
      <div class="well">
        <p>ADS</p>
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
