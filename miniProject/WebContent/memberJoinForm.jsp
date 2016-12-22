<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 유무 확인 페이지</title>
<script type="text/javascript">
function join_go(form){
	var test = document.getElementById('agreeCheck');
	  if (form.id.value == "") {
	    alert("아이디를 입력하여 주세요.");
	    form.id.focus();
	  } else if (form.id.value != form.reid.value) {
	    alert("중복확인을 클릭하여 주세요.");
	    document.formm.id.focus(); 
	  } else if (form.pwd.value == "") {
	    alert("비밀번호를 입력해 주세요.");
	    form.pwd.focus();
	  } else if ((form.pwd.value != form.pwdCheck.value)) {
	    alert("비밀번호가 일치하지 않습니다.");
	    form.pwd.focus();
	  } else if (form.name.value == "") {
	    alert("이름을 입력해 주세요.");
	    form.name.focus();
	  } else if (form.email.value == "") {
	    alert("이메일을 입력해 주세요.");
	    form.email.focus();
	  } else if (form.zipNum.value==""){
		  alert("주소검색을 해주세요");
	  } else if(form.phone.value == ""){
		  alert("휴대폰번호를 입력해주세요");
		  form.pwd.focus();
	  } else {
		  form.action = "join.do";
		  form.submit(); 
	  }
	 /*  if($(agreeCheck).prop("checked")){
			
	  }else{
			alert("이용약관 동의체크 !")			  
	  } */
	
}	
/* 	var test = document.getElementById('agreeCheck');
	if($(agreeCheck).prop("unchecked",false)){
		form.action = "join.do";
		form.submit(); 
	}else{
		alert("수집목적 동의에 체크를 해주세요");
	}
} */
function idcheck(form) {
	 if (form.id.value == "") {
	    alert('아이디를 입력하여 주십시오.');
	    form.id.focus();
	    return;
	  }
	  var url = "idCheckForm.do?id="+ form.id.value;
	  window.open( url, "_blank_1","toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=400, height=200");
}
function searchZip(form){
	  var url = "findZipNum.do";
	  window.open( url, "_blank_1","toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=550, height=300, top=300, left=300, ");
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
	font-family: "궁서체" ,"Times New Roman", Georgia, Serif;
}
/* #btn{
	font-size: 30pt;
	font-family: "1훈하얀고양이" ,"Times New Roman", Georgia, Serif;
} */
</style>
</head>
<body>
	<form name="form"action="join.do">
		<div class="container-fluid text-center">
			<div class="row content">
				<div class="col-sm-2 sidenav">
					<p>
						<img src="<%=request.getContextPath()%>/images/버거킹회원유무.png">
					</p>
					<p>
						<a href="joinForm.do">회원가입</a>
					</p>
					<p>
						<a href="loginForm.do">로그인</a>
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
					<tr><td colspan="4"><h1>BURGER KING 회원가입</h1></td></tr>
						<tr><td><h3>약관동의</h3></td></tr>
						<tr><td><h3>버거킹 이용약관</h3>	</td></tr>
							</table>
<textarea title="버거킹 이용약관" rows="5" cols="100" readonly>
제 1장 총칙 
제 1조 (목적) 
	본 약관은 주식회사 비케이알(이하 '당사')가 제공하는 모든 서비스(이하 '서비스')의 이용조건 및 절차, 이용자와 당사의 권리, 의무, 책임사항과 기타 필요한 사항을 규정함을 목적으로 합니다.

제 2조 (약관의 효력과 변경)
	1. 당사는 귀하가 본 약관 내용에 동의하는 것을 조건으로 귀하에게 서비스를 제공할 것이며, 귀하가 본 약관의 내용에 동의하는 경우, 당사의 서비스 제공 행위 및 귀하의 서비스 사용 행위에는 본 약관이 우선적으로 적용될 것입니다.
	2. 당사는 본 약관을 사전 고지 없이 변경할 수 있으며, 변경된 약관은 당사 사이트 내에 공지함으로써 이용자가 직접 확인 하도록 할 것입니다. 이용자가 변경된 약관에 동의하지 아니하는 경우, 이용자는 본인의 회원등록을 취소(회원탈퇴)할 수 있으며, 계속 사용의 경우는 약관 변경에 대한 동의로 간주됩니다. 변경된 약관은 공지와 동시에 그 효력이 발생됩니다.

