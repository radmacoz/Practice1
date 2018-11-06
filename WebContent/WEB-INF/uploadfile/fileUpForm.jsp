<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="fileUpload.up" method="post" name="frm" onsubmit="return chk()">
<input type="hidden" name="mem_id" value="anony1">
<!-- id를 표현식으로 수정할 것 -->
<table border="1"><caption>판도라 박스 업로드</caption>
	<tr><th>파일 제목</th>
		<td><input type="text" name="file_name" required="required" autofocus="autofocus"></tr>
	<tr><th>분류(radio로 변경할 것)</th>
		<td><input type="text" name="category" required="required"></td></tr>
	<tr><th>파일 설명</th>
		<td><textarea name="file_desc" rows="8" cols="50" required="required"></textarea></td></tr>
	<tr><th>파일 스샷주소</th>
		<td><input type="text" name="file_shot" required="required"></td></tr>
	<tr><th>실제 파일 주소</th>
		<td><input type="text" name="file_upload" required="required"></td></tr>
	<tr><th>파일 용량</th>
		<td><input type="number" name="file_size" required="required"></td></tr>
	<tr><th>파일 포인트</th>
		<td><input type="number" name="file_point" required="required"></td></tr>	
	<tr><th colspan="2"><input type="submit" value="확인"></th></tr>

</table>
</form>

</body>
</html>