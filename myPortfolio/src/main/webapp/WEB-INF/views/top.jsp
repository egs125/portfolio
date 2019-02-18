<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>

	<title>Top navigation bar</title>
	
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no, user-scalable=no">

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"></script>	
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
	
  	<script src="https://unpkg.com/ionicons@4.5.5/dist/ionicons.js"></script>
  
	<script src="/resources/js/common.js"></script>
	
	<link rel="stylesheet" href="/resources/css/layout.css">
	
	<script type="text/javascript">
		
		$(document).ready(function(){
			/* 
			$("li").on("click", function(){
				
				$("li").removeClass("active");
				$(this).addClass("active");
				var a = $(this).find("a").attr("href");
				
			});
			 */
		});
	
	</script>
</head>
<body>

	<div id="sideNav" class="sidenav">
		<span class="closebtn">&times;</span>
		<a href="home">HOME</a>
	  	<a href="profile">Profile</a>
	  	<a href="portfolio">Portfolio</a>
	  	<a href="practice">Practice</a>
	  	<a href="guests">Guests</a>
	</div>
	
	<div id="topBar">
		<span> &#9776;</span>
		<ion-icon name="paw"></ion-icon>Dorong</a>
	</div>
	
<!-- 
	<div class="navDiv">
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
 
	 		<a class="navbar-brand" href="#"><ion-icon name="paw"></ion-icon>Dorong</a>
		  	<button class="navbar-toggle collapsed pull-left" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
		    	<span class="navbar-toggler-icon"></span>
		  	</button>
		  	
		  	<div class="collapse navbar-collapse" id="navbarNavDropdown">
		    	<ul class="navbar-nav">
		      		<li class="nav-item active">
		        		<a class="nav-link" href="home">Home</a>
		      		</li>
		      		<li class="nav-item">
		        		<a class="nav-link" href="profile">Profile</a>
		      		</li>
		      		<li class="nav-item">
		        		<a class="nav-link" href="portfolio">Portfolio</a>
		      		</li>
		      		<li class="nav-item">
		        		<a class="nav-link" href="practice">Practice</a>
		      		</li>
		      		<li class="nav-item">
		        		<a class="nav-link" href="guests">Guests</a>
		      		</li>
		      		
		    	</ul>
		  	</div>
		</nav>
		//end of nav
		 -->
	</div>	
</body>
</html>
