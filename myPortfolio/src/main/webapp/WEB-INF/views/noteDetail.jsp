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
	
	<script src="/resources/js/common.js" type="text/javascript"></script>
	<script src="/resources/js/noteDetail.js" type="text/javascript"></script>
	
	<link rel="stylesheet" href="/resources/css/common.css">
	
</head>
<body>

	<jsp:include page="top.jsp" />
		
	<div class="container">
		
		<div class="jumbotron">
			<h2 class="display-3">GUEST'S NOTE</h2>		
		</div>
	
		<form id="noteForm">
  			<div class="form-group">
    			<label for="inputTitle">TITLE</label>
    			<input type="text" class="form-control" id="inputTitle" name="title" placeholder="INSERT TITLE">
  			</div>
  			
  			<div class="form-row">
  				<div class="form-group col-md-6">
	    			<label for="inputWriter">WRITER</label>
	    			<input type="text" class="form-control" id="inputWriter" name="writer" placeholder="INSERT WRITER">
	    		</div>
	    		<div class="form-group col-md-6">
	    			<label for="inputPwd">PASSWORD</label>
	    			<input type="password" class="form-control" id="inputPwd" name="pwd" placeholder="INSERT PASSWORD">
	    		</div>
  			</div>
  			
    		<div class="form-group">
    			<label for="textContents">CONTENTS</label>
    			<textarea class="form-control" id="textContents" name="contents" rows="7" placeholder="WRITE DOWN CONTENTS HERE"></textarea>
    		</div>
  			
  			<div id="btn">
  				<button type="button" id="btnSubmit" class="btn btn-primary">Save</button>
  				<button type="button" id="btnList" class="btn btn-default">List</button>
  			</div>
  			
		</form>
		
	</div>
	<!-- //end of container -->
	
</body>
</html>
