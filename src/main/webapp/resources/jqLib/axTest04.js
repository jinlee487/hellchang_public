$(function(){
	$('.cseq').hover(function(e){
		seq = $(this).html();
		console.log(seq);
		
		var aleft = e.pageX;
		var atop = e.pageY;
		console.log('left = > '+ aleft + 'top =>' + atop);
		$.ajax({
			type: "Get",
			url : "jsbdetail",
			data: {
				seq : seq	
			},
			success: function(data){
				$('.result').html('');
				$('#content').html(data.content).css({
					display: "block",
					left : aleft,
					top : atop
				});
			}, function(){																				
				$('.result').html('');
				$('#content').css({
					display : 'none'
				})
			} 
		}); // ajax
	}); // cseq
	
	
	
	
	
	
	
}); // read();
