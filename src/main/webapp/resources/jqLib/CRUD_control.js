$(function(){
	$('#ajax_join').click(function(){
		// input Data
		var id=$('#id').val();
		var password=$('#password').val();
		var name=$('#name').val();
		var phone=$('#nationNo').val() + "-" + $('#phoneNumber').val();
		var birthday=$('#yy').val()+"/"+$('#mm').val()+"/"+$('#dd').val();
		var gender=$('#gen').val();
		var address=$('#address').val()+ " " + $('#address1').val()+ " " + $('#zipcode').val();
		console.log("id => " + id);
		console.log("password => " + password);
		console.log("name =>" + name);
		console.log("phone => " + phone);
		console.log("birthday => " + birthday);
		console.log("gender => " + gender);
		console.log("address => " + address);
		
		var formData = new FormData();
		formData.append('id',id);
		formData.append('password',password);
		formData.append('name',name);
		formData.append('phone',phone);
		formData.append('birthday',birthday);
		formData.append('gender',gender);
		formData.append('address',address);
		console.log("going into ajax ...")
		$.ajax({
			type:"Post",
			url:"join",
			data: formData,
			processData:false, 
			contentType:false,
 			success:function(result){
				$('#resultArea').html(result);
			}
		}); //ajax
	}); // ajoin_click
})