제 3조 (약관외 준칙) 
	1. 본 약관은 당사가 제공하는 서비스에 관한 이용규정 및 별도 약관과 함께 적용됩니다.  
	2. 본 약관에 명시되지 않은 사항은 전기통신기본법, 전기통신사업법, 정보통신 윤리위원회 심의규정, 정보통신 윤리강령, 프로그램 보호법 및 기타관련 법령의 규정에 의합니다.  

제 4조 (용어의 정의) 
	본 약관에서 사용하는 용어의 정의는 다음과 같습니다.
	1. 이용자 : 본 약관에 따라 당사가 제공하는 서비스를 받는 자.  
	2. 가 입 : 모든 회원은 반드시 회원 본인의 이름과 생년월일, 성별을 제공하여야만 서비스를 이용할 수 있습니다.
	3. 회 원 : 이용자는 '회사'가 정한 가입 양식에 따라 회원정보를 기입한 후 이 약관에 동의한다는 의사표시를 함으로서 회원가입을 신청합니다.
	4. 버거킹 ID : 회원식별과 회원의 서비스 이용을 위하여 회원이 신청하는 고유 이메일 주소
	5. 비밀번호 : 이용자와 회원ID가 일치하는지를 확인하고 통신상의 자신의 비밀보호를 위하여 이용자 자신이 선정한 문자와 숫자의 조합.  
	6. 탈퇴 : 회원이 이용계약을 종료 시키는 행위  
	7. 본 약관에서 정의하지 않은 용어는 개별서비스에 대한 별도 약관 및 이용규정에서 정의 합니다. 

제 2장 서비스 제공 및 이용 
제 5조 (이용 계약의 성립) 
	1. 이용계약은 신청자가 온라인으로 당사 소정의 가입신청 양식에서 요구하는 사항을 기록하여 가입을 완료 하는 것으로 성립됩니다.  
	2. 당사는 다음 각 호에 해당하는 이용계약에 대하여는 가입을 취소할 수 있습니다.  
		1) 다른 사람의 명의를 사용하여 신청하였을 때  
		2) 이용 계약 신청서의 내용을 허위로 기재하였거나 허위서류를 첨부하여 신청하였을 때  
		3) 사회의 안녕 질서 혹은 미풍양속을 저해할 목적으로 신청하였을 때  
		4) 다른 사람의 당사서비스 이용을 방해하거나 그 정보를 도용하는 등의 행위를 하였을 때  
		5) 당사 사이트를 이용하여 법령과 본 약관이 금지하는 행위를 하는 경우  
		6) 기타 당사가 정한 이용신청요건이 미비 되었을 때  
	3. 당사는 다음 각 항에 해당하는 경우 그 사유가 해소될 때까지 이용계약 성립을 유보할 수 있습니다.  
		1) 서비스 관련 제반 용량이 부족한 경우  
		2) 기술상 장애 사유가 있는 경우  
	4. 당사가 제공하는 서비스는 아래와 같으며, 그 변경될 서비스의 내용을 이용자에게 공지하고 아래에서 정한 서비스를 변경하여 제공 할 수 있습니다.  
		1) 전자 상거래 (인터넷 쇼핑) 
		3) 기타 버거킹이 자체 개발하거나 다른 회사와의 협력 계약 등을 통해 제공하는 일체의 서비스  
