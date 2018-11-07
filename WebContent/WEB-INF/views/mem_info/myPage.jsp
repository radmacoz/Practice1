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

#delbutton {
	height: 30px;
	width: 70px;
	background-color: #FAE0D4;
	float: none;
}
</style>
</head>
<body id="reg">
	<div id="body">

		<form id="reg1" method="post" action="">
			<c:set var="id" value="${sessionScope['id']}"></c:set>
			<c:if test="${empty id}">
				<table cellpadding="5" cellspacing="0" border="1">


					<h2>회원 정보</h2>
					<tr>
						<th><label for="f-user"> 로그인이 필요합니다 </label></th>
						<td class="desc"><a href="logonForm.lo">
						<button>판도라 박스 로그인</button></a></td>
					</tr>
				</table>
			</c:if>
			<c:if test="${!empty id}">

				<h2>회원 정보</h2>
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
						<th><label for="f-email"> 판매자 신청여부 </label></th>
						<td class="desc"><c:if test="${member.mem_vip=='y'}">신청완료</c:if>
							<c:if test="${member.mem_vip=='n'}">미신청</c:if></td>
					</tr>
				
				</table>
				<a href="delete.do" ><button id="delbutton">회원탈퇴</button></a>
			</c:if>
		</form>

		<%-- 
</head>
<body>

	<table>
		<caption>회원님의 정보를 알려드립니다</caption>
		<tr>
			<th>회원 아이디</th>
			<td>표현식(아이디)</td>
			<th>가입일</th>
			<td>표현식(아이디)</td>
		</tr>
		<tr>
			<th>보유 포인트</th>
			<td>표현식(포인트)</td>
			<th>최근 수정일</th>
			<td>표현식(최근수정일)</td>
		</tr>
		<tr>
			<td colspan="4"><a href=""><input type="button"
					value="정보 수정"></a></td>
		</tr>
	</table> --%>
		<%-- 	<table>
		<caption>내가 받은 자료</caption>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>용량</th>
			<th>분류</th>
			<th>포인트</th>
			<th>판매자</th>
			<th>다시받기</th>
		</tr>
		<c:forEach var="i" begin="1" end="10">
			<tr>
				<td>번호${i }</td>
				<td>제목${i }</td>
				<td>용량${i }</td>
				<td>분류${i }</td>
				<td>포인트${i }</td>
				<td>판매자${i }</td>
				<td><a href="fileSelect.up?file_num=${board.num}"><input
						type="button" value="다운로드"></a></td>
			</tr>
		</c:forEach>
	</table>
	<table>
		<caption>내 결제 내역</caption>
		<tr>
			<th>결제일</th>
			<th>포인트</th>
			<th>결제 금액</th>
		</tr>
		<c:forEach var="i" begin="1" end="5">
			<tr>
				<td>결제일${i }</td>
				<td>포인트${i }</td>
				<td>결제 금액${i }</td>
			</tr>
		</c:forEach>
	</table> --%>
</body>
</html>