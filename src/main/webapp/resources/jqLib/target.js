$(function(){
	var chest = ['BenchPress'];
	var back = ['Deadlift'];
	var leg = ['Squat'];
	$('#target0').change(function(){
		var sel = $(this).val();
		if(sel == 'chest'){
			$('.op').remove();
			$.each(chest,function(i,item){
				$('#targeting0').append('<option class = "op">'+item+'</option>');
			});
		}
		else if(sel == 'back'){
			$('.op').remove();
			$.each(back,function(i,item){
				$('#targeting0').append('<option class = "op">'+item+'</option>');
			});
		}
		else if(sel == 'leg'){
			$('.op').remove();
			$.each(leg,function(i,item){
				$('#targeting0').append('<option class = "op">'+item+'</option>');
			});
		}
	})

function add_row() {
    var test0 = document.getElementById('test');
    var row = test0.insertRow(test0.rows.length ); // 하단에 추가
    $('#test').append(
		"<tr><td>" +
		"<select id = 'target0'>"+
		"<option>-------------"+
		"<option value = 'chest'>가슴"+
		"<option value = 'back'>등"+
		"<option value = 'leg'>하체 </select>" +
		"<select id='targeting0'>"+
		"<option value=''>--------------------</option>"+
		"</select></td></tr>"
	);

}
});