제 6조 (회원정보 사용에 대한 동의) 
	1. 당사의 회원 정보는 다음과 같이 수집, 사용, 관리, 보호됩니다.  
		1) 개인정보의 수집 : 당사는 귀하의 당사 서비스 가입 시 귀하가 제공하는 정보, 커뮤니티 활동을 위하여 귀하가 제공하는 정보, 각종 이벤트 참가를 위하여 귀하가 제공하는 정보, 광고나 경품의 취득을 위하여 귀하가 제공하는 정보 등을 통하여 귀하에 관한 정보를 수집합니다.  
		2) 개인정보의 사용 : 당사는 당사 서비스 제공과 관련해서 수집된 회원의 신상정보를 본인의 승낙 없이 제3자에게 누설, 배포하지 않습니다. 단, 전기통신기본법 등 법률의 규정에 의해 국가기관의 요구가 있는 경우, 범죄에 대한 수사상의 목적이 있거나 정보통신윤리 위원회의 요청이 있는 경우 또는 기타 관계법령에서 정한 절차에 따른 요청이 있는 경우, 귀하가 당사에 제공한 개인정보를 스스로 공개한 경우에는 그러하지 않습니다   
		3) 개인정보의 관리 : 귀하는 개인정보의 보호 및 관리를 위하여 서비스의 개인정보관리에서 수시로 귀하의 개인정보를 수정/삭제할 수 있습니다. 수신되는 정보 중 불필요하다고 생각되는 부분도 변경/조정할 수 있습니다.   
		4) 개인정보의 보호 : 귀하의 개인정보는 오직 귀하만이 열람/수정/삭제 할 수 있으며, 이는 전적으로 귀하의 버거킹 ID와 비밀번호에 의해 관리되고 있습니다. 따라서 타인에게 본인의 버거킹 ID와 비밀번호를 알려주어서는 아니되며, 작업 종료 시에는 반드시 로그아웃 해 주시고, 웹 브라우저의 창을 닫아 주시기 바랍니다(이는 타인과 컴퓨터를 공유하는 인터넷 카페나 도서관 같은 공공장소에서 컴퓨터를 사용하는 경우에 귀하의 정보의 보호를 위하여 필요한 사항입니다).  
		5) 기타 : 게시판이나, E-mail, 채팅 등 온라인상에서 귀하가 자발적으로 제공하는 개인정보는 다른 사람들이 수집하여 사용할 수 있음을 인지하시기 바랍니다. 공개적인 공간에 게재되는 개인정보로 인해 원하지 않는 상황이 발행할 수도 있습니다. 개인정보에 대한 비밀을 유지할 책임은 귀하에게 있으며, 당사는 개인정보 유출로 인해 발생한 결과에 대하여 어떤 책임도 부담하지 아니합니다.  
	2. 회원이 당사에 본 약관에 따라 이용신청을 하는 것은 당사가 본 약관에 따라 신청서에 기재된 회원정보를 수집, 이용 및 제공하는 것에 동의하는 것으로 간주됩니다.
제 7조 (사용자의 정보 보안) 
	1.  가입 신청자가 당사 서비스 가입 절차를 완료하는 순간부터 귀하는 입력한 정보의 비밀을 유지할 책임이 있으며, 회원의 버거킹 ID와 비밀번호를 사용하여 발생하는 모든 결과에 대한 책임은 회원 본인에게 있습니다. 
	2.  버거킹 ID 와 비밀번호에 관한 모든 관리의 책임은 회원에게 있으며, 회원의 버거킹 ID나 비밀번호가 부정하게 사용되었다는 사실을 발견한 경우에는 즉시 당사에 신고하여야 합니다. 신고를 하지 않음으로 인한 모든 책임은 회원 본인에게 있습니다. 
	3.  이용자는 당사 서비스의 사용 종료 시 마다 정확히 접속을 종료하도록 해야 하며, 정확히 종료하지 아니함으로써 제3자가 귀하에 관한 정보를 이용하게 되는 등의 결과로 인해 발생하는 손해 및 손실에 대하여 당사는 책임을 부담하지 아니합니다.
제 8조 (서비스 이용시간) 
	1.  서비스 이용시간은 당사의 업무상 또는 기술상 특별한 지장이 없는 한 연중무휴, 1일 24시간을 원칙으로 합니다.
	2.  제1항의 이용시간은 정기점검 등의 필요로 인하여 당사가 정한 날 또는 시간은 예외로 합니다. 
