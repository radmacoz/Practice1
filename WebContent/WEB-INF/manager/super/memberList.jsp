<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table td	{
	font-size: 12px;
}
</style>
</head>
<body>
<h2>회원 목록</h2>
	<table>
		<tr>
			<th>아이디</th>
			<th>성명</th>
			<th>누적 포인트</th>
			<th>가입일</th>
			<th>판매자 여부</th>
			<th>판매자 신청</th>
		</tr>
		<c:forEach var="i" begin="1" end="30">
			<tr>
				<td>아이디${i }</td>
				<td>성명${i }</td>
				<td>누적 포인트${i }</td>
				<td>가입일${i }</td>
				<td>판매자 여부${i }</td>
				<td>판매자 신청${i }</td>
			</tr>
		</c:forEach>
	</table>
	<a href="mainManager.ma">돌아가기</a>
</body>
</html>