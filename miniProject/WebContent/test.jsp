<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>버거킹 딜리버리</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a href="<%=request.getContextPath()%>/index.jsp" class="w3-margin-left"><img
						src="<%=request.getContextPath()%>/images/log.png"></a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="<%=request.getContextPath()%>/orderForm.jsp" class="w3-left"><img src="<%=request.getContextPath()%>/images/order.png"></a></li>
      <li><a href="#menu"class="w3-left"><img src="<%=request.getContextPath()%>/images/menu.png"></a></li>
      <li><a href="#menu"class="w3-left"><img src="<%=request.getContextPath()%>/images/store.png"></a></li>
	<li><a href="#menu"	class="w3-left"><img src="<%=request.getContextPath()%>/images/faq.png"></a></li>
	
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#"> <span class="glyphicon glyphicon-log-in"></span>Login</a> </li>
      <li><a href="#"> <span class="glyphicon glyphicon-log-in"></span>Join</a></li>
	<li><a href="#"> <span class="glyphicon glyphicon-user"></span>Admin</a></li>
	<li><a href="#"> <span class="glyphicon glyphicon-shopping-cart"></span>Cart</a></li>
    </ul>
  </div>
</nav>
</body>
</html>