제 9조 (서비스의 중지 및 정보의 저장과 사용) 
	1.  귀하는 당사 서비스에 보관되거나 전송된 메시지 및 기타 통신 메시지 등의 내용이 국가의 비상사태, 정전, 당사의 관리범위 외의 서비스 설비 장애 및 기타 불가항력에 의하여 보관되지 못하였거나 삭제된 경우, 전송되지 못한 경우 및 기타 통신 데이터의 손실이 있을 경우에 당사는 관련 책임을 부담하지 아니합니다.  
	2.  당사가 정상적인 서비스 제공의 어려움으로 인하여 일시적으로 서비스를 중지하여야 할 경우에는 서비스 중지 1주일전의 고지 후 서비스를 중지할 수 있으며, 이 기간동안 귀하가 고지내용을 인지하지 못한데 대하여 당사는 책임을 부담하지 아니합니다. 부득이한 사정이 있을 경우 위 사전 고지기간은 감축되거나 생략될 수 있습니다. 또한 위 서비스 중지에 의하여 본 서비스에 보관되거나 전송된 메시지 및 기타 통신 메시지 등의 내용이 보관되지 못하였거나 삭제된 경우, 전송되지 못한 경우 및 기타 통신 데이터의 손실이 있을 경우에 대하여도 당사는 책임을 부담하지 아니합니다.  
	3.  당사의 사정으로 서비스를 영구적으로 중단하여야 할 경우 전항에 의거합니다. 다만, 이 경우 사전 고지기간은 1개월로 합니다.  
	4.  당사는 사전 고지 후 서비스를 일시적으로 수정, 변경 및 중단할 수 있으며, 이에 대하여 귀하 또는 제3자에게 어떠한 책임도 부담하지 아니합니다.  
	5.  당사는 이용자가 본 약관의 내용에 위배되는 행동을 한 경우, 임의로 서비스 사용을 제한 및 중지 할 수 있습니다. 이 경우 당사는 위 이용자의 접속을 금지할 수 있으며, 위 이용자가 설정한 domain 명칭, 게시한 내용의 전부 또는 일부를 임의로 삭제할 수 있습니다.  
	6.  장기간 휴면 회원인 경우 안내 메일 또는 공지사항 발표 후 1주일 간의 통지 기간을 거쳐 서비스 사용을 중지할 수 있습니다.  
	7.  당사는 회원이 가입 시 설정하는 domain 명칭 기타 정보 (이하 'domain등')에 대한 심사 후 그 변경의 권유 및 삭제권한을 보유하게 됩니다.  
	8.  당사는 가입자가 설정, 관리하는 'domain등'에 대하여 당해 'domain 등'의 이용율, 가입자의 본 서비스 이용 목적과 가입자가 설정, 관리하는 'domain등' 명칭의 적합성, 기타 제반 사유 등에 비추어 당해 'domain등'을 변경,삭제하여야 할 필요성이 있을 때에는 그 변경 또는 삭제를 가입자에게 1주일의 기간을 두어 권고하고, 그 기간 동안 가입자의 아무런 조치가 없을 경우 임의로 변경 또는 삭제 할 수 있습니다.  
제 10조 (서비스의 변경 및 해지) 
	1.  당사는 귀하가 서비스를 이용하여 기대하는 손익이나 서비스를 통하여 얻은 자료로 인한 손해에 관하여 책임을 지지 않으며, 회원이 본 서비스에 게재한 정보, 자료, 사실의 신뢰도, 정확성 등 내용에 관하여는 책임을 지지 않습니다.  
	2.  당사는 서비스 이용과 관련하여 가입자에게 발생한 손해 중 가입자의 고의, 과실에 의한 손해에 대하여 책임을 부담하지 아니합니다.  
