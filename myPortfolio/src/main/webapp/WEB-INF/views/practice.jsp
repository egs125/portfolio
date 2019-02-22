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
	
	<link rel="stylesheet" href="/resources/css/layout.css">	
	
	<!--jqgrid-->
	<script src="/resources/js/grid.locale-kr.js"></script>
	<script src="/resources/js/jquery.jqGrid.min.js"></script>
	
	<link rel="stylesheet" href="/resources/css/jquery-ui-1.10.4.custom.min.css">
	<link rel="stylesheet" href="/resources/css/ui.jqgrid.css">
	
	<script type="text/javascript">
		
		$(document).ready(function(){
		
			$("#jqGrid").jqGrid({
				url: '',
				mtype: "GET",
				datatype: "jsonp",
				colModel: [
				    { label: 'OrderID', name: 'OrderID', key: true, width: 75 },
				    { label: 'Customer ID', name: 'CustomerID', width: 150 },
				    { label: 'Order Date', name: 'OrderDate', width: 150 },
				    { label: 'Freight', name: 'Freight', width: 150 },
				    { label:'Ship Name', name: 'ShipName', width: 150 }
				],
				viewrecords: true,
				height: 250,
				rowNum: 101,
				pager: "#jqGridPager"
			});
			
			
		});
			
	</script>
	
</head>
<body>

	<jsp:include page="top.jsp" />
		
	<div class="container">
		
		<div class="jumbotron">			
			<h2 class="display-3">PRACTICE</h2>		
		</div>
		
		<div class="contents">
			
			<h3>jqgrid</h3>
			
			<table id="jqGrid"></table>
			<div id="jqGridPager"></div>
		</div>
		<!--//end of contents" -->
		
	</div>
	<!-- //end of container -->
	
</body>
</html>
