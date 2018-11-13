<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
<article>
<div>
<h3>자료 요청 시 주의사항</h3>
1. 자료 요청시 정확한 제목과 내용을 기입해 주십시오.<hr>
2. 요청자료를 조작하거나 불법적인 파일을 신청할 경우,<hr>
	요청자와 판매자의 계정이 삭제처리 됩니다.<hr>
</div>

<form action="request.do" method="post">
<table border="1">
<tr><th>작성자</th><td width="350px"><input type="text" name="writer"></td></tr>
<tr><th>제목</th><td><input type="text" name="subject"></td></tr>
<tr><th>분류</th>
<td>
<select name="category">
<option>도서</option> 
<option>음악</option> 
<option>이미지</option> 
<option>교육</option>
<option>유틸</option>
<option>기타</option>
</select>
</td></tr>
<tr><th>내용</th><td><textarea name="content" cols="40" rows="20"></textarea></td>
<tr><th colspan="2"><input type="submit" value="요청하기"></th></tr>
</table>
</form>
<a href="reqBoardList.do"><button>돌아가기</button></a>
</article>
</body>
</html>