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
			for(var j=0; j<1; j++){
				var lastNum = 0;
				if(j == 0){jsonData = data.forName0; heartCnt = data.heart0}
			
				
				lastNum = Object.keys(jsonData).length;
				var appendT = "";
				var appendh="";
				var appendTT="";
				appendT += "<table class = 'table'>"
				rowcnt = 0;
				for(var i = 0; i<Object.keys(jsonData).length; i++){		
					if(i==0){
						appendT += '<tr style="margin-left: 5px; font-size: medium; font-weight: bold;"><td><img src = "'+jsonData[i].userImage+'" class = "myPhoto"></td><td colspan = "2"><br>Title : '+jsonData[i].title+'<br>Name : '+jsonData[i].userName+'<br>Date : '+jsonData[i].date+'</td><td colspan ="3"></td></tr>'
						appendT += '<tr><th>Name</th><th>Target</th><th>KG</th><th>Rep</th><th>Title</th></tr>'
						appendT += "<tr><td>"+jsonData[i].name +"</td><td>"+ jsonData[i].target +"</td><td>"+jsonData[i].kg +"</td><td>"+jsonData[i].rep +"</td><td>"+jsonData[i].title +"</td></tr>"							
					}else if(i!=0 || i!=lastNum){
						appendT += "<tr><td>"+jsonData[i].name +"</td><td>"+ jsonData[i].target +"</td><td>"+jsonData[i].kg +"</td><td>"+jsonData[i].rep +"</td><td>"+jsonData[i].title +"</td></tr>"
					}else if(i==lastNum){
						appendT += "<tr><td>"+jsonData[i].name +"</td><td>"+ jsonData[i].target +"</td><td>"+jsonData[i].kg +"</td><td>"+jsonData[i].rep +"</td><td>"+jsonData[i].title +"</td></tr>"
						
					}
					nowTitle = jsonData[i].title ;
					nowID = jsonData[i].id;
					replyTitle = jsonData[i].title ;
					var replyRow = jsonData[i].title;
					rowcnt ++;
					$('.blogForm').append(appendT)
				} // for_i
				appendh += "<tr><td><span class = 'heart "+ nowID+"' id ='"+nowTitle+"'><img src = 'resources/image/heart.png'>"+heartCnt+"</span><span id = 'cnt"+nowTitle+"'></span><br><span class = 'reply " + nowID +"' id = '"+replyTitle+"'><img src = 'resources/image/pencil.png'></span></td><td colspan = '4'></td></tr>"
				
				$('.blogForm2').append(appendh)
				appendh += "</table>"
				cnt ++;
				
			} // for_j 
			for(var cnt=1; j<2; j++){
				var lastNum = 0;
				if(j == 1){jsonData = data.forName1; heartCnt = data.heart1}
			
				
				lastNum = Object.keys(jsonData).length;
				var appendT = "";
				var appendh="";
				appendT += "<table class = 'table'>"
				rowcnt = 0;
				for(var i = 0; i<Object.keys(jsonData).length; i++){		
					if(i==0){
						appendT += '<tr style="margin-left: 5px; font-size: medium; font-weight: bold;"><td><img src = "'+jsonData[i].userImage+'" class = "myPhoto"></td><td colspan = "2"><br>Title : '+jsonData[i].title+'<br>Name : '+jsonData[i].userName+'<br>Date : '+jsonData[i].date+'</td><td colspan ="3"></td></tr>'
						appendT += '<tr><th>Name</th><th>Target</th><th>KG</th><th>Rep</th><th>Title</th></tr>'
						appendT += "<tr><td>"+jsonData[i].name +"</td><td>"+ jsonData[i].target +"</td><td>"+jsonData[i].kg +"</td><td>"+jsonData[i].rep +"</td><td>"+jsonData[i].title +"</td></tr>"							
					}else if(i!=0 || i!=lastNum){
						appendT += "<tr><td>"+jsonData[i].name +"</td><td>"+ jsonData[i].target +"</td><td>"+jsonData[i].kg +"</td><td>"+jsonData[i].rep +"</td><td>"+jsonData[i].title +"</td></tr>"
					}else if(i==lastNum){
						appendT += "<tr><td>"+jsonData[i].name +"</td><td>"+ jsonData[i].target +"</td><td>"+jsonData[i].kg +"</td><td>"+jsonData[i].rep +"</td><td>"+jsonData[i].title +"</td></tr>"
						
					}
					nowTitle = jsonData[i].title ;
					nowID = jsonData[i].id;
					replyTitle = jsonData[i].title ;
					var replyRow = jsonData[i].title;
					rowcnt ++;
					$('.blogForm3').append(appendT)
				} // for_i
				appendh += "<tr><td><span class = 'heart "+ nowID+"' id ='"+nowTitle+"'><img src = 'resources/image/heart.png'>"+heartCnt+"</span><span id = 'cnt"+nowTitle+"'></span><br><span class = 'reply " + nowID +"' id = '"+replyTitle+"'><img src = 'resources/image/pencil.png'></span></td><td colspan = '4'></td></tr>"
				appendh += "</table>"
				$('.blogForm4').append(appendh)
				cnt ++;
			} // for_j 
			
			for(var j=2; j<3; j++){
				var lastNum = 0;
				if(j == 2){jsonData = data.forName2; heartCnt = data.heart2}
				
				
				lastNum = Object.keys(jsonData).length;
				var appendT = "";
				var appendh="";
				appendT += "<table class = 'table'>"
				rowcnt = 0;
				for(var i = 0; i<Object.keys(jsonData).length; i++){		
					if(i==0){
						appendT += '<tr style="margin-left: 5px; font-size: medium; font-weight: bold;"><td><img src = "'+jsonData[i].userImage+'" class = "myPhoto"></td><td colspan = "2"><br>Title : '+jsonData[i].title+'<br>Name : '+jsonData[i].userName+'<br>Date : '+jsonData[i].date+'</td><td colspan ="3"></td></tr>'
						appendT += '<tr><th>Name</th><th>Target</th><th>KG</th><th>Rep</th><th>Title</th></tr>'
						appendT += "<tr><td>"+jsonData[i].name +"</td><td>"+ jsonData[i].target +"</td><td>"+jsonData[i].kg +"</td><td>"+jsonData[i].rep +"</td><td>"+jsonData[i].title +"</td></tr>"							
					}else if(i!=0 || i!=lastNum){
						appendT += "<tr><td>"+jsonData[i].name +"</td><td>"+ jsonData[i].target +"</td><td>"+jsonData[i].kg +"</td><td>"+jsonData[i].rep +"</td><td>"+jsonData[i].title +"</td></tr>"
					}else if(i==lastNum){
						appendT += "<tr><td>"+jsonData[i].name +"</td><td>"+ jsonData[i].target +"</td><td>"+jsonData[i].kg +"</td><td>"+jsonData[i].rep +"</td><td>"+jsonData[i].title +"</td></tr>"
						
					}
					nowTitle = jsonData[i].title ;
					nowID = jsonData[i].id;
					replyTitle = jsonData[i].title ;
					var replyRow = jsonData[i].title;
					rowcnt ++;
					$('.blogForm5').append(appendT)
				} // for_i
				appendh += "<tr><td><span class = 'heart "+ nowID+"' id ='"+nowTitle+"'><img src = 'resources/image/heart.png'>"+heartCnt+"</span><span id = 'cnt"+nowTitle+"'></span><br><span class = 'reply " + nowID +"' id = '"+replyTitle+"'><img src = 'resources/image/pencil.png'></span></td><td colspan = '4'></td></tr>"
				appendh += "</table>"
				$('.blogForm6').append(appendh)
				cnt ++;
			} // for_j 
			
			for(var j=3; j<4; j++){
				var lastNum = 0;
				if(j == 3){jsonData = data.forName3; heartCnt = data.heart3}
				
				
				lastNum = Object.keys(jsonData).length;
				var appendT = "";
				var appendh="";
				appendT += "<table class = 'table'>"
				rowcnt = 0;
				for(var i = 0; i<Object.keys(jsonData).length; i++){		
					if(i==0){
						appendT += '<tr style="margin-left: 5px; font-size: medium; font-weight: bold;"><td><img src = "'+jsonData[i].userImage+'" class = "myPhoto"></td><td colspan = "2"><br>Title : '+jsonData[i].title+'<br>Name : '+jsonData[i].userName+'<br>Date : '+jsonData[i].date+'</td><td colspan ="3"></td></tr>'
						appendT += '<tr><th>Name</th><th>Target</th><th>KG</th><th>Rep</th><th>Title</th></tr>'
						appendT += "<tr><td>"+jsonData[i].name +"</td><td>"+ jsonData[i].target +"</td><td>"+jsonData[i].kg +"</td><td>"+jsonData[i].rep +"</td><td>"+jsonData[i].title +"</td></tr>"							
					}else if(i!=0 || i!=lastNum){
						appendT += "<tr><td>"+jsonData[i].name +"</td><td>"+ jsonData[i].target +"</td><td>"+jsonData[i].kg +"</td><td>"+jsonData[i].rep +"</td><td>"+jsonData[i].title +"</td></tr>"
					}else if(i==lastNum){
						appendT += "<tr><td>"+jsonData[i].name +"</td><td>"+ jsonData[i].target +"</td><td>"+jsonData[i].kg +"</td><td>"+jsonData[i].rep +"</td><td>"+jsonData[i].title +"</td></tr>"
						
					}
					nowTitle = jsonData[i].title ;
					nowID = jsonData[i].id;
					replyTitle = jsonData[i].title ;
					var replyRow = jsonData[i].title;
					rowcnt ++;
					$('.blogForm7').append(appendT)
				} // for_i
				appendh += "<tr><td><span class = 'heart "+ nowID+"' id ='"+nowTitle+"'><img src = 'resources/image/heart.png'>"+heartCnt+"</span><span id = 'cnt"+nowTitle+"'></span><br><span class = 'reply " + nowID +"' id = '"+replyTitle+"'><img src = 'resources/image/pencil.png'></span></td><td colspan = '4'></td></tr>"
				appendh += "</table>"
				$('.blogForm8').append(appendh)
				cnt ++;
			} // for_j 
			
			for(var j=4; j<5; j++){
				var lastNum = 0;
				if(j == 4){jsonData = data.forName0; heartCnt = data.heart4}
				
				
				lastNum = Object.keys(jsonData).length;
				var appendT = "";
				var appendh="";
				appendT += "<table class = 'table'>"
				rowcnt = 0;
				for(var i = 0; i<Object.keys(jsonData).length; i++){		
					if(i==0){
						appendT += '<tr style="margin-left: 5px; font-size: medium; font-weight: bold;"><td><img src = "'+jsonData[i].userImage+'" class = "myPhoto"></td><td colspan = "2"><br>Title : '+jsonData[i].title+'<br>Name : '+jsonData[i].userName+'<br>Date : '+jsonData[i].date+'</td><td colspan ="3"></td></tr>'
						appendT += '<tr><th>Name</th><th>Target</th><th>KG</th><th>Rep</th><th>Title</th></tr>'
						appendT += "<tr><td>"+jsonData[i].name +"</td><td>"+ jsonData[i].target +"</td><td>"+jsonData[i].kg +"</td><td>"+jsonData[i].rep +"</td><td>"+jsonData[i].title +"</td></tr>"							
					}else if(i!=0 || i!=lastNum){
						appendT += "<tr><td>"+jsonData[i].name +"</td><td>"+ jsonData[i].target +"</td><td>"+jsonData[i].kg +"</td><td>"+jsonData[i].rep +"</td><td>"+jsonData[i].title +"</td></tr>"
					}else if(i==lastNum){
						appendT += "<tr><td>"+jsonData[i].name +"</td><td>"+ jsonData[i].target +"</td><td>"+jsonData[i].kg +"</td><td>"+jsonData[i].rep +"</td><td>"+jsonData[i].title +"</td></tr>"
						
					}
					nowTitle = jsonData[i].title ;
					nowID = jsonData[i].id;
					replyTitle = jsonData[i].title ;
					var replyRow = jsonData[i].title;
					rowcnt ++;
					$('.blogForm9').append(appendT)
				} // for_i
				appendh += "<tr><td><span class = 'heart "+ nowID+"' id ='"+nowTitle+"'><img src = 'resources/image/heart.png'>"+heartCnt+"</span><span id = 'cnt"+nowTitle+"'></span><br><span class = 'reply " + nowID +"' id = '"+replyTitle+"'><img src = 'resources/image/pencil.png'></span></td><td colspan = '4'></td></tr>"
				appendh += "</table>"
				$('.blogForm10').append(appendh)
				cnt ++;
			} // for_j 
			
			for(var j=5; j<6; j++){
				var lastNum = 0;
				if(j == 5){jsonData = data.forName5; heartCnt = data.heart5}
				
				
				lastNum = Object.keys(jsonData).length;
				var appendT = "";
				var appendh="";
				appendT += "<table class = 'table'>"
				rowcnt = 0;
				for(var i = 0; i<Object.keys(jsonData).length; i++){		
					if(i==0){
						appendT += '<tr style="margin-left: 5px; font-size: medium; font-weight: bold;"><td><img src = "'+jsonData[i].userImage+'" class = "myPhoto"></td><td colspan = "2"><br>Title : '+jsonData[i].title+'<br>Name : '+jsonData[i].userName+'<br>Date : '+jsonData[i].date+'</td><td colspan ="3"></td></tr>'
						appendT += '<tr><th>Name</th><th>Target</th><th>KG</th><th>Rep</th><th>Title</th></tr>'
						appendT += "<tr><td>"+jsonData[i].name +"</td><td>"+ jsonData[i].target +"</td><td>"+jsonData[i].kg +"</td><td>"+jsonData[i].rep +"</td><td>"+jsonData[i].title +"</td></tr>"							
					}else if(i!=0 || i!=lastNum){
						appendT += "<tr><td>"+jsonData[i].name +"</td><td>"+ jsonData[i].target +"</td><td>"+jsonData[i].kg +"</td><td>"+jsonData[i].rep +"</td><td>"+jsonData[i].title +"</td></tr>"
					}else if(i==lastNum){
						appendT += "<tr><td>"+jsonData[i].name +"</td><td>"+ jsonData[i].target +"</td><td>"+jsonData[i].kg +"</td><td>"+jsonData[i].rep +"</td><td>"+jsonData[i].title +"</td></tr>"
						
					}
					nowTitle = jsonData[i].title ;
					nowID = jsonData[i].id;
					replyTitle = jsonData[i].title ;
					var replyRow = jsonData[i].title;
					rowcnt ++;
					$('.blogForm11').append(appendT)
				} // for_i
				appendh += "<tr><td><span class = 'heart "+ nowID+"' id ='"+nowTitle+"'><img src = 'resources/image/heart.png'>"+heartCnt+"</span><span id = 'cnt"+nowTitle+"'></span><br><span class = 'reply " + nowID +"' id = '"+replyTitle+"'><img src = 'resources/image/pencil.png'></span></td><td colspan = '4'></td></tr>"
				appendh += "</table>"
				$('.blogForm12').append(appendh)
				cnt ++;
			} // for_j 
			
			for(var j=7; j<8; j++){
				var lastNum = 0;
				if(j == 7){jsonData = data.forName7; heartCnt = data.heart7}
			
				
				lastNum = Object.keys(jsonData).length;
				var appendT = "";
				var appendh="";
				appendT += "<table class = 'table'>"
				rowcnt = 0;
				for(var i = 0; i<Object.keys(jsonData).length; i++){		
					if(i==0){
						appendT += '<tr style="margin-left: 5px; font-size: medium; font-weight: bold;"><td><img src = "'+jsonData[i].userImage+'" class = "myPhoto"></td><td colspan = "2"><br>Title : '+jsonData[i].title+'<br>Name : '+jsonData[i].userName+'<br>Date : '+jsonData[i].date+'</td><td colspan ="3"></td></tr>'
						appendT += '<tr><th>Name</th><th>Target</th><th>KG</th><th>Rep</th><th>Title</th></tr>'
						appendT += "<tr><td>"+jsonData[i].name +"</td><td>"+ jsonData[i].target +"</td><td>"+jsonData[i].kg +"</td><td>"+jsonData[i].rep +"</td><td>"+jsonData[i].title +"</td></tr>"							
					}else if(i!=0 || i!=lastNum){
						appendT += "<tr><td>"+jsonData[i].name +"</td><td>"+ jsonData[i].target +"</td><td>"+jsonData[i].kg +"</td><td>"+jsonData[i].rep +"</td><td>"+jsonData[i].title +"</td></tr>"
					}else if(i==lastNum){
						appendT += "<tr><td>"+jsonData[i].name +"</td><td>"+ jsonData[i].target +"</td><td>"+jsonData[i].kg +"</td><td>"+jsonData[i].rep +"</td><td>"+jsonData[i].title +"</td></tr>"
						
					}
					nowTitle = jsonData[i].title ;
					nowID = jsonData[i].id;
					replyTitle = jsonData[i].title ;
					var replyRow = jsonData[i].title;
					rowcnt ++;
					$('.blogForm13').append(appendT)
				} // for_i
				appendh += "<tr><td><span class = 'heart "+ nowID+"' id ='"+nowTitle+"'><img src = 'resources/image/heart.png'>"+heartCnt+"</span><span id = 'cnt"+nowTitle+"'></span><br><span class = 'reply " + nowID +"' id = '"+replyTitle+"'><img src = 'resources/image/pencil.png'></span></td><td colspan = '4'></td></tr>"
				appendh += "</table>"
				$('.blogForm14').append(appendh)
				cnt ++;
			} // for_j 
			
			for(var j=8; j<9; j++){
				var lastNum = 0;
				if(j == 8){jsonData = data.forName8; heartCnt = data.heart8}
				
				
				lastNum = Object.keys(jsonData).length;
				var appendT = "";
				var appendh="";
				appendT += "<table class = 'table'>"
				rowcnt = 0;
				for(var i = 0; i<Object.keys(jsonData).length; i++){		
					if(i==0){
						appendT += '<tr style="margin-left: 5px; font-size: medium; font-weight: bold;"><td><img src = "'+jsonData[i].userImage+'" class = "myPhoto"></td><td colspan = "2"><br>Title : '+jsonData[i].title+'<br>Name : '+jsonData[i].userName+'<br>Date : '+jsonData[i].date+'</td><td colspan ="3"></td></tr>'
						appendT += '<tr><th>Name</th><th>Target</th><th>KG</th><th>Rep</th><th>Title</th></tr>'
						appendT += "<tr><td>"+jsonData[i].name +"</td><td>"+ jsonData[i].target +"</td><td>"+jsonData[i].kg +"</td><td>"+jsonData[i].rep +"</td><td>"+jsonData[i].title +"</td></tr>"							
					}else if(i!=0 || i!=lastNum){
						appendT += "<tr><td>"+jsonData[i].name +"</td><td>"+ jsonData[i].target +"</td><td>"+jsonData[i].kg +"</td><td>"+jsonData[i].rep +"</td><td>"+jsonData[i].title +"</td></tr>"
					}else if(i==lastNum){
						appendT += "<tr><td>"+jsonData[i].name +"</td><td>"+ jsonData[i].target +"</td><td>"+jsonData[i].kg +"</td><td>"+jsonData[i].rep +"</td><td>"+jsonData[i].title +"</td></tr>"
						
					}
					nowTitle = jsonData[i].title ;
					nowID = jsonData[i].id;
					replyTitle = jsonData[i].title ;
					var replyRow = jsonData[i].title;
					rowcnt ++;
					$('.blogForm15').append(appendT)
				} // for_i
				appendh += "<tr><td><span class = 'heart "+ nowID+"' id ='"+nowTitle+"'><img src = 'resources/image/heart.png'>"+heartCnt+"</span><span id = 'cnt"+nowTitle+"'></span><br><span class = 'reply " + nowID +"' id = '"+replyTitle+"'><img src = 'resources/image/pencil.png'></span></td><td colspan = '4'></td></tr>"
				appendh += "</table>"
				$('.blogForm16').append(appendh)
				cnt ++;
			} // for_j 
			
			for(var j=9; j<10; j++){
				var lastNum = 0;
				if(j == 9){jsonData = data.forName9; heartCnt = data.heart9}
				
				
				
				lastNum = Object.keys(jsonData).length;
				var appendT = "";
				var appendh="";
				appendT += "<table class = 'table'>"
				rowcnt = 0;
				for(var i = 0; i<Object.keys(jsonData).length; i++){		
					if(i==0){
						appendT += '<tr style="margin-left: 5px; font-size: medium; font-weight: bold;"><td><img src = "'+jsonData[i].userImage+'" class = "myPhoto"></td><td colspan = "2"><br>Title : '+jsonData[i].title+'<br>Name : '+jsonData[i].userName+'<br>Date : '+jsonData[i].date+'</td><td colspan ="3"></td></tr>'
						appendT += '<tr><th>Name</th><th>Target</th><th>KG</th><th>Rep</th><th>Title</th></tr>'
						appendT += "<tr><td>"+jsonData[i].name +"</td><td>"+ jsonData[i].target +"</td><td>"+jsonData[i].kg +"</td><td>"+jsonData[i].rep +"</td><td>"+jsonData[i].title +"</td></tr>"							
					}else if(i!=0 || i!=lastNum){
						appendT += "<tr><td>"+jsonData[i].name +"</td><td>"+ jsonData[i].target +"</td><td>"+jsonData[i].kg +"</td><td>"+jsonData[i].rep +"</td><td>"+jsonData[i].title +"</td></tr>"
					}else if(i==lastNum){
						appendT += "<tr><td>"+jsonData[i].name +"</td><td>"+ jsonData[i].target +"</td><td>"+jsonData[i].kg +"</td><td>"+jsonData[i].rep +"</td><td>"+jsonData[i].title +"</td></tr>"
						
					}
					nowTitle = jsonData[i].title ;
					nowID = jsonData[i].id;
					replyTitle = jsonData[i].title ;
					var replyRow = jsonData[i].title;
					rowcnt ++;
					$('.blogForm17').append(appendT)
				} // for_i
				appendh += "<tr><td><span class = 'heart "+ nowID+"' id ='"+nowTitle+"'><img src = 'resources/image/heart.png'>"+heartCnt+"</span><span id = 'cnt"+nowTitle+"'></span><br><span class = 'reply " + nowID +"' id = '"+replyTitle+"'><img src = 'resources/image/pencil.png'></span></td><td colspan = '4'></td></tr>"
				appendh += "</table>"
				$('.blogForm18').append(appendh)
				cnt ++;
			} // for_j 
			
		},
		error:function(){
			
		}
	}); // ajax 
	
	
$(document).on("click",".heart", function(){
    var title = $(this).attr("id");
    var id = $(this).attr("class");
    id = id.substring(6);
    console.log(id);
    $.ajax({
		type:'Get',
		url : "heartUp",
		data:{
			id : id,
			title: title,
		},
		success:function(data){
			var cnt = data.countHeartTest
			$('#'+title).empty();
			$('#cnt'+title).html("<img src = 'resources/image/heart.png'>"+cnt);
		}, // success
		error:function(){
			alert(rowcnt);
			alert("좋아요 오류 발생\n 지금 row가 여러개인 타이틀 좋아요 오류 수정중")
		}
	}) // ajax
}) // click 이벤트
}) // ready