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
</style>
<script type="text/javascript">
var logID = "<%=session.getAttribute("logID") %>"
console.log("session : "+logID);
$(function(){
	var cnt = 0;
	var last = 0;
	var rowcnt = 0;
	$.ajax({
		type:'Get',
		dataType : "json",
		url:'blogTest',
		success:function(data){
			var nowID = "";
			var nowTitle = "";
			var num = data.num;
			console.log(num);
			/* 한페이지당 blog 개수 j  */
			for(var j=0; j<num; j++){
				var lastNum = 0;
				if(cnt == 0){jsonData = data.forName0; heartCnt = data.heart0; nowReply = data.Reply0}
				else if(cnt == 1){jsonData = data.forName1; heartCnt = data.heart1; nowReply = data.Reply1}
				else if(cnt == 2){jsonData = data.forName2; heartCnt = data.heart2; nowReply = data.Reply2}
				else if(cnt == 3){jsonData = data.forName3; heartCnt = data.heart3; nowReply = data.Reply3}
				else if(cnt == 4){jsonData = data.forName4; heartCnt = data.heart4; nowReply = data.Reply4}
				lastNum = Object.keys(jsonData).length;
				var appendT = "";
				/* 본문 출력 i  */
				appendT += "<table class = 'table'>"
				rowcnt = 0;							     /* 중  */
				for(var i = 0; i<Object.keys(jsonData).length; i++){		
					if(i==0){
						appendT += '<tr style="margin-left: 5px; font-size: medium; font-weight: bold;"><td><a href = "detail?id='+jsonData[i].id+'"><img src = "'+jsonData[i].userImage+'" class = "myPhoto"></a></td><td colspan = "2"><br>Title : '+jsonData[i].title+'<br>Name : '+jsonData[i].userName+'<br>Date : '+jsonData[i].date+'</td><td colspan ="3"></td></tr>'
						appendT += '<tr><th>Name</th><th>Target</th><th>KG</th><th>Rep</th><th>Title</th></tr>'
						appendT += "<tr><td>"+jsonData[i].name +"</td><td>"+ jsonData[i].target +"</td><td>"+jsonData[i].kg +"</td><td>"+jsonData[i].rep +"</td><td>"+jsonData[i].title +"</td></tr>"							
					}else if(i!=0 || i!=lastNum){
						appendT += "<tr><td>"+jsonData[i].name +"</td><td>"+ jsonData[i].target +"</td><td>"+jsonData[i].kg +"</td><td>"+jsonData[i].rep +"</td><td>"+jsonData[i].title +"</td></tr>"
					}else if(i==lastNum){
						appendT += "<tr><td>"+jsonData[i].name +"</td><td>"+ jsonData[i].target +"</td><td>"+jsonData[i].kg +"</td><td>"+jsonData[i].rep +"</td><td>"+jsonData[i].title +"</td></tr>"
					}
					nowTitle = jsonData[i].title ;     /* 현재 출력하는 피드의 이름 */
					nowID = jsonData[i].id;           /* 현재 출력하는 피드의 주인 */
					nowSeq = jsonData[i].seq
					rowcnt ++;
				} // for_iMb
				var nowName = nowID.substring(0,nowID.lastIndexOf("@"));
				var nowReplyT = nowName+nowTitle;
				console.log("logId :"+logID.length);
				if(logID.length != 4){
					appendT += "<tr><td><span class = 'heart "+ nowID+" "+nowTitle+"' id ='heart"+nowSeq+"'><img src = 'resources/image/heart.png'>"+heartCnt+"</span><span id = 'cnt"+nowSeq+"'></span></td>"
					if(nowReply.replyId == null && nowReply.replyContent == null ){
						appendT += "<td colspan='4' id ='reply"+nowSeq+"'></td></tr>";
					}else{
						console.log("nowReply" +nowReply);
						appendT += "<td colspan='4' id ='reply"+nowSeq+"'>"+nowReply.replyId +" : "+ nowReply.replyContent+"</td></tr>";
					}
					appendT += "<tr><td colspan ='4'><form><textarea class = 'replyArea "+nowTitle+"' id ='text"+nowSeq+"'  style='vertical-align: bottom; width: 90%;' rows='1' placeholder='댓글달기...'></textarea>"
					appendT += "<td><button disabled class='sendR "+nowID+" "+nowName+" "+nowTitle+"' id ='button"+nowSeq+"'>게시</button></td></tr></table>"
				}else{
					console.log(j + ' ???')
				}
				$('.blogForm').append(appendT)
				cnt ++;
			} // for_j 
		},
		error:function(){
		}
	}); // ajax 
$(window).scroll(function(){ 
	console.log("$(document).height() "+ $(document).height())
	console.log("$(window).scrollTop() + $(window).height() "+ $(window).scrollTop() + $(window).height())
	if($(document).height() <= $(window).scrollTop() + $(window).height()){	
			loadNext(); 
	}
	function loadNext(){
		console.log("2")
		/* cnt = 한 페이지에 출력되는 개수 확인하기 위해 사용 */
		var cnt = 0;
		var nowID = "";
		var nowTitle = "";
		console.log("row cnt 출력 =>" +	rowcnt);
		$.ajax({
			type:'Get',
			url : "scrollP",
			data : {
				rowcnt : rowcnt
			},
			success:function(data){
				var num = data.num;
				console.log("내가 몇번째까지 출력함 ?"+num);
				/* 한페이지당 blog 개수  */
				for(var j=0; j<num; j++){
					var lastNum = 0;
					if(cnt == 0){jsonData = data.forName0; heartCnt = data.heart0; nowReply = data.Reply0}
					else if(cnt == 1){jsonData = data.forName1; heartCnt = data.heart1; nowReply = data.Reply1}
					else if(cnt == 2){jsonData = data.forName2; heartCnt = data.heart2; nowReply = data.Reply2}
					else if(cnt == 3){jsonData = data.forName3; heartCnt = data.heart3; nowReply = data.Reply3}
					else if(cnt == 4){jsonData = data.forName4; heartCnt = data.heart4; nowReply = data.Reply4}
					lastNum = Object.keys(jsonData).length;
					var appendT = "";
					/* 본문 출력 i  */
					appendT += "<table class = 'table'>"
					rowcnt = 0;							     /* 중  */
					for(var i = 0; i<Object.keys(jsonData).length; i++){		
						if(i==0){
							userID = jsonData[i].id;
							console.log("id"+jsonData[i].id);
							appendT += '<tr style="margin-left: 5px; font-size: medium; font-weight: bold;"><td><a href = "detail?id='+jsonData[i].id+'"><img src = "'+jsonData[i].userImage+'" class = "myPhoto"></a></td><td colspan = "2"><br>Title : '+jsonData[i].title+'<br>Name : '+jsonData[i].userName+'<br>Date : '+jsonData[i].date+'</td><td colspan ="3"></td></tr>'
							appendT += '<tr><th>Name</th><th>Target</th><th>KG</th><th>Rep</th><th>Title</th></tr>'
							appendT += "<tr><td>"+jsonData[i].name +"</td><td>"+ jsonData[i].target +"</td><td>"+jsonData[i].kg +"</td><td>"+jsonData[i].rep +"</td><td>"+jsonData[i].title +"</td></tr>"							
						}else if(i!=0 || i!=lastNum){
							appendT += "<tr><td>"+jsonData[i].name +"</td><td>"+ jsonData[i].target +"</td><td>"+jsonData[i].kg +"</td><td>"+jsonData[i].rep +"</td><td>"+jsonData[i].title +"</td></tr>"
						}else if(i==lastNum){
							appendT += "<tr><td>"+jsonData[i].name +"</td><td>"+ jsonData[i].target +"</td><td>"+jsonData[i].kg +"</td><td>"+jsonData[i].rep +"</td><td>"+jsonData[i].title +"</td></tr>"
						}
						nowTitle = jsonData[i].title ;     /* 현재 출력하는 피드의 이름 */
						nowID = jsonData[i].id;           /* 현재 출력하는 피드의 주인 */
						nowSeq = jsonData[i].seq
						rowcnt ++;
					} // for_iMb
					var nowName = nowID.substring(0,nowID.lastIndexOf("@"));
					var nowReplyT = nowName+nowTitle;
					console.log("logId :"+logID.length);
					if(logID.length != 4){
						appendT += "<tr><td><span class = 'heart "+ nowID+"' id ='"+nowTitle+"'><img src = 'resources/image/heart.png'>"+heartCnt+"</span><span id = 'cnt"+nowSeq+"'></span></td>"
						if(nowReply.replyId == null && nowReply.replyContent == null ){
							appendT += "<td colspan='4' id ='reply"+nowSeq+"'></td></tr>";
						}else{
							appendT += "<td colspan='4' id ='reply"+nowSeq+"'>"+nowReply.replyId +" : "+ nowReply.replyContent+"</td></tr>";
						}
						appendT += "<tr><td colspan ='4'><form><textarea class = 'replyArea "+nowTitle+"' id ='text"+nowSeq+"'  style='vertical-align: bottom; width: 90%;' rows='1' placeholder='댓글달기...'></textarea>"
						appendT += "<td><button disabled class='sendR "+nowID+" "+nowName+" "+nowTitle+"' id ='button"+nowSeq+"'>게시</button></td></tr></table>"
					}
					$('.blogForm').append(appendT)
					cnt ++;
				} // for_j 
			},
			error:function(){
				alert("!23");
				$('.blogForm').append("<h2>더이상 불러 올 데이터가 존재 하지 않습니다</h2>")
			}
	}) // ajax
	} // loadNext
});
	

	
	
$(document).on("click",".heart", function(){
    var id = $(this).attr("class").split(" ")[1];
    var title = $(this).attr("class").split(" ")[2];
    console.log("id " + id);
    console.log("title " + title)
    var seq = $(this).attr("id").substring(5);
    console.log(seq);
    $.ajax({
		type:'Post',
		url : "heartUp",
		data:{
			id : id,
			title: title,
		},
		success:function(data){
			var cnt = data.countHeartTest
			$('#heart'+seq).empty();
			$('#cnt'+seq).html("<img src = 'resources/image/heart.png'>"+cnt);
		}, // success
		error:function(){
			alert(rowcnt);
			alert("좋아요 오류 발생\n 지금 row가 여러개인 타이틀 좋아요 오류 수정중")
		}
	}) // ajax
	
}) // heart_click 이벤트
$(document).on("click",".sendR", function(){
    var id = $(this).attr("class").split(" ")[1];
    var name = $(this).attr("class").split(" ")[2];
    var title = $(this).attr("class").split(" ")[3];
    var seq = $(this).attr("id").substring(6);
   // id ='reply"+nowSeq+"'
	
	var content = $('#text'+seq).val();
   
	$.ajax({
		type:'Post',
		url : "replyInsert",
		data:{
			id : id,
			title: title,
			replyContent : content,
			replyId : logID
		},		
		success:function(data){
			console.log('change');
			var replyContent = data.replyContent;
			var replyId = data.replyId;
			$('#reply'+seq).html(logID +" : "+ content);
			$('#text'+seq).val(" "); 
			//$('#replyShow'+seq).html()
			$("#button"+seq).attr('disabled', true);
		}, // success
		error:function(){
		}
	});// ajax
});// 댓글

$(document).on('propertychange change keyup paste input','.replyArea', function(){
	var seq = $(this).attr("id").substring(4);
	
	if($("#text"+seq).val().trim().length <1 ){
	$("#button"+seq).attr('disabled', true);
	}
	else {
		$("#button"+seq).attr('disabled', false);
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