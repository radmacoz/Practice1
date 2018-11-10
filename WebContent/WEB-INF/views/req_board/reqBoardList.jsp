<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	article	{
		width: 650px;
		float: right;
	}
</style>
</head>
<body>
	<article>
	<h2>좌측에 사이드 메뉴 넣을 것</h2>
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