<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 유무 확인 페이지</title>

<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
/* Set height of the grid so .sidenav can be 100% (adjust as needed) */
.row.content {
   height: 450px
}

/* Set gray background color and 100% height */
.sidenav {
   padding-top: 20px;
   background-color: #f1f1f1;
   height: 100%;
}

@media screen and (max-width: 767px) {
   .sidenav {
      height: auto;
      padding: 15px;
   }
   .row.content {
      height: auto;
   }
}
#memberCheck{
   width: auto;
}
#loginTable{
   padding: auto;
   margin: auto;
   width: 80%;
   color: gray;
}
</style>
</head>
<body>
   <form action="">
      <div class="container-fluid text-center">
         <div class="row content">
            <div class="col-sm-2 sidenav">
               <p>
                  <img src="<%=request.getContextPath()%>/images/menu2.png" id="memberCheck">
               </p>
               <p>
                  <a href="menuForm.do">스페셜오퍼</a>
               </p>
               <p>
                  <a href="deliveryPack.do">딜리버리팩</a>
               </p>
               <p>
                  <a href="setMenu.do">세트메뉴</a>
               </p>
               <p>
                  <a href="burgerMenu.do">버거</a>
               </p>
               <p>
                  <a href="sideMenu.do">사이드</a>
               </p>
               <p>
                  <a href="drinkMenu.do">드링크</a>
               </p>
            </div>
            <div class="col-sm-8 text-left">
            	<strong><h2>세트메뉴 SET MENU</h2></strong>
               <p>
                  <img src="<%=request.getContextPath()%>/images/주문시유의사항.png" id="warning">
               </p>
              <%--  <div>
               	  <a href="#"><img src="<%=request.getContextPath()%>/images/setmenu/갈릭스테이크버거세트.png" width="180px" height="190px"></a>
               	  <a href="#"><img src="<%=request.getContextPath()%>/images/setmenu/롱치킨버거세트.png" width="180px" height="190px"></a>
               	  <a href="#"><img src="<%=request.getContextPath()%>/images/setmenu/롱킹세트.png" width="180px" height="190px"></a>
               	  <a href="#"><img src="<%=request.getContextPath()%>/images/setmenu/베이컨치즈와퍼버거세트.png" width="180px" height="190px"></a>
               	 </div>
               	 <div>
               	  <a href="#"><img src="<%=request.getContextPath()%>/images/setmenu/불고기롱치킨버거세트.png" width="180px" height="190px"></a>
               	  <a href="#"><img src="<%=request.getContextPath()%>/images/setmenu/불고기버거세트.png" width="180px" height="190px"></a>
               	  <a href="#"><img src="<%=request.getContextPath()%>/images/setmenu/불고기와퍼세트.png" width="180px" height="190px"></a>
               	  <a href="#"><img src="<%=request.getContextPath()%>/images/setmenu/불고기와퍼주니어세트.png" width="180px" height="190px"></a>
               	 </div>
               	 <div>
               	  <a href="#"><img src="<%=request.getContextPath()%>/images/setmenu/불고기치즈와퍼세트.png" width="180px" height="190px"></a>
               	  <a href="#"><img src="<%=request.getContextPath()%>/images/setmenu/롱치킨버거세트.png" width="180px" height="190px"></a>
               	  <a href="#"><img src="<%=request.getContextPath()%>/images/setmenu/롱킹세트.png" width="180px" height="190px"></a>
               	  <a href="#"><img src="<%=request.getContextPath()%>/images/setmenu/베이컨치즈와퍼버거세트.png" width="180px" height="190px"></a>
               	 </div>
               	 <div>
               	  <a href="#"><img src="<%=request.getContextPath()%>/images/setmenu/갈릭스테이크버거세트.png" width="180px" height="190px"></a>
               	  <a href="#"><img src="<%=request.getContextPath()%>/images/setmenu/롱치킨버거세트.png" width="180px" height="190px"></a>
               	  <a href="#"><img src="<%=request.getContextPath()%>/images/setmenu/롱킹세트.png" width="180px" height="190px"></a>
               	  <a href="#"><img src="<%=request.getContextPath()%>/images/setmenu/베이컨치즈와퍼버거세트.png" width="180px" height="190px"></a>
               	 </div> --%>
               	 
               	 <c:forEach items="${productList}" var="productVO">
  
     			 <a href="#"><img src="<%=request.getContextPath()%>/images/setmenu/${productVO.name }.png" width="180px" height="190px"></a>

   				 </c:forEach>
    
               	 
            </div>
         </div>
      </div>

   </form>

</body>
</html>