//OPEN 클릭 시 사이드메뉴 펼침
$(document).ready(function(){
	
	$("#topBar span").on("click", function(){
		$("#sideNav").attr("style", "width:250px");
		$("#main").attr("style", "margin-left:250px");
	});

	//사이드메뉴의 X 버튼 클릭 시 사이드메뉴 접음
	$("#sideNav span").on("click", function(){
		$("#sideNav").attr("style", "width:0");
		$("#main").attr("style", "margin-left:0");
	});
	
});
