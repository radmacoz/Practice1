<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	text-decoration: none;
	color: black;
}

a:hover {
	color: grey;
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
.char1 {margin-left: 50px; }
.subbutton {margin-left: 240px; }
</style>
</head>
<body id="reg">
<div id="body">
	<c:set var="id" value="${sessionScope['id']}"></c:set>
	<article>
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
			<form action="charge.do" method="post">
				<table>
					<h2 class="char1">포인트 충전</h2>
					<tr>
						<th>선택 버튼</th>
						<th>충전 금액</th>
						<th>충전 포인트</th>
					<tr>
						<td><input type="radio" name="charge" value="4000"
							checked="checked">옵션1</td>
						<td>5,000원</td>
						<td>4,000 point</td>
					</tr>
					<tr>
						<td><input type="radio" name="charge" value="10000">옵션2</td>
						<td>10,000원</td>
						<td>10,000 point</td>
					</tr>
					<tr>
						<td><input type="radio" name="charge" value="25000">옵션3</td>
						<td>20,000원</td>
						<td>25,000 point</td>
					</tr>
					<tr>
						<td><input type="radio" name="charge" value="80000">옵션4</td>
						<td>50,000원</td>
						<td>80,000 point</td>
					</tr>
					<tr>
						<td><input type="radio" name="charge" value="200000">옵션5</td>
						<td>100,000원</td>
						<td>200,000 point</td>
					</tr>

				</table>

				<h2 class="char1">무통장 입금</h2>
				<p class="char1">무통장 입금을 이용하시려면 계좌 정보를 입력해주세요.</p>

				<table>
					<tr>
						<th>예금주명</th>
						<td><input type="text" name="acc_name"></td>
					</tr>
					<tr>
						<th>은행명</th>
						<td><input type="text" name="acc_bank"></td>
					</tr>
					<tr>
						<th>계좌번호</th>
						<td><input type="text" name="acc_number"></td>
					</tr>
				</table>
				<p>
					<input type="submit" value="확인" class="subbutton">
			</form>
		</c:if>
	</article>
</div>
</body>
</html>