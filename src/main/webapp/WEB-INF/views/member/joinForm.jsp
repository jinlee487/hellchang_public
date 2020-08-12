<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HellChang 회원가입</title>
<link rel="icon" href="resources/image/logo.jpg">
<link rel="stylesheet" type="text/css" href="resources/jqLib/animation.css">
<link rel="stylesheet" type="text/css" href="resources/jqLib/join.css">
<script src="resources/jqLib/jquery-3.2.1.min.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="resources/jqLib/CRUD_control.js"></script>
<script src="resources/jqLib/joinCheck.js"></script>
<script>
$(document).ready(function(){
	$('#signupbtn').on('click',function(){

		$('#email_login').attr('disabled',false);
		$('#image_path').attr('disabled',false);
		$('#gen').attr('disabled', false);
		
/* 		$("form :input").each(function(){
			 var input = $(this).val(); 
			 var name = $(this).attr("name");
			 console.log("this is the "+name+" => " + input)
			});		 */
	});
	if($('#email_join_email_login').html()=="check"){
		if($('#email_join_id').html()!=''){
			$('#id').val($('#email_join_id').html()).attr('readonly', true);
		}
		if($('#email_join_gender').html()!=''){
			$('#gen').val($('#email_join_gender').html()).attr('disabled', true);
		}
		if($('email_join_image_path').html()!=''){
			$('#image_path').val($('#email_join_image_path').html()).attr('readonly', true);
		}
		if($('email_join_name').html()!=''){
			$('#name').val($('#email_join_name').html()).attr('readonly', true);
		}
		
		$('#image_path').attr('disabled',false).val($('#email_join_image_path').html()).attr('disabled',true);
		$('#email_login').attr('disabled',false).val('true').attr('disabled',true);
		$('#password').val($('#email_join_id').html()).attr('readonly', true);
		$('#rpsw').val($('#email_join_id').html()).attr('readonly', true);
		$('.joincheck2').css("display", "none");
	}
}) ;




</script>




</head>





<body style="background-color: black;">

<div class="joincheck" style="display:block">
<div id="email_join_id">${id}</div>
<div id="email_join_gender">${gender}</div>
<div id="email_join_image_path">${image_path}</div>
<div id="email_join_name">${name}</div>


<div id="email_join_email_login">${email_login}</div>
</div>


<div id="header" class="joun_membership bounce-in-left" role="banner">
<h1>
	<a href="home" class="h_logo">
		<img src="resources/image/logo.jpg">
	</a>
