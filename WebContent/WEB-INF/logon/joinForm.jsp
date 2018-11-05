<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">@import url("common.css");</style>
<script type="text/javascript">
	function chk() {
		if(frm.password.value != frm.password2.value) {
			alert("암호와 암호확인이 다릅니다");
			frm.password.focus();
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

<form action="join.lo" method="post" name="frm" onsubmit="return chk()">
<table border="1">
	<tr><th>아이디</th><td><input type="text" name="id" required="required" autofocus="autofocus"><input type="button" value="중복체크" onclick="idChk()"></td></tr>
	<tr><th>암호</th><td><input type="password" name="password" required="required"></td></tr>
	<tr><th>암호확인</th><td><input type="password" name="password2" required="required"></td></tr>
	<tr><th>이름</th><td><input type="text" name="name" required="required" ></td></tr>
	<tr><th>이메일</th><td><input type="email" name="email" required="required"></td></tr>
	<tr><th>전화</th><td><input type="tel" name="tel" required="required" 
		pattern="\d{3}-\d{3,4}-\d{4}" placeholder="xxx-xxxx-xxxx"></td></tr>
	<tr><th>주소</th><td><input type="text" name="address" required="required" ></td></tr>
	<tr><th>생년월일</th><td><input type="text" name="birth" required="required"></td></tr>
	<tr><th colspan="2"><input type="submit" value="확인"></th></tr>
</table>
</form>
</body>
</html>