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
  <link rel="stylesheet" type="text/css" href="resources/jqLib/footer_position2.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="resources/jqLib/jquery-3.2.1.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
  <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
  
  
  <style>
  #p_pos{
  	margin-right: 80px;
  }
  		  
  address {
	color: white;
	margin-bottom:0px;
	}
  #footer{
	clear: both;
    margin: 0 auto;
    padding: 30px 0 15px 0;
    text-align: center;
    margin: 0 auto;
	height: 50px;
    max-width: 100%;
    min-width: 460px;
    background-color: #3d3b3c;
    bottom:0px;
    
	}
  
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
      background-color: #000000;
    }
    
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #3d3b3c;
      padding: 25px;
    }
    
  .carousel-inner img {
      width: 100%; /* Set width to 100% */
      margin: auto;
      min-height:200px;
  }

  /* Hide the carousel text when the screen is less than 600 pixels wide */
  @media (max-width: 600px) {
    .carousel-caption {
      display: none; 
      margin-left: 20	0px;
    }
  }
  @media (min-width: 768px){
	.col-sm-4 {
	  /* margin-left: 200px; */
	  text-align: center;
	}
button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

button:hover {
  opacity:1;
}
.cancelbtn {
  padding: 14px 20px;
  background-color: #f44336;
  text-align: center;
  border-radius: 8px
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
  float: center;
  width: 30%;
  text-align: center;
  border-radius: 8px
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
			<li><a href="#">Routine</a></li>
			<li><a href="dataf">Blog</a></li>
			<li><a href="one">OneRM</a></li>
        
      </ul>
      <ul class="nav navbar-nav navbar-right">
      <li><a href="prof">MyProfile</a></li>
      	<li><a href="joinf">회원가입</a></li>
        <li><a href="loginf"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>
  
<div class="container text-center" style="margin-top:100px" >    
  <div class="row">
    <div class="col-sm-3 well">
      <div class="well">
        <p><a href="myProfile">My Profile</a></p>
        <img src="resources/uploadImage/emptyImage.png" class="img-circle" height="100" width="100" alt="Avatar">
      </div>

		<ul class="nav nav-pills nav-stacked">
		  <li><a href="#">Start Workout</a></li>
		  <li><a href="manageWorkout">Manage Workout</a></li>
		  <li><a href="inbodyf">InBody</a></li>
		  <li><a href="#">Diet</a></li>
		  <li><a href="#">Social</a></li>  
		  <li><a href="updatef">Profile Update</a></li>  
		  
		</ul>
    </div>
    <div class="col-sm-7 ">
    
      <div class="row">
        <div class="col-sm-12" >
          <div class="panel panel-default text-center">
          <div class="panel-heading"><label>UserUpdate</label></div>
            <div class="panel-body">
				 <form action="prof" method="post" >
  <div>
   
    <label for="psw" class="int"><b>Password</b></label><br> 
    <input style="width: 60%; padding: 15px; display: inline-block; border: none; background: #f1f1f1; border-radius: 8px" type="password" placeholder="Enter Password"  name="psw" class="input" required ><br>

    <label for="psw-repeat" class="int"><b>Repeat Password</b></label><br>
    <input  style="width: 60%; padding: 15px; display: inline-block; border: none; background: #f1f1f1; border-radius: 8px" type="password" placeholder="Repeat Password" name="psw-repeat" class="input" required><br>
    
    <label for="name" class="int"><b>Name</b></label><br>
    <input  style="width: 60%; padding: 15px; display: inline-block; border: none; background: #f1f1f1; border-radius: 8px" type="text" placeholder="Name" name="psw-repeat" class="input" required><br>
    
    <label for="phonenumber" class="int"><b>Phone Number</b></label><br>
	<div class="tdcell">
                            <p id="p_txt_phoneNo" class="contxt_tit">${myInfo.phonenumber }</p>
                            <p class="contxt_desc">아이디, 비밀번호 찾기 등 본인확인이 필요한 경우 또는 유료 결제 등 네이버로부터 알림을 받을 때 사용할 휴대전화입니다.</p>
                            <div id="d_phoneNo" style="display: none;">
                                <p id="p_txt_phoneNo_changeYn" class="contxt_tit2"><label for="phoneNo">변경할 휴대전화</label></p>
                                <p class="contxt_webctrl">
                                    <select id="internationalCode" name="internationalCode" class="country_drop" onchange="javascript:setInternationalCode('internationalCode','input_internationalCode', '');">
                                                <option value="233">가나</option>
                                                <option value="241">가봉</option>
                                                <option value="592">가이아나</option>
                                                <option value="220">감비아</option>
                                                <option value="502">과테말라</option>
                                                <option value="1671">괌</option>
                                                <option value="1473">그레나다</option>
                                                <option value="30">그리스</option>
                                                <option value="224">기니</option>
                                                <option value="245">기니비사우</option>
                                                <option value="264">나미비아</option>
                                                <option value="674">나우루</option>
                                                <option value="234">나이지리아</option>
                                                <option value="672">남극,오스트레일리아의외</option>
                                                <option value="27">남아프리카공화국</option>
                                                <option value="31">네덜란드</option>
                                                <option value="599">네덜란드령보네르</option>
                                                <option value="297">네덜란드령아루바</option>
                                                <option value="977">네팔</option>
                                                <option value="47">노르웨이</option>
                                                <option value="64">뉴질랜드</option>
                                                <option value="683">뉴질랜드령니우에</option>
                                                <option value="690">뉴질랜드령토켈라우제도</option>
                                                <option value="227">니제르</option>
                                                <option value="505">니카라과</option>
                                                <option value="82">대한민국</option>
                                                <option value="45">덴마크</option>
                                                <option value="299">덴마크령그린란드</option>
                                                <option value="298">덴마크령페로제도</option>
                                                <option value="1809">도미니카공화국</option>
                                                <option value="1829">도미니카공화국 2</option>
                                                <option value="1849">도미니카공화국 3</option>
                                                <option value="49">독일</option>
                                                <option value="670">동티모르</option>
                                                <option value="856">라오스</option>
                                                <option value="231">라이베리아</option>
                                                <option value="371">라트비아</option>
                                                <option value="7">러시아/카자흐스탄</option>
                                                <option value="961">레바논</option>
                                                <option value="266">레소토</option>
                                                <option value="40">루마니아</option>
                                                <option value="352">룩셈부르크</option>
                                                <option value="250">르완다</option>
                                                <option value="218">리비아</option>
                                                <option value="370">리투아니아</option>
                                                <option value="423">리히텐슈타인</option>
                                                <option value="261">마다가스카르</option>
                                                <option value="692">마셜제도공화국</option>
                                                <option value="691">마이크로네시아연방</option>
                                                <option value="853">마카오</option>
                                                <option value="389">마케도니아공화국</option>
                                                <option value="265">말라위</option>
                                                <option value="60">말레이시아</option>
                                                <option value="223">말리</option>
                                                <option value="52">멕시코</option>
                                                <option value="377">모나코</option>
                                                <option value="212">모로코</option>
                                                <option value="230">모리셔스</option>
                                                <option value="222">모리타니아</option>
                                                <option value="258">모잠비크</option>
                                                <option value="382">몬테네그로</option>
                                                <option value="373">몰도바</option>
                                                <option value="960">몰디브</option>
                                                <option value="356">몰타</option>
                                                <option value="976">몽골</option>
                                                <option value="1">미국/캐나다</option>
                                                <option value="1670">미국령북마리아나제도</option>
                                                <option value="95">미얀마</option>
                                                <option value="678">바누아투</option>
                                                <option value="973">바레인</option>
                                                <option value="1246">바베이도스</option>
                                                <option value="1242">바하마</option>
                                                <option value="880">방글라데시</option>
                                                <option value="229">베냉</option>
                                                <option value="58">베네수엘라</option>
                                                <option value="84">베트남</option>
                                                <option value="32">벨기에</option>
                                                <option value="375">벨라루스</option>
                                                <option value="501">벨리즈</option>
                                                <option value="387">보스니아헤르체고비나</option>
                                                <option value="267">보츠와나</option>
                                                <option value="591">볼리비아</option>
                                                <option value="257">부룬디</option>
                                                <option value="226">부르키나파소</option>
                                                <option value="975">부탄</option>
                                                <option value="359">불가리아</option>
                                                <option value="55">브라질</option>
                                                <option value="673">브루나이</option>
                                                <option value="685">사모아</option>
                                                <option value="966">사우디아라비아</option>
                                                <option value="378">산마리노</option>
                                                <option value="239">상투메프린시페</option>
                                                <option value="221">세네갈</option>
                                                <option value="381">세르비아</option>
                                                <option value="248">세이셀</option>
                                                <option value="1784">세인트빈센트그레나딘</option>
                                                <option value="252">소말리아</option>
                                                <option value="677">솔로몬제도</option>
                                                <option value="249">수단</option>
                                                <option value="597">수리남</option>
                                                <option value="94">스리랑카</option>
                                                <option value="268">스와질랜드</option>
                                                <option value="46">스웨덴</option>
                                                <option value="41">스위스</option>
                                                <option value="34">스페인</option>
                                                <option value="421">슬로바키아</option>
                                                <option value="386">슬로베니아</option>
                                                <option value="963">시리아</option>
                                                <option value="232">시에라리온</option>
                                                <option value="65">싱가포르</option>
                                                <option value="971">아랍에미리트</option>
                                                <option value="374">아르메니아</option>
                                                <option value="54">아르헨티나</option>
                                                <option value="1684">아메리칸사모아</option>
                                                <option value="354">아이슬란드</option>
                                                <option value="509">아이티</option>
                                                <option value="353">아일랜드</option>
                                                <option value="994">아제르바이잔</option>
                                                <option value="93">아프가니스탄</option>
                                                <option value="376">안도라</option>
                                                <option value="355">알바니아</option>
                                                <option value="213">알제리</option>
                                                <option value="244">앙골라</option>
                                                <option value="251">에디오피아</option>
                                                <option value="291">에리트레아</option>
                                                <option value="372">에스토니아</option>
                                                <option value="593">에콰도르</option>
                                                <option value="503">엘살바도르</option>
                                                <option value="44">영국</option>
                                                <option value="290">영국령세인트헬레나</option>
                                                <option value="246">영국령인도양지역</option>
                                                <option value="350">영국령지브롤터</option>
                                                <option value="500">영국령포클랜드제도</option>
                                                <option value="967">예멘</option>
                                                <option value="968">오만</option>
                                                <option value="43">오스트리아</option>
                                                <option value="504">온두라스</option>
                                                <option value="962">요르단</option>
                                                <option value="256">우간다</option>
                                                <option value="598">우루과이</option>
                                                <option value="998">우즈베키스탄</option>
                                                <option value="380">우크라이나</option>
                                                <option value="964">이라크</option>
                                                <option value="98">이란</option>
                                                <option value="972">이스라엘</option>
                                                <option value="20">이집트</option>
                                                <option value="39">이탈리아</option>
                                                <option value="91">인도</option>
                                                <option value="62">인도네시아</option>
                                                <option value="81">일본</option>
                                                <option value="1876">자메이카</option>
                                                <option value="260">잠비아</option>
                                                <option value="240">적도기니</option>
                                                <option value="995">조지아</option>
                                                <option value="86">중국</option>
                                                <option value="236">중앙아프리카공화국</option>
                                                <option value="253">지부티</option>
                                                <option value="263">짐바브웨</option>
                                                <option value="235">차드</option>
                                                <option value="420">체코</option>
                                                <option value="56">칠레</option>
                                                <option value="237">카메룬</option>
                                                <option value="238">카보베르데</option>
                                                <option value="974">카타르</option>
                                                <option value="855">캄보디아왕국</option>
                                                <option value="254">케냐</option>
                                                <option value="269">코모로,마요트</option>
                                                <option value="506">코스타리카</option>
                                                <option value="225">코트디부아르</option>
                                                <option value="57">콜롬비아</option>
                                                <option value="242">콩고</option>
                                                <option value="243">콩고민주공화국</option>
                                                <option value="53">쿠바</option>
                                                <option value="965">쿠웨이트</option>
                                                <option value="682">쿡제도</option>
                                                <option value="385">크로아티아</option>
                                                <option value="996">키르기스스탄</option>
                                                <option value="686">키리바시</option>
                                                <option value="357">키프로스</option>
                                                <option value="886">타이완</option>
                                                <option value="992">타지키스탄</option>
                                                <option value="255">탄자니아</option>
                                                <option value="66">태국</option>
                                                <option value="90">터키</option>
                                                <option value="228">토고</option>
                                                <option value="676">통가</option>
                                                <option value="993">투르크메니스탄</option>
                                                <option value="216">튀니지</option>
                                                <option value="1868">트리니다드토바고</option>
                                                <option value="507">파나마</option>
                                                <option value="595">파라과이</option>
                                                <option value="92">파키스탄</option>
                                                <option value="675">파푸아뉴기니</option>
                                                <option value="680">팔라우</option>
                                                <option value="970">팔레스타인</option>
                                                <option value="51">페루</option>
                                                <option value="351">포르투갈</option>
                                                <option value="48">폴란드</option>
                                                <option value="1787">푸에르토리코</option>
                                                <option value="33">프랑스</option>
                                                <option value="590">프랑스령과들루프</option>
                                                <option value="594">프랑스령기아나</option>
                                                <option value="687">프랑스령뉴칼레도니아</option>
                                                <option value="262">프랑스령레위니옹</option>
                                                <option value="596">프랑스령마르티니크</option>
                                                <option value="508">프랑스령생피에르미클롱</option>
                                                <option value="681">프랑스령월리스푸투나제</option>
                                                <option value="689">프랑스령폴리네시아</option>
                                                <option value="679">피지</option>
                                                <option value="358">핀란드</option>
                                                <option value="63">필리핀</option>
                                                <option value="36">헝가리</option>
                                                <option value="61">호주</option>
                                                <option value="852">홍콩</option>
                                    </select>
								    <span class="country_code_w">
                                        <span id="input_internationalCode" class="country_code">+82</span>
										<input type="text" id="phoneNo" name="phoneNo" maxlength="14" onkeydown="check_num_ajax2('phoneNo', '2', 'e_phoneNo','e_authNo');">
                                    </span>
                                </p>
                                <p id="e_phoneNo" class="contxt_alert"></p>

                                <p id="e_authNo" class="contxt_alert"></p>

                                <p class="btn_area_btm">
                                    <a href="#" onclick="cancelChange('phoneNo');return false;" class="btn_model"><b id="b_txt_phoneNo_cncl" class="btn2">수정취소</b></a>
                                    <a href="#" onclick="checkAuthNoForChangePhoneNo();return false;" class="btn_model"><b id="b_txt_phoneNo_reg" class="btn3">수정완료</b></a>
                                </p>
                            </div>
                            <p id="p_phoneNo" class="btn_area_btm" style="display: block;">
                                <a href="#" onclick="display('phoneNo');return false;" class="btn_model"><b class="btn2">수정</b></a>
                            </p>
                        </div>
	
	
	
	
	<label for="location" class="int"><b>location</b></label><br>
	<input style="width: 20%; padding: 15px; display: inline-block; border: none; background: #f1f1f1; border-radius: 8px; margin-right: 40%; cursor: pointer;" type="text" name="zipcode" id="zipcode" size="7" onClick="sample4_execDaumPostcode()" readonly placeholder="우편번호" required>
	<br><br>
    <input  style="width: 60%; padding: 15px;  display: inline-block; border: none; background: #f1f1f1; border-radius: 8px" type="text" name="address" id="address" readonly placeholder="주소입력해주세요" required><br><br>
    <input  style="width: 60%; padding: 15px;  display: inline-block; border: none; background: #f1f1f1; border-radius: 8px" type="text" name="address1" id="address1" placeholder="상세주소를 입력해주세요" required>
    <br>
    <label class="int">
      <input type="checkbox" checked="checked" name="remember" class="input" style="margin-bottom:15px"> Remember me
    </label>

    <div class="clearfix">
      <button type="reset" class="cancelbtn">Cancel</button>
      <button type="submit" class="signupbtn">Sign Up</button>
    </div>
  </div>
</form>
         </div>

          </div>
        </div>
      </div>
      
   
  </div>
 </div> 
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
<script type="text/javascript">
    var element_p_myLetterEmail = document.getElementById("p_myLetterEmail");
    var element_i_myLetterEmail = document.getElementById("i_myLetterEmail");
    var element_d_myLetterEmail = document.getElementById("d_myLetterEmail");
    var element_confirmMyLetterEmail = document.getElementById("confirmMyLetterEmail");
    var element_myLetterEmail = document.getElementById("myLetterEmail");
    var element_myLetterEmailAuthNo = document.getElementById("myLetterEmailAuthNo");
    var element_e_myLetterEmail1 = document.getElementById("e_myLetterEmail1");
    var element_e_myLetterEmail2 = document.getElementById("e_myLetterEmail2");
    var element_e_myLetterEmail3 = document.getElementById("e_myLetterEmail3");
    var element_p_pswdEmail = document.getElementById("p_pswdEmail");
    var element_i_pswdEmail = document.getElementById("i_pswdEmail");
    var element_d_pswdEmail = document.getElementById("d_pswdEmail");
    var element_confirmPswdEmail = document.getElementById("confirmPswdEmail");
    var element_pswdEmail = document.getElementById("pswdEmail");
    var element_pswdEmailAuthNo = document.getElementById("pswdEmailAuthNo");
    var element_e_pswdEmail1 = document.getElementById("e_pswdEmail1");
    var element_e_pswdEmail2 = document.getElementById("e_pswdEmail2");
    var element_e_pswdEmail3 = document.getElementById("e_pswdEmail3");
    var element_isEmailYn = document.getElementById("isEmailYn");


    setContainerHeight(setContainerHeight(document.getElementById('content').clientHeight));

    //<![CDATA[
    //nClicks 전역변수
    var nsc = "my.info"+ "";
    var ccsrv = "cc.naver.com";
    //]]>

    function changeName(){
        clickcr(this,'inf.rename','','',window.event);

        var rurl = "/user2/help/changeUserInfo.nhn";
        document.location = "/user2/help/realNameCheck.nhn?type=20&rurl=" + encodeURIComponent(rurl + "?lang=ko_KR") + "&surl=" + encodeURIComponent(rurl + "?lang=ko_KR") + "&lang=ko_KR";
    }

    function cert_realnm() {
        clickcr(this,'inf.idconfirm','','',window.event);

        var rurl = "/user2/help/changeUserInfo.nhn";
        document.location = "/user2/help/realNameCheck.nhn?type=common&rurl="+ encodeURIComponent(rurl + "?lang=ko_KR") + "&surl=" + encodeURIComponent(rurl+ "?lang=ko_KR") + "&lang=ko_KR";
    }

    function setEmsCheck(){
        clickcr(this,'inf.letter','','',window.event);

        var isChecked = document.getElementById("isEmsCheck").checked;
        if(isChecked == false){
            if(confirm("수신 동의를 해제하시면, 네이버에서 제공하는 이벤트 등 프로모션 관련 안내 메일을 받지 못하게 됩니다. 정말 수신 동의를 해제하시겠습니까?")){
                setEmsInfo();
                return;
            }else{
                document.getElementById("isEmsCheck").checked = true;
            }
            return
        }else{
            setEmsInfo();
        }
        return;
    }

    var setEmailFlag = false;
    function setEmail(){
        if (setEmailFlag === true) {
            return;
        }

        clickcr(this,'inf.primarycomplete','','',window.event);

        element_e_myLetterEmail1.className = "contxt_alert";
        element_e_myLetterEmail1.innerHTML =  "";
        element_e_myLetterEmail2.className = "contxt_alert";
        element_e_myLetterEmail2.innerHTML =  "";
        element_e_myLetterEmail2.style.display = "none";
        element_e_myLetterEmail3.innerHTML =  "";

        if (element_myLetterEmail.disabled == true) {
            element_e_myLetterEmail1.innerHTML = "안전한 정보 변경을 위해 먼저 현재 이메일 주소를 정확히 입력해주세요.(예 : abc@naver.com)";
            return;
        }

        if (element_myLetterEmail.value == "" || element_myLetterEmail.value.replace(/^\s+/, "") == "") {
            element_e_myLetterEmail2.innerHTML =  "연락처 이메일을 정확하게 입력해 주세요.";
            element_e_myLetterEmail2.style.display = "block";
            element_myLetterEmail.focus();
            element_myLetterEmail.value = "";
            return;
        }

        if (!isValid_email_myinfo(element_myLetterEmail.value.replace(/^\s+/, ""), "e_myLetterEmail2") ){
            element_e_myLetterEmail2.innerHTML =  "이메일 형식이 올바르지 않습니다.";
            element_e_myLetterEmail2.style.display = "block";
            element_myLetterEmail.focus();
            element_myLetterEmail.value = "";
            return;
        }

        if (element_myLetterEmail.value != "" && element_myLetterEmail.disabled == true){
            element_e_myLetterEmail2.innerHTML =  "[인증] 버튼을 클릭하여, 인증번호를 받아주세요.";
            element_e_myLetterEmail2.style.display = "block";
            return;
        }

        if (element_myLetterEmailAuthNo.disabled == false && element_myLetterEmailAuthNo.value.length != 6){
            if(element_myLetterEmailAuthNo.value.length == 0){
                element_e_myLetterEmail3.innerHTML =  "인증번호를 입력해 주세요.";
            }else{
                element_e_myLetterEmail3.innerHTML =  "인증번호를 정확하게 입력해 주세요.";
            }
            element_myLetterEmail.focus();
            return;
        }

        setMyLetterEmail(setEmailFlag);
        return;
    }

    var doConfirmMyLetterEmailFlag = false;
    function doConfirmMyLetterEmail() {
        if (doConfirmMyLetterEmailFlag === true) {
            return;
        }

        clickcr(this,'inf.primaryconfirm','','',window.event);

        element_e_myLetterEmail1.className = "contxt_alert";
        element_e_myLetterEmail1.innerHTML = "";

        if (element_confirmMyLetterEmail.value == "" || element_confirmMyLetterEmail.value.replace(/^\s+/, "") == "") {
            element_e_myLetterEmail1.innerHTML =  "연락처 이메일을 정확하게 입력해 주세요.";
            element_confirmMyLetterEmail.focus();
            element_confirmMyLetterEmail.value = "";
            return;
        }

        if( !isValid_email_myinfo(element_confirmMyLetterEmail.value.replace(/^\s+/, ""), "e_myLetterEmail1") ){
            element_e_myLetterEmail1.innerHTML =  "이메일 형식이 올바르지 않습니다.";
            element_confirmMyLetterEmail.focus();
            element_confirmMyLetterEmail.value = "";
            return;
        }

        confirmMyLetterEmail(doConfirmMyLetterEmailFlag);
    }

    var doConfirmPswdEmailFlag = false;
    function doConfirmPswdEmail() {
        if (doConfirmPswdEmailFlag === true) {
            return;
        }

        clickcr(this,'inf.recoveryconfirm','','',window.event);

        element_e_pswdEmail1.className = "contxt_alert";
        element_e_pswdEmail1.innerHTML = "";

        if(element_isEmailYn.value == "Y") {
            if (element_confirmPswdEmail.value == "" || element_confirmPswdEmail.value.replace(/^\s+/, "") == "") {
                element_e_pswdEmail1.innerHTML = "본인확인 이메일을 정확하게 입력해 주세요.";
                element_confirmPswdEmail.focus();
                element_confirmPswdEmail.value = "";
                return;
            }

            if( !isValid_email_myinfo(element_confirmPswdEmail.value.replace(/^\s+/, ""), "e_pswdEmail1") ){
                element_confirmPswdEmail.focus();
                element_confirmPswdEmail.value = "";
                return;
            }

            confirmPasswdEmail(doConfirmPswdEmailFlag);
        }
    }

    var sendAuthNoForEmailAuthFlag = false;
    function sendAuthNoForEmailAuth(obj) {
        if (sendAuthNoForEmailAuthFlag === true) {
            return;
        }

        if (document.getElementById(obj).disabled == true) {
            document.getElementById("e_" + obj + "1").innerHTML = "안전한 정보 변경을 위해 먼저 현재 이메일 주소를 정확히 입력해주세요.(예 : abc@naver.com)";
            return;
        }

        if (obj == 'myLetterEmail') {
            clickcr(this,'inf.primarychangeverify','','',window.event);

            element_e_myLetterEmail1.innerHTML = "";
            element_e_myLetterEmail1.className = "contxt_alert";
            element_e_myLetterEmail2.innerHTML = "";
            element_e_myLetterEmail2.style.display = "none";
            element_e_myLetterEmail2.className = "contxt_alert";
            element_e_myLetterEmail3.innerHTML = "";
            element_myLetterEmailAuthNo.value = "";

            if (element_myLetterEmail.value == "" || element_myLetterEmail.value.replace(/^\s+/, "") == "") {
                element_e_myLetterEmail2.innerHTML =  "연락처 이메일을 정확하게 입력해 주세요.";
                element_e_myLetterEmail2.style.display = "block";
                element_myLetterEmail.focus();
                element_myLetterEmail.value = "";
                return;
            }
        } else {
            clickcr(this,'inf.recoverychangeverify','','',window.event);

            element_e_pswdEmail1.innerHTML = "";
            element_e_pswdEmail1.className = "contxt_alert";
            element_e_pswdEmail2.innerHTML = "";
            element_e_pswdEmail2.style.display = "none";
            element_e_pswdEmail2.className = "contxt_alert";
            element_e_pswdEmail3.innerHTML = "";
            element_pswdEmailAuthNo.value = "";

            if (element_pswdEmail.value == "" || element_pswdEmail.value.replace(/^\s+/, "") == "") {
                element_e_pswdEmail2.innerHTML =  "본인확인 이메일을 정확하게 입력해 주세요.";
                element_e_pswdEmail2.style.display = "block";
                element_pswdEmail.focus();
                element_pswdEmail.value = "";
                return;
            }
        }

        if( !isValid_email_myinfo(document.getElementById(obj).value.replace(/^\s+/, ""), "e_" + obj + "2") ){
            document.getElementById("e_" + obj + "2").innerHTML =  "이메일 형식이 올바르지 않습니다.";
            document.getElementById("e_" + obj + "2").style.display = "block";
            document.getElementById(obj).focus();
            document.getElementById(obj).value = "";
            return;
        }

        getAjaxSendAuthNoForEmailAuth(obj, sendAuthNoForEmailAuthFlag);
    }

    function userMobile(emailType){
        clickcr(this,'inf.recoveryverify','','',window.event);

        var ua = window.navigator.userAgent.toLowerCase();
        if (/crios/.test(ua) && /ipad/.test(ua)) {
            alert("접속하신 브라우저에서는 본인 휴대전화 인증이 지원되지 않습니다. 다른 브라우저를 이용해 주세요.");
            return;
        }

        winOpenAtCenter("/user2/help/changeUserInfo.nhn?m=viewUserMobile&token_help=Kvj1bOJay94wgJh4&emailType="+emailType, "auth", 400, 490, 'auto');
        return;
    }

    var setPswdEmailFlag = false;
    function setPswdEmail() {
        if (setPswdEmailFlag === true) {
            return;
        }

        if(element_isEmailYn.value == "Y"){
            clickcr(this,'inf.recoverycomplete','','',window.event);
        }else{
            clickcr(this,'inf.recoveryregcomplete','','',window.event);
        }

        element_e_pswdEmail1.className = "contxt_alert";
        element_e_pswdEmail1.innerHTML =  "";
        element_e_pswdEmail2.className = "contxt_alert";
        element_e_pswdEmail2.innerHTML =  "";
        element_e_pswdEmail2.style.display =  "none";
        element_e_pswdEmail3.innerHTML =  "";

        if(element_isEmailYn.value == "N" && element_pswdEmail.value == ""){
            element_e_pswdEmail2.innerHTML =  "삭제하실 이메일 주소가 없습니다.";
            element_e_pswdEmail2.style.display =  "block";
            return;
        }

        if (element_isEmailYn.value == "Y" && element_pswdEmail.disabled == true) {
            element_e_pswdEmail1.innerHTML = "안전한 정보 변경을 위해 먼저 현재 이메일 주소를 정확히 입력해주세요.(예 : abc@naver.com)";
            return;
        }

        if (element_pswdEmail.value == "" || element_pswdEmail.value.replace(/^\s+/, "") == "") {
            if(!confirm("본인확인 이메일을 삭제하시겠습니까?")){
                element_pswdEmail.focus();
                return;
            }
        }else{
            if(element_pswdEmail.value != "" &&  !isValid_pswdEmail(element_pswdEmail.value.replace(/^\s+/, ""), "e_pswdEmail2") ){
                element_pswdEmail.focus();
                element_pswdEmail.value = "";
                return;
            }

            if (element_pswdEmailAuthNo.disabled == true) {
                element_e_pswdEmail2.innerHTML =  "[인증] 버튼을 클릭하여, 인증번호를 받아주세요.";
                element_e_pswdEmail2.style.display =  "block";
                return;
            }

            if (element_pswdEmailAuthNo.disabled == false && element_pswdEmailAuthNo.value.length != 6){
                if(element_pswdEmailAuthNo.value.length == 0){
                    element_e_pswdEmail3.innerHTML =  "인증번호를 입력해 주세요.";
                }else{
                    element_e_pswdEmail3.innerHTML =  "인증번호를 정확하게 입력해 주세요.";
                }
                element_pswdEmailAuthNo.focus();
                return;
            }
        }

        setPasswdEmail(setPswdEmailFlag);
        return;
    }

    var sendSmsForChangePhoneNoFlag = false;
    function sendSmsForChangePhoneNo(){
        if (sendSmsForChangePhoneNoFlag === true) {
            return;
        }

        if(document.getElementById("phoneNo").value == ""){
            document.getElementById("e_phoneNo").innerHTML =  "인증받으실 휴대전화 번호를 입력하세요.";
            return;
        }

        clickcr(this,'inf.mphoneverify','','',window.event);

        sendAuthNo(sendSmsForChangePhoneNoFlag);
    }

    function setInternationalCode(obj, viewTarget, param){
        if(param == ''){
            var index = document.getElementById(obj).selectedIndex;
            document.getElementById(viewTarget).innerHTML = "+" + document.getElementById(obj).options[index].value;
        }else{
            document.getElementById(viewTarget).innerHTML = "+" + param;
            for(index=0; index < document.getElementById(obj).length; index++){
                if(document.getElementById(obj).options[index].value == param ){
                    document.getElementById(obj).options[index].selected = true;
                    break;
                }
            }
        }
    }

    var checkAuthNoForChangePhoneNoFlag = false;
    function checkAuthNoForChangePhoneNo() {
        if (checkAuthNoForChangePhoneNoFlag === true) {
            return;
        }

        if(document.getElementById("isPhoneYn").value == "Y"){
            clickcr(this,'inf.mphonecomplete','','',window.event);
        }else{
            clickcr(this,'inf.mphoneregcomplete','','',window.event);
        }

        if(document.getElementById("isPhoneYn").value == "N" && document.getElementById("phoneNo").value == "" && document.getElementById("authNo").disabled == true){
            document.getElementById("e_phoneNo").innerHTML =  "휴대전화 번호를 정확하게 입력하세요.";
            return;
        }

        if((document.getElementById("phoneNo").value != "" && document.getElementById("phoneNo").value.length >= 7) && document.getElementById("authNo").disabled == true){
            document.getElementById("e_phoneNo").innerHTML =  "[인증] 버튼을 클릭하여, 인증번호를 받아주세요.";
            document.getElementById("e_authNo").innerHTML =  "";
            return;
        }

        if(document.getElementById("phoneNo").value == "" && document.getElementById("authNo").disabled == true){
            alert("휴대전화 번호를 입력해 주세요.");
            document.getElementById("phoneNo").focus();
            return;
        }

        if(document.getElementById("phoneAuthYn").value == "N" && document.getElementById("phoneNo").value.length < 7 && document.getElementById("phoneNo").value.length != 0){
            document.getElementById("e_phoneNo").innerHTML =  "휴대전화 번호를 정확하게 입력하세요.";
            document.getElementById("e_authNo").innerHTML =  "";
            document.getElementById("phoneNo").focus();
            return;
        }

        if(document.getElementById("authNo").disabled == false && document.getElementById("authNo").value.length < 6){
            if(document.getElementById("authNo").value.length == 0){
                document.getElementById("e_authNo").innerHTML =  "인증번호를 입력해 주세요.";
            }else{
                document.getElementById("e_authNo").innerHTML =  "인증번호를 정확하게 입력해 주세요.";
            }
            document.getElementById("e_phoneNo").innerHTML =  "";
            document.getElementById("authNo").focus();
            return;
        }

        checkAuthNo(checkAuthNoForChangePhoneNoFlag);
    }

    function cancelChange(obj){
        if(obj == "myLetterEmail") {
            hideMyLetterEmail();

            clickcr(this,'inf.primarycancel','','',window.event);
        }

        if(obj == "pswdEmail") {
            if(element_i_pswdEmail.style.display == "block"){
                clickcr(this,'inf.emailcancel','','',window.event);
            }else{
                if(element_isEmailYn.value == "Y"){
                    clickcr(this,'inf.recoverycancel','','',window.event);
                }else{
                    clickcr(this,'inf.recoveryregcancel','','',window.event);
                }
            }

            hidePswdEmail();
        }

        if(obj == "phoneNo") {
            document.getElementById("d_" + obj).style.display = "none";
            document.getElementById("p_" + obj).style.display = "block";
            document.getElementById(obj).value = "";
            if(document.getElementById("authNo").disabled == false) {
                document.getElementById("authNo").value = "";
            }
            document.getElementById("authNo").disabled = true;
            document.getElementById("e_" + obj).innerHTML = "";
            document.getElementById("e_authNo").innerHTML = "";

            if(document.getElementById("isPhoneYn").value == "Y"){
                clickcr(this,'inf.mphonecancel','','',window.event);
            }else{
                clickcr(this,'inf.mphoneregcancel','','',window.event);
            }
        }
    }

    function display(obj) {
        document.getElementById("p_" + obj).style.display = "none";

        if(obj == "pswdEmail") {
            if (element_isEmailYn.value == "Y") {
                element_i_pswdEmail.style.display = "block";
            } else {
                element_pswdEmail.disabled = false;
            }
            element_d_pswdEmail.style.display = "block";

            if (element_isEmailYn.value == "Y") {
                clickcr(this, 'inf.recoveryedit', '', '', window.event);
            } else {
                clickcr(this, 'inf.recoveryregister', '', '', window.event);
            }
        } else if(obj == "myLetterEmail") {
            element_i_myLetterEmail.style.display = "block";
            element_d_myLetterEmail.style.display = "block";

            clickcr(this,'inf.primaryedit','','',window.event);
        }else{
            document.getElementById("d_" + obj).style.display = "block";
        }

        if(obj == "phoneNo"){
            if(document.getElementById("isPhoneYn").value == "Y"){
                clickcr(this,'inf.mphoneedit','','',window.event);
            }else{
                clickcr(this,'inf.mphoneregister','','',window.event);
            }

            setInternationalCode('internationalCode','input_internationalCode','82');
        }

        setContainerHeight(document.getElementById('content').clientHeight);
    }

    function toggle(obj) {
        if(document.getElementById("p_" + obj).style.display == "block"){
            document.getElementById("p_" + obj).style.display="none";
            document.getElementById("i_" + obj).className="spico ico_arr4_dn";
        }else{
            document.getElementById("p_" + obj).style.display="block";
            document.getElementById("i_" + obj).className="spico ico_arr4_up";
        }

        clickcr(this,'inf.letterguide','','',window.event);

        setContainerHeight(document.getElementById('content').clientHeight);
    }

    var CHANGE_USER_INFO_URL       = "/user2/help/changeUserInfo.nhn";

    function setEmsInfo( fromId, obj, obj2, setYn ) {
        var token = 'Kvj1bOJay94wgJh4';
        var mobileYn = document.getElementById("mobileYn").value;

        var urls = CHANGE_USER_INFO_URL + "?m=setEmsInfo&token_help=" + token;
        $.ajax({
            type: "GET",
            url: urls,
            success: function (data) {
                msgKey = data.substr(4,999);

                var list = msgKey.split("|",2);
                if(msgKey.length > 300){
                    alert("유효 시간이 초과 되었습니다. 다시 시도해 주세요.");
                    if(mobileYn == "Y"){
                        document.location.href="https://nid.naver.com/mobile/user/help/changeUserInfo.nhn?lang=ko_KR";
                    }else{
                        document.location.href="https://nid.naver.com/user2/help/changeUserInfo.nhn?lang=ko_KR";
                    }
                }else{
                    if(list[0] == "-1"){
                        alert(list[1]);
                        if(document.getElementById("isEmsCheck").checked == true){
                            document.getElementById("isEmsCheck").checked = false;
                        }else{
                            document.getElementById("isEmsCheck").checked = true;
                        }
                    }else if(list[0] == "1"){
                        alert(list[1]);
                        document.getElementById("isEmsCheck").checked = true;
                        document.getElementById("p_emsCheck").style.display = "block";
                        if(mobileYn == "Y"){
                            document.getElementById("i_emsCheck").className="btn_help sp up";
                        }else{
                            document.getElementById("i_emsCheck").className="spico ico_arr4_up";
                        }
                    }else if(list[0] == "0"){
                        document.getElementById("isEmsCheck").checked = false;
                        document.getElementById("p_emsCheck").style.display = "block";
                        if(mobileYn == "Y"){
                            document.getElementById("i_emsCheck").className="btn_help sp up";
                        }else{
                            document.getElementById("i_emsCheck").className="spico ico_arr4_up";
                        }
                    }
                }
            },
            error: function (xhr, status, error) {
                alert("일시적인 오류입니다. 잠시 후 다시 시도해 주세요.");
                rurl = "https://nid.naver.com/user2/help/myInfo.nhn?lang=ko_KR";
                $(location).attr("href", rurl);
            }
        });
    }

    function confirmMyLetterEmail(submitFlag) {
        if (submitFlag === true) {
            return;
        } else {
            submitFlag = true;
        }

        var token = 'Kvj1bOJay94wgJh4';
        var myLetterEmail = element_confirmMyLetterEmail.value;

        var urls = CHANGE_USER_INFO_URL + "?m=checkMyLetterEmail&token_help=" + token;

        $.ajax({
            type: "POST",
            url: urls,
            data: {"myLetterEmail" : myLetterEmail},
            success: function (data) {
                handleSessionExpiredErr(data);

                var result = JSON.parse(data);
                if (result.resultCode == 0) {
                    element_e_myLetterEmail1.className = "contxt_alert green";
                    element_e_myLetterEmail1.innerHTML = "이메일 주소가 현재 회원정보와 일치합니다. 변경할 이메일을 입력해주세요.";
                    element_myLetterEmail.disabled = false;
                    element_myLetterEmail.focus();
                    document.getElementById('label_myLetterEmail').style.display = "none";
                } else {
                    element_e_myLetterEmail1.className = "contxt_alert";
                    element_e_myLetterEmail1.innerHTML = result.resultMsg;
                }
            },
            error: function (xhr, status, error) {
                alert("일시적인 오류입니다. 잠시 후 다시 시도해 주세요.");
                rurl = "https://nid.naver.com/user2/help/myInfo.nhn?lang=ko_KR";
                $(location).attr("href", rurl);
            },
            complete : function() {
                submitFlag = false;
            }
        });
    }

    function getAjaxSendAuthNoForEmailAuth(obj, submitFlag) {
        if (submitFlag === true) {
            return;
        } else {
            submitFlag = true;
        }

        var token = 'Kvj1bOJay94wgJh4';
        var email = document.getElementById(obj).value;
        var urls = CHANGE_USER_INFO_URL + "?m=sendAuthNoForEmail&token_help=" + token;

        $.ajax({
            type: "POST",
            url: urls,
            data: {"email" : email},
            success: function (data) {
                handleSessionExpiredErr(data);

                var result = JSON.parse(data);
                if (result.resultCode == 0) {
                    document.getElementById(obj + 'AuthNo').disabled = false;
                    document.getElementById(obj + 'AuthNo').focus();
                    document.getElementById('label_' + obj + 'AuthNo').style.display = "none";
                    document.getElementById("e_" + obj + "2").className = "contxt_alert green";
                } else {
                    document.getElementById("e_" + obj + "2").className = "contxt_alert";
                }
                document.getElementById("e_" + obj + "2").innerHTML = result.resultMsg;
                document.getElementById("e_" + obj + "2").style.display = "block";
            },
            error: function (xhr, status, error) {
                alert("일시적인 오류입니다. 잠시 후 다시 시도해 주세요.");
                rurl = "https://nid.naver.com/user2/help/myInfo.nhn?lang=ko_KR";
                $(location).attr("href", rurl);
            },
            complete: function() {
                submitFlag = false;
            }
        });
    }

    function setMyLetterEmail(submitFlag) {
        if (submitFlag === true) {
            return;
        } else {
            submitFlag = true;
        }

        var token = 'Kvj1bOJay94wgJh4';
        var myLetterEmail = element_myLetterEmail.value;
        var authNo = element_myLetterEmailAuthNo.value;

        var urls = CHANGE_USER_INFO_URL + "?m=setMyLetterEmailWithVerification&token_help=" + token;

        $.ajax({
            type: "POST",
            url: urls,
            data: {"myLetterEmail" : myLetterEmail, "authNo" : authNo},
            success: function (data) {
                handleSessionExpiredErr(data);

                var result = JSON.parse(data);
                if (result.resultCode == 0) {
                    document.getElementById("p_txt_myLetterEmail").innerHTML = result.resultMsg;
                    element_p_myLetterEmail.innerHTML = "<a href=\"#\" onclick=\"display('myLetterEmail');return false;\" class=\"btn_model\"><b class=\"btn2\">수정</b></a>";
                    hideMyLetterEmail();
                } else if (result.resultCode == -2) {
                    element_e_myLetterEmail3.innerHTML = result.resultMsg;
                } else {
                    element_e_myLetterEmail2.innerHTML = result.resultMsg;
                    element_e_myLetterEmail2.style.display = "block";
                }
            },
            error: function (xhr, status, error) {
                alert("일시적인 오류입니다. 잠시 후 다시 시도해 주세요.");
                rurl = "https://nid.naver.com/user2/help/myInfo.nhn?lang=ko_KR";
                $(location).attr("href", rurl);
            },
            complete: function () {
                submitFlag = false;
            }
        });
    }

    function hideMyLetterEmail() {
        element_p_myLetterEmail.style.display = "block";
        element_i_myLetterEmail.style.display = "none";
        element_d_myLetterEmail.style.display = "none";
        element_confirmMyLetterEmail.value = "";
        element_myLetterEmail.value = "";
        element_myLetterEmailAuthNo.value = "";
        element_myLetterEmail.disabled = true;
        element_myLetterEmailAuthNo.disabled = true;
        element_e_myLetterEmail1.innerHTML = "";
        element_e_myLetterEmail2.innerHTML = "";
        element_e_myLetterEmail3.innerHTML = "";
        element_e_myLetterEmail2.style.display = "none";
        document.getElementById("label_myLetterEmail").style.display = "block";
        document.getElementById("label_myLetterEmailAuthNo").style.display = "block";
    }

    function hidePswdEmail() {
        element_p_pswdEmail.style.display = "block";
        element_i_pswdEmail.style.display = "none";
        element_d_pswdEmail.style.display = "none";
        element_confirmPswdEmail.value = "";
        element_pswdEmail.value = "";
        element_pswdEmailAuthNo.value = "";
        element_pswdEmail.disabled = true;
        element_pswdEmailAuthNo.disabled = true;
        element_e_pswdEmail1.innerHTML = "";
        element_e_pswdEmail2.innerHTML = "";
        element_e_pswdEmail3.innerHTML = "";
        element_e_pswdEmail2.style.display = "none";
        document.getElementById("label_pswdEmail").style.display = "block";
        document.getElementById("label_pswdEmailAuthNo").style.display = "block";
    }

    function confirmPasswdEmail(submitFlag) {
        if (submitFlag === true) {
            return;
        } else {
            submitFlag = true;
        }

        var token = 'Kvj1bOJay94wgJh4';
        var pswdEmail = element_confirmPswdEmail.value;

        var urls = CHANGE_USER_INFO_URL + "?m=checkPasswdEmail&token_help=" + token;
        $.ajax({
            type: "POST",
            url: urls,
            data: {"pswdEmail" : pswdEmail},
            success: function (data) {
                msgKey = data.substr(4,999);

                var list = msgKey.split("|",2);
                if(msgKey.length > 300){
                    alert("유효 시간이 초과 되었습니다. 다시 시도해 주세요.");
                    if(mobileYn == "Y"){
                        document.location.href="https://nid.naver.com/mobile/user/help/changeUserInfo.nhn?lang=ko_KR";
                    }else{
                        document.location.href="https://nid.naver.com/user2/help/changeUserInfo.nhn?lang=ko_KR";
                    }
                }else{
                    if(list[0] == "0"){
                        element_e_pswdEmail1.className = "contxt_alert green";
                        element_e_pswdEmail1.innerHTML = "이메일 주소가 현재 회원정보와 일치합니다. 변경할 이메일을 입력해주세요.";
                        element_pswdEmail.disabled = false;
                        element_pswdEmail.focus();
                        document.getElementById('label_pswdEmail').style.display = "none";
                    }else{
                        element_e_pswdEmail1.className = "contxt_alert";
                        element_e_pswdEmail1.innerHTML = list[1];
                    }
                }
            },
            error: function (xhr, status, error) {
                alert("일시적인 오류입니다. 잠시 후 다시 시도해 주세요.");
                rurl = "https://nid.naver.com/user2/help/myInfo.nhn?lang=ko_KR";
                $(location).attr("href", rurl);
            },
            complete: function() {
                submitFlag = false;
            }
        });
    }

    function setPasswdEmail(submitFlag) {
        if (submitFlag === true) {
            return;
        } else {
            submitFlag = true;
        }

        var token = 'Kvj1bOJay94wgJh4';
        var pswdEmail = element_pswdEmail.value;
        var authNo = element_pswdEmailAuthNo.value;

        var urls = CHANGE_USER_INFO_URL + "?m=setPasswdEmailWithVerification&token_help=" + token;

        $.ajax({
            type: "POST",
            url: urls,
            data: {"pswdEmail" : pswdEmail, "authNo" : authNo},
            success: function (data) {
                handleSessionExpiredErr(data);

                var result = JSON.parse(data);
                if (result.resultCode == 0) {
                    var newPasswdEmail = result.resultMsg;
                    document.getElementById("p_txt_pswdEmail_changeYn").innerHTML = (newPasswdEmail =="" ? "등록할 이메일" : "변경할 이메일");
                    element_p_pswdEmail.innerHTML = "<a href=\"#\" onclick=\"display('pswdEmail');return false;\" class=\"btn_model\"><b class=\"btn2\">" + (newPasswdEmail == "" ? "등록" : "수정")+ "</b></a>";
                    document.getElementById("p_txt_pswdEmail").innerHTML = (newPasswdEmail == "" ? "[등록된 이메일 없음]" : newPasswdEmail);
                    document.getElementById("label_pswdEmail").innerHTML = (newPasswdEmail == "" ? "" : "변경할 이메일 입력");
                    document.getElementById("b_txt_pswdEmail_reg").innerHTML = (newPasswdEmail == "" ? "등록완료" : "수정완료");
                    document.getElementById("b_txt_pswdEmail_cncl").innerHTML = (newPasswdEmail == "" ? "등록취소" : "수정취소");
                    element_isEmailYn.value = (newPasswdEmail == "" ? "N" : "Y");
                    hidePswdEmail();
                } else if (result.resultCode == -2) {
                    element_e_pswdEmail3.innerHTML = result.resultMsg;
                } else {
                    element_e_pswdEmail2.innerHTML = result.resultMsg;
                    element_e_pswdEmail2.style.display = "block";
                }
            },
            error: function (xhr, status, error) {
                alert("일시적인 오류입니다. 잠시 후 다시 시도해 주세요.");
                rurl = "https://nid.naver.com/user2/help/myInfo.nhn?lang=ko_KR";
                $(location).attr("href", rurl);
            },
            complete: function() {
                submitFlag = false;
            }
        });
    }

    function sendAuthNo(submitFlag) {
        if (submitFlag === true) {
            return;
        } else {
            submitFlag = true;
        }

        var token = 'Kvj1bOJay94wgJh4';
        var phoneNo = document.getElementById("phoneNo").value;
        var mobileYn = document.getElementById("mobileYn").value;

        var index = document.getElementById("internationalCode").selectedIndex;
        var internationalCode = document.getElementById("internationalCode").options[index].value;
        var urls = CHANGE_USER_INFO_URL + "?m=sendAuthNo&token_help=" + token + "&phoneNo=" + encodeURIComponent(phoneNo) +"&internationalCode=" + encodeURIComponent(internationalCode);

        $.ajax({
            type: "GET",
            url: urls,
            success: function (data) {
                msgKey = data.substr(4,999);

                var list = msgKey.split("|",3);
                if(msgKey.length > 300){
                    alert("유효 시간이 초과 되었습니다. 다시 시도해 주세요.");
                    if(mobileYn == "Y"){
                        document.location.href="https://nid.naver.com/mobile/user/help/changeUserInfo.nhn?lang=ko_KR";
                    }else{
                        document.location.href="https://nid.naver.com/user2/help/changeUserInfo.nhn?lang=ko_KR";
                    }
                }else{
                    var resultCode = list[0];
                    var resultMessage = list[1];
                    if(resultCode == "0"){
                        document.getElementById("e_phoneNo").innerHTML =  resultMessage;
                        document.getElementById("authNo").disabled = false;
                        document.getElementById("authNo").value = "";
                        document.getElementById("authNo").focus();
                    } else  {
                        document.getElementById("e_phoneNo").innerHTML =  resultMessage;
                        document.getElementById("e_authNo").innerHTML =  "";

                        if (resultCode == "-2") {
                            var message = "인증하신 휴대전화 번호는 이미 다른 아이디에 등록되어 추가로 등록이 불가합니다. 등록을 원하시면 다른 아이디에 등록된 휴대전화 번호를 삭제해야 합니다. 삭제 하시겠습니까?";
                            if (confirm(message)) {
                                if(mobileYn == "Y"){
                                    var returnUrl = "https://nid.naver.com/mobile/user/help/changeUserInfo.nhn?lang=ko_KR";
                                    document.location.href="/user2/help/deleteContacts.nhn?m=informDeletePhoneNo&lang=ko_KR&returnUrl=" + encodeURIComponent(returnUrl);
                                }else{
                                    var returnUrl = "https://nid.naver.com/user2/help/changeUserInfo.nhn?lang=ko_KR";
                                    window.open("/user2/help/deleteContacts.nhn?m=informDeletePhoneNo&lang=ko_KR&returnUrl=" + encodeURIComponent(returnUrl), 'deleteContacts');
                                }
                            }
                        }
                    }
                }
            },
            error: function (xhr, status, error) {
                alert("일시적인 오류입니다. 잠시 후 다시 시도해 주세요.");
                rurl = "https://nid.naver.com/user2/help/myInfo.nhn?lang=ko_KR";
                $(location).attr("href", rurl);
            },
            complete: function() {
                submitFlag = false;
            }
        });
    }

    function checkAuthNo(submitFlag) {
        if (submitFlag === true) {
            return;
        } else {
            submitFlag = true;
        }

        var token = 'Kvj1bOJay94wgJh4';
        var authNo = document.getElementById("authNo").value;
        var mobileYn = document.getElementById("mobileYn").value;

        var urls = CHANGE_USER_INFO_URL + "?m=checkAuthNo&token_help=" + token + "&authNo=" + encodeURIComponent(authNo);

        $.ajax({
            type: "GET",
            url: urls,
            success: function (data) {
                msgKey = data.substr(4,999);

                var list = msgKey.split("|",2);
                if(msgKey.length > 300){
                    alert("유효 시간이 초과 되었습니다. 다시 시도해 주세요.");
                    if(mobileYn == "Y"){
                        document.location.href="https://nid.naver.com/mobile/user/help/changeUserInfo.nhn?lang=ko_KR";
                    }else{
                        document.location.href="https://nid.naver.com/user2/help/changeUserInfo.nhn?lang=ko_KR";
                    }
                }else{
                    if(list[0] == "-1"){
                        document.getElementById("e_phoneNo").innerHTML =  "";
                        document.getElementById("e_authNo").innerHTML =  list[1];
                    }else{
                        document.getElementById("e_phoneNo").innerHTML =  "";
                        document.getElementById("e_authNo").innerHTML =  "";
                        document.getElementById("phoneNo").value = "";
                        document.getElementById("authNo").value="";
                        document.getElementById("authNo").disabled = true;
                        document.getElementById("p_txt_phoneNo_changeYn").innerHTML = (list[1] == "" ? "등록할 휴대전화" : "변경할 휴대전화");
                        document.getElementById("p_phoneNo").style.display = "block";
                        document.getElementById("p_phoneNo").innerHTML = "<a href=\"#\" onclick=\"display('phoneNo');return false;\" class=\"btn_model\"><b class=\"btn2\">" + (list[1] =="" ? "등록" : "수정")+ "</b></a>";
                        document.getElementById("p_txt_phoneNo").innerHTML = (list[1] =="" ? "[등록된 휴대전화 없음]" : list[1]);
                        document.getElementById("b_txt_phoneNo_reg").innerHTML = (list[1] =="" ? "등록완료" : "수정완료");
                        document.getElementById("b_txt_phoneNo_cncl").innerHTML = (list[1] =="" ? "등록취소" : "수정취소");
                        document.getElementById("d_phoneNo").style.display = "none";
                        if(mobileYn == "Y"){
                            if(list[1] != ""){
                                document.getElementById("btn_authNo").style.display = "none";
                                document.getElementById("btn_phoneNo").style.display = "none";
                            }
                        }

                        if(list[1] ==""){
                            document.getElementById("isPhoneYn").value = "N";
                            document.getElementById("phoneAuthYn").value = "Y";
                        }else{
                            document.getElementById("isPhoneYn").value = "Y";
                        }
                    }
                }
            },
            error: function (xhr, status, error) {
                alert("일시적인 오류입니다. 잠시 후 다시 시도해 주세요.");
                rurl = "https://nid.naver.com/user2/help/myInfo.nhn?lang=ko_KR";
                $(location).attr("href", rurl);
            },
            complete: function() {
                submitFlag = false;
            }
        });
    }

    function handleSessionExpiredErr(data) {
        if (data && data.indexOf("-9|") === 0) {
            alertReturnMessage(data.split("|")[1]);
            document.location.href="https://nid.naver.com/user2/help/changeUserInfo.nhn?lang=ko_KR";
        }
    }

    function alertReturnMessage(resultMessage) {
        if (resultMessage) {
            alert(resultMessage.replace("\\n", "\n"));
        }
    }

    $(document).ready(function() {
        $('#myLetterEmailAuthGuide').click(function(){
            clickcr(this,'inf.primaryhelp','','',window.event);
            $(this).toggleClass('open');
            $('#myLetterEmailAuthGuideHelp').toggle();
            return false;
        });

        $('#pswdEmailAuthGuide').click(function(){
            clickcr(this,'inf.recoveryhelp','','',window.event);
            $(this).toggleClass('open');
            $('#pswdEmailAuthGuideHelp').toggle();
            return false;
        });
    });
</script>
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
	
	document.joinForm.submit();
}
	

</script>

<script>
function sample4_execDaumPostcode() {
   new daum.Postcode({
	    oncomplete: function(data) {
	    	 document.getElementById('zipcode').value = data.zonecode;
	         document.getElementById("address").value = data.address;
	    }
	}).open();
}
</script>

<script type="text/javascript">
getGNB();

window.onresize = function() {
	setContainerHeight(document.getElementById('content').clientHeight);
}
</script>

</body>
</html>
