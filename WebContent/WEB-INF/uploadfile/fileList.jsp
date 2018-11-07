<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<table border="1"><caption>파일 목록</caption>
	<tr><th>제목</th><th>분류</th><th>포인트</th>
		<th>용량</th><th>판매자</th></tr>
<c:forEach var="fileup" items="${list}">
	<tr><td><a href="fileSelect.up?file_num=${fileup.file_num }">${fileup.file_name }</a></td><td>${fileup.category }</td>
		<td>${fileup.file_point }</td><td>${fileup.file_size }</td><td>${fileup.mem_id }</td></tr>
</c:forEach>
</table>

</body>
</html>