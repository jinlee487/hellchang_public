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
<tr><td><button onclick="checkTest(this.id)" id = "Bird Dog">버드 독</button></tr>
<tr><td><button onclick="checkTest(this.id)" id = "Dead Bug">데드 독</button></td></tr>
<tr><td><button onclick="checkTest(this.id)" id = "Hip Hinge">힙 힌지</button></td></tr>
<tr><td><button onclick="checkTest(this.id)" id = "Spider Man">스파이더 맨</button></td></tr>
<tr><td><button onclick="checkTest(this.id)" id = "Bear Walk">베어 워크</button></td></tr>
<tr><td><button onclick="checkTest(this.id)" id = "Plank">플랭크</button></td></tr>
<tr><td><button onclick="checkTest(this.id)" id = "Hollow">할로우</button></td></tr>
<tr><td><button onclick="checkTest(this.id)" id = "Side Plank">사이드 플랭크</button></td></tr>

<tr><td colspan="2"><textarea rows="10" cols="30" id = "result"></textarea></td></tr>

</table>
</body>
</html>