제 11조 (정보 제공 및 광고의 게재) 
	1.  당사는 서비스를 운영함에 있어서 각종 정보를 서비스에 게재하는 방법 등으로 회원에게 제공할 수 있습니다.  
	2.  당사는 서비스에 적절하다고 판단되거나 활용 가능성 있는 광고를 게재할 수 있습니다  
제 12조 (당사에 제출된 게시물의 저작권) 
	1.  귀하가 게시한 게시물의 내용에 대한 권리는 귀하에게 있습니다.  
	2.  당사는 게시된 내용을 사전 통지 없이 편집, 이동 할 수 있는 권리를 보유하며, 다음의 경우 사전 통지 없이 삭제 할 수 있습니다.  
		1) 본 서비스 약관에 위배되거나 상용 또는 불법, 음란, 저속하다고 판단되는 게시물을 게시한 경우  
		2) 다른 회원 또는 제 3자를 비방하거나 중상 모략으로 명예를 손상시키는 내용인 경우  
		3) 공공질서 및 미풍양속에 위반되는 내용인 경우  
		4) 범죄적 행위에 결부된다고 인정되는 내용일 경우  
		5) 제3자의 저작권 등 기타 권리를 침해하는 내용인 경우  
		6) 탈퇴자가 게시한 게시물  
		7) 기타 관계 법령에 위배되는 경우  
	3.  귀하의 게시물이 타인의 저작권을 침해함으로써 발생하는 민, 형사상의 책임은 전적으로 귀하가 부담하여야 합니다.  
제 13조 (사용자의 행동규범 및 서비스 이용제한)
	1.  귀하가 제공하는 정보의 내용이 허위(차명, 비실명 등)인 것으로 판명되거나, 그러하다고 의심할 만한 합리적인 사유가 발생할 경우 당사는 귀하의 본 서비스 사용을 일부 또는 전부 중지할 수 있으며, 이로 인해 발생하는 불이익에 대해 책임을 부담하지 아니합니다.  
	2.  귀하가 당사 서비스를 통하여 게시, 전송, 입수하였거나 전자메일 기타 다른 수단에 의하여 게시, 전송 또는 입수한 모든 형태의 정보에 대하여는 귀하가 모든 책임을 부담하며 당사는 어떠한 책임도 부담하지 아니합니다.  
	3.  당사는 당사가 제공한 서비스가 아닌 가입자 또는 기타 제휴사가 제공하는 서비스의 내용상의 정확성, 완전성 및 질에 대하여 보장하지 않습니다. 따라서 당사는 귀하가 위 내용을 이용함으로 인하여 입게 된 모든 종류의 손실이나 손해에 대하여 책임을 부담하지 아니합니다.  
	4.  귀하는 본 서비스를 통하여 다음과 같은 행동을 하지 않는데 동의합니다.  
		1) 타인의 버거킹 ID와 비밀번호, 주민번호를 도용하는 행위  
		2) 저속, 음란, 모욕적, 위협적이거나 타인의 프라이버시를 침해할 수 있는 내용을 전송, 게시, 게재, 전자 메일 또는 기타의 방법으로 전송하는 행위  
		3) 서비스를 통하여 전송된 내용의 출처를 위장하는 행위  
		4) 법률, 계약에 의하여 이용할 수 없는 내용을 게시, 게재, 전자메일 또는 기타 방법으로 전송하는 행위  
		5) 타인의 특허, 상표, 영업비밀, 저작권, 기타 지적재산권을 침해하는 내용을 게시, 게재, 전자메일 또는 기타의 방법으로 전송하는 행위  
		6) 당사의 승인을 받지 아니한 광고, 판촉물, 정크메일, 스팸, 행운의 편지, 피라미드 조직 기타 다른 형태의 권유를 게시, 게재, 전자메일 또는 기타의 방법으로 전송하는 행위.  
		7) 다른 사용자의 개인정보를 수집 또는 저장하는 행위  
		8) 실질적으로 사용하지 아니하는 domain 명칭의 등록행위, 이용하는 커뮤니티 및 기타 서비스의 본래 목적 또는 내용과 부합하지 아니하는 domain명칭의 등록행위, 서비스 이용을 주된 목적으로 하지 아니하는 일체의 행위.  
	5.  당사는 회원이 본 약관을 위배했다고 판단되면 서비스와 관련된 모든 정보를 이용자의 동의 없이 삭제할 수 있습니다.  
