$(document).ready(function(){
	
	var nav = $(".jumbotron h2").html();
	
	if(nav){
		$(".navbar-nav li").removeClass("active");
		$("#nav_" + nav.toLowerCase()).addClass("active");
	}
	
});
