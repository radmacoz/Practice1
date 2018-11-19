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
<h2>충전 목록</h2>
	<table>
		<tr>
			<th>회원 아이디</th>
			<th>충전 일자</th>
			<th>충전 포인트</th>
			<th>결제 계좌번호</th>
		</tr>
		<c:forEach var="charge" items="${list }">
			<tr>
				<td>${charge.mem_id }</td>
				<td>${charge.charge_date }</td>
				<td>${charge.charge_point }</td>
				<td>${charge.charge_account }</td>
			</tr>
		</c:forEach>
	</table>
	<a href="mainManager.ma">돌아가기</a>
</body>
</html>