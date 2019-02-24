$(document).ready(function(){
	
	var nav = $(".jumbotron h2").html();
	
	if(nav){
		$(".navbar-nav li").removeClass("active");
		$("#nav_" + nav.toLowerCase()).addClass("active");
	}
	
	$("#nav_logout").on("click", function(){
		var choice = confirm("Are you sure to logout?");
		if(choice){
			location.href="userLogout";
		}else{
			return false;
		}
	});
	
});
