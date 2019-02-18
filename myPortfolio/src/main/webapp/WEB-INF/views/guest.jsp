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
	<script src="/resources/js/guest.js"></script>
	
	<link rel="stylesheet" href="/resources/css/common.css">
	
</head>
<body>

	<jsp:include page="top.jsp" />
		
	<div class="container">
		
		<div class="jumbotron">
			
			<h2 class="display-3">GUESTS</h2>
			
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
		<br>
		<!-- 
		<div id="paging">
			<nav>
				<ul class="pagination">
					<li id="prevBtn" class="active"><a href="#" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
					<li><a href="#"></a></li>
					<li><a href="#"></a></li>
					<li><a href="#"></a></li>
					<li><a href="#"></a></li>
					<li><a href="#"></a></li>
					<li id="nextBtn" class="active"><a href="#" aria-label="Next"><span aria-hidden="true">&raquo;</span></a></li>
				</ul>
			</nav>
		</div>
		
		 -->
		<nav>
		  	<ul class="pagination">
			    <li id="prevBtn" class="active"><a href="#" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
			    <!-- <li><a href="#"></a></li>
			    <li><a href="#"></a></li>
			    <li><a href="#"></a></li>
			    <li><a href="#"></a></li>
			    <li><a href="#"></a></li> -->
			    <li id="nextBtn" class="active"><a href="#" aria-label="Next"><span aria-hidden="true">&raquo;</span></a></li>
		  	</ul>
		</nav>
		
		<div id="btn">
			<button id="toWrite" class="btn btn-default"><a href="readNoteDetail">Write</a></button>
		</div>
		<br>
		
	</div>
	<!-- //end of container -->
	
	<input type="text" id="curBlock"/>
	<input type="text" id="curPage"/> 
	
</body>
</html>
