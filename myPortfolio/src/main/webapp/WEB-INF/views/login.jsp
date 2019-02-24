<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no, user-scalable=no">
	
	<title>Dorong's Portfolio</title>
	
	<link rel="shortcut icon" href="/resources/img/favicon.ico">
	<link rel="icon" href="resources/img/favicon.ico">
	
	<!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	
	<!-- Bootstrap -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	
	<script src="/resources/js/user.js"></script>
	
	<style type="text/css">
		
		body {
		  	padding-top: 40px;
		  	padding-bottom: 40px;
		  	background-color: #eee;
		}
		
		.form-signin {
			max-width: 330px;
		  	padding: 15px;
		  	margin: 0 auto;
		}
		.form-signin .form-signin-heading{
		  	margin-bottom: 10px;
		}
		.form-signin .form-control {
		  	position: relative;
		  	box-sizing: border-box;
		  	height: auto;
		  	padding: 10px;
		  	font-size: 16px;
		}
		.form-signin .form-control:focus {
		  	z-index: 2;
		}
		.form-signin input[type="email"] {
		  	margin-bottom: -1px;
		  	border-bottom-right-radius: 0;
		  	border-bottom-left-radius: 0;
		}
		.form-signin input[type="password"] {
		  	margin-bottom: 10px;
		  	border-top-left-radius: 0;
		  	border-top-right-radius: 0;
		}
	
	</style>	
</head>
<body class="text-center">

	<div class="container">
		<form action="userLogin" method="post" class="form-signin" >
        	<h2 class="form-signin-heading">Log In</h2>
        	<label for="inputId" class="sr-only">Id</label>
        	<input type="text" name="id" id="inputId" class="form-control" placeholder="Your ID" required autofocus>
        	<label for="inputUsrPwd" class="sr-only">Password</label>
        	<input type="password" name="pwd" id="inputUsrPwd" class="form-control" placeholder="Your Password" required>
            <%-- <p><a href="">Want to join this website? Click here!</a></p> --%>
  			<button id="btnSubmit" class="btn btn-lg btn-primary" type="submit">Sign in</button>
      	</form>
      	
      	
   	</div> <!-- /container -->

</body>
</html>