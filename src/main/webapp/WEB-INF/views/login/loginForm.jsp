<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HellChang : 로그인</title>
<script src="resources/jqLib/jquery-3.2.1.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.2.js" charset="utf-8"></script>
<link rel="stylesheet" type="text/css" href="resources/jqLib/animation.css">
<link rel="stylesheet" type="text/css" href="resources/jqLib/login.css?ver=<%= System.currentTimeMillis()%>">
<script src="resources/jqLib/memberCheck.js"></script>
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
<style type="text/css">
body{
	margin-top: 20%;
}
</style>

</head>
<body>
<!-- <div class="container-fluid " style="background-color: black;"> -->
		<a href="home" ><img src="resources/image/logo.jpg" style="width: 10%;"></a>
		
		<c:if test="${fCode=='JS'}">
			<h3>${joinID} 님 회원 가입 되었습니다~~</h3>
		</c:if>
	<br>
	<br>
<!-- 	<br>	 -->
	<div class="login_input_wrap">
		<div class="login-form">
			<form action="login" method=post>
				<div class="id-input-box focus">
					<input  type="text" name="id" id="id" value="test1004@naver.com" placeholder=example@xxxxx.com style="background-color: white;"><br> 
					<span id="iMessage" class="eMessage"></span>
				</div>
				<div class="pw-input-box">
					<input  type="password" name="password" id="password" value="123!" placeholder="비밀번호" style="background-color: white;"><br>
					<span id="pMessage" class="eMessage"></span>
				</div>
				<button type="submit" class="btn-login">로그인</button>
			</form>
		</div>
		<!-- rotate-in-center -->
		<br>
		<ul class="social_login">
			<li><a href="${naver_url}" class="sl_naver">네이버 로그인</a></li>
			<li><a href="${facebook_url}" class="sl_facebook">페이스북 로그인</a></li>
			<li><a href="${kakao_url}" class="sl_kakao">카카오 로그인</a></li>
			<li><a href="${google_url}" class="sl_google">구글 로그인</a></li>
		</ul>
<%-- 		<ul class="social_login">
			<li><a href="${naver_url}" target="_blank" onclick="window.open(this.href, '_blank', 'width=480,height=640'); return false;" class="sl_naver">네이버 로그인</a></li>
			<li><a href="${url}" target="_blank" onclick="window.open(this.href, '_blank', 'width=480,height=640'); return false;" class="sl_facebook">페이스북 로그인</a></li>
			<li><a href="${url}" target="_blank" onclick="window.open(this.href, '_blank', 'width=480,height=640'); return false;" class="sl_kakao">카카오 로그인</a></li>
			<li><a href="${url}" target="_blank" onclick="window.open(this.href, '_blank', 'width=480,height=640'); return false;" class="sl_google">구글 로그인</a></li>
		</ul> --%>
		
	</div>
<!-- </div> -->
</body>
</html>