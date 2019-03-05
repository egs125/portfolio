$(document).ready(function(){
	
	initPage();
	
	$("#btnSubmit").on("click", function(){
		saveNote();		
	});
	
	$("#btnModify").on("click", function(){
		updateNote();
	});
	
	$("#btnList").on("click", function(){
		history.back();
	});
})


var mode;


function initPage(){
	mode = $("#mode").val();
	
	if(mode == "insert"){
		$("form").find(":input").attr("readonly", false);
		$("form").find(":input").val("");
		
		$("#btnSubmit").css("display", "block");
		$("#btnModify").css("display", "none");
	}else if(mode == "update"){
		$("form").find(":input").attr("readonly", true);
		
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
	
	if($("#btnModify").text() == "Modify"){
		$("#btnModify").text("Save");
		
		$("#inputTitle").attr("readonly", false);
		$("#inputPwd").attr("readonly", false);
		$("#textContents").attr("readonly", false);	
	}else{
		var valid = noteValidation();
		if(!valid.isValid){
			alert(valid.msg);
			return false;
		}	

		var param = {
			noteNo : $("#inputNoteNo").val(),
			pwd : $("#inputPwd").val(),
			title : $("#inputTitle").val(),	
			contents : $("#textContents").val()	
		};

		$.ajax({	
			url	: "updateGuestNote",
			type	: "POST",
			data	: param,
			dataType : "text",
			success : function(data){ 
				alert(data); 
				if(data == "Saved!") afterUpdate();
			},
			error : function(data){
				
			}
		});
	}
}


function noteValidation(){
	
	var isValid = true;
	var msg = "";
	
	var titleByte = byteCheck($("#inputTitle"));
	var contentByte = byteCheck($("#textContents"));
	
	if(Number(titleByte) > 100){
		isValid = false;
		msg += "Title should be less than 100 characters\n";
	}
	
	if(Number(contentByte) > 2000){
		isValid = false;
		msg += "Contents should be less than 2000 characters\n";
	}
	
	if(mode == "insert"){
		var writerByte = byteCheck($("#inputWriter"));
		if(Number(writerByte) > 100){
			isValid = false;
			msg += "Writer should be less than 100 characters\n";
		}	
	}
	
	var result = { 
			isValid : isValid,
			msg : msg
	};
	
	return result;
}


function afterUpdate(){
	$("#btnModify").text("Modify");
	initPage();
}

function byteCheck(input){
	
	var byte = 0;
	
	for(var i = 0; i < input.val().length; i++){
		var oneChar = escape(input.val().charAt(i));
		if(oneChar.length == 1){
			byte++;
		}else if(oneChar.indexOf("%u") != -1){
			byte += 2;
		}else if(oneChar.indexOf("%") != -1){
			byte++;
		}
	}
	return byte;
}

