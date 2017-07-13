$('#registerFormSubmit').submit(function(){
	//var firstName= $('#firstName').val();
	//var lastName= $('#lastName').val();
	//var inputEmail= $('#inputEmail').val();
	
	var inputPwd= $('#inputPwd').val();
	var confirmPwd= $('#confirmPwd').val();
	
	//$('#pwdError').html("");
	$('#confirmPwdError').html("");
	
//	if(inputPwd.length < 6){
//		$('#pwdError').html("password should be minimum of 6 characters long");
//		return false;
//	}
	
	if(inputPwd === confirmPwd){	
		return true;
	}
	else{
		$('#confirmPwdError').html("passwords did not match!");
		return false;
	}
})

//$('#inputPwd').keyup(function(){
//	var inputPwd = $('#inputPwd').val();
//	
//	if(inputPwd.length < 6){
//		$('#pwdGroup').removeClass('has-success').addClass('has-error');
//		$('#pwdGlyphicon').removeClass('glyphicon-ok').addClass('glyphicon-remove');
//	}
//	else{
//		$('#pwdGroup').removeClass('has-error').addClass('has-success');
//		$('#pwdGlyphicon').removeClass('glyphicon-remove').addClass('glyphicon-ok');
//	}
//})
//
//$('#confirmPwd').keyup(function(){
//	var confirmPwd = $('#confirmPwd').val();
//	var inputPwd = $('#inputPwd').val();
//	
//	if(inputPwd!=confirmPwd){
//		$('#confirmPwdGroup').removeClass('has-success').addClass('has-error');
//		$('#confirmGlyphicon').removeClass('glyphicon-ok').addClass('glyphicon-remove');
//	}
//	else{
//		$('#confirmPwdGroup').removeClass('has-error').addClass('has-success');
//		$('#confirmGlyphicon').removeClass('glyphicon-remove').addClass('glyphicon-ok');
//	}
//})




