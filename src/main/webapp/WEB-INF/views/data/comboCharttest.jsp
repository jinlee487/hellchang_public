<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
   <script src="jquery-3.2.1.min.js"></script>
   
    <script type="text/javascript">
    google.charts.load('current', {'packages':['gauge','table','line','corechart','bar']});
   
    
    var r;
    var totalPage;
    var rPage;
    var currPage;
    var lastPage;
    $(function(){    	  
  	  $('#isubmit').click(function(){
	  		  $('#bbb').css({display:'Block'});
	  		  $('#fff').css({display:'Block'});
	
	  		  r = [];
	  		  //console.log("this is the type of date => " + Date.parse(new Date(2020, 0,  1, 19, 30)));
		  	  for (var i=0;i<parseInt($('#ninput').val());i++){
		  		r.push([(new Date(Date.parse(new Date(2020, 0,  1, 19, 30)) + i * 7 * 24 * 60 * 60 * 1000)), 59.2, 21, 85-i]);
		  	  }
		  	  console.log(r);
		  	  console.log("this is the length of r => " + r.length);
	  		  totalPage=r.length/7;
	  		  lastPage=r.length%7;

		      google.charts.setOnLoadCallback(function(){
		    	  DataTableTest(r);
		    	  barchart(r);

		    	  
		      });
		      
		  	  if(totalPage==0){
			      google.charts.setOnLoadCallback(function(){
			    	  ComboChartTest(r);
			      });
		  	  }
		  	  else{
		  		  currPage=1;
		  		  rPage = r.slice(Math.max(r.length - 7, 1))
		  		 console.log(rPage);
		  		  google.charts.setOnLoadCallback(function(){
			    	  ComboChartTest(rPage);
			      });
		  		  
		  	  }
	  	  });
		  $('#bbb').click(function(){
			  if(7<=r.length-7*currPage&&totalPage!=0){
					currPage +=1;
					  console.log("bbb this is the current count => " + currPage)
	
		  		    rPage = r.slice(r.length-7*currPage, r.length-7*(currPage-1));
			  		  google.charts.setOnLoadCallback(function(){
				    	  ComboChartTest(rPage);
				      });
			  }
			  else if (r.length-7*currPage<7&&totalPage!=0){
		  		  currPage += 1;
				  console.log("bbb this is the current count => " + currPage)
	
		  		  rPage = r.slice(0, 7);
		  		  google.charts.setOnLoadCallback(function(){
			    	  ComboChartTest(rPage);
			      });
			 	}
			 })
		  $('#fff').click(function(){
			  if(totalPage!=0){
					currPage -=1;
					  console.log("fff this is the current count => " + currPage)
		
		  		    rPage = r.slice(r.length-7*currPage, r.length-7*(currPage-1));
			  		  google.charts.setOnLoadCallback(function(){
				    	  ComboChartTest(rPage);
				      });
			  }
			})  			  
  	});    
    function DataTableTest(r) {
    	 
    	var data = new google.visualization.DataTable();
	    data.addColumn('date','Date');
	    data.addColumn('number','Low');
	    data.addColumn('number','Avg weight for height');
	    data.addColumn('number','Weight');
	    
		data.addRows(r);

		  var table = new google.visualization.Table(document.getElementById('datatable_div'));
		  table.draw(data, {showRowNumber: true, width: '100%', height: '100%'});
	
		  google.visualization.events.addListener(table, 'select', function() {
	    var row = table.getSelection()[0].row;
	    alert('You selected ' + data.getValue(row, 0));
	  });
    	
    }
    function ComboChartTest(r) {
		console.log("this is last r date => " + r[r.length-1][0])
		console.log("this is r[0][0] = > " + r[0][0])
	    var data = new google.visualization.DataTable();
	    data.addColumn('string','Date');
	    data.addColumn('number','Low');
	    data.addColumn('number','Avg weight for height');
	    data.addColumn('number','Weight');
	    data.addColumn({type: 'string', role: 'annotation'});

	    data.addRows([
			[null, r[0][1], r[0][2],null,null]
		]); 
	    for (var i=0;i<r.length;i++){
	    	data.addRows([
	    		[datetimetoString(r[i][0]), r[i][1], r[i][2],r[i][3],(r[i][3]).toString()]
	    		]); 
	    }
		data.addRows([
			[null, r[r.length-1][1], r[r.length-1][2],null,null]
		]); 

  		  var columnRange = data.getColumnRange(3);
	      var options = {
		    	tooltip: {isHtml: true},
		    	legend: {position: 'top'},
		        chartArea: {
		          width: '80%',
		          backgroundColor: {
		              stroke: '#fff',
		              strokeWidth: 1
		          }
		        },
	
		        isStacked: true,
		        series: {
	    	          // low
	    	          0: {	    	        	
	    	        	  tooltip : false,
	    	            areaOpacity: 0.3,
	    	            color: 'white',
	    	            visibleInLegend: false
	    	          },
	
	    	          // high
	    	          1: {
	    	        	  tooltip : false,
	    	            areaOpacity: 0.3,
	    	            color: '#A5D6A7',
	    	            visibleInLegend: true
	    	          },
	
	    	          // weight
	    	          2: {
	    	            color: '#01579B',
	    	            type: 'line',
	    	            pointSize: 10
	    	          }
		        },
	        seriesType: 'area',
	        title: '체중 (kg)',
	        hAxis: {
	          //  format: 'yy.MM.dd\nhh:mm',
	          //  gridlines: {color: '#333',count: 15},
		        //textPosition: 'none'
	            baselineColor: '#000000'
	          },
	        vAxis: {
	        	baselineColor: '#000000',
	        	//baseline: 0,
	        	viewWindow: {
		          min: columnRange.min-1,
		          max: columnRange.max+1
	        	},
	          // gridlines: {color: '#333', count: 15},
	          textPosition: 'none'
	          }
	      };
	      var chart = new google.visualization.ComboChart(document.getElementById('combochart_div'));
	      chart.draw(data, options);
		}
    function barchart(r) {
    	var r = r[r.length-1];
    	document.getElementById('woutput').innerHTML = 'Weight<br><strong>'+r[3]+'</strong>kg';
    	var count;
    	if(r[3]<r[1]){
    		count = Math.ceil(r[3]/(Math.floor(r[1]/3)));
    	}
    	else if (r[1]<r[3]&&r[3]<(r[2]+r[1])){
    		count = Math.ceil((r[3]-r[1])/(Math.floor(r[2]/3))) + 3 ;
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
	   	          width: 900,
	   	          height: 100,
	   	          chart: {
	   	            title: 'Nearby galaxies',
	   	            subtitle: 'distance on the left, brightness on the right'
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
		        var classicChart = new google.visualization.ColumnChart(document.getElementById('barchart_div'));
		        classicChart.draw(data, options);
	        
	        };
	        
     google.charts.load("visualization", "1", { packages: ["corechart"] });
     google.charts.setOnLoadCallback(init);
     function drawChart(myID, titler, known, unknown) {
         var data = google.visualization.arrayToDataTable([
             ['Task', 'Hours per Day'],
             ['Work',     11],
             ['Eat',      2],
             ['Commute',  2],
             ['Watch TV', 2],
             ['Sleep',    7]
         ]);
         var options = {
             title: titler,
             pieHole: 0.4
             //colors: ['#000000', '#cdcdcd'],
             //pieSliceText: 'none',
             //legend: { position: 'none' },
             //tooltip: { text: 'percentage' },
             //tooltip: { textStyle: { fontSize: 12 } }
         };

         var chart = new google.visualization.PieChart(document.getElementById(myID));
         chart.draw(data, options);
     }
     function init() {
         drawChart('donutchart1', 'VB.NET', 8, 2);
         drawChart('donutchart2', 'Javascript', 4, 6);
     } 
	        
	        
	        
    function datetimetoString(date){
    	var d = date,
   	        month = '' + (d.getMonth() + 1),
   	        day = '' + d.getDate(),
   	        year = (''+d.getFullYear()).slice(-2);
			hour = ''+ d.getHours();
			min = ''+d.getMinutes();
   	    if (month.length < 2) 
   	        month = '0' + month;
   	    if (day.length < 2) 
   	        day = '0' + day;
		if (hour.length<2)
			hour = '0' + hour;
		if (min.length<2)
			min = '0' + min;
		console.log(year+'.'+day+'.'+min+'\n'+hour+':'+min);
   	    return (year+'.'+day+'.'+min+'\n'+hour+':'+min);
    	}
    
    </script>
    <style>
    .donutCell
{
    position: relative;
}

.donutDiv
{
/*     width: 256px;
    height: 256px; */
}

.centerLabel
{
    position: absolute;
    left: 305px;
    top: 230px;
    width: 50px;
    line-height: 50px;
    text-align: center;
    font-family: Arial, Helvetica, sans-serif;
    font-size: 36px;
    color: maroon;
}
    </style>
<title>Insert title here</title>
</head>
<body>
<input id="ninput" value="14" size="28"><br>
<button id="isubmit" class="button">SUBMIT</button>
<div id="datatable_div" style="width: 100%; height: 500px;"></div>
<div id="data_weight"></div>
<div id="combochart_div" style="width: 100%; height: 500px;"></div>
<button id="bbb" class="button" style="display:none;">Back</button>
<button id="fff" class="button" style="display:none;">Forward</button>
<h3 id="woutput"></h3>&nbsp;&nbsp;&nbsp;<div id="barchart_div" style="width: 100%; height: 100%;"></div>

<table class="Charts">
    <tr>
        <td class="donutCell">
            <div id="donutchart1" class="donutDiv" style="width: 900px; height: 500px;"></div>
            <div class="centerLabel">8/10</div>
        </td>
        <td class="donutCell">
            <div id="donutchart2" class="donutDiv" style="width: 900px; height: 500px;"></div>
            <div class="centerLabel">4/10</div>
        </td>
    </tr>
</table>
<br>
<br>
</body>
</html>