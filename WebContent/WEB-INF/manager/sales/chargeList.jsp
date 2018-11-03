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
			<th>충전 포인트</th>
			<th>결제 금액</th>
			<th>충전일</th>
			<th>누적 결제 금액</th>
		</tr>
		<c:forEach var="i" begin="1" end="30">
			<tr>
				<td>아이디${i }</td>
				<td>충전 포인트${i }</td>
				<td>결제 금액${i }</td>
				<td>충전일${i }</td>
				<td>누적 결제 금액${i }</td>
			</tr>
		</c:forEach>
	</table>
	<a href="mainManager.ma">돌아가기</a>
</body>
</html>