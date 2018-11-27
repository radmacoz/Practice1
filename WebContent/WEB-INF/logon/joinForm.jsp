<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
a {
	text-decoration: none;
	color: black;
}

a:hover {
	color: grey;
}

article {
	width: 650px;
	height: 425px;
	/* float: right; */
	margin-left: 20%;
	margin-top: 10px;
	margin-bottom: 10px;
	border-radius: 10px;
}

table.joinForm {
	border-collapse: collapse;
	text-align: left;
	line-height: 1.5;
	border-left: 1px solid #ccc;
	border-top: 1px solid #ccc;
	margin: 10px 10px;
	font-size: 13px;
}

table.joinForm th {
	/* width: 147px; */
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	color: #153d73;
	border-bottom: 1px solid #ccc;
	border-right: 2px solid #369;
	width: 80px;
}

table.joinForm td {
	/* width: 349px; */
	padding: 10px;
	vertical-align: top;
	border-right: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
	width: 400px;
}

.subbutton {
	margin-left: 240px;
}

article {
	height: 800px;
}
</style>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
	function chk() {
		if (frm1.password.value != frm1.password2.value) {
			alert("암호와 암호확인이 다릅니다");
			frm1.password.focus();
		
			return false;
		}
 		if (!frm1.agree_chk.checked) {
			alert("약관확인 후 체크해주세요");
			frm1.agree_chk.focus();
			return false;
		} 
	}

	function idChk() {
		if (!$('#id').val()) {
			alert("아이디 입력하고 체크하세요");
			frm1.id.focus();
			return;
		}
		
		/* window.open("idChk.lo?id=" + frm.id.value, "", "width=400 height=300"); */
		$.post('idChk.lo','id='+$('#id').val(), function(data) {
			$('#disp').html(data);
		});
	}
</script>
</head>
<body>
<article>
	<div id="a1" style="margin-left: 10%; margin-right: 20%;">
		<form action="join.lo" method="post" name="frm1"		onsubmit="return chk()">
			<h2>회원 가입</h2>
			<table border="1" class="joinForm">
				<tr>
					<th>아이디</th>
					<td><input type="text" name="id" placeholder="대소문자와 숫자만 가능"
						required="required" autofocus="autofocus" id="id">&nbsp;&nbsp;
						<input type="button" value="중복체크" onclick="idChk()"><div id="disp" class="err"></div></td>
				</tr>
				<tr>
					<th>암호</th>
					<td><input type="password" name="password" required="required"></td>
				</tr>
				<tr>
					<th>암호확인</th>
					<td><input type="password" name="password2"
						required="required"></td>
				</tr>
				<tr>
					<th>이름</th>
					<td><input type="text" name="name" required="required"></td>
				</tr>
				<tr>
					<th>이메일</th>
					<td><input type="email" name="email"
						placeholder="예) pandora@pandora.com" required="required"></td>
				</tr>
				<tr>
					<th>전화</th>
					<td><input type="tel" name="tel" required="required"
						pattern="\d{3}-\d{3,4}-\d{4}" placeholder="xxx-xxxx-xxxx"></td>
				</tr>
				<tr>
					<th>주소</th>
					<td><input type="text" name="address" placeholder="예) 서울시 강남구"
						required="required"></td>
				</tr>
				<tr>
					<th>생년월일</th>
					<td><input type="text" name="birth" placeholder="예) 901224"
						required="required"></td>
				</tr>
				<tr>
					<td colspan="2"><textarea name="tos" rows=15 cols=80>
판도라웹하드에서 저작권법, 컴퓨터 프로그램 보호법 및 동법률 시행령 등 관계법령에 따른 저작권보호 및 음란자료 예방을 통해 올바른 컨텐츠 판매문화가 이루어 질 수 있도록 노력하고 있사오니 다음사항에 대하여 협조해주시기 바랍니다.
1. 판도라웹하드에는 판매자님이 저작권을 가지고 있는 파일이나 저작권자의 배포 및 전송 동의를 받은 파일을 등록할 수 있습니다.
2. 법에 저촉되거나 미풍양속을 해치는 음란성 자료는 등록할 수 없으며 이를 판매, 배포할 시에는 관련법 등의 의해 처벌 받을 수 있습니다.
3. 타인의 저작권을 침해하는 자료를 무단배포 시 저작권법 등 관련법에 의해 처벌 받을 수 있습니다.
4. 판도라웹하드에서 판매하는 컨텐츠에 대한 민형사상의 책임은 등록한 회원님에게 있으며, 회사는 이에 대해 일체의 책임을 지지 않습니다.
5. 컨텐츠 판매는 판도라웹하드에서 허용하는 형태로 진행 되어야하며 이에 부합하지 않을 경우 컨텐츠 판매가 취소될 수 있습니다.
▶ 판도라웹하드는 관련 법률에 의거하여 위 내용에 해당하는 사실이 접수되어 적발될 시 해당고객에게 사전 공지없이관련 자료 삭제 및 이용정지 를 할 수 있습니다.
▶ 특히 음란물 유포 행위에 대해서는 회원 탈퇴를 원칙 으로 처리되니 이점 유의하시기 바랍니다.
▶ 판도라웹하드 업도르자료는 홍보 마케팅 자료로도 이용할 수 있습니다.
                </textarea></td>
				</tr>
				<tr>
					<td colspan="2"><label for="agree_chk"><input type="checkbox" id="agree_chk" name="agree_chk">위 점을 확인하였고 동의합니다.</label></td>
				</tr>

			</table>
			<input type="submit" value="가입" class="subbutton">
		</form>
	</div>
</article>
</body>
</html>