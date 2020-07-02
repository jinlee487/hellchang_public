/*
 Equation to Calculate Your BMR
The Harris-Benedict Equation is often used to estimate basal metabolic rate.

Men: BMR = 88.362 + (13.397 x weight in kg) + (4.799 x height in cm) - (5.677 x age in years)
Women: BMR = 447.593 + (9.247 x weight in kg) + (3.098 x height in cm) - (4.330 x age in years)
  
 */
function calcBMR(r,ID){
	var r = r[r.length-1];
	console.log("thi s i s r[3] => "+ r[3])
	var bmr = 88.362 + (13.397 * r[3]) + (4.799 *178) - (5.677 *28);
    document.getElementById(ID).innerHTML = bmr.toFixed(2);
}


google.charts.load('current', {'packages':['gauge','table','line','corechart','bar']}); 

function inbodybarchart(r,ID,ID2) {
    	var r = r[r.length-1];
    	document.getElementById(ID2).innerHTML = r[3];
    	var count;
    	if(r[3]<r[1]){
    		count = Math.ceil(r[3]/(Math.floor(r[1]/3)));
    	}
    	else if (r[1]<r[3]&&r[3]<(r[2]+r[1])){
    		count = Math.ceil(Math.floor(r[3]-r[1])/(Math.floor(r[2]/3))) + 3 ;
    		console.log(r[3] + 'the count is => ' + count);
    	}
    	else if ((r[2]+r[1])<r[3]){
    		count = Math.ceil((r[3]-(r[2]+r[1]))/10)+6;
    	}
	    var a=0,b=0,c=0,d=0,e=0,f=0,g=0,h=0,i=0;
	    console.log("this is count => " + count)
		switch(count) {
		  default:
		  case 9:
		  	 	i=1;
		  case 8:
				h=1;
		  case 7:
				g=1;
		  case 6:
				f=1;
		  case 5:
				e=1;
		  case 4:
				d=1;
		  case 3:
				c=1;
		  case 2:
				b=1;
		  case 1:
				a=1;	
		  case 0:    
		}
	    
	    var data = new google.visualization.DataTable();
	    data.addColumn('string','col');
	    data.addColumn('number','level');	  
	    data.addColumn({role: 'style'});
	    var data = google.visualization.arrayToDataTable([
	          ['Section', '1', { role: "style", type: 'string' }, '2', { role: "style", type: 'string' }, '3', { role: "style", type: 'string' }],
	          
	          ['Under', a,'stroke-color: #ffffff; stroke-width: 1; fill-color: #000000', 
	          b,'stroke-color: #ffffff; stroke-width: 1; fill-color: #000000', 
	          c, 'stroke-color: #ffffff; stroke-width: 1; fill-color: #000000'], 
	          
	          ['Normal', d, 'stroke-color: #ffffff; stroke-width: 1; fill-color: #e5e4e2', 
	          e, 'stroke-color: #ffffff; stroke-width: 1; fill-color: #e5e4e2', 
	          f,'stroke-color: #ffffff; stroke-width: 1; fill-color: #e5e4e2'],
	          
	          ['Over', g, "silver", h, "silver", i,"silver"]
	        ]);


	    var options = {
	   	          width: '100%',
	   	          height: 100,
	   	          chart: {
	   	          },
	   	          series: {
	   	            0: { tooltip : false, targetAxisIndex: '1' }, 
	   	            1: {  tooltip : false,targetAxisIndex: '2' },
	   	       		  2: {  tooltip : false,targetAxisIndex: '3' }
				   	 },	         
	    	    legend: { position: 'none' },
	    	    hAxis: {
	    	    	textStyle: {
	    	            color: "#000",
	    	            fontSize: 15,
	    	            bold: true,
	    	            italic: false
	    	        }
	    	    },
		        vAxis: {
		          ticks: [0, 1],
		          // gridlines: {color: '#333', count: 15},
		          textPosition: 'none'
		          },
	            bar: { groupWidth: "99%" }
	          };
		        var classicChart = new google.visualization.ColumnChart(document.getElementById(ID));
		        classicChart.draw(data, options);
	        
	        };