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
	
	var rep = prompt("Input REP ");
	if(rep =='')
		alert("아무것도 입력하지 않았습니다");
	else
		alert("Input REP =>" + rep);
	$('#result').val(result+name+": "+rep+"\n");
}


</script>
</head>
<body>
<table> 
<tr><td><button onclick="checkTest(this.id)" id = "Decline Crunch">디클라인 크런치</button></tr>
<tr><td><button onclick="checkTest(this.id)" id = "Decline SitUp">디클라인 싯업</button></td></tr>
<tr><td><button onclick="checkTest(this.id)" id = "Side Crunch">사이드 크런치</button></td></tr>
<tr><td><button onclick="checkTest(this.id)" id = "Dumbell Side Bends">덤벨 사이드 밴드</button></td></tr>
<tr><td><button onclick="checkTest(this.id)" id = "Cable Crunch">케이블 크런치</button></td></tr>
<tr><td><button onclick="checkTest(this.id)" id = "Toe Touch">토우 터치</button></td></tr>
<tr><td><button onclick="checkTest(this.id)" id = "Knee To Bar">니 투 바</button></td></tr>
<tr><td><button onclick="checkTest(this.id)" id = "Toe To Bar">토 투 바</button></td></tr>
<tr><td><button onclick="checkTest(this.id)" id = "Hanging Leg Raise">행잉 레그레이즈</button></td></tr>
<tr><td><button onclick="checkTest(this.id)" id = "Leg Raise">레그레이즈</button></td></tr>
<tr><td><button onclick="checkTest(this.id)" id = "SitUp">싯업</button></td></tr>
<tr><td><button onclick="checkTest(this.id)" id = "Crunch">크런치</button></td></tr>

<tr><td colspan="2"><textarea rows="10" cols="30" id = "result"></textarea></td></tr>

</table>
</body>
</html>