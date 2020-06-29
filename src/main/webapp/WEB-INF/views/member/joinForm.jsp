<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HellChang 회원가입</title>
<style>
img{
	width: 10%
}
div{
	text-align: center;
	margin: 0 auto;
	
}
table{
	text-align: center;
	margin: 0 auto;
	color: white;
	font-size: 20px;
}
h1{
	text-align: center;
	margin: 0 auto;
	color: white;
}
body{
	background-color: #3d3b3c;
	text-align: center;
}
.btn_type{
	display: white;
    width: 10%;
    padding: 21px 0 17px;
    font-size: 20px;
    font-weight: 700;
    text-align: center;
    cursor: pointer;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
    color: black;
}
button {
	cursor: pointer;
    background-color: white;
}
.gen{
	width: 100%;
    height: 29px;
    padding: 7px 8px 6px 7px\9;
    font-size: 15px;
    line-height: 18px;
    color: #000;
    border: none;
    border-radius: 0;
    *height: auto;
    *margin-top: 3px;
    -webkit-appearance: none;
}
select{
	-webkit-writing-mode: horizontal-tb !important;
    text-rendering: auto;
    letter-spacing: normal;
    word-spacing: normal;
    text-transform: none;
    text-indent: 0px;
    text-shadow: none;
    display: inline-block;
    text-align: start;
    box-sizing: border-box;
    align-items: center;
    white-space: pre;
    -webkit-rtl-ordering: logical;
    cursor: pointer;
    font: 400 13.3333px Arial;
}
.int{
	display: block;
    position: relative;
    width: 100%;
    height: 29px;
    line-height: 29px;
    border: none;
    background: #fff;
    font-size: 15px;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
    z-index: 10;
}
#footer{
	clear: both;
    margin: 0 auto;
    padding: 30px 0 15px 0;
    text-align: center;
    margin: 0 auto;
    max-width: 768px;
    min-width: 460px;
}
.logo{
	color: white;
}
.u_cra{
	color: white;
}
address {
	color: white;
}
</style>

</head>
<body>
<div id="header" class="joun_membership" role="banner">
<h1>
	<a href="home" class="h_logo">
		<img src="resources/image/logo.jpg">
	</a>
</h1>
</div>
<form action="join" method="post">
<table>
	<tr height="60"><td bgcolor=""></td>
	<td><input type="text" name="id" id=id size="20" class="int" placeholder="아이디"></td>
	</tr>
	<tr height="60"><td bgcolor=""></td>
	<td><input type="password" name="password" size="20" class="int" placeholder="비밀번호"></td>
	</tr>
	<tr height="60"><td bgcolor=""></td>
	<td><input type="password" name="password" size="20" class="int" placeholder="비밀번호 확인"></td>
	</tr>
	<tr height="60"><td bgcolor=""></td>
	<td><input type="number" name="number" size="20" class="int" placeholder="전화번호"></td>
	</tr>
	<tr height="60"><td bgcolor=""></td>
	<td><input type="text" name="name" size="20" class="int" placeholder="name"></td>
	</tr>
	<tr height="60"><td bgcolor=""></td>
	<td><input type="text" id="yy" placeholder="생년월일(Ex 920812)" aria-label="생년월일(6자)" class="int" maxlength="6">
	</td>
	</tr>
	<tr height="60"><td></td>
	<td><select name="gen" id="gen" class="gen">
		<option value="A">성별</option>
		<option value="B">남성</option>
		<option value="C">여성</option>
	</select></td>
	</tr>
</table>
</form>
	<div class="join">
		<button type="button" id="btnJoin" class="btn_type btn_primary">
		<span>가입하기</span></button>
	</div>
	<div id="footer" role="contentinfo">
		<address>
			<em><a href="home" target="_blank" class="logo"><span class="blind">HellChang</span></a></em>
			<em class="copy">Copyright</em>
			<em class="u_cri">©</em>
			<a href="https://www.navercorp.com/" target="_blank" class="u_cra">HellChang Corp.</a>
			<span class="all_r">All Rights Reserved.</span>
		</address>
	</div>
	
</body>
</html>