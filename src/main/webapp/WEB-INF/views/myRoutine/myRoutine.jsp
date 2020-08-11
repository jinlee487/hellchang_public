<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Routine</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="resources/jqLib/noobCss.css">
  
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  
  <link rel="stylesheet" type="text/css" href="resources/jqLib/footer_position.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src = "resources/jqLib/jquery-3.2.1.min.js"></script>
  <link rel="stylesheet" type="text/css" href="resources/jqLib/topBar.css">

<style type="text/css">

	.material-icons{
		font-size: 18px;
	}
	
	/* modal 가운데 위치 (Css) */
	.modal {
        text-align: center;
	}
	@media screen and (min-width: 768px) { 
        .modal:before {
                display: inline-block;
                vertical-align: middle;
                content: " ";
                height: 100%;
        }
	}
	.modal-dialog {
        display: inline-block;
        text-align: left;
	}
	/*ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ*/

	.modal-header{
	}
	.modal-content{
		margin: 0 auto;
		width: 300px;
	}
	.modal-footer{
	
	}
	.buttonCss{
		width: 275px;
		
	}
	button{
		background-color: white;
	}
	
	span:hover {
		cursor: pointer;
	}
</style>

<script>
var logID = "${logID}";
var lname;

$(function(){
	console.log("session : "+logID);
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

/* 	$('#testT').click(function(){
		
		var table = document.getElementById("my-tbody");
		var rowsCount = table.rows.length;
		console.log(rowsCount);
		for(var i =1 ; i<=rowsCount; i++){
		var id = logID;
		var name = $('#name'+i).val();
		var target =$('#target'+i).val();
		var kg = $('#kg'+i).val();
		var rep = $('#rep'+i).val();
		console.log(id+" ,"+name+" ,"+target+" ,"+kg+" ,"+rep)
		$.ajax({
			type:'Get',
			url:'myRoutine',
			data:{
				id : id,
				name : name,
				target : target ,
				kg : kg, 
				rep : rep 
				},
			success:function(data){
				console.log("저장중..");
				$('#my-tbody').empty();
				},
			error:function(){
				console.log("저장실패..")
				}	
			}); // ajax
		}
	}); // Test */

	
	$('#addlist').hover(function(){
		$(this).css("cursor", "pointer");
	});
	
	$('#addlist').on("click",function(){
		$('#addlist').css("display","none");
		$('#linput').css("display","block");
	});// ajax
	
	$("#listName").on("click", function(){
		oldTitle = document.querySelectorAll("input.oldTitle");
		lname =  $('.lname').val();
		lname = lname.replace(/ /gi, "");
	
	 	for(var i=0; i<oldTitle.length; i++){
	 		if(lname == oldTitle[i].value){
				alert("중복된 list 이름입니다.");
				$('.lname').val('');
				return;
			}else{
				
		}		
	} 
		
		if(lname.length>0){
			if($('#Privacy').val() == 'true'){
				$('.modal-body').append('<input type="checkbox" onclick="inputList(\''+lname+'\')" class="oldTitle" name="'+lname+'" value="'+lname+'"><label for="'+lname+'">&nbsp;&nbsp;'+ lname 
				+' </label> <i style="vertical-align: sub;" class="material-icons">lock_open</i> <br>');
			}else{
				$('.modal-body').append('<input type="checkbox" onclick="inputList(\''+lname+'\')" class="oldTitle" name="'+lname+'" value="'+lname+'"><label for="'+lname+'">&nbsp;&nbsp;'+ lname 
				+' </label> <i style="vertical-align: sub;" class="material-icons">lock_outline</i> <br>');
				$('.modal-body').append()	
			}
			
			
			$('.lname').val('');
			
			$('#addlist').css("display","block");
			$('#linput').css("display","none");
		}
		if(lname.length<=0){
			alert("list 이름을 적어주세요.");
		}
	});
}); // ready