</h1>
</div>
<form action="join" method="post" style="border:1px solid #ccc" name="regform">
  <div class="container bounce-in-left">
	  <c:if test="${fCode=='JF'}">
		<h3>회원 가입 실패하였습니다~</h3>
	</c:if>
    <h1>Sign Up</h1>
   <p>Please fill in this form to create an account.</p>
   
   	<div style="display:none" id="joincheck3">
	<input type="text" id="image_path" name="image_path" class="input" disabled="disabled"><br>
	<input type="text" id="email_login" name="email_login" class="input" disabled="disabled"><br>
	</div>
	
    <label for="email" class="int"><b>Email</b></label><br>
    <input type="text" id="id" placeholder="Enter Email" name="id" class="input" required><br>
    
	<div class="joincheck2">
    <label for="psw" class="int"><b>Password</b></label><br>
    <input type="password" id="password" placeholder="Enter Password"  name="password" class="input" required ><br>

    <label for="psw-repeat" class="int"><b>Repeat Password</b></label><br>
    <input type="password" placeholder="Repeat Password" id="rpsw" name="psw-repeat" class="input" required><br>
    <span  id="pMessage" class="eMessage"></span>
    </div>
    
    <label for="name" class="int"><b>Name</b></label><br>
    
    <input type="text" id="name" placeholder="Name" name="name" class="input" required><br>
    
    <label for="phonenumber" class="int"><b>Phone Number</b></label><br>
    <select id="nationNo" name="nationNo" class="gen" aria-label="전화번호 입력">
                                        <option value="233">
                                            가나 +233
                                        </option>
                                        <option value="241">
                                            가봉 +241
                                        </option>
                                        <option value="592">
                                            가이아나 +592
                                        </option>
                                        <option value="220">
                                            감비아 +220
                                        </option>
                                        <option value="502">
                                            과테말라 +502
                                        </option>
                                        <option value="1671">
                                            괌 +1 671
                                        </option>
                                        <option value="1473">
                                            그레나다 +1 473
                                        </option>
                                        <option value="30">
                                            그리스 +30
                                        </option>
                                        <option value="224">
                                            기니 +224
                                        </option>
                                        <option value="245">
                                            기니비사우 +245
                                        </option>
                                        <option value="264">
                                            나미비아 +264
                                        </option>
                                        <option value="674">
                                            나우루 +674
                                        </option>
                                        <option value="234">
                                            나이지리아 +234
                                        </option>
                                        <option value="672">
                                            남극,오스트레일리아의외 +672
                                        </option>
                                        <option value="27">
                                            남아프리카공화국 +27
                                        </option>
                                        <option value="31">
                                            네덜란드 +31
                                        </option>
                                        <option value="599">
                                            네덜란드령보네르 +599
                                        </option>
                                        <option value="297">
                                            네덜란드령아루바 +297
                                        </option>
                                        <option value="977">
                                            네팔 +977
                                        </option>
                                        <option value="47">
                                            노르웨이 +47
                                        </option>
                                        <option value="64">
                                            뉴질랜드 +64
                                        </option>
                                        <option value="683">
                                            뉴질랜드령니우에 +683
                                        </option>
                                        <option value="690">
                                            뉴질랜드령토켈라우제도 +690
                                        </option>
                                        <option value="227">
                                            니제르 +227
                                        </option>
                                        <option value="505">
                                            니카라과 +505
                                        </option>
                                        <option value="82" selected="selected">
                                            대한민국 +82
                                        </option>
                                        <option value="45">
                                            덴마크 +45
                                        </option>
                                        <option value="299">
                                            덴마크령그린란드 +299
                                        </option>
                                        <option value="298">
                                            덴마크령페로제도 +298
                                        </option>
                                        <option value="1809">
                                            도미니카공화국 +1 809
                                        </option>
                                        <option value="1829">
                                            도미니카공화국 2 +1 829
                                        </option>
                                        <option value="1849">
                                            도미니카공화국 3 +1 849
                                        </option>
                                        <option value="49">
                                            독일 +49
                                        </option>
                                        <option value="670">
                                            동티모르 +670
                                        </option>
                                        <option value="856">
                                            라오스 +856
                                        </option>
                                        <option value="231">
                                            라이베리아 +231
                                        </option>
                                        <option value="371">
                                            라트비아 +371
                                        </option>
                                        <option value="7">
                                            러시아/카자흐스탄 +7
                                        </option>
                                        <option value="961">
                                            레바논 +961
                                        </option>
                                        <option value="266">
                                            레소토 +266
                                        </option>
                                        <option value="40">
                                            루마니아 +40
                                        </option>
                                        <option value="352">
                                            룩셈부르크 +352
                                        </option>
                                        <option value="250">
                                            르완다 +250
                                        </option>
                                        <option value="218">
                                            리비아 +218
                                        </option>
                                        <option value="370">
                                            리투아니아 +370
                                        </option>
                                        <option value="423">
                                            리히텐슈타인 +423
                                        </option>
                                        <option value="261">
                                            마다가스카르 +261
                                        </option>
                                        <option value="692">
                                            마셜제도공화국 +692
                                        </option>
                                        <option value="691">
                                            마이크로네시아연방 +691
                                        </option>
                                        <option value="853">
                                            마카오 +853
                                        </option>
                                        <option value="389">
                                            마케도니아공화국 +389
                                        </option>
                                        <option value="265">
                                            말라위 +265
                                        </option>
                                        <option value="60">
                                            말레이시아 +60
                                        </option>
                                        <option value="223">
                                            말리 +223
                                        </option>
                                        <option value="52">
                                            멕시코 +52
                                        </option>
                                        <option value="377">
                                            모나코 +377
                                        </option>
                                        <option value="212">
                                            모로코 +212
                                        </option>
                                        <option value="230">
                                            모리셔스 +230
                                        </option>
                                        <option value="222">
                                            모리타니아 +222
                                        </option>
                                        <option value="258">
                                            모잠비크 +258
                                        </option>
                                        <option value="382">
                                            몬테네그로 +382
                                        </option>
                                        <option value="373">
                                            몰도바 +373
                                        </option>
                                        <option value="960">
                                            몰디브 +960
                                        </option>
                                        <option value="356">
                                            몰타 +356
                                        </option>
                                        <option value="976">
                                            몽골 +976
                                        </option>
                                        <option value="1">
                                            미국/캐나다 +1
                                        </option>
                                        <option value="1670">
                                            미국령북마리아나제도 +1 670
                                        </option>
                                        <option value="95">
                                            미얀마 +95
                                        </option>
                                        <option value="678">
                                            바누아투 +678
                                        </option>
                                        <option value="973">
                                            바레인 +973
                                        </option>
                                        <option value="1246">
                                            바베이도스 +1 246
                                        </option>
                                        <option value="1242">
                                            바하마 +1 242
                                        </option>
                                        <option value="880">
                                            방글라데시 +880
                                        </option>
                                        <option value="229">
                                            베냉 +229
                                        </option>
                                        <option value="58">
                                            베네수엘라 +58
                                        </option>
                                        <option value="84">
                                            베트남 +84
                                        </option>
                                        <option value="32">
                                            벨기에 +32
                                        </option>
                                        <option value="375">
                                            벨라루스 +375
                                        </option>
                                        <option value="501">
                                            벨리즈 +501
                                        </option>
                                        <option value="387">
                                            보스니아헤르체고비나 +387
                                        </option>
                                        <option value="267">
                                            보츠와나 +267
                                        </option>
                                        <option value="591">
                                            볼리비아 +591
                                        </option>
                                        <option value="257">
                                            부룬디 +257
                                        </option>
                                        <option value="226">
                                            부르키나파소 +226
                                        </option>
                                        <option value="975">
                                            부탄 +975
                                        </option>
                                        <option value="359">
                                            불가리아 +359
                                        </option>
                                        <option value="55">
                                            브라질 +55
                                        </option>
                                        <option value="673">
                                            브루나이 +673
                                        </option>
                                        <option value="685">
                                            사모아 +685
                                        </option>
                                        <option value="966">
                                            사우디아라비아 +966
                                        </option>
                                        <option value="378">
                                            산마리노 +378
                                        </option>
                                        <option value="239">
                                            상투메프린시페 +239
                                        </option>
                                        <option value="221">
                                            세네갈 +221
                                        </option>
                                        <option value="381">
                                            세르비아 +381
                                        </option>
                                        <option value="248">
                                            세이셀 +248
                                        </option>
                                        <option value="1784">
                                            세인트빈센트그레나딘 +1 784
                                        </option>
                                        <option value="252">
                                            소말리아 +252
                                        </option>
                                        <option value="677">
                                            솔로몬제도 +677
                                        </option>
                                        <option value="249">
                                            수단 +249
                                        </option>
                                        <option value="597">
                                            수리남 +597
                                        </option>
                                        <option value="94">
                                            스리랑카 +94
                                        </option>
                                        <option value="268">
                                            스와질랜드 +268
                                        </option>
                                        <option value="46">
                                            스웨덴 +46
                                        </option>
                                        <option value="41">
                                            스위스 +41
                                        </option>
                                        <option value="34">
                                            스페인 +34
                                        </option>
                                        <option value="421">
                                            슬로바키아 +421
                                        </option>
                                        <option value="386">
                                            슬로베니아 +386
                                        </option>
                                        <option value="963">
                                            시리아 +963
                                        </option>
                                        <option value="232">
                                            시에라리온 +232
                                        </option>
                                        <option value="65">
                                            싱가포르 +65
                                        </option>
                                        <option value="971">
                                            아랍에미리트 +971
                                        </option>
                                        <option value="374">
                                            아르메니아 +374
                                        </option>
                                        <option value="54">
                                            아르헨티나 +54
                                        </option>
                                        <option value="1684">
                                            아메리칸사모아 +1 684
                                        </option>
                                        <option value="354">
                                            아이슬란드 +354
                                        </option>
                                        <option value="509">
                                            아이티 +509
                                        </option>
                                        <option value="353">
                                            아일랜드 +353
                                        </option>
                                        <option value="994">
                                            아제르바이잔 +994
                                        </option>
                                        <option value="93">
                                            아프가니스탄 +93
                                        </option>
                                        <option value="376">
                                            안도라 +376
                                        </option>
                                        <option value="355">
                                            알바니아 +355
                                        </option>
                                        <option value="213">
                                            알제리 +213
                                        </option>
                                        <option value="244">
                                            앙골라 +244
                                        </option>
                                        <option value="251">
                                            에디오피아 +251
                                        </option>
                                        <option value="291">
                                            에리트레아 +291
                                        </option>
                                        <option value="372">
                                            에스토니아 +372
                                        </option>
                                        <option value="593">
                                            에콰도르 +593
                                        </option>
                                        <option value="503">
                                            엘살바도르 +503
                                        </option>
                                        <option value="44">
                                            영국 +44
                                        </option>
                                        <option value="290">
                                            영국령세인트헬레나 +290
                                        </option>
                                        <option value="246">
                                            영국령인도양지역 +246
                                        </option>
                                        <option value="350">
                                            영국령지브롤터 +350
                                        </option>
                                        <option value="500">
                                            영국령포클랜드제도 +500
                                        </option>
                                        <option value="967">
                                            예멘 +967
                                        </option>
                                        <option value="968">
                                            오만 +968
                                        </option>
                                        <option value="43">
                                            오스트리아 +43
                                        </option>
                                        <option value="504">
                                            온두라스 +504
                                        </option>
                                        <option value="962">
                                            요르단 +962
                                        </option>
                                        <option value="256">
                                            우간다 +256
                                        </option>
                                        <option value="598">
                                            우루과이 +598
                                        </option>
                                        <option value="998">
                                            우즈베키스탄 +998
                                        </option>
                                        <option value="380">
                                            우크라이나 +380
                                        </option>
                                        <option value="964">
                                            이라크 +964
                                        </option>
                                        <option value="98">
                                            이란 +98
                                        </option>
                                        <option value="972">
                                            이스라엘 +972
                                        </option>
                                        <option value="20">
                                            이집트 +20
                                        </option>
                                        <option value="39">
                                            이탈리아 +39
                                        </option>
                                        <option value="91">
                                            인도 +91
                                        </option>
                                        <option value="62">
                                            인도네시아 +62
                                        </option>
                                        <option value="81">
                                            일본 +81
                                        </option>
                                        <option value="1876">
                                            자메이카 +1 876
                                        </option>
                                        <option value="260">
                                            잠비아 +260
                                        </option>
                                        <option value="240">
                                            적도기니 +240
                                        </option>
                                        <option value="995">
                                            조지아 +995
                                        </option>
                                        <option value="86">
                                            중국 +86
                                        </option>
                                        <option value="236">
                                            중앙아프리카공화국 +236
                                        </option>
                                        <option value="253">
                                            지부티 +253
                                        </option>
                                        <option value="263">
                                            짐바브웨 +263
                                        </option>
                                        <option value="235">
                                            차드 +235
                                        </option>
                                        <option value="420">
                                            체코 +420
                                        </option>
                                        <option value="56">
                                            칠레 +56
                                        </option>
                                        <option value="237">
                                            카메룬 +237
                                        </option>
                                        <option value="238">
                                            카보베르데 +238
                                        </option>
                                        <option value="974">
                                            카타르 +974
                                        </option>
                                        <option value="855">
                                            캄보디아왕국 +855
                                        </option>
                                        <option value="254">
                                            케냐 +254
                                        </option>
                                        <option value="269">
                                            코모로,마요트 +269
                                        </option>
                                        <option value="506">
                                            코스타리카 +506
                                        </option>
                                        <option value="225">
                                            코트디부아르 +225
                                        </option>
                                        <option value="57">
                                            콜롬비아 +57
                                        </option>
                                        <option value="242">
                                            콩고 +242
                                        </option>
                                        <option value="243">
                                            콩고민주공화국 +243
                                        </option>
                                        <option value="53">
                                            쿠바 +53
                                        </option>
                                        <option value="965">
                                            쿠웨이트 +965
                                        </option>
                                        <option value="682">
                                            쿡제도 +682
                                        </option>
                                        <option value="385">
                                            크로아티아 +385
                                        </option>
                                        <option value="996">
                                            키르기스스탄 +996
                                        </option>
                                        <option value="686">
                                            키리바시 +686
                                        </option>
                                        <option value="357">
                                            키프로스 +357
                                        </option>
                                        <option value="886">
                                            타이완 +886
                                        </option>
                                        <option value="992">
                                            타지키스탄 +992
                                        </option>
                                        <option value="255">
                                            탄자니아 +255
                                        </option>
                                        <option value="66">
                                            태국 +66
                                        </option>
                                        <option value="90">
                                            터키 +90
                                        </option>
                                        <option value="228">
                                            토고 +228
                                        </option>
                                        <option value="676">
                                            통가 +676
                                        </option>
                                        <option value="993">
                                            투르크메니스탄 +993
                                        </option>
                                        <option value="216">
                                            튀니지 +216
                                        </option>
                                        <option value="1868">
                                            트리니다드토바고 +1 868
                                        </option>
                                        <option value="507">
                                            파나마 +507
                                        </option>
                                        <option value="595">
                                            파라과이 +595
                                        </option>
                                        <option value="92">
                                            파키스탄 +92
                                        </option>
                                        <option value="675">
                                            파푸아뉴기니 +675
                                        </option>
                                        <option value="680">
                                            팔라우 +680
                                        </option>
                                        <option value="970">
                                            팔레스타인 +970
                                        </option>
                                        <option value="51">
                                            페루 +51
                                        </option>
                                        <option value="351">
                                            포르투갈 +351
                                        </option>
                                        <option value="48">
                                            폴란드 +48
                                        </option>
                                        <option value="1787">
                                            푸에르토리코 +1 787
                                        </option>
                                        <option value="33">
                                            프랑스 +33
                                        </option>
                                        <option value="590">
                                            프랑스령과들루프 +590
                                        </option>
                                        <option value="594">
                                            프랑스령기아나 +594
                                        </option>
                                        <option value="687">
                                            프랑스령뉴칼레도니아 +687
                                        </option>
                                        <option value="262">
                                            프랑스령레위니옹 +262
                                        </option>
                                        <option value="596">
                                            프랑스령마르티니크 +596
                                        </option>
                                        <option value="508">
                                            프랑스령생피에르미클롱 +508
                                        </option>
                                        <option value="681">
                                            프랑스령월리스푸투나제 +681
                                        </option>
                                        <option value="689">
                                            프랑스령폴리네시아 +689
                                        </option>
                                        <option value="679">
                                            피지 +679
                                        </option>
                                        <option value="358">
                                            핀란드 +358
                                        </option>
                                        <option value="63">
                                            필리핀 +63
                                        </option>
                                        <option value="36">
                                            헝가리 +36
                                        </option>
                                        <option value="61">
                                            호주 +61
                                        </option>
                                        <option value="852">
                                            홍콩 +852
                                        </option>
                        </select><br>
   
    <input type="text" id="phoneNo" placeholder="Ex 010-1234-5678" name="phoneNo" class="input" required><br>
    
    <label for="birthd" class="int"><b>Birth Day</b></label><br>
    <input type="text" id="yy" name="yy" placeholder="년(4자)" aria-label="년(4자)" class="yy" maxlength="4" required>
    <select id="mm" class="mm" name="mm" aria-label="월" required>
										<option value="">월</option>
										  	 			<option value="01">
                                                            1월
                                                        </option>
										  	 			<option value="02">
                                                            2월
                                                        </option>
										  	 			<option value="03">
                                                            3월
                                                        </option>
										  	 			<option value="04">
                                                            4월
                                                        </option>
										  	 			<option value="05">
                                                            5월
                                                        </option>
										  	 			<option value="06">
                                                            6월
                                                        </option>
										  	 			<option value="07">
                                                            7월
                                                        </option>
										  	 			<option value="08">
                                                            8월
                                                        </option>
										  	 			<option value="09">
                                                            9월
                                                        </option>
										  	 			<option value="10">
                                                            10월
                                                        </option>
										  	 			<option value="11">
                                                            11월
                                                        </option>
										  	 			<option value="12">
                                                            12월
                                                        </option>
									</select>
	
	<input type="text" id="dd" name="dd" placeholder="일" aria-label="일" class="yy" maxlength="2" required><br>
   
    <label for="gender" class="int"><b>Gender</b></label><br>
    <select id="gen" name="gender" class="gen" required>
		<option value="">성별</option>
		<option value="M">남성</option>
		<option value="F">여성</option>
	</select><br>
	
	<label for="location" class="int"><b>location</b></label><br>
	<input type="text" name="zipcode" id="zipcode" onClick="sample4_execDaumPostcode()" readonly placeholder="우편번호 검색" required>
	<br>
    <input type="text" name="address1" id="address" readonly placeholder="주소입력해주세요" required><br>
    <input type="text" name="address2" id="address1" placeholder="상세주소를 입력해주세요" required>
    <br>
    <label class="int">
      <input type="checkbox" checked="checked" name="remember" class="input" style="margin-bottom:15px"> Remember me
    </label>

    <div class="clearfix">
      <button type="reset" class="cancelbtn">Cancel</button>
      <button id="signupbtn" type="submit" class="signupbtn">Sign Up</button>
    </div>
  </div>
