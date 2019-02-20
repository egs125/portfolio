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
			<h2 class="display-3">PROFILE</h2>		
		</div>
		
		<div class="contents">
		
			<div class="page-header">
				<h1>KOEUN SEO</h1>	
			</div>
			<p class="lead">JAVA WEB DEVELOPER &nbsp;&nbsp;<span class="text-muted">since 2016</span></p>
			
			<br>
			<h3>CONTACT</h3>
			<ul>
				<li>
					<span class="glyphicon glyphicon-envelope"> 
						<a href="mailto:egs125@gmail.com">egs125@gmail.com</a>
					</span>
				</li>
				<li> 
					<span class="glyphicon glyphicon-map-marker"> SEOUL, SOUTH KOREA</span>
				</li>
			</ul>
			
			<br>
			<h3>SKILLS</h3>
			<ul>
				<li>Java / JSP</li>
				<li>javascript / jQuery</li>
				<li>ajax / JSON</li>
				<li>HTML / CSS</li>
				<li>MyBatis</li>
				<li>Oracle 9i / tibero</li>
				<li>Spring framework / eGov framework</li>
			</ul>
		
			<br>
			<h3>PROJECTS</h3>
			<ul>
				<li>건설CALS 통합DB 설계 및 기능 개편 - 한국건설기술연구원 (2018.05 - 2018.12)</li>
				<li>국고보조금 통합관리시스템 구축 - 기획재정부 (2016.12 - 2017.09)</li>
			</ul>

			<br>		
			<h3>CERTIFICATES</h3>
			<ul>
				<li>DAsP - Korea Data Agency (2018.10)</li>
				<li>SQLD - Korea Data Agency (2017.01)</li>
				<li>Engineer Information Processing - Human Resources Development Service of Korea (2016.11)</li>
			</ul>

			<br> 
			<h3>CURRENTLY STUDYING</h3>
			<ul>
				<li>UNIX SYSTEM</li>
				<li>MOBILE APPLICATION DEVELOPING</li>
			</ul>
		</div>
		<!--//end of contents -->
	
	</div>
	<!-- //end of container -->

</body>
</html>
