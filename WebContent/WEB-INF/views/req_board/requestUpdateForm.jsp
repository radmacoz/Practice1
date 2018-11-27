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

.subbutton {margin-left: 240px; }
</style>
</head>
<body>
	<!-- ====================== 사이드 메뉴 시작 ====================== -->
	<jsp:include page="../../logon/logonSide.jsp"></jsp:include>
	<!-- ====================== 사이드 메뉴 끝 ====================== -->

	<article>
<!-- 		<div>
			<h3>자료 요청 시 주의사항</h3>
			1. 자료 요청시 정확한 제목과 내용을 기입해 주십시오.
			<hr>
			2. 요청자료를 조작하거나 불법적인 파일을 신청할 경우,
			<hr>
			요청자와 판매자의 계정이 삭제처리 됩니다.
			<hr>
		</div> -->

		<form action="requestUpdate.do" method="post">
			<input type="hidden" name="board_num" value="${req_board.board_num }">
			<table border="1" class="reqbo">
				<tr>
					<th>제목</th>
					<td width="300"><input type="text" name="subject"
						value="${req_board.board_subject }" size="68"></td>
				</tr>
				<tr>
					<th>작성자</th>
					<td>${req_board.mem_id }</td>
				</tr>
				<tr>
					<th>분류</th>
					<td><select name="category">
							<option>도서</option>
							<option>음악</option>
							<option>이미지</option>
							<option>교육</option>
							<option>유틸</option>
							<option>기타</option>
					</select></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea name="content" cols="70" rows="20">${req_board.board_content }</textarea></td>
			</table><p>
			<input type="submit" value="수정하기" class="subbutton">
			
		</form>
	</article>
</body>
</html>