제 3 장 의무 및 책임
제 14조 (당사의 의무)
	1.  당사는 법령과 본 약관이 금지하거나 미풍양속에 반하는 행위를 하지않으며, 계속적, 안정적으로 서비스를 제공하기 위해 노력할 의무가 있습니다.  
	2.  당사는 특별한 사정이 없는 한 이용자가 신청한 서비스 제공 개시일에 서비스를 이용할 수 있도록 합니다.  
	3.  당사는 회원의 개인 신상 정보를 본인의 승낙 없이 타인에게 누설, 배포하여서는 아니 됩니다. 다만, 전기통신관련법령 등 관계법령에 의하여 관계 국가기관 등의 요구가 있는 경우에는 그러하지 아니합니다.  
	4.  당사는 이용자가 안전하게 당사서비스를 이용할 수 있도록 이용자의 개인정보 (신용정보 포함) 보호를 위한 보안시스템을 갖추어야 합니다.  
	5.  당사는 이용자의 귀책사유로 인한 서비스 이용 장애에 대하여 책임을 지지 않습니다.  
제 15조 (회원의 의무)
	1.  회원 가입 시에 요구되는 정보는 정확하게 기입하여야 합니다. 또한 이미 제공된 귀하에 대한 정보가 정확한 정보가 되도록 유지, 갱신하여야 하며, 회원은 자신의 버거킹 ID 및 비밀번호를 제3자에게 이용하게 해서는 안됩니다.  
	2.  회원은 당사의 사전 승낙 없이 서비스를 이용하여 어떠한 영리행위도 할 수 없습니다.  
	3.  회원은 당사 서비스를 이용하여 얻은 정보를 당사의 사전승낙 없이 복사, 복제, 변경, 번역, 출판,방송 기타의 방법으로 사용하거나 이를 타인에게 제공할 수 없습니다.  
	4.  회원은 당사 서비스 이용과 관련하여 다음 각 호의 행위를 하여서는 안됩니다.  
		1) 다른 회원의 버거킹 ID를 부정 사용하는 행위  
		2) 범죄행위를 목적으로 하거나 기타 범죄행위와 관련된 행위  
		3) 선량한 풍속, 기타 사회질서를 해하는 행위  
		4) 타인의 명예를 훼손하거나 모욕하는 행위  
		5) 타인의 지적재산권 등의 권리를 침해하는 행위  
		6) 해킹 행위 또는 컴퓨터 바이러스의 유포행위  
		7) 타인의 의사에 반하여 광고성 정보 등 일정한 내용을 지속적으로 전송하는 행위  
		8) 서비스의 안전적인 운영에 지장을 주거나 줄 우려가 있는 일체의 행위  
		9) 당사 사이트에 게시된 정보의 변경.  
		10) 기타 전기통신법 제53조와 전기통신사업법 시행령 16조(불온통신), 통신사업법 제53조3항에 위배되는 행위  
제 4장 기 타 
제 16조 (당사의 소유권)
	1.  당사가 제공하는 서비스, 그에 필요한 소프트웨어, 이미지, 마크, 로고, 디자인, 서비스명칭, 정보 및 상표 등과 관련된 지적재산권 및 기타 권리는 당사에게 소유권이 있습니다.  
	2.  귀하는 당사가 명시적으로 승인한 경우를 제외하고는 전항의 소정의 각 재산에 대한 전부 또는 일부의 수정, 대여, 대출, 판매, 배포, 제작, 양도, 재라이센스, 담보권 설정 행위, 상업적 이용 행위를 할 수 없으며, 제3자로 하여금 이와 같은 행위를 하도록 허락할 수 없습니다.  
