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
<tr><td><button onclick="checkTest(this.id)" id = "Lateral Raise">레터럴 레이즈</button></tr>
<tr><td><button onclick="checkTest(this.id)" id = "Military Press">밀리터리 프레스</button></td></tr>
<tr><td><button onclick="checkTest(this.id)" id = "Bent Over Lateral Raise">벤트오버 레터럴레이즈</button></td></tr>
<tr><td><button onclick="checkTest(this.id)" id = "Behind Neck Press">비하인드 넥프레스</button></td></tr>
<tr><td><button onclick="checkTest(this.id)" id = "Sholder Press">숄더프레스</button></td></tr>
<tr><td><button onclick="checkTest(this.id)" id = "Shrug">슈러그</button></td></tr>
<tr><td><button onclick="checkTest(this.id)" id = "Arnold Press">아놀드 프레스</button></td></tr>
<tr><td><button onclick="checkTest(this.id)" id = "Over Head Press">오버헤드프레스</button></td></tr>
<tr><td><button onclick="checkTest(this.id)" id = "Front Raise">프론트 레이즈</button></td></tr>
<tr><td><button onclick="checkTest(this.id)" id = "Face Pull">페이스 풀</button></td></tr>
<tr><td><button onclick="checkTest(this.id)" id = "Reverse Fly">리버스 플라이</button></td></tr>

<tr><td colspan="2"><textarea rows="10" cols="30" id = "result"></textarea></td></tr>

</table>
</body>
</html>