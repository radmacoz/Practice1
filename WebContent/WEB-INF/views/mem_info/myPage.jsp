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
	</table>
	<table>
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
	</table>
</body>
</html>