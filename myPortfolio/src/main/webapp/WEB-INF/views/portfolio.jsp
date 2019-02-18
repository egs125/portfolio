<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no, user-scalable=no">
	
	<title>Dorong's Portfolio</title>
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"></script>	
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
	
	<script src="/resources/js/common.js"></script>
	<script src="/resources/js/home.js"></script>
	
	<link rel="stylesheet" href="/resources/css/common.css">
	
</head>
<body>

	<jsp:include page="top.jsp" />
		
	<div class="container">
		
		<div class="jumbotron">
			
			<h2 class="display-3">PORTFOLIO</h2>
			
		</div>
		
		<div class="box">
		
			<div class="linkBox col-md-6">
				<img src="/resources/img/GitHub-Mark.png" style="width:50px"> 
				<span class="linkText">
					<a href="https://github.com/egs125" target="_blank">Check Out My Github!</a>
				</span>
				
			</div>
			
			<div class="linkBox col-md-6">
				<img src="/resources/img/tistory.png" style="width:50px">
				<span class="linkText">
					<a href="https://dorongdogfoot.tistory.com" target="_blank">Visit My Blog</a>
				</span>	
			</div>	
			
		</div>
		
	</div>
	<!-- //end of container -->
	
</body>
</html>
