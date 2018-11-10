<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table {
		border-collapse: separate;
		border-spacing: 2px;
	}
	table td,th	{
	font-size: 15px;
}
</style>
<script type="text/javascript">
	function accept(id) {
		alert("승인되었습니다");
		location.href="vipAccept.ma?mem_id="+id;
	}
	function reject(id) {
		alert("반려되었습니다");
		location.href="vipReject.ma?mem_id="+id;
	}
</script>
</head>
<body>
<h2>판매자 신청 회원 목록</h2>
	<table border="1">
		<tr>
			<th>아이디</th>
			<th>성명</th>
			<th>이메일</th>
			<th>현재 포인트</th>
			<th>누적 충전 금액(향후 구현)</th>
			<th>가입일</th>
			<th>정보 수정일</th>
			<th colspan="2">Yes or No</th>
		</tr>
		<c:forEach var="member" items="${list }">
			<tr>
				<td>${member.mem_id }</td>
				<td>${member.mem_name }</td>
				<td>${member.mem_email }</td>
				<td>${member.mem_point }</td>
				<td>아직 몰라</td>
				<td>${member.mem_reg_date }</td>
				<td>${member.mem_update_date }</td>
				<td><button onclick="accept('${member.mem_id }')">승인</button></td>
				<td><button onclick="reject('${member.mem_id }')">반려</button></td>
			</tr>
			
		</c:forEach>
	</table>
	
	만들 수 있다면<br>
	승인할 회원들 checkbox로 선택후 일괄 승인<br>
	안되는 회원들 checkbox로 선택후 일괄 반려<br>
	<a href="mainManager.ma">돌아가기</a>
</body>
</html>