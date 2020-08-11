$(document).ready(function(){
	var data;
	var data1;
	
	callback(loadPage,function(){
		document.getElementById("defaultOpen").click();
	})

	$(window).resize(function(){callback(reloadPage,
		function() { 
		document.getElementsByClassName("tablink active")[0].click();})}
	); 

	
	$('#resultsback').click(function(){
		$('#collapse1').collapse("hide");
		var data;

			$.ajax({
				type:"Post",
				url:"inbodyDetailAjax",
				data:{
					direction:"backward",
					date_date:document.getElementById("results_date").innerHTML,
	 				idx:document.getElementById("id_div").innerHTML,
	 				check:"back"
				},
				success:function(jsondata){
					data=jsondata.InbodyVO;
				    console.log("first try inside success after ajax => \n" + data.date_date)

	        	    document.getElementById("results_date").innerHTML = data.date_date;
	        	    console.log("after ajax => " + document.getElementById("results_date").innerHTML);
				    document.getElementById("id_div").innerHTML = data.idx;
	        		inbodybarchart(data.weight,data.weight_under,data.weight_over-data.weight_under,'wChartID','wChartID2');
	        		inbodybarchart(data.muscle_mass,data.muscle_mass_under,data.muscle_mass_over-data.muscle_mass_under,'mmChartID','mmChartID2');
	        		inbodybarchart(data.fat_mass,data.fat_mass_under,data.fat_mass_over-data.fat_mass_under,'fmChartID','fmChartID2');
	        		inbodybarchart(data.bmi,data.bmi_under,data.bmi_over-data.bmi_under,'bChartID','bChartID2');
	        		inbodybarchart(data.pbf,data.pbf_under,data.pbf_over-data.pbf_under,'pChartID','pChartID2');
	        		inbodybarchart(data.vfl,data.vfl_under,data.vfl_over-data.vfl_under,'vChartID','vChartID2');
	        		calcBMR(data.bmr,'bmiID');	 
				}
			})

		 });
		 
	$('#resultsforward').click(function(){
		$('#collapse1').collapse("hide");
		var data;

			$.ajax({
				type:"Post",
				url:"inbodyDetailAjax",
				data:{
					direction:"forward",
					date_date:document.getElementById("results_date").innerHTML,
	 				idx:document.getElementById("id_div").innerHTML
				},
				success:function(jsondata){
					data=jsondata.InbodyVO;
				    console.log("first try inside success after ajax => \n" + data.date_date)

	        	    document.getElementById("results_date").innerHTML = data.date_date;
	        	    console.log("after ajax => " + document.getElementById("results_date").innerHTML);
				    document.getElementById("id_div").innerHTML = data.idx;
	        		inbodybarchart(data.weight,data.weight_under,data.weight_over-data.weight_under,'wChartID','wChartID2');
	        		inbodybarchart(data.muscle_mass,data.muscle_mass_under,data.muscle_mass_over-data.muscle_mass_under,'mmChartID','mmChartID2');
	        		inbodybarchart(data.fat_mass,data.fat_mass_under,data.fat_mass_over-data.fat_mass_under,'fmChartID','fmChartID2');
	        		inbodybarchart(data.bmi,data.bmi_under,data.bmi_over-data.bmi_under,'bChartID','bChartID2');
	        		inbodybarchart(data.pbf,data.pbf_under,data.pbf_over-data.pbf_under,'pChartID','pChartID2');
	        		inbodybarchart(data.vfl,data.vfl_under,data.vfl_over-data.vfl_under,'vChartID','vChartID2');
	        		calcBMR(data.bmr,'bmiID');	 
				}
			})
		 });
	
	
	$('#sel1').change(function(){
		
		console.log($("#sel1 :selected").attr("id"));
		console.log(parseInt($("#sel1 :selected").attr("id").substr(1)));
		$("#sel2").children().each(function(n, i) {
			var id = this.id;
		
			console.log("this is the idx => " + n);
			console.log("this is the id => " + id);
			if (parseInt($("#sel1 :selected").attr("id").substr(1))<parseInt(id.substr(1))){
				$('#'+id).prop('disabled', false).css("background-color", "white");
			}
			else {
				$('#'+id).prop('disabled', true).css("background-color", "grey");
			}
		})
	})
	$('#sel2').change(function(){
		console.log($("#sel2 :selected").attr("id"));
		console.log(parseInt($("#sel2 :selected").attr("id").substr(1)));
		$("#sel1").children().each(function(n, i) {
			var id = this.id;
		
			console.log("this is the idx => " + n);
			console.log("this is the id => " + id);
			if (parseInt(id.substr(1))<parseInt($("#sel2 :selected").attr("id").substr(1))){
				$('#'+id).prop('disabled', false).css("background-color", "white");
			}
			else {
				$('#'+id).prop('disabled', true).css("background-color", "grey");
			}
		})
	});
	$('#reset_date').click(function(){
	    $('#sel1 option').prop('selected', function() {
	        return this.defaultSelected;
	        })
       	$('#sel2 option').prop('selected', function() {
	        return this.defaultSelected;
	        })	
	
		$("#sel1").children().each(function(n, i) {
			var id = this.id;
		
			console.log("this is the idx => " + n);
			console.log("this is the id => " + id);
			if (parseInt(id.substr(1))<parseInt($("#sel2 :selected").attr("id").substr(1))){
				$('#'+id).prop('disabled', false).css("background-color", "white");
			}
			else {
				$('#'+id).prop('disabled', true).css("background-color", "grey");
			}
		})
		$("#sel2").children().each(function(n, i) {
			var id = this.id;
		
			console.log("this is the idx => " + n);
			console.log("this is the id => " + id);
			if (parseInt($("#sel1 :selected").attr("id").substr(1))<parseInt(id.substr(1))){
				$('#'+id).prop('disabled', false).css("background-color", "white");
			}
			else {
				$('#'+id).prop('disabled', true).css("background-color", "grey");
			}
		});
	});
	
	$('#reset_date_ajax').click(function(){
		
		reloadGraphs();		
	
		})
	$("#collapse1").on("hide.bs.collapse", function(){
		$("#results_sign").removeClass('glyphicon-collapse-up').addClass('glyphicon-collapse-down');
		});
	$("#collapse1").on("show.bs.collapse", function(){
		$("#results_sign").removeClass('glyphicon-collapse-down').addClass('glyphicon-collapse-up');
		});	
	$("#collapse2").on("hide.bs.collapse", function(){
		$("#hist_sign").removeClass('glyphicon-collapse-up').addClass('glyphicon-collapse-down');
		});
	$("#collapse2").on("show.bs.collapse", function(){
		$("#hist_sign").removeClass('glyphicon-collapse-down').addClass('glyphicon-collapse-up');
		});		

	$(window).scroll(function () {
		if ($(window).scrollTop() > 20 && $('.tablink:first').hasClass('active')) {
		    $('#inbodyBtn').css({
		    	"display":"block"
		    	});
		  } else {
			$('#inbodyBtn').css("display","none");
		  }
	});
	
	$('.io').on("click",function(){
		if($(this).attr("id")=='ii'){
			location.href = "inbodyInsertf";  
		}
		else if($(this).attr("id")=='iu'){
			if($('#results_date').html()==''){
				 alert('No data!');
			}
			else{
			location.href = "inbodyDetail?code=U&date_date="+$('#results_date').html()+"&idx="+$("#id_div").html();
			}
		}
		else if($(this).attr("id")=='is'){
			location.href = "inbodySharef";
		}
	});
	
});

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
  document.body.scrollTop = 0;
  document.documentElement.scrollTop = 0;
}


