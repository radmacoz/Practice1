<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
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
		<a href="main.do">돌아가기</a>
		<!-- 체크하는 자바스크립트 함수 필요 -->
</form>
</body>
</html>