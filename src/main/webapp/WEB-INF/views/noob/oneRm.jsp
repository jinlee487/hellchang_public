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
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="resources/jqLib/jquery-3.2.1.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css" href="resources/jqLib/topBar.css">
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
  </script>
  <style>
    
  @media (min-width: 768px){
	.col-sm-4 {
	  /* margin-left: 200px; */
	  text-align: center;
	}
button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 30%;
  opacity: 0.9;
}

button:hover {
  opacity:1;
}
.cancelbtn {
  padding: 14px 20px;
  background-color: #f44336;
  text-align: center;
  border-radius: 8px
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
  float: center;
  width: 60%;
  text-align: center;
  border-radius: 8px
}	
.signupbtn1{
 float: center;
  width: 50%;
  text-align: center;
  border-radius: 8px
}
.tablink{
  float: center;
  width: 10%;
  text-align: center;
  border-radius: 8px;
 
  
}
.tab{
	 text-align: center;
}
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

  

<div class="container text-center">    
  <h2>1RM</h2><br> 
  <div class="row">
    <div class="col-sm-4" style="display: inline-block; margin: 0 0 0 17%; ">
    <h3>INPUT</h3>
       		<label for="KG" class="int">KG</label><br>
       		<input  style="width: 60%; padding: 15px;  display: inline-block; border: none; background: #f1f1f1; border-radius: 8px" type="text"  placeholder="무게를 입력하세요." id="kg" ><br>
       		<label for="REP" class="int">REP</label><br>
       		<input  style="width: 60%; padding: 15px;  display: inline-block; border: none; background: #f1f1f1; border-radius: 8px" type="text"  placeholder="개수를 입력하세요." id="rep">
       		<br>
       		<button type="button" class="signupbtn" onclick="rm()">결과확인</button>
    </div>
    <div class="col-sm-4" style="display: inline-block; margin: 0; ">
       <h3>RESULT</h3>
       <c:forEach begin="1" end="10" varStatus="status">
	   			<%-- <output class="num${status.count} " ></output>
	   			<output class="result${status.count}"></output> --%>
	   			 <table style="text-align: center;">
	   				<tr>
	   				</tr>
	   				<tr>
	   					<td style="border: ; text-align:center; width: 178px; height: 26px; " class="num${status.count}"></td>
	   					<td style="border: ; text-align:center; width: 178px; height: 26px; " class="result${status.count}"></td>
	   				</tr>
	   			</table>
	   </c:forEach>
    </div>
    
  </div>
</div><br>    

  <div class="col-sm-7 inbodycontent" style="width: 100%" align="center">
 				<div class="tab">	
 					 <h2>3대 중량 입력</h2>
 					 </div>
      <div class="row">
        <div class="col-sm-12 tabcontent" id="saveMyRM">
             <div class="container text-center">    
 		 <h3><input type = "date" id = "date"></h3><br> 
       		<label for="Bench" class="int">Dead</label><br>
       		<input  style="width: 50%; padding: 15px;  display: inline-block; border: none; background: #f1f1f1; border-radius: 8px" type="text"  placeholder="무게를 입력하세요." id="Dead" ><br>
       		<label for="Dead" class="int">Bench</label><br>
       		<input  style="width: 50%; padding: 15px;  display: inline-block; border: none; background: #f1f1f1; border-radius: 8px" type="text"  placeholder="무게를 입력하세요." id="Bench"><br>
       		<label for="Sq" class="int">Sq</label><br>
       		<input  style="width: 50%; padding: 15px;  display: inline-block; border: none; background: #f1f1f1; border-radius: 8px" type="text"  placeholder="무게를 입력하세요." id="Sq">
       		<br>
       		<button type="button" class="signupbtn1" id="saveResult">save</button><br>
       		<button type="button" class="signupbtn1" id="showResult">show</button>
    		</div>
        </div>
       </div>
     </div>
     <div style="display: inline-block; margin: 0; width: 100%" align="center">
      	<label for="gra" class="int">3대 중량 그래프</label>
	   <div id="chart_div" style="width: 75%; height: 400px;"></div>
	   <span class="glyphicon glyphicon-chevron-left" id = "afterData"></span>
       <span class="glyphicon glyphicon-chevron-right" id = "beforeData"></span>
    </div>

    
  <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