function datePick(elmnt, callback, idx){ 
		document.getElementById("results_date").innerHTML=elmnt.innerHTML;
	    document.getElementById("id_div").innerHTML = idx;
		callback(elmnt.innerHTML,idx); 
	   } 

function loadPage(){
		console.log("this is load page !")
		google.charts.load('current', {'packages':['gauge','table','line','corechart','bar']}); 
		google.charts.setOnLoadCallback(InitialloadGraphs);
		google.charts.setOnLoadCallback(InitialloadResults)


}
function reloadPage() {
		reloadResults(document.getElementById("results_date").innerHTML,document.getElementById("id_div").innerHTML);
	 	reloadGraphs();
}
function updatePage() {
	console.log('start updatepage');
	reloadResults($('#date_u').html(),$('#idx_u').html());
}
function InitialloadGraphs() {
	var data;

		$.ajax({
			type:"Post",
			url:"inbodyListAjax",
			success:function(jsondata){
				if(jsondata.check=="list is null"){
				}
				else{
					data=jsondata.InbodyVO_List;
					
	                var start = "";
	                var end = "";
	                $('#selected_date').html(data[0].date_date.slice(0, -3) + " ~ " + data[data.length-1].date_date.slice(0, -3));
					var r1 = [], r2 = [], r3 = [], r4 = [], r5 = [], r6 = [];
					
	                var idx=0;
	                $.each(data, function (id, vo) {
	                    if (idx==0){                 
	                    	start += '<option id="s' + idx + '" selected="selected">'+ vo.date_date.slice(0, -3) + '</option>';
							end +=  '<option id="e' + idx + '">'+ vo.date_date.slice(0, -3) + '</option>'; 
							}
	                    
						
	                    else if (idx==(data.length-1)){                 
		                    	start += '<option id="s' + idx + '">'+ vo.date_date.slice(0, -3) + '</option>';
								end +=  '<option id="e' + idx + '" selected="selected">'+ vo.date_date.slice(0, -3) + '</option>'; 
								}
	                    else {
	                    	start += '<option id="s' + idx + '">'+ vo.date_date.slice(0, -3) + '</option>';
	    					end +=  '<option id="e' + idx + '">'+ vo.date_date.slice(0, -3) + '</option>';
	                    }
						idx++;
	
					  	r1.push([vo.date_date,vo.weight_under,vo.weight_over-vo.weight_under,vo.weight]);
					  	r2.push([vo.date_date,vo.muscle_mass_under,vo.muscle_mass_over-vo.muscle_mass_under,vo.muscle_mass]);
					  	r3.push([vo.date_date,vo.fat_mass_under,vo.fat_mass_over-vo.fat_mass_under,vo.fat_mass]);
					  	r4.push([vo.date_date,vo.bmi_under,vo.bmi_over-vo.bmi_under,vo.bmi]);
					  	r5.push([vo.date_date,vo.pbf_under,vo.pbf_over-vo.pbf_under,vo.pbf]);
					  	r6.push([vo.date_date,vo.vfl_under,vo.vfl_over-vo.vfl_under,vo.vfl]);
	
	                });
	                
	                inbodycombochart(r1,'wComboID');
	                inbodycombochart(r2,'mmComboID');
	                inbodycombochart(r3,'fmComboID');
	                inbodycombochart(r4,'bComboID');
	                inbodycombochart(r5,'pComboID');
	                inbodycombochart(r6,'vComboID');
	
	        		$('#sel1').append(start);
	        		$('#sel2').append(end);
				}
	/* 				$('#s0').prop('selected', true);
					$('#e' +(idx-1)).prop('selected', true);
					console.log("this is #s0 selected => " + $("#sel1").val());
					console.log("this is #e11 selected => " + $("#sel2").val());
					
				    $('#sel1 option').prop('selected', function() {
				    	if (this.defaultSelected==true)
				        console.log("#sel1 this.defaultSelected => "  + this.id);
				        })
			       	$('#sel2 option').prop('selected', function() {
			       		if (this.defaultSelected==true)
				        console.log("#sel2 default this.defaultSelected => "  + this.id);
				        })	
				         */
		}
	});
}
function reloadGraphs(){

	var data;

	$.ajax({
		type:"Post",
		url:"inbodyListAjax",
		data:{
			start_date:$("#sel1").val(),
			end_date:$("#sel2").val() 
		},
		success:function(jsondata){
			if(jsondata.check=="list is null"){
			}
			else{
				data=jsondata.InbodyVO_List;
	            var start = "";
	            var end = "";
	            $('#selected_date').html(data[0].date_date.slice(0, -3) + " ~ " + data[data.length-1].date_date.slice(0, -3));
				var r1 = [], r2 = [], r3 = [], r4 = [], r5 = [], r6 = [];
				
	            var idx=0;
	            $.each(data, function (id, vo) {
				  	r1.push([vo.date_date,vo.weight_under,vo.weight_over-vo.weight_under,vo.weight]);
				  	r2.push([vo.date_date,vo.muscle_mass_under,vo.muscle_mass_over-vo.muscle_mass_under,vo.muscle_mass]);
				  	r3.push([vo.date_date,vo.fat_mass_under,vo.fat_mass_over-vo.fat_mass_under,vo.fat_mass]);
				  	r4.push([vo.date_date,vo.bmi_under,vo.bmi_over-vo.bmi_under,vo.bmi]);
				  	r5.push([vo.date_date,vo.pbf_under,vo.pbf_over-vo.pbf_under,vo.pbf]);
				  	r6.push([vo.date_date,vo.vfl_under,vo.vfl_over-vo.vfl_under,vo.vfl]);
	            });
	            
	            inbodycombochart(r1,'wComboID');
	            inbodycombochart(r2,'mmComboID');
	            inbodycombochart(r3,'fmComboID');
	            inbodycombochart(r4,'bComboID');
	            inbodycombochart(r5,'pComboID');
	            inbodycombochart(r6,'vComboID');
	
	/* 			$('#s0').prop('selected', true);
				$('#e' +(idx-1)).prop('selected', true);
				console.log("this is #s0 selected => " + $("#sel1").val());
				console.log("this is #e11 selected => " + $("#sel2").val());
				
			    $('#sel1 option').prop('selected', function() {
			    	if (this.defaultSelected==true)
			        console.log("#sel1 this.defaultSelected => "  + this.id);
			        })
		       	$('#sel2 option').prop('selected', function() {
		       		if (this.defaultSelected==true)
			        console.log("#sel2 default this.defaultSelected => "  + this.id);
			        })	 */
			}
		}
	});
}
	
	
function InitialloadResults() {
	var data;

		$.ajax({
			type:"Post",
			url:"inbodyDetailAjax",
 			data:{
 				direction: "initial"
 				},
			success:function(jsondata){
				if(jsondata.check=="list is null"){
				}
				else{
					data=jsondata.InbodyVO;
				    console.log("first try inside success after ajax => \n" + data.date_date)
	                var result = "";
	                $.each(jsondata.dateList, function (id, pvo) {
	                    result += '<li class="list-group-item"><span id=idx'+pvo.idx+' onclick="datePick(this,reloadResults,'+pvo.idx+')">'+ pvo.date_date +
	                    '</span></li>';
	                });
	        		$('#dddd').append(result);
	        	    document.getElementById("results_date").innerHTML = data.date_date;
	        	    document.getElementById("id_div").innerHTML = data.idx;
	        	    console.log("after ajax => " + document.getElementById("results_date").innerHTML)
	        		inbodybarchart(data.weight,data.weight_under,data.weight_over-data.weight_under,'wChartID','wChartID2');
	        		inbodybarchart(data.muscle_mass,data.muscle_mass_under,data.muscle_mass_over-data.muscle_mass_under,'mmChartID','mmChartID2');
	        		inbodybarchart(data.fat_mass,data.fat_mass_under,data.fat_mass_over-data.fat_mass_under,'fmChartID','fmChartID2');
	        		inbodybarchart(data.bmi,data.bmi_under,data.bmi_over-data.bmi_under,'bChartID','bChartID2');
	        		inbodybarchart(data.pbf,data.pbf_under,data.pbf_over-data.pbf_under,'pChartID','pChartID2');
	        		inbodybarchart(data.vfl,data.vfl_under,data.vfl_over-data.vfl_under,'vChartID','vChartID2');
	        		calcBMR(data.bmr,'bmiID');	 
	        		
	        		if($('#code_u').html()!=''){
	        			callback(updatePage,function(){
	        				document.getElementById("defaultOpen").click();			
	        			});
	        		}
				}
			}
		})

 	}
