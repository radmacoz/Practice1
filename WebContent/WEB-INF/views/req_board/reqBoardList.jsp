<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	margin-top: 30px;
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
	background-color: #E8D9FF;
	float: none;
}

article {
	width: 650px;
	height: 600px;
	float: left;
	margin-left: 5px;
	margin-top: 30px;
	border-radius: 10px;
}

</style>
</head>
<body>

	<div id="sidemenu">
		<c:set var="id" value="${sessionScope['id']}"></c:set>
		<table class="side">
			<c:if test="${empty id}">
				<tr>
					<td scope="row" align="center"><p id="p1">판도라 박스를 더 쉽고 안전하게 이용하세요</p>
					<a href="logonForm.lo">
						<button id="loginbutton">판도라 박스 로그인</button></a><br> 
						<a href="joinForm.lo">무료회원가입</a></td>
				</tr>
			</c:if>
			<c:if test="${!empty id}">
				<tr>
					<td scope="row" align="center"><p id="p1">판도라 박스를 더 쉽고 안전하게 이용하세요</p>
						<h3>${sessionScope['id']}님<br>반갑습니다</h3>
						보유포인트 : <a href="myChargeList.do">${member.mem_point}</a>
						<a href="logout.lo"><br><br>
						<button	id="loginbutton">로그아웃</button></a>
					</td>
				</tr>
				<tr>
					<td scope="row"><a href="myPage.do">　· 내 정보 관리</a></td>
				</tr>
				<tr>
					<td scope="row"><a href="chargeForm.do">　· 캐시충전</a></td>
				</tr>
			<c:if test="${member.mem_vip == 'n' }">
				<tr>
					<td scope="row"><a href="vipApplyForm.do">　· 판매자 신청</a></td>
				</tr>
			</c:if>
			</c:if>
			<c:if test="${member.mem_vip == 'y' }">
				<tr>
					<td scope="row"><a href="fileUploadForm.up">　· 파일 업로드</a></td>
				</tr>
			</c:if>
			<tr>
				<td scope="row" align="left">　· 고객상담</td>
			</tr>
			<tr>
				<td scope="row" align="left">
					<a href="reqBoardList.do">　· 자료요청 게시판</a></td>
			</tr>
			<tr>
				<td scope="row" align="left">
					<a href="chargeForm.do">　· 사은행사(배너 넣을 것)</a></td>
			</tr>
		</table>

	</div>

	<article>
	<table>
		<tr>
			<th>번호</th>
			<th>분류</th>
			<th width="300px">제목</th>
			<th>작성자</th>
			<th>날짜</th>
			<th>조회수</th>
		</tr>
		<c:forEach var="req_board" items="${list }">
			<c:if test="${req_board.board_del=='n' }">
				<tr>
					<td>${req_board.board_num }</td>
					<td>${req_board.category }</td>
					<td><a href="requestView.do?board_num=${req_board.board_num }">${req_board.board_subject }</td>
					<td>${req_board.mem_id }</td>
					<td>${req_board.board_re_date }</td>
					<td align="center">${req_board.board_readcount}</td>
				</tr>
			</c:if>
			<c:if test="${req_board.board_del=='y' }">
				<td>삭제된 글입니다</td>
			</c:if>
		</c:forEach>
	</table>
		<a href="requestForm.do"><button>자료 요청하기</button></a>
		<a href="reqBoardList.do?writer=${req_board.mem_id }"><button>내가 신청한 자료</button></a>
		<a href="main.do"><button>메인으로</button></a>
	</article>
</body>
</html>