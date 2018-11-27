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
	margin-top: 10px;
	border-radius: 10px;
}

table.reqbo {
	border-collapse: collapse;
	text-align: left;
	line-height: 1.5;
	border-left: 1px solid #ccc;
	border-top: 1px solid #ccc;
	margin: 10px 10px;
	font-size: 13px;
}

table.reqbo th {
	/* width: 147px; */
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	color: #153d73;
	border-right: 1px solid #ccc;
	border-bottom: 3px solid #369;
}

table.reqbo td {
	/* width: 349px; */
	padding: 10px;
	vertical-align: top;
	border-right: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
}


.out {
	 width: 60%;
	 text-align: center;
 }
.in {
	 display: inline-block;
 }
 
</style>
</head>
<body>
	<!-- ====================== 사이드 메뉴 시작 ====================== -->
	<jsp:include page="../../logon/logonSide.jsp"></jsp:include>
	<!-- ====================== 사이드 메뉴 끝 ====================== -->

	<article>
		<table class="reqbo">
			<tr>
				<th>번호</th>
				<th width="50px">분류</th>
				<th width="200px">제목</th>
				<th width="70px">작성자</th>
				<th width="70px">날짜</th>
				<th>조회수</th>
			</tr>
			<c:forEach var="req_board" items="${list }">
				<c:if test="${req_board.board_del=='n' }">
					<tr>
						<td>${req_board.board_num }</td>
						<td>${req_board.category }</td>
						<td><c:if test="${req_board.board_readcount > 4}">
								<img alt="" src="hot.gif">
							</c:if> <c:if test="${req_board.board_re_level>0}">
								<c:forEach begin="1" end="${req_board.board_re_level}">
									<img alt="" src="level.gif" height="5px"
										width="${req_board.board_re_level*3}">
								</c:forEach>
								<img alt="" src="re.gif">
							</c:if> <a href="requestView.do?board_num=${req_board.board_num }">${req_board.board_subject }</td>
						<td>${req_board.mem_id }</td>
						<td>${req_board.board_re_date }</td>
						<td align="center">${req_board.board_readcount}</td>
					</tr>
				</c:if>
				<c:if test="${req_board.board_del=='y' }">
					<tr>
						<td colspan="6">삭제된 글입니다</td>
					</tr>
				</c:if>
			</c:forEach>
		</table>
		<div align="center">
			<c:if test="${startPage > pagePerBlock }">
				<a href="reqBoardList.do?pageNum=${startPage-1 }">이전</a>
			</c:if>
			<c:forEach var="i" begin="${startPage}" end="${endPage}">
				<a href="reqBoardList.do?pageNum=${i}">[${i}]</a>
			</c:forEach>
			<c:if test="${endPage < totPage }">
				<a href="reqBoardList.do?pageNum=${endPage+1 }">다음</a>
			</c:if>
		</div>
		<p>

	<div class="out">
		<div class="in">
			<a href="requestForm.do"><button>자료 요청하기</button></a>
			<a href="reqBoardList.do?writer=${req_board.mem_id }"><button>내가 신청한 자료</button></a>
			<a href="main.do"><button>메인으로</button></a>
		</div>
	</div>
	</article>
</body>
</html>