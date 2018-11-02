<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>
<h3>자료 요청 시 주의사항</h3>
1. 자료 요청시 정확한 제목과 내용을 기입해 주십시오.<hr>
2. 요청자료를 조작하거나 불법적인 파일을 신청할 경우,<hr>
	요청자와 판매자의 계정이 삭제처리 됩니다.<hr>
3. 무분별한 요청을 방지하기 위해 자료요청은 하루에 한번씩만 가능 합니다.

</div>

<form action="request.do" method="post">
<table border="1">
<tr><th>작성자</th><td><input type="text" name="writer"></td></tr>
<tr><th>제목</th><td><input type="text" name="subject"></td></tr>
<tr><th>분류</th><td><input type="text" name="category"></td></tr>
<tr><th>내용</th><td><textarea cols="10" rows="20"></textarea></td>
<tr><th colspan="2"><input type="submit" value="요청하기"></th></tr>
</table>
</form>

</body>
</html>