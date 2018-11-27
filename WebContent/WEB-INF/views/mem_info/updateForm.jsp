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
article {
	width: 650px;
	height: 800px;
	float: left;
	margin-left: 5px;
	margin-top: 10px;
	border-radius: 10px;
}

table.updateForm {
	border-collapse: collapse;
	text-align: left;
	line-height: 1.5;
	border-left: 1px solid #ccc;
	border-top: 1px solid #ccc;
	margin: 10px 10px;
	font-size: 13px;
}

table.updateForm th {
	/* width: 147px; */
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	color: #153d73;
	border-bottom: 1px solid #ccc;
	border-right: 2px solid #369;
}

table.updateForm td {
	/* width: 349px; */
	padding: 10px;
	vertical-align: top;
	border-right: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
	width: 350px;
}

.subbutton {
	margin-left: 240px;
}

</style>
<script type="text/javascript">
	function chk() {
		if (frm2.password.value != frm2.password2.value) {
			alert("암호와 암호확인이 다릅니다");
			frm2.password.focus();
			return false;
		}
	}
</script>
</head>
<body>
	<!-- ====================== 사이드 메뉴 시작 ====================== -->
	<jsp:include page="../../logon/logonSide.jsp"></jsp:include>
	<!-- ====================== 사이드 메뉴 끝 ====================== -->
	<article>
		<form action="update.do" method="post" name="frm2"
			onsubmit="return chk()">
			<input type="hidden" name="id" value="${member.mem_id}">
			<table border="1" class="updateForm">
				<tr>
					<td colspan="2"><font size="4" style="font-weight: bold">회원 정보 수정</font></td>
				</tr>
				<tr>
					<th>아이디</th>
					<td>${member.mem_id}</td>
				</tr>
				<tr>
					<th>암호</th>
					<td><input type="password" name="password" required="required"
						autofocus="autofocus" placeholder="password"></td>
				</tr>
				<tr>
					<th>암호확인</th>
					<td><input type="password" name="password2"
						required="required" placeholder="password 확인"></td>
				</tr>
				<tr>
					<th>이름</th>
					<td>${member.mem_name}</td>
				</tr>
				<tr>
					<th>이메일</th>
					<td><input type="email" name="email"
						value="${member.mem_email}" required="required"></td>
				</tr>
				<tr>
					<th>전화</th>
					<td><input type="tel" name="tel" value="${member.mem_tel}"
						required="required" pattern="\d{3}-\d{3,4}-\d{4}"
						placeholder="xxx-xxxx-xxxx"></td>
				</tr>
				<tr>
					<th>주소</th>
					<td><input type="text" name="address" required="required"
						value="${member.mem_addr}"></td>
				</tr>
				<tr>
					<th>생년월일</th>
					<td><input type="text" name="birth"
						value="${member.mem_birth}" required="required"></td>
				</tr>
			</table>
			<input type="submit" value="수정" class="subbutton"><p>
		</form>
	</article>
</body>
</html>