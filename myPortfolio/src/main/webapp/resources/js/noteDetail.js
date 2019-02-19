$(document).ready(function(){
	
	initPage();
	
	$("#btnSubmit").on("click", function(){
		saveNote();		
	});
	
	$("#btnModify").on("click", function(){
		updateNote();
	});
	
	$("#btnList").on("click", function(){
		location.href = "getNoteList";
	});
})


var mode;


function initPage(){
	mode = $("#mode").val();
	if(mode == "insert"){
		$("#btnSubmit").css("display", "block");
		$("#btnModify").css("display", "none");
	}else if(mode == "update"){
		$("#btnSubmit").css("display", "none");
		$("#btnModify").css("display", "block");	
	}

}


function saveNote(){
	
	var valid = noteValidation();
	if(!valid.isValid){
		alert(valid.msg);
		return false;
	}	
	
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
	
}


function afterSave(){
	$("#btnSubmit").css("display", "none");
	location.href = "guests";
}


function updateNote(){
	var valid = noteValidation();
	if(!valid.isValid){
		alert(valid.msg);
		return false;
	}	
	
	var param = {
		noteNo : $("#inputNoteNo").val(),
		title : $("#inputTitle").val(),	
		contents : $("#textContents").val()	
	};
	
	$.ajax({	
		url			: "updateGuestNote",
		type		: "POST",
		data		: param,
		dataType    : "text",
		success     : function(data){ 
			alert(data); 
			afterUpdate();
        },
        error       : function(data){
       	 	alert(data); 
        }
	});
}


function noteValidation(){
	
	var isValid = true;
	var msg = "";
	
	if(mode == "insert"){
		
		
	}else if(mode == "update"){
		if($("#inputPwd").val() != $("#confirmPwd").val()) {
			isValid = false;
			msg =  "Incorrect password!";
		}
		
	}
	
	var result = { 
			isValid : isValid,
			msg : msg
	};
	
	return result;
}


function afterUpdate(){
	
}