function inputList(data){
	var table = document.getElementById("my-tbody");
	var rowsCount = table.rows.length;
	var shared = $('#Privacy').val();
	
	console.log(rowsCount);
	
	for(var i =1 ; i<=rowsCount; i++){
		var id = logID;
		var name = $('#name'+i).val();
		var target =$('#target'+i).val();
		var kg = $('#kg'+i).val();
		var rep = $('#rep'+i).val();
		var title = data;
		var shared = shared;
		console.log("data test = > 	 " + data);
		console.log("title test = >  " + title);
	
		/* console.log("check box Test ~~~~~~~~~~~~~~ =>"+$("input:checkbox[id="+title+"]").is(":checked")); */
		//if($("input:checkbox[id="+title+"]").is(":checked")==false){
		if($("input:checkbox[class='oldTitle']").is(":checked")==false){
			$.ajax({
				type:'Get',
				url:'myRoutineDel',
				data:{
					id : id,
					name : name,
					target : target ,
					kg : kg, 
					rep : rep ,
					title : title,
					shared : shared	
					},
				success:function(data){
					console.log("저장 취소");
					alert("저장 취소되었습니다.");
					/* $('#my-tbody').empty(); */
					},
				error:function(){
					console.log("저장 취소 실패..")
					}	
				}); // ajax
			}
		
		if($("input:checkbox[class='oldTitle']").is(":checked")==true){
				$.ajax({
					type:'Get',
					url:'myRoutine',
					data:{
						id : id,
						name : name,
						target : target ,
						kg : kg, 
						rep : rep ,
						title : title,
						shared : shared	
						},
					success:function(data){
						console.log("저장중..");
 						alert("저장 완료되었습니다.");
 						self.close();
						/* $('#my-tbody').empty(); */
						},
					error:function(){
						console.log("저장실패..")
						}	
					}); // ajax	
			}
		
		/* if($("input:checkbox[id=title]").is(":checked") == false){
			$.ajax({
				type:'Get',
				url:'myRoutine',
				data:{
					id : id,
					name : name,
					target : target ,
					kg : kg, 
					rep : rep ,
					title : title,
					shared : shared	
					},
				success:function(data){
					console.log("저장중..");
					$('#my-tbody').empty();
					},
				error:function(){
					console.log("저장실패..")
					}	
				}); // ajax
		} */
	}// for
}
</script>
<script>
$(function(){
	$('.ProRoutine').mouseover(function() {
		var proName = $(this).attr('id');
		$('.DivShow').empty();
		if(proName == 'gil'){
			var routine = '<a href = "#" onclick = "bong1()" >[정봉길] 상체</a><br>';
			routine += '<a href = "#" onclick = "bong2()" >[정봉길] 하체</a><br>';
			$('.DivShow').append(routine)	
		}
		else if(proName == 'kang'){
			var routine = '<a href = "#" onclick = "kmon()" >[강경원] 월요일</a><br>';			
			routine += '<a href = "#" onclick = "ktue()" >[강경원] 화요일</a><br>';
			routine += '<a href = "#" onclick = "kwed()" >[강경원] 수요일</a><br>';
			routine += '<a href = "#" onclick = "kthu()" >[강경원] 목요일</a><br>';
			routine += '<a href = "#" onclick = "kfri()" >[강경원] 금요일</a><br>';
			routine += '<a href = "#" onclick = "ksat()" >[강경원] 토요일</a><br>';
			$('.DivShow').append(routine)	
		}
		else if(proName == 'hwang'){
			var routine = '<a href = "#" onclick = "push3()" >[admin] 밀기</a><br>';
			routine += '<a href = "#" onclick = "leg3()" >[admin] 하체</a><br>';
			routine += '<a href = "#" onclick = "pull3()" >[admin] 당기기</a><br>';
			$('.DivShow').append(routine)
		}
	})
});
function kmon(){
	window.open("https://mblogthumb-phinf.pstatic.net/20160527_241/chosc2000_1464310233790iTGb6_JPEG/1.jpg?type=w2", "myWindow",
	"left=10, top=10, width=500, height=800");
	$('.DivShow').html("");
}
function ktue(){
	window.open("https://mblogthumb-phinf.pstatic.net/20160527_38/chosc2000_1464310233988aYScc_JPEG/2.jpg?type=w2", "myWindow",
	"left=10, top=10, width=500, height=800");
	$('.DivShow').html("");
}
function kwed(){
	window.open("https://mblogthumb-phinf.pstatic.net/20160527_246/chosc2000_1464310234153AOPG0_JPEG/3.jpg?type=w2", "myWindow",
	"left=10, top=10, width=500, height=800");
	$('.DivShow').html("");
}
function kthu(){
	window.open("https://mblogthumb-phinf.pstatic.net/20160527_291/chosc2000_1464310234410vwqzQ_JPEG/4.jpg?type=w2", "myWindow",
	"left=10, top=10, width=500, height=800");
	$('.DivShow').html("");
}
function kfri(){
	window.open("https://mblogthumb-phinf.pstatic.net/20160527_113/chosc2000_1464310234603wRyj6_JPEG/5.jpg?type=w2", "myWindow",
	"left=10, top=10, width=500, height=800");
	$('.DivShow').html("");
}
function ksat(){
	window.open("https://mblogthumb-phinf.pstatic.net/20160527_9/chosc2000_1464310234822bYyKk_JPEG/6.jpg?type=w2", "myWindow",
	"left=10, top=10, width=500, height=800");
	$('.DivShow').html("");
}

