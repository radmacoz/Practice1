<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table	{ width: 90%; margin-top: 10px;}
	table tbody {
	font-size: 14px;
}
</style>
</head>
<body>
<table border="1">
			<thead>
			<tr>
				<th width="60%">제목</th>
				<th>분류</th>
				<th>포인트</th>
				<th>용량</th>
				<th>판매자</th>
			</tr>
			</thead>
			<tbody>
			<c:forEach var="i" begin="1" end="20">
			<tr>
				<td><a href="fileSelect.up?file_num=${board.num}">제목${i }</a></td>
				<td>분류${i }</td>
				<td>포인트${i }</td>
				<td>용량${i }</td>
				<td>판매자${i }</td>
			</tr>
			</c:forEach>
			</tbody>
		</table>
</body>
</html>