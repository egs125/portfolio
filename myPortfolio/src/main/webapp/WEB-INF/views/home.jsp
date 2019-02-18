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
	<link rel="stylesheet" href="/resources/css/layout.css">
</head>
<body>

	<jsp:include page="top.jsp" />
	
	<div>
	
		<div id="carouselExampleIndicators" class="carousel slide">
			<ol class="carousel-indicators">
				<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
			    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			</ol>
			
  			<div class="carousel-inner">
    			<div class="carousel-item active">
      				<img class="d-block w-100" src="/resources/img/1.jpg" alt="first slide">
      				<!-- Photo by David Rodrigo on Unsplash -->
      				<div class="carousel-caption d-none d-md-block">
    					<h3>WELCOME!</h3>
  					</div>
    			</div>
    			<div class="carousel-item">
      				<img class="d-block w-100" src="/resources/img/2.jpg" alt="second slide">
      				<!-- Photo by Ishan @seefromthesky on Unsplash -->
    			</div>
  			</div>
  	
  			<a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    			<span class="carousel-control-prev-icon" aria-hidden="true"></span>
    			<span class="sr-only">이전</span>
  			</a>
  			<a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    			<span class="carousel-control-next-icon" aria-hidden="true"></span>
    			<span class="sr-only">다음</span>
  			</a>
		</div>
	
	</div>
	<!-- //end of container -->
	
	<%-- <jsp:include page="bottom.jsp"></jsp:include> --%>
</body>
</html>
