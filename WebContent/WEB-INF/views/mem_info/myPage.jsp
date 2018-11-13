<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
html body {
	text-align: center;
	font: small "Trebuchet MS", Verdana, Arial, Sans-serif;
	color: #333;
}

body, form {
	margin: 0;
	padding: 0;
}

/* Page Structure
----------------------------------------------- */
#body {
	width: 710px;
	padding: 10px 0 15px;
	margin: 0 auto;
	text-align: left;
}

/* Links
----------------------------------------------- */
a {
	font-weight: bold;
	color: #36c;
}

a:hover {
	text-decoration: underline;
	color: #f60;
}

/* Titles
----------------------------------------------- */
h1 {
	margin: 0 0 15px 60px;
	font-size: 220%;
	line-height: 1.2em;
	font-weight: normal;
	color: #666;
}

h1 strong {
	color: #000;
}

/* Tables
----------------------------------------------- */
table {
	background: #fff url("bg_table.jpg") repeat-x left top;
	border-width: 0;
	font-size: 100%;
	color: #333;
	width: 100%;
}

th, td {
	border-top: 1px solid #CABBA9;
	border-width: 1px 0 0 0;
	padding: 5px 10px;
	font-size: 93%;
	line-height: 1.5em;
}

th {
	background: #fff;
	padding-left: 5px;
	font-size: 100%;
	color: #664E38;
	text-align: left;
}

label:hover {
	cursor: pointer;
}

#reg table {
	width: 410px;
	margin-left: 60px;
}

#reg th {
	width: 25%;
	padding-left: 0;
}

#reg th, #reg td {
	vertical-align: top;
}

form .desc {
	width: 25%;
	color: #826C55;
	font-size: 88%;
}

form .text {
	border: 1px solid #E1D4C0;
	border-color: #CABBA9 #E1D4C0 #E1D4C0 #CABBA9;
}

#reg form .text {
	width: 150px;
}


</style>
</head>
<body id="reg">
	<div id="body">
		<h2>회원 정보</h2>
		<c:set var="id" value="${sessionScope['id']}"></c:set>
		<c:if test="${empty id}">
			<table cellpadding="5" cellspacing="0" border="1">

				<tr>
					<th><label for="f-user"> 로그인이<br>필요합니다
					</label></th>
					<td class="desc"><a href="logonForm.lo">
							<button>판도라 박스 로그인</button>
					</a></td>
				</tr>
			</table>
		</c:if>
		<c:if test="${!empty id}">

			<!-- 	<h2>회원 정보</h2> -->
			<table cellpadding="5" cellspacing="0" border="1">

				<tr>
					<th><label for="f-user"> 아이디 </label></th>
					<td class="desc">${sessionScope['id']}</td>
				</tr>

				<tr>
					<th><label for="f-pass1"> 포인트 </label></th>
					<td class="desc">${member.mem_point}</td>
				</tr>

				<tr>
					<th><label for="f-pass2"> 이메일 </label></th>
					<td class="desc">${member.mem_email}</td>
				</tr>

				<tr>
					<th><label for="f-dispname"> 가입일 </label></th>
					<td class="desc">${member.mem_reg_date}</td>
				</tr>

				<tr>
					<th><label for="f-email"> 판매자<br>신청여부
					</label></th>
					<td class="desc"><c:if test="${member.mem_vip=='y'}">신청완료</c:if>
						<c:if test="${member.mem_vip=='n'}">미신청</c:if></td>
				<tr>
					<th>충전내역</th>
					<td class="desc"><form action="myChargeList.do">
							<input type="submit" value="충전내역">
						</form></td>
				</tr>
				<tr>
					<th>회원정보수정</th>
					<td class="desc"><form action="updateForm.do">
							<input type="submit" value="회원정보수정">
						</form></td>
				</tr>
				<tr>
					<th>회원탈퇴</th>
					<td class="desc">
						<form action="delete.do">
							<input type="submit" value="회원탈퇴">
						</form>
					</td>
				</tr>
			</table>
		</c:if>
	</div>
</body>
</html>