<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	response.setHeader("Pragma", "No-cache");
	response.setHeader("Cache-Control", "no-cache");
	response.addHeader("Cache-Control", "no-store");
	response.setDateHeader("Expires", 1L);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><decorator:title /></title>

 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<c:choose>
	<c:when test="${empty workerId}">
		<script type="text/javascript">
			location.href = 'adminLoginForm.do';
		</script>
	</c:when>
</c:choose>
 <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 450px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      padding-top: 20px;
      background-color: #FFFFFF;
      height: 100%;
    }
    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    #hh{
       width:225px;
       height:400px;
    }
    
    
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height:auto;} 
    }
    
  </style>
</head>
<body onload="go_ab()">
	
	 <div id="wrap">
	<div class="w3-top">
	<div class="container-fluid">
         <ul class="w3-navbar w3-white w3-wide w3-card-2">
            <li><a href="#" class="w3-margin-left"><img
                  src="images/log.png"></a></li>
            <li class="w3-right w3-hide-small"><a href="#"> <span
                  class="glyphicon glyphicon-log-in"></span>Login
            </a> <a href="#"> <span class="glyphicon glyphicon-log-in"></span>Join
            </a> <a href="#"> <span class="glyphicon glyphicon-user"></span>Admin
            </a></li>
            <li><a href="#about" class="w3-left"><img src="images/order.png"></a> 
               <a href="#menu"   class="w3-left"><img src="images/menu.png"></a> 
               <a href="#contact" class="w3-left w3-margin-right"><img src="images/store.png"></a> 
               <a href="#FAQ" class="w3-left w3-margin-right"><img src="images/faq.png"></a>
               </li>

         </ul>
         </div>
    </div>
    </div>
    
    

  
<div class="container-fluid text-center">    
 
  <div class="row content">
 
    <div class="col-sm-2 sidenav">
    <table>
    <tr>
    <th>
    
      <nav id="sub_menu">
      
      
      <div class="container">
  <div class="well" id="hh">
      
 <h1><span class="glyphicon glyphicon-cog"></span> Setting </h1>
<br>
<ul>

<li><h4><span class="glyphicon glyphicon-gift"></span><a href='adminProductList.do'> Product</a></h4></li>
<li><h4><span class="glyphicon glyphicon-shopping-cart"></span><a href='adminOrderList.do'> Order</a></h4></li>
<li><h4><span class="glyphicon glyphicon-user"></span><a href='adminMemberList.do'> User</a></h4></li>
<li><h4><span class="glyphicon glyphicon-question-sign"></span><a href='adminQnaList.do'> Q&amp;A</a></h4></li>
</ul>
</div>
</div>
</nav>
</th>
</tr>
</table>
    </div>
    <div class="col-sm-8 text-left"> 
     <decorator:body />
    </div>
  </div>
</div>

<br><br><br><br><br><br><br><br>
<footer class="container-fluid text-center">
  <p>Copyright 2012 BKR Co., Ltd. All right Reserved (주)BKR 대표이사 문영주
         사업자 등록번호 101-86-76277 서울 종로구 삼봉로 71 G 타워 2층 주식회사 비케이알 TEL
         02-6331-8282 FAX 02-3775-4325</p>
</footer>
	
	
	
	

</body>
</html>

