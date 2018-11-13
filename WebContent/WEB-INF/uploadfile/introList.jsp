<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table {
	margin: 10px;
	border-collapse: collapse;
	text-align: left;
	line-height: 1.5;
}

table thead th {
	padding: 10px;
	font-weight: bold;
	text-align: center;
	vertical-align: top;
	color: #369;
	border-bottom: 3px solid #036;
}

table tbody th {
	width: 150px;
	padding: 5px;
	font-size: 14px;
	font-weight: bold;
	vertical-align: top;
	border-bottom: 1px solid #ccc;
	background: #f3f6f7;
}

table td {
	font-size: 13px;
	padding: 10px;
	text-align: center;
	vertical-align: top;
	border-bottom: 1px solid #ccc;
}

button.sub_button {
	background-color: white;
	color: black;
	cursor: pointer;
	font-size: 14px;
	font-weight: bold;
	border-style: hidden;
	border-radius: 10px;
}

button.sub_button:hover {
	text-decoration: underline;
	background-color: #BDBDBD;
}
</style>
</head>
<body>
	<table border="1">
		<thead>
			<tr>
				<th width="350px">제목</th>
				<th width="50px">분류</th>
				<th width="60px">포인트</th>
				<th width="60px">용량</th>
				<th width="80px">판매자</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach var="i" begin="1" end="13">
			<tr>
				<th><a href="fileSelect.up?file_num=${board.num}">제목${i }</a></th>
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