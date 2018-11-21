<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
article {
	width: 650px;
	height: 800px;
	float: right;
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
  	margin : 10px 10px;
  	font-size: 13px;
}
table.reqbo th {
    /* width: 147px; */
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    color: #153d73;
    border-bottom: 1px solid #ccc;
    border-right: 2px solid #369;

}
table.reqbo td {
    /* width: 349px; */
    padding: 10px;
    vertical-align: top;
    border-right: 1px solid #ccc;
    border-bottom: 1px solid #ccc;
    width: 500px;
}

</style>
</head>
<body>
	<!-- ====================== 사이드 메뉴 시작 ====================== -->
	<jsp:include page="../../logon/logonSide.jsp"></jsp:include>
	<!-- ====================== 사이드 메뉴 끝 ====================== -->
	<article>
	<table border="1" class="reqbo">
		<tr>
			<th>제목</th>
			<td width="300">${req_board.board_subject }</td>
		<tr>
			<th>작성자</th>
			<td>${req_board.mem_id }</td>
		<tr>
			<th>분류</th>
			<td>${req_board.category }</td>
		<tr height="300">
			<th>내용</th>
			<td>${req_board.board_content }</td>
	</table>
	<button><a href="requestReplyForm.do?board_num=${req_board.board_num }&board_ref=${req_board.board_ref}&board_re_step=${req_board.board_re_step}&board_re_level=${req_board.board_re_level}">답변</a></button>
	<button>
		<a href="requestUpdateForm.do?board_num=${req_board.board_num }">수정</a>
	</button>
	<button>
		<a href="requestDelete.do?board_num=${req_board.board_num }">삭제</a>
	</button>
	<p>
		<a href="reqBoardList.do">이전으로</a> <a href="main.do">메인 화면으로</a>
	</article>
</body>
</html>