<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="sessionChk.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
a {
	text-decoration: none;
	color: black;
}

a:hover {
	color: grey;
}

table.side {
	border-collapse: separate;
	border-spacing: 0;
	text-align: left;
	line-height: 1.5;
	border-top: 1px solid #ccc;
	border-left: 1px solid #ccc;
	margin: 20px 10px;
}
/* 
table.side th {
	width: 250px;
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	border-right: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
	border-top: 1px solid #fff;
	border-left: 1px solid #fff;
	background: #eee;
} */
table.side td {
	width: 350px;
	padding: 10px;
	vertical-align: top;
	/* text-align: center; */
	border-right: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
	font-size: 13px;
}

body {
	width: 950px;
}

#sidemenu {
	width: 250px;
	height: 400px;
	float: left;
	margin-left: 5px;
	margin-top: 10px;
	text-align: center;
	background-color: white;
}

#p1 {
	font-weight: lighter;
	font-size: 10px;
}

#loginbutton {
	height: 40px;
	width: 150px;
	background-color: #B4D0FC;
	float: none;
}

article {
	width: 650px;
	height: 800px;
	float: left;
	margin-left: 5px;
	margin-top: 0px;
	border-radius: 10px;
}

table.chargeList {
	border-collapse: collapse;
	text-align: left;
	line-height: 1.5;
	border-left: 1px solid #ccc;
	border-top: 1px solid #ccc;
	margin: 10px 10px;
	font-size: 13px;
	width: 400px;
}

table.chargeList th {
	/* width: 147px; */
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	color: #153d73;
	border-right: 1px solid #ccc;
	border-bottom: 3px solid #369;
}

table.chargeList td {
	/* width: 349px; */
	padding: 10px;
	vertical-align: top;
	border-right: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
}
</style>
</head>
<body>

	<!-- ====================== 사이드 메뉴 시작 ====================== -->
	<jsp:include page="../../logon/logonSide.jsp"></jsp:include>
	<!-- ====================== 사이드 메뉴 끝 ====================== -->

	<c:set var="id" value="${sessionScope['id']}"></c:set>
	<article>
		<table border="1" class="chargeList">
			<tr>
				<td colspan="2"><font size="4" style="font-weight: bold">충전내역</font></td>
			<tr>
			<tr>
				<th>충전내역</th>
				<th>충전일시</th>
			</tr>
			<c:forEach var="charge" items="${list}">
				<tr>
					<td>${charge.charge_point}포인트</td>
					<td>${charge.charge_date}</td>
				</tr>
			</c:forEach>
		</table>
	</article>
</body>
</html>