function bong1(){
	window.open("resources/image/bong1.PNG", "myWindow",
	"left=10, top=10, width=500, height=800");
	$('.DivShow').html("");
}

function bong2(){
	window.open("resources/image/bong2.PNG", "myWindow",
	"left=10, top=10, width=500, height=800");
	$('.DivShow').html("");
}

function push3(){
	window.open("resources/image/push3.PNG", "myWindow",
	"left=10, top=10, width=500, height=800");
	$('.DivShow').html("");
}

function leg3(){
	window.open("resources/image/leg3.PNG", "myWindow",
	"left=10, top=10, width=500, height=800");
	$('.DivShow').html("");
}

function pull3(){
	window.open("resources/image/pull3.PNG", "myWindow",
	"left=10, top=10, width=500, height=800");
	$('.DivShow').html("");
}


</script>
</head>
<body style="background-color: #ffffff">

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

<div class="jumbotron" style="background-color: #ffffff">
  <div class="container text-center" id = "div1" >
    <h3>Shared Routine</h3>
    
       
	<div class="col-sm-4">
      <p class="text-center">
      <div class = "ProRoutine" id ="gil">    
      <img src="resources/image/bong.jpg" width="300" height="450" >
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
  	
    
   <br>	 
<div align="center" >
<table id = "mytest" border="1" style="width: 739px; height: 56px;">
  <thead align="center">
    
	<tr align="center">
	<td width="93" height="28">Target</td>
    <td width ="200">List</td>
    <td width="175">KG</td>
    <td width="175">REP</td></tr>
  </thead>
  <tbody id="my-tbody"></tbody>
</table>
<br><br>
<select id = "targetT" style="width: 85px;">
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
<select id="targetingT" name="targetingT" style="width: 125px;">
	<option>--------------------</option>
</select>
   
<button onclick="add_row()" style="width: 122px">+</button>
<button onclick="delete_row()" style="width: 122px">-</button>
<button class="buttonCss" type="button" data-toggle="modal" data-target="#myModal">Save</button>

<div style="height: 10px;"></div>
<br>
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
  <div class="row"></div>
</div><br><br>
<br><br><br><br><br><br><br><br><br><br><br><br>
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
<!--ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ modal ver ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ --> 
  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog ">
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">List</h4>
        </div>
        <div class="modal-body" >
        	<c:forEach var="list" items="${list}">
        		<c:if test="${logID eq list.id}">
        			<input type="checkbox" onclick="inputList('${list.title}')" class="oldTitle" name="${list.title}" value="${list.title}"><label for="${list.title}">&nbsp;&nbsp;${list.title}</label>
        			<c:if test="${list.shared == false }">
						<i style="vertical-align: sub;" class="material-icons">lock_outline</i>    				
        			</c:if>
        			<c:if test="${list.shared == true }">
						<i style="vertical-align: sub;" class="material-icons">lock_open</i>        				
        			</c:if>
        			<br>
        		</c:if>
        	</c:forEach>
        </div>
        <div class="modal-footer">
        	<span id="addlist" style="display: block;">리스트 추가하기</span>
        	<div id="linput" style="display: none;">
          		<span style="text-align: left">이름</span><br>
          		<input type="text" style="width: 100%" class="lname" placeholder="list 이름 입력">
          		<br><br>
      			<span style="text-align: left">공개 범위 설정</span><br>
          		<select id="Privacy" style="width: 100%">
          			<option value="true">공개</option>
          			<option value="false">비공개</option>
          		</select>
          	 	<span id="listName" style="text-align: center">Add</span>
          	</div>
        </div>
      </div>
    </div>
  </div>
</body>
</html>
