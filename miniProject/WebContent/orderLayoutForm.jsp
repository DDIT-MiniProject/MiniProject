<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 유무 확인 페이지</title>
<script type="text/javascript">
function non_order_go(form){
	location.href="<%=request.getContextPath()%>/orderForm.jsp";
}
</script>
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
						<img src="<%=request.getContextPath()%>/images/버거킹회원유무.png" id="memberCheck">
					</p>
					<p>
						<a href="loginForm.do">로그인</a>
					</p>
					<p>
						<a href="joinForm.do">회원가입</a>
					</p>
					<p>
						<a href="#">아이디/비밀번호찾기</a>
					</p>
					<p>
						<a href="<%=request.getContextPath()%>/orderForm.jsp">비회원주문</a>
					</p>
				</div>
				<div class="col-sm-8 text-left">
					<table id="loginTable">
					<tr><td colspan="4"><h1>BURGER KING 로그인</h1></td></tr>
						<tr><td><h3>회원로그인</h3></td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>
								<h3>비회원 주문</h3>
								<input type="radio">주문조회<input type="radio">주문하기
								<input type="button" class="btn btn-warning btn-lg" value="비회원주문" onclick="non_order_go(this.form)"/>
							</td>
							
							<tr>
    							<td>&nbsp;</td>
    						</tr>
						
							<tr>
								<td><div class="input-group">
									<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
	      							<input id="email" type="text" class="form-control" name="email" placeholder="이메일 주소 입력">
    							</div></td>
    							<td>&nbsp;</td>
    							<td>&nbsp;</td>
    							<td rowspan="2"><p>회원가입 없이 비회원으로 주문이 가능합니다.<br>
    											비회원 주문 시 간단한 휴대폰 인증 후 고객님의 배송지 확인 후<br> 
    											회원과 동일한 서비스를 이용하실 수 있습니다.</p></td>
    						</tr>
							<tr><td> <div class="input-group">
      							<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
      							<input id="password" type="password" class="form-control" name="password" placeholder="비밀번호(영문/숫자조합8~15)">
    						</div></td></tr>
    						
    						<tr>
    							<td>&nbsp;</td>
    						</tr>
    						
    						<tr>
							<td colspan="2"><input type="checkbox">회원정보저장
							<button type="button" class="btn btn-warning btn-lg">로그인</button>
							</td>
							
							
							</tr>
							
							<tr>
							<td>회원가입을 하시면 더 많은 혜택이 있습니다. &nbsp;&nbsp;
								<button type="button" class="btn btn-primary btn-sm">회원가입</button>
							</td>
							</tr>
							
							<tr>
    							<td>&nbsp;</td>
    						</tr>
							
							<tr>
							<td>아이디/비밀번호를 잃어버리셨나요? &nbsp;&nbsp;
								<button type="button" class="btn btn-primary btn-sm">아이디/비밀번호찾기</button>
							</td>
							</tr>
						<tr>
							<td></td>
							<td></td>
						</tr>					
					</table>
					<img src="<%=request.getContextPath()%>/images/joinIma.jpg">
				</div>
			</div>
		</div>

	</form>

</body>
</html>