</form>
<br>
<br>
<br>
<br>
<br>
<br>
	<div id="footer" role="contentinfo">
		<address>
			<em><a href="home" target="_blank" class="logo"><span class="blind">HellChang</span></a></em>
			<em class="copy">Copyright</em>
			<em class="u_cri">©</em>
			<a href="home" target="_blank" class="u_cra">HellChang Corp.</a>
			<span class="all_r">All Rights Reserved.</span>
		</address>
	</div>
<script>
/* function check_form() {
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
	if (document.joinForm.psw.value != document.joinForm.psw-repeat.value) {
 		alert("비밀번호가 일치하지 않습니다.");
  		document.regform.psw.focus();
  		return;
	}
	
	document.joinForm.submit();
}
 */
function sample4_execDaumPostcode() {
   new daum.Postcode({
	    oncomplete: function(data) {
	    	 document.getElementById('zipcode').value = data.zonecode;
	         document.getElementById("address").value = data.address;
	    }
	}).open();
}

//** 1. 입력 오류 확인 ( inCheck )
//1.1) 개별적 오류 확인을 위한 switch 변수 정의
var iCheck=false;
var pCheck=false;
var rpCheck=false;

$(function(){

	
	$('#psw').focusout(function(){
		pCheck=pwCheck();
	}); // password_focusout

	

}); // ready	


function inCheck() {
	if (pCheck==true)	
		return true;  
	else {
		alert('입력 오류 확인을 하지 않은 항목이 있습니다. 확인 후 전송 하세요~~ '); 	
		return false;
	} // else
} // inCheck()


</script>
</body>
</html>