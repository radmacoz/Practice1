<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	width: 380px;
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
</head>
<body>
<div id="body">
<form action="logon.lo">
	<input type="checkbox">아이디기억
		<table border="1">
			<tr>
				<th>아이디</th>
				<td><input type="text" name="id" required="required"
					autofocus="autofocus" placeholder="아이디"></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="password" required="required"
					placeholder="비밀번호"></td>
			</tr>
			<tr align="center">
				<td colspan="2"><input type="submit" value="로그인"></td>
			</tr>
		</table>
		<a href="joinForm.lo">회원가입</a>
		<a href="main.do">메인으로</a>
		<!-- 체크하는 자바스크립트 함수 필요 -->
</form>
</div>
</body>
</html>