제 17조 (양도금지)
	회원이 서비스의 이용권한, 기타 이용계약 상 지위를 타인에게 양도, 증여할 수 없으며, 이를 담보로 제공할 수 없습니다.
제 18조 (손해배상)
	당사는 무료로 제공되는 서비스와 관련하여 회원에게 어떠한 손해가 발생하더라도 당사가 고의로 행한 범죄행위를 제외하고 이에 대하여 책임을 부담하지 아니합니다.  
제 19조 (면책조항)
	1. 당사는 서비스에 표출된 어떠한 의견이나 정보에 대해 확신이나 대표할 의무가 없으며 회원이나 제3자에 의해 표출된 의견을 승인하거나 반대하거나 수정하지 않습니다. 당사는 어떠한 경우라도 회원이 서비스에 담긴 정보에 의존해 잃은 이득이나 입은 해에 대해 책임이 없습니다.  
	2. 당사는 회원간 또는 회원과 제3자간에 서비스를 매개로 하여 물품거래 혹은 금전적 거래 등과 관련하여 어떠한 책임도 부담하지 아니하고, 회원이 서비스의 이용과 관련하여 기대하는 이익에 관하여 책임을 부담하지 않습니다.  
제 20조 (관할법원)
	본 서비스 이용과 관련하여 발생한 분쟁에 대해 소송이 제기될 경우 주식회사 비케이알 소재지 관할법원으로 합니다.
	이 약관은 2030년 12 월 25일부터 시행합니다.
</textarea><br>
<input type="checkbox" id="agreeCheck"/>이용약관에 동의합니다
						<table id="joinTable">
    						<tr>
    							<td>회원가입</td>
    							<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
    							<td><input type="text" name="id" placeholder="아이디를 입력해주세요"/>
    								<input type="hidden"    name="reid">
    								<input type="button" id="btn" class="btn btn-danger btn-lg" value="중복 체크" onclick="idcheck(this.form)">
    						</td>
    						</tr>
    						
    						<tr>
    							<td></td>
    							<td></td><td><input type="password" name="pwd" placeholder="비밀번호를 입력해주세요"/></td>
    						</tr>
    						
    						<tr>
    							<td></td>
    							<td></td><td><input type="password" name="pwdCheck" placeholder="입력 비밀번호와 동일"/></td>
    						</tr>
    						
    						<tr>
    							<td></td>
    							<td></td><td><input type="text" name="name" placeholder="이름을 입력해주세요"/></td>
    						</tr>
    						
    						<tr>
    							<td></td>
    							<td></td><td><input type="text" name="email" placeholder="email을 입력해주세요" size="30"/></td>
    						</tr>
    						<tr>
    							<td></td>
    							<td></td><td><input type="text" name="zipNum" placeholder="우편번호!!"readonly/></td>
    						</tr>
    						<tr>
    							<td></td>
    							<td></td>
    							<td><input type="text" name="addr1" placeholder="주소검색!!!☞☞☞☞" size="30" readonly/>
    							    <input type="button" id="btn" class="btn btn-danger btn-lg" value="주소검색" onclick="searchZip(this.form)">
    							</td>
    						</tr>
    						<tr>
    							<td></td>
    							<td></td>
    							<td><input type="text" name="add2" placeholder="상세주소를 입력해주세요!!!" /></td>
    							</tr>
    						<tr>
    							<td></td>
    							<td></td><td><input type="text" name="phone" placeholder="휴대폰번호를 입력해주세요"/></td>
    						</tr>
    						<tr>
    						<td></td>
    						<td></td>
    							<td><input type="button" id="btn" class="btn btn-warning btn-lg" value="HOME"onclick="location.href='<%=request.getContextPath()%>/index.jsp'"/>
    							<input type="button" id="btn" class="btn btn-warning btn-lg" value="가입"onclick="join_go(this.form)"/></td>
    						</tr>
					</table>
					<%-- <img src="<%=request.getContextPath()%>/images/videoMain.jpg" id="joinImage"> --%>
				</div>
			</div>
		</div>

	</form>

</body>
</html>