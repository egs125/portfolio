<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no, user-scalable=no">
	
	<title>Dorong's Portfolio</title>
	
	<!-- jQuery -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

	<!-- Bootstrap -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

	<script src="/resources/js/common.js"></script>
	<script src="/resources/js/home.js"></script>
	
	<link rel="stylesheet" href="/resources/css/layout.css">
	
</head>
<body>

	<jsp:include page="top.jsp" />
		
	<div class="container">
		
		<div class="jumbotron">		
			<h2 class="display-3">PORTFOLIO</h2>			
		</div>
		
		<div class="contents">
			
			<div class="page-header">
				<h1>This application is based on</h1>
			</div>
			
			<ul>
				<li>Windows 10 64bit + Eclipse Oxygen</li>		
				<li>JDK 1.8.0 </li>
				<li>Maven 2.5.1</li>
				<li>Git</li>
				<li>Spring framework 3.1.1</li>
				<li>MySQL 5.7</li>
				<li>MyBatis 3.4.1</li>
				<li>Apache tomcat 9.0.16</li>
				<li>Google cloud platform + CentOS 7</li>
			</ul>
			<p>※ CSS From Bootstrap</p>
			
			<br>
			<h3>For more </h3>
			<hr>
			
			<div class="marketing">
				
				<div class="row">
					<div class="col-lg-6">
						<img class="img-circle" src="/resources/img/GitHub-Mark.png" alt="Generic placeholder image" width="80" height="80">
						<h3>Github</h3>
						<p><a class="btn btn-default" href="https://github.com/egs125" role="button" target="_blank">Check out My Github&raquo;</a></p>
					</div>

					<div class="col-lg-6">
						<img class="img-circle" src="/resources/img/tistory.png" alt="Generic placeholder image" width="80" height="80">
						<h3>Tistory blog</h3>
						<p><a class="btn btn-default" href="https://dorongdogfoot.tistory.com" role="button" target="_blank">Visit My Blog &raquo;</a></p>
					</div>
				</div>
				<!--// end of row -->
				
			</div>
			<!-- //end of marketing -->
			
		</div>
		<!--//end of contents -->
		
	</div>
	<!-- //end of container -->
	
</body>
</html>
