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
<tr><td><button onclick="checkTest(this.id)" id = "Lunge">런지</button></tr>
<tr><td><button onclick="checkTest(this.id)" id = "Leg Extension">레그익스텐션</button></td></tr>
<tr><td><button onclick="checkTest(this.id)" id = "Leg Curl">레그컬</button></td></tr>
<tr><td><button onclick="checkTest(this.id)" id = "Leg Press">레그프레스</button></td></tr>
<tr><td><button onclick="checkTest(this.id)" id = "Sumo Deadlift">스모 데드리프트</button></td></tr>
<tr><td><button onclick="checkTest(this.id)" id = "Squat">스쿼트</button></td></tr>
<tr><td><button onclick="checkTest(this.id)" id = "Stiff Leg Deadlift">스티프 데드리프트</button></td></tr>
<tr><td><button onclick="checkTest(this.id)" id = "Out Thigh">아웃싸이</button></td></tr>
<tr><td><button onclick="checkTest(this.id)" id = "Inner Thigh">이너싸이</button></td></tr>
<tr><td><button onclick="checkTest(this.id)" id = "Back Squat">백스쿼트</button></td></tr>
<tr><td><button onclick="checkTest(this.id)" id = "Front Squat">프론트스쿼트</button></td></tr>

<tr><td colspan="2"><textarea rows="10" cols="30" id = "result"></textarea></td></tr>

</table>
</body>
</html>