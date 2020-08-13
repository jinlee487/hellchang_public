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
<script src="resources/jqLib/google_chart_functions.js"></script>
<script src="resources/jqLib/profile_inbody_script.js"></script>
<link rel="stylesheet" type="text/css" href="resources/jqLib/footer_position.css">
<link rel="stylesheet" type="text/css" href="resources/jqLib/topBar.css">
<link rel="stylesheet" type="text/css" href="resources/jqLib/inbodyButton.css">
<link rel="stylesheet" type="text/css" href="resources/jqLib/profile_image.css">

  <script>
  
 </script>
  
  <style>
  @media (min-width: 768px){
	.col-sm-4 {
	  /* margin-left: 200px; */
	  text-align: center;
		}
	}

.analysis-title{
text-align: left;
}

/* Style the tab */
.tab {
  overflow: hidden;
  border: 1px solid #ccc;
  background-color: #f1f1f1;
}

/* Style the buttons that are used to open the tab content */
.tab button {
  background-color: inherit;
  float: left;
  border: none;
  outline: none;
  cursor: pointer;
  padding: 14px 16px;
  transition: 0.3s;
}

/* Change background color of buttons on hover */
.tab button:hover {
  background-color: #ddd;
}

/* Create an active/current tablink class */
.tab button.active {
  background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
	display: block;
    height: 0;
    overflow-y: hidden;
}
.inbodycontent{
  padding: 6px 12px;
  border: 1px solid #ccc;
  border-top: none;
}
#dddd > li:hover {
    background-color: #eee;
    color: blue;
    font-weight: bold;
    cursor: pointer;
}
.modal-body {
    max-height: calc(100vh - 200px);
    overflow-y: auto;
}
  </style>
</head>
<body>

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
        <a href="mdetail?code=U"><span>My Profile</span><br>
        <button class="bEffect" title="프로필 사진 바꾸기">
        	<img id="aa" src="${profile_image}" class="img-circle" height="100" width="100" alt="프로필 사진 바꾸기">
        </button></a>
        </div>
		<ul class="nav nav-pills nav-stacked">
		  <li><a href="prof">Start Workout</a></li>
		  <li><a href="manageWorkout">Manage Workout</a></li>
		  <li><a href="inbodyf">InBody</a></li>
		  <li><a href="dietf">Diet</a></li>
		  <li><a href="socialf">Social</a></li>    
		</ul>
    </div>
    
    <div class="col-sm-7 inbodycontent">    
    <button type="button" class="btn btn-info btn-xl" data-toggle="modal" data-target="#inbodyOption" id="inbodyBtn"><span class="glyphicon glyphicon-plus"></span></button>
     <!-- Modal -->
	  <div class="modal fade" id="inbodyOption" role="dialog">
	    <div class="modal-dialog">
	    
	      <!-- Modal content-->
	      <div class="modal-content">
	        <div class="modal-header">
	          <button type="button" class="close" data-dismiss="modal">&times;</button>
	          <h4 class="modal-title">Inbody Test</h4>
	        </div>
	        <div class="modal-body">
	          <table class="columns" style="table-layout:fixed;word-break:break-all;width:100%;">
	          <tr>
		          <td style="text-align: center; vertical-align: middle;"><button type="button" class="btn btn-default io" id="ii"><span class="glyphicon glyphicon-pencil"></span></button></td>
		          <td style="text-align: center; vertical-align: middle;"style="text-align: center; vertical-align: middle;"><button type="button" class="btn btn-default io" id="iu"><span class="glyphicon glyphicon-edit"></span></button></td>
		          <td style="text-align: center; vertical-align: middle;"><button type="button" class="btn btn-default io" id="is"><span class="glyphicon glyphicon-share"></span></button></td>
	          </tr>
	          <tr>
		          <td style="text-align: center; vertical-align: middle;">Insert</td>
		          <td style="text-align: center; vertical-align: middle;">Edit</td>
		          <td style="text-align: center; vertical-align: middle;">Share</td>
	          </tr>
	          </table>
	        </div>
	      </div>
	      
	    </div>
	  </div>

     <div class="tab">
        <button class="tablink" onclick="openPage(event,'results_tab')" id="defaultOpen">Results</button>
		<button class="tablink" onclick="openPage(event,'history_tab')" >History</button>
		<button class="tablink" onclick="openPage(event, 'ranking_tab')">Ranking</button>
    </div>   
      <div class="row">
        <div class="col-sm-12 tabcontent" id="results_tab">
        
