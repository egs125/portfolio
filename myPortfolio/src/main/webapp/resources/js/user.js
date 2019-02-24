$(document).ready(function(){
	
});


function addUser(){
	
	var f = document.createElement("form");
	
	var idParam = document.createElement("input");
	idParam.setAttribute("type", "hidden");
	idParam.setAttribute("name", "usrId");
	idParam.setAttribute("value", $("#inputId").val());
	
	var pwdParam = document.createElement("input");
	pwdParam.setAttribute("type", "hidden");
	pwdParam.setAttribute("name", "usrPwd");
	pwdParam.setAttribute("value",  $("#inputUsrPwd").val());
	
	f.appendChild(idParam);
	f.appendChild(pwdParam);
	
	f.setAttribute("method", "POST");
	f.setAttribute("action", "userLogin");
	document.body.appendChild(f);
	f.submit();
	
	
}