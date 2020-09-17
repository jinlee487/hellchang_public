<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>등운동 리스트</title>
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
<tr><td><button onclick="checkTest(this.id)" id = "Deadlift">데드리프트</button></tr>
<tr><td><button onclick="checkTest(this.id)" id = "BarbellRow">바벨로우</button></td></tr>
<tr><td><button onclick="checkTest(this.id)" id = "Rack Pull">랙풀</button></td></tr>
<tr><td><button onclick="checkTest(this.id)" id = "Lat PullDown">랫풀다운</button></td></tr>
<tr><td><button onclick="checkTest(this.id)" id = "DumbellRow">덤벨로우</button></td></tr>
<tr><td><button onclick="checkTest(this.id)" id = "Back Lat PullDown">백 랫풀다운</button></td></tr>
<tr><td><button onclick="checkTest(this.id)" id = "SeatedRow">시티드로우</button></td></tr>
<tr><td><button onclick="checkTest(this.id)" id = "Arm PullDown">암풀다운</button></td></tr>
<tr><td><button onclick="checkTest(this.id)" id = "T Bar Row">티바로우</button></td></tr>
<tr><td><button onclick="checkTest(this.id)" id = "PullUp">풀업</button></td></tr>

<tr><td colspan="2"><textarea rows="10" cols="30" id = "result"></textarea></td></tr>

</table>
</body>
</html>