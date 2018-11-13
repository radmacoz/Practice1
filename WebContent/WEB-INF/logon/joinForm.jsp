<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

    <link rel="stylesheet" href="../css/join.css">
    <link rel="stylesheet" href="../css/base.css">
    <link rel="stylesheet" href="../css/pdsr.css">
    <link rel="stylesheet" href="../css/button.css">

    <link href='https://cdn.rawgit.com/openhiun/hangul/14c0f6faa2941116bb53001d6a7dcd5e82300c3f/nanumbarungothic.css' rel='stylesheet' type='text/css'>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
   
<style type="text/css">
html body {
	text-align: center;
	font: small "Trebuchet MS", Verdana, Arial, Sans-serif;
	color: #333;
}

body, form {
	margin: 0;
	padding: 0;
}

/* Page Structure
----------------------------------------------- */
#a1 {
	width: 400px;
	padding: 10px 0 15px;
	margin: 0 auto;
	text-align: left;
}

/* Links
----------------------------------------------- */
a {
	font-weight: bold;
	color: #36c;
}

a:hover {
	text-decoration: underline;
	color: #f60;
}

/* Titles
----------------------------------------------- */
h1 {
	margin: 0 0 15px 60px;
	font-size: 220%;
	line-height: 1.2em;
	font-weight: normal;
	color: #666;
}

h1 strong {
	color: #000;
}

/* Tables
----------------------------------------------- */
table {
	background: #fff url("bg_table.jpg") repeat-x left top;
	border-width: 0;
	font-size: 100%;
	color: #333;
	width: 50%;
}

th, td {
	border-top: 1px solid #CABBA9;
	border-width: 1px 0 0 0;
	padding: 5px 10px;
	font-size: 93%;
	line-height: 1.5em;
}

th {
	background: #fff;
	padding-left: 5px;
	font-size: 100%;
	color: #664E38;
	text-align: left;
}

label:hover {
	cursor: pointer;
}

#reg table {
	width: 410px;
	margin-left: 60px;
}

#reg th {
	width: 25%;
	padding-left: 0;
}

#reg th, #reg td {
	vertical-align: top;
}

form .desc {
	width: 25%;
	color: #826C55;
	font-size: 88%;
}

form .text {
	border: 1px solid #E1D4C0;
	border-color: #CABBA9 #E1D4C0 #E1D4C0 #CABBA9;
}

#reg form .text {
	width: 150px;
}


</style>
<script type="text/javascript">
	function chk() {
		if(frm.password.value != frm.password2.value) {
			alert("암호와 암호확인이 다릅니다");
			frm.password.focus();
			return false;
		}
		if(!frm.agree_chk.checked) {
			alert("약관확인 후 체크해주세요");
			frm.agree_chk.focus();
			return false;
		}
	}

	function idChk() {
		if(!frm.id.value){
			alert("아이디 입력하고 체크하세요");
			frm.id.focus();
			return;
		}
		window.open("idChk.lo?id="+frm.id.value,"", "width=400 height=300");
	}

</script>
</head>
<body>
<div id="a1" style="margin-left: 20%; margin-right: 20%;">
<form action="join.lo" method="post" name="frm" onsubmit="return chk()">
<h2>회원 가입</h2>
<table border="1">
	<tr><th>아이디</th><td><input type="text" name="id" placeholder="대소문자와 숫자만 가능" required="required" autofocus="autofocus"><input type="button" value="중복체크" onclick="idChk()"></td></tr>
	<tr><th>암호</th><td><input type="password" name="password" required="required"></td></tr>
	<tr><th>암호확인</th><td><input type="password" name="password2" required="required"></td></tr>
	<tr><th>이름</th><td><input type="text" name="name" required="required" ></td></tr>
	<tr><th>이메일</th><td><input type="email" name="email" placeholder="예) pandora@pandora.com" required="required"></td></tr>
	<tr><th>전화</th><td><input type="tel" name="tel" required="required" 
		pattern="\d{3}-\d{3,4}-\d{4}" placeholder="xxx-xxxx-xxxx"></td></tr>
	<tr><th>주소</th><td><input type="text" name="address" placeholder="예) 서울시 강남구" required="required" ></td></tr>
	<tr><th>생년월일</th><td><input type="text" name="birth" placeholder="예) 901224" required="required"></td></tr>
	<tr><td colspan="2">
               <textarea name="tos" rows=15 cols=70>
판도라웹하드에서 저작권법, 컴퓨터 프로그램 보호법 및 동법률 시행령 등 관계법령에 따른 저작권보호 및 음란자료 예방을 통해 올바른 컨텐츠 판매문화가 이루어 질 수 있도록 노력하고 있사오니 다음사항에 대하여 협조해주시기 바랍니다.
1. 판도라웹하드에는 판매자님이 저작권을 가지고 있는 파일이나 저작권자의 배포 및 전송 동의를 받은 파일을 등록할 수 있습니다.
2. 법에 저촉되거나 미풍양속을 해치는 음란성 자료는 등록할 수 없으며 이를 판매, 배포할 시에는 관련법 등의 의해 처벌 받을 수 있습니다.
3. 타인의 저작권을 침해하는 자료를 무단배포 시 저작권법 등 관련법에 의해 처벌 받을 수 있습니다.
4. 판도라웹하드에서 판매하는 컨텐츠에 대한 민형사상의 책임은 등록한 회원님에게 있으며, 회사는 이에 대해 일체의 책임을 지지 않습니다.
5. 컨텐츠 판매는 판도라웹하드에서 허용하는 형태로 진행 되어야하며 이에 부합하지 않을 경우 컨텐츠 판매가 취소될 수 있습니다.
▶ 판도라웹하드는 관련 법률에 의거하여 위 내용에 해당하는 사실이 접수되어 적발될 시 해당고객에게 사전 공지없이관련 자료 삭제 및 이용정지 를 할 수 있습니다.
▶ 특히 음란물 유포 행위에 대해서는 회원 탈퇴를 원칙 으로 처리되니 이점 유의하시기 바랍니다.
▶ 판도라웹하드 업도르자료는 홍보 마케팅 자료로도 이용할 수 있습니다.
                </textarea></td></tr>
	<tr><td><input type="checkbox" name="agree_chk">위 점을 확인하였고 동의합니다.</td><th><input type="submit" value="가입"></th></tr>
</table>
</form>
</div>
</body>
</html>