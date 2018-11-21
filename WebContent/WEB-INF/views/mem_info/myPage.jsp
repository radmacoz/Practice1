<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

table.myPage {
	border-collapse: collapse;
	text-align: left;
	line-height: 1.5;
	border-left: 1px solid #ccc;
	border-top: 1px solid #ccc;
	margin: 10px 10px;
	font-size: 13px;
}

table.myPage th {
	/* width: 147px; */
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	color: #153d73;
	border-bottom: 1px solid #ccc;
	border-right: 2px solid #369;
}

table.myPage td {
	width: 370px;
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
	<c:if test="${empty id}">
		<article>
			<table border="1" class="myPage">

				<tr>
					<th>로그인이<br>필요합니다
					</th>
					<td><a href="logonForm.lo">
							<button>판도라 박스 로그인</button>
					</a></td>
				</tr>
			</table>
		</article>
	</c:if>
	<article>
		<c:if test="${!empty id}">

			<!-- 	<h2>회원 정보</h2> -->
			<table border="1" class="myPage">
				<tr>
					<td colspan="2"><font size="4" style="font-weight: bold">회원정보</font></td>
				<tr>
					<th>아이디</th>
					<td>${sessionScope['id']}</td>
				</tr>

				<tr>
					<th>포인트</th>
					<td>${member.mem_point}</td>
				</tr>

				<tr>
					<th>이메일</th>
					<td>${member.mem_email}</td>
				</tr>

				<tr>
					<th>가입일</th>
					<td>${member.mem_reg_date}</td>
				</tr>

				<tr>
					<th>판매자<br>신청여부
					</th>
					<td><c:if test="${member.mem_vip=='y'}">신청완료</c:if> <c:if
							test="${member.mem_vip=='n'}">미신청</c:if></td>
				<tr>
					<th>다운로드 내역</th>
					<td><form action="myDownList.do">
							<input type="submit" value="다운로드 내역">
						</form></td>
				</tr>
				<tr>
					<th>충전내역</th>
					<td><form action="myChargeList.do">
							<input type="submit" value="충전내역">
						</form></td>
				</tr>
				<tr>
					<th>회원정보수정</th>
					<td><form action="updateForm.do">
							<input type="submit" value="회원정보수정">
						</form></td>
				</tr>
				<tr>
					<th>회원탈퇴</th>
					<td>
						<form action="delete.do">
							<input type="submit" value="회원탈퇴">
						</form>
					</td>
				</tr>
			</table>
		</c:if>
	</article>
</body>
</html>