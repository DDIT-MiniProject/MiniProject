<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비회원 주문 | 버거킹 딜리버리</title>
<style>
	#non_member_order{
		font-size: 40pt;
		font-weight: bold;
		text-align: center;
		color: red;
	}
	table{
		border: 1px solid black;
		margin-left: 30%;
		margin: auto;
	}
</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<table>
	<tr>
	<td colspan="10">
		<div id="non_member_order">
		<strong><span>비회원 주문</span></strong>
	</div>
	</td>
	</tr>
	
	<tr>
		<td><h5>버거킹 이용약관</h5></td>
		<td>
		<textarea title="버거킹 이용약관" rows="5" cols="70" readonly >
1.	수집하는 개인정보 항목
   	- 전화번호, 성명, 주소
   	
2.	수집 목적 
	① 성명, 주소: 제품의 전달, 청구서, 정확한 제품 배송지의 확보.
	
3.	개인정보 보유기간 
	① 계약 또는 청약철회 등에 관한 기록 : 6개월
	② 대금결제 및 재화 등의 공급에 관한 기록 : 1년
	③ 소비자의 불만 또는 분쟁처리에 관한 기록 : 1년
	
4.	비회원 주문 시 제공하신 모든 정보는 상기 목적에 필요한 용도 이외로는 
	사용되지 않습니다.	
	기타 자세한 사항은 '개인정보취급방침'을 참고하여주시기 바랍니다.
		</textarea></td>
		<td>
		<input id="checkNonMember" type="checkbox" class="checkbox" />
		<span class="lbl">개인정보동의, 개인정보 수집 및 이용에 모두 동의합니다.</span>
	</td>	
	</tr>
	
	<tr>
		<td><h5>주소 입력</h5></td>
		<td><input type="text" name="non_addr" id="adress" size="40"/>
		<button type="button" class="btn btn-primary">주소 검색</button></td>
	</tr>
	</table>
</body>
</html>