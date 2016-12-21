<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  <style>
  .input-group{width:400px}
  </style>

   <form name="frm" method="post">
   <h1>상품리스트</h1>
    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-gift"></i></span>
      <input id="email" type="text" class="form-control" name="key" placeholder="상품명">
    </div>
     <div class="btn-group">
    <button type="button" name="btn_search" class="btn btn-primary">검색</button>
    <button type="button" name="btn_total" class="btn btn-primary">전체보기</button>
    <button type="button" name="btn_update" class="btn btn-primary">상품등록</button>
    </div>
    <br>
    <br>
    
    <table class="table table-condensed">
    <thead>
      <tr>
        <th>번호</th>
        <th>상품명</th>
        <th>원가</th>
        <th>판매가</th>
        <th>등록일</th>
        <th>사용유무</th>
      </tr>
    </thead>
    <tbody>
    <c:choose>
    <c:when test="${productList.size()<=0 }">
      <tr>
        <td width="100%" colspan="7" align="center">등록된 상품이 없습니다.</td>
      </tr>
      </c:when>
      <c:otherwise>
      <c:forEach items="${productList }" var="productVO">
      <td align="center">${productVO.pseq }</td>
      <td style="text-align: left; padding-left: 50px; padding-right: 0px;">   
        <a href="#" onClick="go_detail('${tpage}', '${productVO.pseq}')">
    	 ${productVO.name}     
   		</a>
   	  </td>
      <td><fmt:formatNumber value="${productVO.price1}"/></td>
      <td><fmt:formatNumber value="${productVO.price2}"/></td>
      <td><fmt:formatDate value="${productVO.indate}"/></td>
      <td>
     <c:choose>
   	 		<c:when test='${productVO.useyn=="y"}'>사용</c:when>
   	 		<c:otherwise>미사용</c:otherwise>   	 		
   	 	</c:choose>
   	 	</td>	 
     </c:forEach>
     <tr><td colspan="6" style="text-align: center;"> ${paging} </td></tr>
      </c:otherwise>
     </c:choose>
      </tbody>
      </table>
      
    
    
    </form>