$(function(){
	var logID = "<%=session.getAttribute("logID") %>"
	console.log("session : "+logID);
	var nowdate = "";
      $('#saveResult').click(function() {
    	  var bench = $('#Bench').val();
    	  var dead = $('#Dead').val();
    	  var squat = $('#Sq').val();
    	  var date = $('#date').val();
    	  $.ajax({
      		type:'get',
      		url : 'saveMyRM',
      		data :{
      			bench : bench,
      			dead : dead,
      			squat : squat,
      			id : logID,
      			date : date
      		},
      		success:function(data){
      			 alert("저장완료");
      			 $('#Bench').val("");
      	    	 $('#Dead').val("");
      	    	 $('#Sq').val("");
      	    	 $('#date').val("");      			
      		}, // success
    		error:function(){
     			
     		}
     		}) // ajax
      }) // click
      
      $('#showResult').click(function() {
    	  var date = new Array();
    	  var bench = new Array();
    	  var dead = new Array();
    	  var squat = new Array();
    	  var total = new Array();
    	  
    	  $.ajax({
      		type:'Post',
      		url : 'showMyRM',
      		dataType: "json",
      		data :{
      			id : logID,
      		},
      		success:function(data){
      			jsonData = data.myList;
      			for(var i=0; i<Object.keys(jsonData).length; i++){
      				date[i] = jsonData[i].date;
      				bench[i] = jsonData[i].bench;
      				dead[i] = jsonData[i].dead;
      				squat[i] = jsonData[i].squat;
      				total[i] = bench[i] + dead[i] + squat[i]
      				lastdate = jsonData[Object.keys(jsonData).length-1].date;
      				nowdate = jsonData[0].date;
      			}
      			var arr = [
      				['date', 'bench', 'dead', 'squat', 'total'],
      				[date[0], bench[0], dead[0], squat[0], total[0]],
      				[date[1], bench[1], dead[1], squat[1], total[1]],
      				[date[2], bench[2], dead[2], squat[2], total[2]]
      				];
   			var dataTable = google.visualization.arrayToDataTable(arr);
   			var options = {
   		          title : '3대 1RM Total',
   		          vAxis: {title: 'KG'},
   		          hAxis: {title: 'Week'},
   		          seriesType: 'bars',
   		          series: {3: {type: 'line'}}        };

      		var objDiv = document.getElementById('chart_div');
      		var chart = new google.visualization.ColumnChart(objDiv);
      		chart.draw(dataTable, options);		
      		}, // success
    		error:function(){
     			alert("!")
     		}
     		}) // ajax
      }) // click
      $(document).on("click","#beforeData", function(){
    	    console.log("t"+ nowdate);
    	    var bench = new Array();
      	    var dead = new Array();
      	    var squat = new Array();
      	    var total = new Array();
    	    $.ajax({
    			type:'Post',
    			url : 'beforeData',
    			data : {
    				date : nowdate
    			},
    			success:function(data){
    				jsonData = data.myList;
    				console.log(jsonData);
          			for(var i=0; i<Object.keys(jsonData).length; i++){
          				date[i] = jsonData[i].date;
          				bench[i] = jsonData[i].bench;
          				dead[i] = jsonData[i].dead;
          				squat[i] = jsonData[i].squat;
          				total[i] = bench[i] + dead[i] + squat[i]
          				nowdate = jsonData[0].date;
          				lastdate = jsonData[2].date;
          			}
          			var arr = [
          				['date', 'bench', 'dead', 'squat', 'total'],
          				[date[0], bench[0], dead[0], squat[0], total[0]],
          				[date[1], bench[1], dead[1], squat[1], total[1]],
          				[date[2], bench[2], dead[2], squat[2], total[2]]
          				];
       			var dataTable = google.visualization.arrayToDataTable(arr);
       			var options = {
       		          title : '3대 1RM Total',
       		          vAxis: {title: 'KG'},
       		          hAxis: {title: 'Week'},
       		          seriesType: 'bars',
       		          series: {3: {type: 'line'}}        };

          		var objDiv = document.getElementById('chart_div');
          		var chart = new google.visualization.ColumnChart(objDiv);
          		chart.draw(dataTable, options);
    				
    				
    			}, // success
    			error:function(){
    				alert("f")
    			}
    		}) // ajax
    	}) // >버튼 이벤트
    	$(document).on("click","#afterData", function(){
    	    var bench = new Array();
      	    var dead = new Array();
      	    var squat = new Array();
      	    var total = new Array();
    	    $.ajax({
    			type:'Post',
    			url : 'afterData',
    			data : {
    				date : lastdate
    			},
    			success:function(data){
    				jsonData = data.myList;
    				console.log(jsonData);
          			for(var i=0; i<Object.keys(jsonData).length; i++){
          				date[i] = jsonData[i].date;
          				bench[i] = jsonData[i].bench;
          				dead[i] = jsonData[i].dead;
          				squat[i] = jsonData[i].squat;
          				total[i] = bench[i] + dead[i] + squat[i]
          				nowdate = jsonData[0].date;
          				lastdate = jsonData[2].date;
          			}
          			var arr = [
          				['date', 'bench', 'dead', 'squat', 'total'],
          				[date[0], bench[0], dead[0], squat[0], total[0]],
          				[date[1], bench[1], dead[1], squat[1], total[1]],
          				[date[2], bench[2], dead[2], squat[2], total[2]]
          				];
       			var dataTable = google.visualization.arrayToDataTable(arr);
       			var options = {
       		          title : '3대 1RM Total',
       		          vAxis: {title: 'KG'},
       		          hAxis: {title: 'Week'},
       		          seriesType: 'bars',
       		          series: {3: {type: 'line'}}        };

          		var objDiv = document.getElementById('chart_div');
          		var chart = new google.visualization.ColumnChart(objDiv);
          		chart.draw(dataTable, options);
    			}, // success
    			error:function(){
    				alert("f")
    			}
    		}) // ajax
    	}) // < 버튼 이벤트
});
</script>
</body>
</html>
