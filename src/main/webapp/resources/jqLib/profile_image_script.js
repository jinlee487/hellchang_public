$(document).ready(function(){
	$('.sel').on('click', function(){
		$('input[type=file]').click();
	}); // file select 
	
	$('#image_file').change(function(){
		var chImg = document.chImg;
		chImg.submit();
	}); // file submit 
	
	$('.del').on('click', function(){
		$.ajax({
			type: "post",
			url: "imgUpdate",
			data: {
				code : 44
			},
			success: function(){
				location.href="mdetail?code=U"
			}
		});// ajax
	}); // file del
	$('.can').on('click',function(){
		$('#myModal').modal('hide');
	});
});//ready