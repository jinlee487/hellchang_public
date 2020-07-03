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
	
	var min = prompt("Input MIN ");
	if(rep =='')
		alert("아무것도 입력하지 않았습니다");
	else
		alert("Input MIN =>" + min);
	$('#result').val(result+name+": "+min +"\n");
}


</script>
</head>
<body>
<table> 
<tr><td><button onclick="checkTest(this.id)" id = "Running">런닝</button></tr>
<tr><td><button onclick="checkTest(this.id)" id = "Rowing Machine">로잉머신</button></td></tr>
<tr><td><button onclick="checkTest(this.id)" id = "Burpee">버피</button></td></tr>
<tr><td><button onclick="checkTest(this.id)" id = "Step Machine">스텝머신</button></td></tr>
<tr><td><button onclick="checkTest(this.id)" id = "Step Mill">스텝밀</button></td></tr>
<tr><td><button onclick="checkTest(this.id)" id = "Cycle">사이클</button></td></tr>
<tr><td><button onclick="checkTest(this.id)" id = "Incline Treadmill">인클라인 트레이드밀</button></td></tr>
<tr><td><button onclick="checkTest(this.id)" id = "Treadmill">트레이드밀</button></td></tr>
<tr><td><button onclick="checkTest(this.id)" id = "Jumping Jack">점핑 잭</button></td></tr>
<tr><td><button onclick="checkTest(this.id)" id = "Jump Rope">줄넘기</button></td></tr>

<tr><td colspan="2"><textarea rows="10" cols="30" id = "result"></textarea></td></tr>

</table>
</body>
</html>