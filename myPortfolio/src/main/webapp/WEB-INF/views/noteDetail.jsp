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

	<script src="/resources/js/common.js" type="text/javascript"></script>
	<script src="/resources/js/noteDetail.js" type="text/javascript"></script>
	
	<link rel="stylesheet" href="/resources/css/layout.css">
	
</head>
<body>

	<jsp:include page="top.jsp" />
		
	<div class="container">
		
		<div class="jumbotron">
			<h2 class="display-3">GUESTS</h2>	
			<hr>
			<h4>PLEASE LEAVE YOUR NOTE</h4>	
		</div>

		<div class="contents">
		
			<form id="noteForm">
				<input type="hidden" id="inputNoteNo" name="noteNo" value="${note.noteNo}">
				<input type="hidden" id="curPage" value="${curPage}">
				<div class="form-group">
					<label for="inputTitle">TITLE</label>
					<input type="text" class="form-control" id="inputTitle" name="title" placeholder="INSERT TITLE" value="${note.title}">
				</div>
				
				<div class="row">
					<div class="form-group col-md-6">
						<label for="inputWriter">WRITER</label>
						<input type="text" class="form-control" id="inputWriter" name="writer" placeholder="INSERT WRITER" value="${note.writer}">
					</div>
					<div class="form-group col-md-6">
						<label for="inputPwd">PASSWORD</label>
						<input type="password" class="form-control" id="inputPwd" name="pwd" placeholder="INSERT PASSWORD">
					</div>
				</div>
				
				<div class="form-group">
					<label for="textContents">CONTENTS</label>
					<textarea class="form-control" id="textContents" name="contents" rows="7" placeholder="WRITE DOWN CONTENTS HERE">${note.contents}</textarea>
				</div>
				
			</form>
		
			<div id="btnGroup">
				<ul>
					<li><button type="button" id="btnSubmit" class="btn btn-primary" style="display:none">Save</button></li>
					<li><button type="button" id="btnModify" class="btn btn-primary" style="display:none">Modify</button></li>	
					<li><button type="button" id="btnList" class="btn btn-default">List</button></li>
				</ul>				
			</div>
					
			<input type="hidden" id="mode" value="${mode}">
		</div>
		<!--//end of contents -->
		
	</div>
	<!-- //end of container -->
	
</body>
</html>
