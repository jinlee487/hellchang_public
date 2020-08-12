$(document).ready(function(){

	$('.ddel').on('click', function(){
		$.ajax({
			type: "post",
			url: "delete",
			success: function(){
				location.reload();
//				location.href="home";
			}
		});// ajax
	}); // file del
	$('.ccan').on('click',function(){
		$('#deleteModal').modal('hide');
	});
});//ready