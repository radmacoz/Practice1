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

table.logonForm {
    border-collapse: collapse;
    text-align: left;
    line-height: 1.5;
    border-left: 1px solid #ccc;
    border-top: 1px solid #ccc;
  	margin : 10px 10px;
  	font-size: 13px;
}
table.logonForm th {
    /* width: 147px; */
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    color: #153d73;
    border-bottom: 1px solid #ccc;
    border-right: 2px solid #369;
	width: 80px;
}
table.logonForm td {
    /* width: 349px; */
    padding: 10px;
    vertical-align: top;
    border-right: 1px solid #ccc;
    border-bottom: 1px solid #ccc;
    width: 300px;
}

</style>
</head>
<body>
<article>
<form action="logon.lo">
		<h2>로그인</h2>
		<table border="1" class="logonForm">
			<tr>
				<th>아이디</th>
				<td><input type="text" name="id" id="id" required="required"
					autofocus="autofocus" placeholder="아이디"><input type="checkbox" id="idSaveCheck" name="idSaveCheck">아이디기억</td>
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
</article>
</body>
</html>