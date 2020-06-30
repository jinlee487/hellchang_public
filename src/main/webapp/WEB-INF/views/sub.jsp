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
  <script src="resources/jqLib/jquery-3.2.1.min.js"></script>
  <script>
	  function rm(){
		  for(var i=1; i<=10; i++)	{
			 
			 $('.num'+i).html(" ");
			 $('.result'+i).html(" ");  
		  }
		  
		
		  
		var kg = parseInt($('#kg').val());
		var rep = parseInt($('#rep').val());
		
		arm = kg/(1.0278-(0.0278*rep));
		// arm = 1rm 구한 값
		var j = rep;
		for(var i=1; i<=rep; i++){
			sum =kg/(1.0278-(0.0278*i));
			sum = sum.toFixed(2);
			$('.num'+i).html(j+ " R M ");
			$('.result'+i).html(sum);
			j--;
		}
	}	 
	/* 	
	//var sum = 0;
		//if(rep == 1){
			for(var i=1; i<=10; i++){
				sum = kg + (kg*0.025*i);
				//sum = sum.toFixed(2);

				$('.num'+i).html(i+ " R M ");
				$('.result'+i).html(sum);
			}	*/		
		 // }else if(rep )
	
  	
  
  </script>
  <style>

  #p_pos{
  	margin-right: 80px;
  }
  
  #top_na{
  	position: fixed;
  	z-index: 100;
  	width: 100%;
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
	}
  
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
      background-color: #3d3b3c;
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
  </style>
</head>
<body>

</body>
</html>
