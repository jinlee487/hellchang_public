<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>하체운동 리스트</title>
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
<tr><td><button onclick="checkTest(this.id)" id = "Lying Tricep Extension">라잉 트라이셉 익스텐션</button></tr>
<tr><td><button onclick="checkTest(this.id)" id = "Bench Dips">벤치 딥스</button></td></tr>
<tr><td><button onclick="checkTest(this.id)" id = "One Arm Tricep Extension">원암 트라이셉 익스텐션</button></td></tr>
<tr><td><button onclick="checkTest(this.id)" id = "Cable PushDown">케이블 푸쉬다운</button></td></tr>
<tr><td><button onclick="checkTest(this.id)" id = "Kick Back">킥백</button></td></tr>
<tr><td><button onclick="checkTest(this.id)" id = "Tricep Extension">트라이셉 익스텐션</button></td></tr>
<tr><td><button onclick="checkTest(this.id)" id = "Reverse Curl">리버스컬</button></td></tr>
<tr><td><button onclick="checkTest(this.id)" id = "Bicep Curl">바이셉컬</button></td></tr>
<tr><td><button onclick="checkTest(this.id)" id = "Preacher Curl">프리처컬</button></td></tr>
<tr><td><button onclick="checkTest(this.id)" id = "Hammer Curl">해머컬</button></td></tr>
<tr><td><button onclick="checkTest(this.id)" id = "OverHead Cable Curl">오버헤드 케이블컬</button></td></tr>

<tr><td colspan="2"><textarea rows="10" cols="30" id = "result"></textarea></td></tr>

</table>
</body>
</html>