<!--          <form>
		    <div class="form-group">
		   		 <br>
		      <label for="sel1">Select Inbody Record</label>
		      <select class="form-control" id="sel1 sel1Results">
		        <option>1</option>
		        <option>2</option>
		        <option>3</option>
		        <option>4</option>
		      </select>
		    </div>
		  </form> -->
           <div class="panel-group">
		    <div class="panel panel-default">
		      <div class="panel-heading">
		        <h4 class="panel-title">
		          <ul class="pager">
		            <li class="previous" id="resultsback"><a href="#results_tab"><span class="glyphicon glyphicon-chevron-left"></span></a></li>
		            <li><a data-toggle="collapse" href="#collapse1"><span id="results_date"></span>
		            												<span id="results_sign" class="glyphicon glyphicon-collapse-down"></span></a></li>
		            <li class="next" id="resultsforward"><a href="#results_tab"><span class="glyphicon glyphicon-chevron-right"></span></a></li>
		          </ul>
		        </h4>
		      </div>
		      <div style="display:none" id="id_div"></div>
		      <div id="collapse1" class="panel-collapse collapse">
		        <ul class="list-group" style="text-align: center;display:inline-block;padding: 5px 14px;
		                               background-color: #fff;border: 1px solid #ddd;border-radius: 15px;" id="dddd">
		        </ul>
		        </div>
		        <div class="panel-footer"></div>
		      </div>
		    </div>	  

            <div class="well well-sm analysis-title">Muscle-Fat Analysis</div>   
            <table class="columns" style="table-layout:fixed;word-break:break-all;width:100%;">
		      <tr>
		        <td style="width:40%;">Weight<br><strong style="font-size: large;" id="wChartID2"></strong>kg</td>
		        <td style="width:150%;"><div id="wChartID"></div></td>
		      </tr> 
		      <tr>
		        <td style="width:40%;">Muscle Mass<br><strong style="font-size: large;" id="mmChartID2"></strong>kg</td>
		        <td style="width:150%;"><div id="mmChartID"></div></td>
		      </tr>
		      <tr>
		        <td style="width:40%;">Fat Mass<br><strong style="font-size: large;" id="fmChartID2"></strong>kg</td>
		        <td style="width:150%;"><div id="fmChartID"></div></td>
		      </tr>
		    </table><br><br>
		    <div class="well well-sm analysis-title">Obesity Analysis</div>   
            <table class="columns" style="table-layout:fixed;word-break:break-all;width:100%;">
		      <tr>
		        <td style="width:40%;">BMI<br><strong style="font-size: large;" id="bChartID2"></strong>kg/m2</td>
		        <td style="width:150%;"><div id="bChartID"></div></td>
		      </tr>
		      <tr>
		        <td style="width:40%;">percent<br>Body Fat<br><strong style="font-size: large;" id="pChartID2"></strong>%</td>
		        <td style="width:150%;"><div id="pChartID"></div></td>
		      </tr>
		    </table><br><br>
		    <div class="well well-sm analysis-title">Visceral Fat Analysis</div>   
		     <table class="columns" style="table-layout:fixed;word-break:break-all;width:100%;">
		      <tr>
		        <td style="width:40%;">Visceral <br> Fat Level<br><strong style="font-size: large;" id="vChartID2"></strong>Level</td>
		        <td style="width:150%;"><div id="vChartID"></div></td>
		      </tr>
		    </table><br><br>
		    <div class="well well-sm analysis-title">Research Parameters</div>   
		     <table class="columns"  style="table-layout:fixed;word-break:break-all;width:100%;">
		      <tr>
		        <td style="width:40%;">Basal Metaboilic Rate</td>
		        <td style="width:150%;text-align: right"><strong style="font-size: large;" id="bmiID"></strong>kcal</td>
		      </tr>
		    </table><br><br>  
        </div>
        
        
        <div class="col-sm-12 tabcontent" id="history_tab">
		             
		<div class="panel-group">
		  <div class="panel panel-default">
		    <div class="panel-heading">
		      <h4 class="panel-title">
		      	<span><strong>Select Date</strong></span><br><br>
		        <a data-toggle="collapse" href="#collapse2"><span id="selected_date"></span>
		        						<span id="hist_sign" class="glyphicon glyphicon-collapse-down"></span></a>
		      </h4>
		    </div>
		    <div id="collapse2" class="panel-collapse collapse">
		      <div class="panel-body">
		      	<form>
			    <div class="form-group">
			      <label for="sel1">Select Start Date</label>
			      <select class="form-control" id="sel1">
			      </select>
			      <label for="sel2">Select End Date</label>
			      <select class="form-control" id="sel2">
			      </select>
			      <hr>
			      </div>
			    </form>
			        <button id="reset_date" class="btn btn-default">Reset</button>
			        <button id="reset_date_ajax" class="btn btn-default">Submit</button>

		      </div>
		    </div>
		  </div>
		</div>
			        
		      <br>
            <table class="columns" style="table-layout:fixed;word-break:break-all;width:100%;">
		      <tr>
		        <td><strong style="font-size: large;">Weight (kg)</strong></td>		        
		      </tr>
		      <tr>
		        <td style="width:150%;"><div id="wComboID"></div><hr></td>
		      </tr> 
		      <tr>
		        <td><strong style="font-size: large;"><br><br>Muscle Mass (kg)</strong></td>
		      </tr>
		      <tr>
		        <td style="width:150%;"><div id="mmComboID"></div><hr></td>
		      </tr> 
		      <tr>
		        <td><strong style="font-size: large;"><br><br>Fat Mass (kg)</strong></td>
		      </tr>
		      <tr>
		        <td style="width:150%;"><div id="fmComboID"></div><hr></td>
		      </tr> 
		      <tr>
		        <td><strong style="font-size: large;"><br><br>BMI (kg/m2)</strong></td>
		      </tr>
		      <tr>
		        <td style="width:150%;"><div id="bComboID"></div><hr></td>
		      </tr> 
		      <tr>
		        <td><strong style="font-size: large;"><br><br>Percent Body Fat (%)</strong></td>
		      </tr>
		      <tr>
		        <td style="width:150%;"><div id="pComboID"></div><hr></td>
		      </tr> 
		      <tr>
		        <td><strong style="font-size: large;"><br><br>Visceral Fat Level (level)</strong></td>
		      </tr>
		      <tr>
		        <td style="width:150%;"><div id="vComboID"></div><hr></td>
		      </tr> 
		     </table>
		     <br><br><br><br><br><br><br><br>
		     
        </div>
        
        <div class="col-sm-12 tabcontent" id="ranking_tab">
             <div class="weekday">      
             <br><br><br><br><br><br><br><br>
			  <ul style="list-style-type: none;">
			    <li>
			      <strong>This tab is under development!</strong><br>
			    </li>
			    
			  </ul>
			               <br><br><br><br><br><br><br><br>
			  
			</div>  
        </div>
        
        
       </div>
		 <br><br><br>
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
</div>
<br>
<br>
<br>
<br>
<br><br><br><br><br><br><br><br><br><br> 

<div id="footer" role="contentinfo">
<!-- <hr style="width: 100%;">
<hr style="width: 100%; border-color: black;"> -->
		<address>
			<em><a href="home" target="_blank" class="logo footfont"><span class="blind">HellChang</span></a></em>
			<em class="copy footfont">Copyright</em>
			<em class="u_cri footfont">©</em>
			<a href="home" target="_blank" class="u_cra footfont">HellChang Corp.</a>
			<span class="all_r footfont">All Rights Reserved.</span>
		</address>
</div>
<div id="code_u" style="display:none">${code}</div>
<div id="date_u" style="display:none">${date_date}</div>
<div id="idx_u" style="display:none">${idx}</div>
</body>

</html>
