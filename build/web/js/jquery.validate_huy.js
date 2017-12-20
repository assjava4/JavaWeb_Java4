$(document).ready(function() {
    // ------------- Phản hồi	---------------------
	// -------------------------------------------------------
	$("#addnew").validate({
		rules : {
			tieude : 'required'
			
		},
		messages : {
			tieude : 'Vui lòng nhập tên tiêu đề'
			
		
		}
	});
    });