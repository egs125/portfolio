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
	
	<script src="/resources/js/common.js"></script>
	<script src="/resources/js/guest.js"></script>
	
	<link rel="stylesheet" href="/resources/css/layout.css">	
</head>
<body>

	<jsp:include page="top.jsp" />
		
	<div class="container">
		
		<div class="jumbotron">			
			<h2 class="display-3">GUESTS</h2>		
		</div>
		
		<div class="contents">
		
			<div id="loading">
				<img src="/resources/img/loading.gif"/>
			</div>
			
			<div id="tablePanel" class="panel panel-default">
				<table class="table">
					<thead>
						<tr id="head">
							<th>#</th>
							<th>Title</th>
							<th>Writer</th>
							<th>Date</th>
						</tr>
					</thead>

					<tbody>
					</tbody>
				</table>
			</div>
			<!--//end of tablePanel -->
			
			<nav id="pagingNav">
				<ul class="pagination">
					<li id="prevBtn"><a href="#" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
					<li id="nextBtn" ><a href="#" aria-label="Next"><span aria-hidden="true">&raquo;</span></a></li>
				</ul>
			</nav>
			
			<div id="btn">
				<button id="toWrite" class="btn btn-default"><a href="readNoteDetail">Write</a></button>
			</div>
			
		</div>
		<!--//end of contents" -->
		
	</div>
	<!-- //end of container -->
	
	<input type="hidden" id="curBlock"/>
	<input type="hidden" id="curPage"/> 
	
</body>
</html>
