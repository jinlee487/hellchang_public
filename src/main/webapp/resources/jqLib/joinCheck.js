
function pwCheck() {
	
	if ($('#psw').val() == $('#rpsw').val()) {
		$('#pMessage').html('');	
		
		return true;
	}else {
		$('#pMessage').html('Password 가틀립니다.');	
		$('#psw').focus();
		return false;
	} 
}; // pwCheck()

