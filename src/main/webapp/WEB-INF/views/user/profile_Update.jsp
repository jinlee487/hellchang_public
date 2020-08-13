<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>hellchang_project</title>
<link rel="icon" href="resources/image/logo.jpg">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="resources/jqLib/animation.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="resources/jqLib/jquery-3.2.1.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<link rel="stylesheet" type="text/css" href="resources/jqLib/footer_position.css">
<link rel="stylesheet" type="text/css" href="resources/jqLib/topBar.css">
<link rel="stylesheet" type="text/css" href="resources/jqLib/profile_image.css">
<link rel="stylesheet" type="text/css" href="resources/jqLib/profile_delete.css">
<script src="resources/jqLib/profile_image_script.js"></script>
<script src="resources/jqLib/profile_delete_script.js"></script>

  
  <style>
  @media (min-width: 768px){
	.col-sm-4 {
	  /* margin-left: 200px; */
	  text-align: center;
	}

  </style>
</head>
<body >

<nav  class="navbar navbar-inverse" >
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="home">
      <img src = "resources/image/logo.jpg" width="80" height="25">
      </a>
    </div>
    
   <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="noob">Noob</a></li>
			<li><a href="routine">Routine</a></li>
			<li><a href="blog">Blog</a></li>
			<li><a href="one">OneRM</a></li>
        
        
      </ul>
        <ul class="nav navbar-nav navbar-right" >
			  <c:if test="${logID != null }">
			  	<li><a style="color: white;">${logName}님</a></li>
			  	<li><a href="prof">MyProfile</a></li>
			  </c:if>
				<li>
					<c:if test="${logID==null }">
						<a href="joinf">회원가입</a>
					</c:if>	
				</li>
				<li>
					<c:if test="${logID==null }">
						<a href="loginf"><span class="glyphicon glyphicon-log-in"></span> Login</a>
					</c:if>
					<c:if test="${logID!=null }">
						<a href="logout"><span class="glyphicon glyphicon-log-in"></span> Logout</a>
					</c:if>
				</li>
			  </ul>
    </div>
  </div>
</nav>
  
<div class="container text-center" style="margin-top:100px" >    
  <div class="row">
    <div class="col-sm-3 well">
      <div class="well">
        <a href="javascript:;" type="button" data-toggle="modal" data-target="#myModal">
        	<span>Edit profile image</span><br>                             
	        <button class="bEffect" title="프로필 사진 바꾸기">
	        	<img id="aa" src="${profile_image}" class="img-circle" height="100" width="100" alt="프로필 사진 바꾸기">       	
	        </button>
        </a></div>
		<ul class="nav nav-pills nav-stacked">
		  <li><a href="prof">Start Workout</a></li>
		  <li><a href="manageWorkout">Manage Workout</a></li>
		  <li><a href="inbodyf">InBody</a></li>
		  <li><a href="dietf">Diet</a></li>
		  <li><a href="socialf">Social</a></li>   
		</ul>
    </div>
    <div class="col-sm-7 ">
    
      <div class="row">
        <div class="col-sm-12" >
          <div class="panel panel-default text-center">
          <div class="panel-heading"><label>Update</label></div>
            <div class="panel-body">
				 <form action="mupdate" method="post" id="joinformlist">
  <div>
  
   <label for="name" class="int"><b>Email</b></label><br>
      <p class="text-center">${logID}</p><br>
   	<input style="display:none;width: 60%; padding: 15px; border: none; background: #f1f1f1; border-radius: 8px" type="text" name="id" class="input" value="${logID}" readonly="readonly">
   	<input style="display:none;width: 60%; padding: 15px; border: none; background: #f1f1f1; border-radius: 8px" type="text" name="image_path" class="input" value="${profile_image}" readonly="readonly">
   	
    <label for="name" class="int"><b>Name</b></label><br>
      <p class="text-center">${logName}</p>
      <a href="#name" data-toggle="collapse">
      <b>이름 수정하기</b>
      </a>
      <div id="name" class="collapse" >
        <input style="width: 60%; padding: 15px; display: inline-block; border: none; background: #f1f1f1; border-radius: 8px" type="text" placeholder="Name" name="name" id="name" class="input" value="${logName}"><br>
       <a href="#name" data-toggle="collapse">
      <input type="reset" value="취소"></a>
       <input type="submit" value="전송">&nbsp;&nbsp;
      
      </div><br><br>
    
    
    
    <label for="phonenumber" class="int"><b>Phone Number</b></label><br>
    <p class="text-center">${myInfo_phone}</p>
      <a href="#phonenumber" data-toggle="collapse">
      <b>폰 번호 수정하기</b>
      </a>
      <div id="phonenumber" class="collapse">
    <input  style="width: 60%; padding: 15px;  display: inline-block; border: none; background: #f1f1f1; border-radius: 8px" type="text" name="phone"  id="phone" placeholder="Ex 010-1234-5678" class="input" value="${myInfo_phone}"><br>
       <a href="#phonenumber" data-toggle="collapse">
       <input type="reset" value="취소"></a>
       <input type="submit" value="전송">&nbsp;&nbsp;
      </div><br><br>
    
	
	
	<label for="location" class="int"><b>location</b></label><br>
	 <p class="text-center">${myInfo_address}</p>
      <a href="#location" data-toggle="collapse">
      <b>주소 수정하기</b>
      </a>
      <div id="location" class="collapse">
	<br><br>
    <input  style="width: 60%; padding: 15px;  display: inline-block; border: none; background: #f1f1f1; border-radius: 8px" type="text" name="address" id="address" placeholder="주소를 입력해주세요" value="${myInfo_address}"><br>
       <a href="#location" data-toggle="collapse">
       <input type="reset" value="취소"></a>
       <input type="submit" value="전송">&nbsp;&nbsp;
	   
	 
      </div><br>
	
    <br>
    <hr>
      <a href="#password" data-toggle="collapse">
      <b>비밀번호 수정하기</b>
      </a>
      <div id="password" class="collapse">
    <label for="psw" class="int"><b>Password</b></label><br> 
    <input style="width: 60%; padding: 15px; display: inline-block; border: none; background: #f1f1f1; border-radius: 8px" type="password" placeholder="Enter Password"  name="password" class="input" value="" ><br>
    <label for="psw-repeat" class="int"><b>Repeat Password</b></label><br>
    <input  style="width: 60%; padding: 15px; display: inline-block; border: none; background: #f1f1f1; border-radius: 8px" type="password" placeholder="Repeat Password" name="psw-repeat" class="input" value=""><br>
       <a href="#password" data-toggle="collapse">
       <input type="reset" value="취소"></a>
       <input type="submit" value="전송">&nbsp;&nbsp;
      </div><br>
  </div>
</form><hr>
	<a href="javascript:;" type="button" data-toggle="modal" data-target="#deleteModal">회원 탈퇴</a>

         </div>

          </div>
        </div>
      </div>
      
   
  </div>
     <div class="col-sm-2 well" style="margin-top: 100px">
      <div class="thumbnail">
        <p><strong>Map Your Runs</strong></p>
        <img src="resources/image/runapp.JPG" width="400" height="300">
        <p>Coming Soon!</p>
      </div>      
      <div class="well">
       <p><strong>Learn new work out tips at the Noob menu!</strong></p>
      </div>
      <div class="well">
        <p><strong>Create new playlists in Routine menu!</strong></p>
      </div>
      <div class="well">
        <p><strong>Insert inbody Data in InBody menu!</strong></p>
      </div>
    </div>
  </div>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
</div>
<div id="footer" role="contentinfo">
		<address>
			<em><a href="home" target="_blank" class="logo"><span class="blind">HellChang</span></a></em>
			<em class="copy">Copyright</em>
			<em class="u_cri">©</em>
			<a href="home" target="_blank" class="u_cra">HellChang Corp.</a>
			<span class="all_r">All Rights Reserved.</span>
		</address>
	</div>
<!--ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ modal ver ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ --> 
  <!-- Modal -->
<div class="modal fade" id="myModal" role="dialog">
  <div class="modal-dialog ">
      <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h3 class="modal-title">프로필 사진 바꾸기</h3>
      </div>
      <div class="modal-body" >	
      	<button class="imageChange sel"  tabindex="0">사진업로드</button>
      	<button class="imageChange del" tabindex="0">현재 사진 삭제</button>
        <button class="imageChange can" tabindex="0">취소</button>
        <form style="height: 0;" action="imgUpdate" name="chImg" method="POST" enctype="multipart/form-data">
        	<input type="file" id="image_file" name="image_file">
        </form>
      </div>
    </div>
  </div>
</div>
  <!-- Modal -->
<div class="modal fade" id="deleteModal" role="dialog">
  <div class="modal-dialog ">
      <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h3 class="modal-title">Delete Account</h3>
      </div>
      <div class="modal-body" >	
      	<button class="imageChange ddel"  tabindex="0">Confirm</button>
      	<button class="imageChange ccan" tabindex="0">Cancel</button>
      </div>
    </div>
  </div>
</div>
<script>
function check_form() {
	var idval = document.joinForm.email.value;
	if (idval.charAt(0) < 'A' || idval.charAt(0) > 'z' ) {
 		alert("아이디의 첫글자는 영문자입니다.");
  		document.regform.email.focus();
  		return;
	}
	if (document.joinForm.psw.value =="") {
 		alert("비밀번호를 입력하세요.");
  		document.regform.psw.focus();
  		return;
	}
	if (document.joinForm.psw.value != document.regform.psw-repeat.value) {
 		alert("비밀번호가 일치하지 않습니다.");
  		document.regform.psw.focus();
  		return;
	}
	
	$('#joinformlist').submit();
}
	

</script>

<script>
function sample4_execDaumPostcode() {
   new daum.Postcode({
	    oncomplete: function(data) {
	    	 document.getElementById('zipcode').value = data.zonecode;
	         document.getElementById("address1").value = data.address;
	    }
	}).open();
}
</script>
</body>
</html>
