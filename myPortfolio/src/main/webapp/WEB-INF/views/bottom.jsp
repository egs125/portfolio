<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>

	<title>Home</title>
	
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"></script>	
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
	
  	<script src="https://unpkg.com/ionicons@4.5.5/dist/ionicons.js"></script>
  
	<script src="/resources/js/common.js"></script>
	
	<link rel="stylesheet" href="/resources/css/layout.css">
	
	<script type="text/javascript">
		
		$(document).ready(function(){
			
			
			$("li").on("click", function(){
				
				$("li").removeClass("active");
				$(this).addClass("active");
				var a = $(this).find("a").attr("href");
				
			});
			
		});
	
	</script>
</head>
<body>

	<h3>Dorong dog foot</h3> 
	
</body>
</html>