function reloadResults(date,idx){
	$('#collapse1').collapse("hide");
	var data; 
	if(document.getElementById("results_date").innerHTML.length!=0){
	    console.log("before ajax => " + document.getElementById("results_date").innerHTML)

		$.ajax({
			type:"Post",
			url:"inbodyDetailAjax",
 			data:{
 				date_date:date,
 				idx:idx,
 				direction:"reload"
 				},
 			success:function(jsondata){
				data=jsondata.InbodyVO;
			    console.log(" second try inside success after ajax => \n" + data.date_date)
			    document.getElementById("results_date").innerHTML = data.date_date;
			    console.log("after ajax => " + document.getElementById("results_date").innerHTML)
			    document.getElementById("id_div").innerHTML = data.idx;
				inbodybarchart(data.weight,data.weight_under,data.weight_over-data.weight_under,'wChartID','wChartID2');
				inbodybarchart(data.muscle_mass,data.muscle_mass_under,data.muscle_mass_over-data.muscle_mass_under,'mmChartID','mmChartID2');
				inbodybarchart(data.fat_mass,data.fat_mass_under,data.fat_mass_over-data.fat_mass_under,'fmChartID','fmChartID2');
				inbodybarchart(data.bmi,data.bmi_under,data.bmi_over-data.bmi_under,'bChartID','bChartID2');
				inbodybarchart(data.pbf,data.pbf_under,data.pbf_over-data.pbf_under,'pChartID','pChartID2');
				inbodybarchart(data.vfl,data.vfl_under,data.vfl_over-data.vfl_under,'vChartID','vChartID2');
				calcBMR(data.bmr,'bmiID');	
			}
		})	
	}	
}
function callback(a,b){
	a();
	b();
}
function openPage(evt,tabName) {
	  var i, tabcontent, tablinks;
	  // Get all elements with class="tabcontent" and hide them
	  tabcontent = document.getElementsByClassName("tabcontent");
	  for (i = 0; i < tabcontent.length; i++) {
	    tabcontent[i].style.height = 0;
	    tabcontent[i].style.overflowY  = "hidden";
	  }

	  // Get all elements with class="tablinks" and remove the class "active"
	  tablinks = document.getElementsByClassName("tablink");
	  for (i = 0; i < tablinks.length; i++) {
	    tablinks[i].className = tablinks[i].className.replace(" active", "");
	  }

	  // Show the current tab, and add an "active" class to the button that opened the tab
	  document.getElementById(tabName).style.height = "100%";
	  document.getElementById(tabName).style.overflowY  = "auto";

	  evt.currentTarget.className += " active";
	}
