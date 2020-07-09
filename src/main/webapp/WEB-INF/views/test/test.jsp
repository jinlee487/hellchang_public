<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Routine</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src = "resources/jqLib/jquery-3.2.1.min.js"></script>
  <script src = "resources/jqLib/popUp.js"></script>
  <link rel="stylesheet" type="text/css" href="resources/jqLib/topBar.css">
  <link rel="stylesheet" type="text/css" href="resources/jqLib/footer_position2.css"> 
  <link rel="stylesheet" type="text/css" href="resources/jqLib/noobCss.css">

<script>
$(function(){
	$('#targetT').change(function(){
	console.log("test : " + $('#targetT').val());
	$.ajax({
	type:'Get',
	url:'exercise',
	data:{
		target:$('#targetT').val()
		},
	success:function(data){
		jsonData = data.target;
		
		$('#targetingT').empty();
		$('#targetingT').append("<option>--------------------</option>");
		for(var i = 0; i<Object.keys(jsonData).length; i++){
			var option = $('<option value = "'+ jsonData[i].name+'" >'+jsonData[i].name+'</option>');
			$('#targetingT').append(option);
		}
		},
	error:function(){
		var eMessage ="<b> 오류 발생  다시 하세요 ~~ </b>";
		$('#resultArea').html(eMessage);
		}	
		}); // ajax
	}); // alogin_click	
	
	$('#testT').click(function(){
		
		var table = document.getElementById("my-tbody");
		var rowsCount = table.rows.length;
		for(var i =0 ; i<=rowsCount; i++){
		var id = "test";
		var name = $('#name'+i).val();
		var target =$('#target'+i).val();
		var kg = $('#kg'+i).val();
		var rep = $('#rep'+i).val();
		console.log(id+" ,"+name+" ,"+target+" ,"+kg+" ,"+rep)
		
		$.ajax({
			type:'Get',
			url:'myRoutine',
			async:false,
			data:{
				id : id,
				name : name,
				target : target ,
				kg : kg, 
				rep : rep 
				},
			
			success:function(data){
				console.log("저장중..")
				},
			error:function(){
				console.log("저장실패..")
				}	
			}); // ajax
		}
	}); // Test
});

</script>
<script>
$(function(){
	$('.ProRoutine').mouseover(function() {
		var proName = $(this).attr('id');
		$('.DivShow').empty();
		if(proName == 'lion'){
			var routine = "잠시 대기" 
			$('.DivShow').append(routine)	
		}
		else if(proName == 'kang'){
			$('.DivShow').append("Kang")	
		}
		else if(proName == 'hwang'){
			$('.DivShow').append("hwang")	
		}	
	})
});
</script>
</head>
<body style="background-color: white">

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="home"> 
      <img src = "resources/image/logo.jpg" width="80" height="25">
      </a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="noob">Noob</a></li>
        <li><a href="routine">Routine</a></li>
        <li><a href="#">Blog</a></li>
        <li><a href="inbodyf">Inbody</a></li>
        <li><a href="one">1RM</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav> 

<div class="jumbotron">
  <div class="container text-center" id = "div1" >
    <h3>Shared Routine</h3>
    
       
	<div class="col-sm-4">
      <p class="text-center">
      <div class = "ProRoutine" id ="lion">    
      <img src="resources/image/lion.jpg" width="300" height="450" >
      </div>
    </div>
    
    
    <div class="col-sm-4">
      <p class="text-center">
      <div class = "ProRoutine" id ="kang">   
      <img src = "resources/image/kang.jpg" width="300" height="450" >
      </div>
    </div>
    
    
    <div class="col-sm-4">
      <p class="text-center">
      <div class = "ProRoutine" id ="hwang">   
      <img src = "resources/image/hwang.jpg" width="300" height="450" >
      </div>
    </div>
   <div align="center" class="DivShow" >

	</div> 
  </div>
  
</div>


<div class="container-fluid bg-3 text-center">    
  <div class="row">
  	<select id = "targetT">
     <option>-------------
     <option value = "chest" >Chest
     <option value = "back"  >Back
     <option value = "leg" >Leg
     <option value = "sholder">Sholder
     <option value = "biceps">biceps
     <option value = "triceps">triceps
     <option value = "abs" >abs
     <option value = "aerobic">aerobic
     <option value = "core">core
     
     
     </select>
     <select id="targetingT" name="targetingT">
     <option>--------------------</option>
     </select>
    
   <button onclick="add_row()" style="width: 75px">+</button>
   <button onclick="delete_row()" style="width: 75px">-</button>
<br><br>	 
<div align="center">
<table id = "mytest" border="1">
  <thead align="center">
    
	<tr align="center">
	<td width="93" height="28">Target</td>
    <td width ="200">List</td>
    <td width="175">KG</td>
    <td width="175">REP</td></tr>
  </thead>
  <tbody id="my-tbody"></tbody>
  <button id = "testT">Save</button>
  <button>Shared</button><br><br>
</table>
</div>
<script>
function add_row() {
	
    var my_tbody = document.getElementById('my-tbody');
    // var row = my_tbody.insertRow(0); // 상단에 추가
    var target = document.getElementById("targetT").value;
    var targeting = document.getElementById("targetingT").value;
    console.log("target : " + target + "targeting : "+ targeting);
    var row = my_tbody.insertRow( my_tbody.rows.length ); // 하단에 추가
    var num = my_tbody.rows.length;
    var cell0 = row.insertCell(0);
    var cell1 = row.insertCell(1);
    var cell2 = row.insertCell(2);
    var cell3 = row.insertCell(3);
    
    
	cell0.innerHTML =
'<input type = "text" value = "'+target+'" readonly class = "target" id = "target'+num+'">';
	cell1.innerHTML =
'<input type = "text" value = "'+targeting+'" readonly style="width: 200px;" class = "name"  id = "name' + num + '">';

    cell2.innerHTML = 
'<input type = "text" class = "kg" id = "kg'+num+'">';

    cell3.innerHTML = 
'<input type = "text" class = "rep" id = "rep'+num+'">';
	

}

function delete_row() {
    var my_tbody = document.getElementById('my-tbody');
    if (my_tbody.rows.length < 1) return;
    // my_tbody.deleteRow(0); // 상단부터 삭제
    my_tbody.deleteRow( my_tbody.rows.length-1 ); // 하단부터 삭제
  }
</script>      
  
  
    
  </div>
</div><br>

<div class="container-fluid bg-3 text-center">    
  <div class="row">
  	
  	
  	
  	
  </div>
</div><br><br>

<div id="footer" role="contentinfo">
<!-- <hr style="width: 100%;">
<hr style="width: 100%; border-color: black;"> -->
		<address>
			<em><a href="home" target="_blank" class="logo footfont"><span class="blind">HellChang</span></a></em>
			<em class="copy footfont">Copyright</em>
			<em class="u_cri footfont">©</em>
			<a href="home" target="_blank" class="u_cra footfont">HellChang Corp.</a>
			<span class="all_r footfont" >All Rights Reserved.</span>
		</address>
</div>
</body>
</html>
