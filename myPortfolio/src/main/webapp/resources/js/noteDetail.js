$(document).ready(function(){
	
	$("#btnSubmit").on("click", function(){
		
		var param = {
				
				title : $("#inputTitle").val(),
				writer : $("#inputWriter").val(),
				pwd : $("#inputPwd").val(),
				contents : $("#textContents").val()	
		};
		
		$.ajax({	
			url			: "writeGuestNote",
			type		: "POST",
			data		: param,
			dataType    : "text",
			success     : function(data){ 
				alert(data); 
				afterSave();
	        },
	        error       : function(data){
	       	 	alert(data); 
	        }
		});
		
	});
})

function afterSave(){
	$("#btnSubmit").css("display", "none");
	location.href = "guests";
}