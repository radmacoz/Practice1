<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">@import url("common/tablesimple.css");</style>
</head>
<body>
<form action="managerLogin.ma">
<table border="1"><caption>관리자 로그인</caption>
	<tr><th>아이디</th>
		<td><input type="text" name="id" required="required" autofocus="autofocus"></td></tr>
	<tr><th>암호</th>
		<td><input type="text" name="password" required="required"></td></tr>
	<tr><th colspan="2"><input type="submit" value="확인"></th></tr>
</table>
</form>
</body>
</html>