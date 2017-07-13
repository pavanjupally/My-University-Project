
$('#staffFormSubmit').submit(function(){
	var subject = $('#subject').val()
	var marksStudents = $('#marksStudents').val()
	
	
	var marks = [];
	marks=marksStudents.split(",");
	
	$('#marksDisplay').html("");
	
	if(marks.length===20){
		return true;
	}
	else{
		$('#marksDisplay').html("Please enter marks for all 20 students!");
		return false;
	}
	
})