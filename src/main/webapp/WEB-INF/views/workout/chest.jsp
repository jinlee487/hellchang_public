<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가슴운동 리스트</title>
<script src="resources/jqLib/jquery-3.2.1.min.js"></script>
<script>
function checkTest(clicked_id){
	var result = $('#result').val();
	
	var name = (clicked_id);
	
	var kg = prompt("Input KG");
	if(kg =='')
		alert("아무것도 입력하지 않았습니다");
	else
		alert("Input KG =>" + kg);
	
	var rep = prompt("Input REP ");
	if(rep =='')
		alert("아무것도 입력하지 않았습니다");
	else
		alert("Input REP =>" + rep);
	$('#result').val(result+name+": "+kg+" * "+rep+"\n");
}


</script>
</head>
<body>
<table> 
<tr><td><button onclick="checkTest(this.id)" id = "benchPress">벤치프레스</button></tr>
<tr><td><button onclick="checkTest(this.id)" id = "Incline benchPress">인클라인 벤치프레스</button></td></tr>
<tr><td><button onclick="checkTest(this.id)" id = "Decline benchPress">디클라인 벤치프레스</button></td></tr>
<tr><td><button onclick="checkTest(this.id)" id = "DumbellPress">덤벨프레스</button></td></tr>
<tr><td><button onclick="checkTest(this.id)" id = "Incline DumbellPress">인클라인 덤벨프레스</button></td></tr>
<tr><td><button onclick="checkTest(this.id)" id = "Dips">딥스</button></td></tr>
<tr><td><button onclick="checkTest(this.id)" id = "Fly">펙덱 플라이</button></td></tr>
<tr><td><button onclick="checkTest(this.id)" id = "Cable Cross Over">케이블 크로스 오버</button></td></tr>
<tr><td><button onclick="checkTest(this.id)" id = "ChestPress">체스트프레스</button></td></tr>
<tr><td><button onclick="checkTest(this.id)" id = "Pull Over">풀오버</button></td></tr>
<tr><td><button onclick="checkTest(this.id)" id = "PushUp">푸쉬업</button></td></tr>

<tr><td colspan="2"><textarea rows="10" cols="30" id = "result"></textarea></td></tr>

</table>
</body>
</html>