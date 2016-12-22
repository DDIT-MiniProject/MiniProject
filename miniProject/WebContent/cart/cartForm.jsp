<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
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
                  <img src="<%=request.getContextPath()%>/images/cart_sub.png" id="memberCheck">
               </p>
              
            </div>
            <div class="col-sm-8 text-left">
            	<h1>장바구니</h1>
				<hr color="grey"/>
				<ul>
					<li>주문서를 작성하기 전에 선택하신 상품명, 수량 및 가격이 정확한지 확인해 주세요.</li>
					<li>비회원의 경우 장바구니에 담긴 상품은 브라우저 종료 시 자동으로 삭제되오니, 상품 리스트를 보관하시려면 회원가입 후 장바구니에 보관하여 주시기 바랍니다.</li>
					<li>버거킹 딜리버리 서비스는 배달 가능 주소 내 서비스를 제공합니다. 배달주소 변경 시 장바구니 상품은 삭제됩니다.
					<li>버거킹 최소 배달 금액은 8,000원 입니다.</li>
				</ul>
				
				<table>
					<tr>
						<td>상품명</td>
						<td>수량</td>
						<td>상품가격</td>
						<td>비고</td>
						
						<c:forEach items="${carttList}" var="cartVO">
						<tr>
							<td>${cartVO.cseq }</td>
							<td>${cartVO.quantity }</td>
							<td>${cartVO.result }</td>
							<td><a href="#">수정</a>/<a href="#">삭제</a></td>
						</tr>
						</c:forEach>
						
					</tr>
				</table>
            </div>
         </div>
      </div>

   </form>



</body>
</html>