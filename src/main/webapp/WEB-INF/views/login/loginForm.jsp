<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HellChang : 로그인</title>
<link rel="stylesheet" type="text/css" href="resources/jqLib/myStyle.css">
<script src="resources/jqLib/jquery-3.2.1.min.js"></script>
<script src="resources/jqLib/memberCheck.js"></script>
<script src="resources/jqLib/axTest01.js"></script>
<script>
// ** Login시 id, password 입력자료의 무결성 점검
// => jQuery 의 focusout , submit
// => 1) 전역변수정의  
//    2) 각 InputTag의 focusout 이벤트핸들러
//    3) submit 처리

// 1) 전역변수정의
	var iCheck=false;
	var pCheck=false;
// 2) 각 InputTag의 focusout 이벤트핸들러	
$(function() {
	$('#id').focus();
	$('#id').focusout(function() {
	 	iCheck=idCheck();
		//if () iCheck=true;
		//else iCheck=false;
	}); // id_focusout
	
	$('#password').focusout(function() {
		pCheck=pwCheck();
	}); // password_focusout
}); // ready

//3) submit 처리
function inCheck() {
	// input Tag의 value에  default값을 준경우 focusout 없이 submit 누르는 경우 
	if (iCheck==false) {iCheck=idCheck() };
	if (pCheck==false) {pCheck=pwCheck() };
	
	if (iCheck==true && pCheck==true) {
		  return true;
	}else return false;
	
} //inCheck 

</script>
<style>
 				/* 정중앙 정렬 시키는 방법  물어보기 */
	body{
		background-color: #3d3b3c;
		text-align: center;
	}
	#l_sub{
		background-color: white;
		border-color: white;
		width: 208px;
		height: 36px;
	}
	input{
		width: 208px;
		height: 36px;
	}
	table{
		width: 100%;
		text-align: center;
		margin: 0 auto;
		vertical-align: middle;
	}
	#cen{
		margin-top: 300px;
		vertical-align: middle;
		
		
	
	
	}


</style>
				<!-- logo size width: 180px; height: 80px -->
</head>
<body>
<div class="container-fluid" id="cen">
<a href="home" ><img src="resources/image/logo.jpg" style="width: 10%;"></a>

<form action="#" method=post id="f_size" >
<h2>

	<table>
	<tr><td></td>
	    <td><input  type="text" name="id" id="id" placeholder="아이디"><br> 
	    	<span id="iMessage" class="eMessage"></span></td>
	</tr>
	<tr><td></td>
	    <td><input  type="password" name="password" id="password" placeholder="비밀번호"><br>
	    <span id="pMessage" class="eMessage"></span></td>
	</tr>
	<tr><td></td>
	    <td><input type="submit" value="Login" onclick="return inCheck()" id="l_sub">
	    </td>
	</tr>
	</table></h2></form>
	<c:if test="${message != null}">
	 => ${message}
	</c:if>
</div>
</body>
</html>