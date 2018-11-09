<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="sessionChk.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
#body {
	width: 710px;
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
	width: 100%;
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
	}
</script>
</head>
<body id="reg">
	<div id="body">
<form action="update.do" method="post" name="frm" onsubmit="return chk()">
	<input type="hidden" name="id" value="${member.mem_id}">
<table border="1">
	<tr><th>아이디</th><td>${member.mem_id}</td></tr>
	<tr><th>암호</th><td><input type="password" name="password" required="required" autofocus="autofocus"></td></tr>
	<tr><th>암호확인</th><td><input type="password" name="password2" required="required"></td></tr>
	<tr><th>이름</th><td>${member.mem_name}</td></tr>
	<tr><th>이메일</th><td><input type="email" name="email" value="${member.mem_email}" required="required"></td></tr>
	<tr><th>전화</th><td><input type="tel" name="tel" value="${member.mem_tel}" required="required" 
		pattern="\d{3}-\d{3,4}-\d{4}" placeholder="xxx-xxxx-xxxx"></td></tr>
	<tr><th>주소</th><td><input type="text" name="address" required="required" value="${member.mem_addr}"></td></tr>
	<tr><th>생년월일</th><td><input type="text" name="birth" value="${member.mem_birth}" required="required"></td></tr>
	<tr><th colspan="2"><input type="submit" value="수정"></th></tr>
</table>
</form>
<a href="main.do">돌아가기</a>
</div>
</body>
</html>