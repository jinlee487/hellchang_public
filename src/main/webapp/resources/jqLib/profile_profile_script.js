$(document).ready(function(){
	Initialize();	
});

function Initialize() {
	var data;

		$.ajax({
			type:"Post",
			url:"myRoutineListAjax",
			success:function(jsondata){

				if(jsondata.list.length == 0){	
					document.getElementById("list_title").innerHTML = "No PlayList Found!";
				   	$('#table_row').append(
                			'<tr><td align="center" colspan="5" style="word-wrap:break-word;">Please navigate to Routine and create new playlists!</td></tr>');
                }
				else{
					var result = "";
	                $.each(jsondata.list, function (id, svo) {
	                	if(id==0){
	    	        	    document.getElementById("list_title").innerHTML = svo.title;

	                		$.ajax({
	                			type:"Post",
	                			url:"myRoutineDetailAjax",
	                			data:{
	                				title:$("#list_title").html(),
	                			},
	                			success:function(jsondata2){
	        	                $.each(jsondata2.list, function (id, savevoList) {
	        	                	$('#table_row').append(
	        	                			'<tr><td style="word-wrap:break-word;">'+savevoList.name+'</td><td>'+savevoList.target+'</td><td>'+savevoList.kg+'</td><td>'+savevoList.rep+'</td><td><input type="checkbox"></td></tr>');
	            	           	});
	                		}
	                			
	                	})}
	                	result += '<li class="list-group-item"><span id=seq'+svo.seq+' onclick="titlePick(this,reloadList)">'+ svo.title +
	                    '</span></li>';
	                });
					$('#dddd').append(result);	     		
				}
			}
		})

 	}
 	
function reloadList(title){
  		$.ajax({
 			type:"Post",
 			url:"myRoutineDetailAjax",
 			data:{
 				title:$("#list_title").html(),
 			},
 			success:function(jsondata2){
          		$.each(jsondata2.list, function (id, savevoList) {
          			$('#table_row').append(
          					'<tr><td>'+savevoList.name+'</td><td>'+savevoList.target+'</td><td>'+savevoList.kg+'</td><td>'+savevoList.rep+'</td><td><input type="checkbox"></td></tr>');
         		});				

 		}
	})

}
function titlePick(elmnt, callback){ 
	$('#collapse1').collapse("hide");
	document.getElementById("list_title").innerHTML=elmnt.innerHTML;
	$("#table_row").empty();
	callback(elmnt.innerHTML); 
   }  	
function callback(a,b){
	a();
	b();
}