<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	위에는 main과 같게
	<p />

	좌측 사이드 메뉴 동일
	<br>

	<table>
		<tr>
			<th>번호</th>
			<th>분류</th>
			<th width="300px">제목</th>
			<th>작성자</th>
			<th>날짜</th>
		</tr>
		<c:forEach var="i" begin="1" end="20">
			<tr>
				<td>${i }</td>
				<td>분류${i }</td>
				<td><a href="requestView.do?subject=${subject }">제목${i }</td>
				<td>작성자${i }</td>
				<td>날짜${i }</td>
			</tr>
		</c:forEach>
		
		<a href="requestForm.do"><button>자료 요청하기</button></a>
		<a href="reqBoardList.do?writer=${writer }"><button>내가 신청한 자료</button></a>
		
	</table>
	
	
	
	
</body>
</html>