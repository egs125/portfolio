<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>

	<title>Top navigation bar</title>
	
    	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no, user-scalable=no">

	<!-- jQuery -->
    	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script

	<!-- Bootstrap -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

	<!-- icon -->
  	<script src="https://unpkg.com/ionicons@4.5.5/dist/ionicons.js"></script>
  
	<script src="/resources/js/common.js"></script>
	<link rel="stylesheet" href="/resources/css/layout.css">

</head>
<body>

	<!-- fixed navbar -->
	<nav class="navbar navbar-inverse navbar-fixed-top">
		
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span>
            				<span class="icon-bar"></span>
            				<span class="icon-bar"></span>
            				<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="home"><ion-icon name="paw"></ion-icon>Dorong</a></a>
			</div>
			<!--//end of navbar-header -->
		
			<div id="navbar" class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li id="nav_home" class="active"><a href="home">HOME</a></li>
					<li id="nav_profile"><a href="profile">PROFILE</a></li>
            				<li id="nav_portfolio"><a href="portfolio">PORTFOLIO</a></li>
					<li id="nav_practice"><a href="practice">PRACTICE</a></li>
					<li id="nav_guests"><a href="guests">GUESTS</a></li>
				</ul>
			</div>
		</div>
		<!--//end of container -->
	</nav>
	<!--//end of navbar -->
	
</body>
</html>
