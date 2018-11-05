<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>


<meta charset="UTF-8">
<title>판도라 박스에 오신 것을 환영합니다</title>
<style type="text/css">
body	{
	width: 950px;
}
#sidemenu {
	width: 250px;
	height: 300px;
	float: left;
	margin-left: 20px;
	margin-top: 30px;
	border: 1px solid green;
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
	background-color: orange;
	float: none;
}

article {
	width: 650px;
	height: 600px;
	float: left;
	margin-left: 20px;
	margin-top: 30px;
	border: 2px solid red;
}

#sidemenu ul {
	list-style: none;
}

</style>
</head>
<body>
	<div id="sidemenu">
		<p id="p1">판도라 박스를 더 쉽고 안전하게 이용하세요</p>
		<c:set var="id" value="${sessionScope['id']}"></c:set>
		<c:if test="${empty id}">
			<a href="logonForm.lo"><button id="loginbutton">판도라 박스
					로그인</button></a>
		</c:if>
		<c:if test="${!empty id}">
			<h2>${sessionScope['id']}님 반갑습니다</h2>
		</c:if>
		<div align="right">
			<a href="joinForm.lo">무료회원가입</a>
		</div>
		<br> <a href="chargeForm.do">캐시충전</a> <br> <a
			href="reqBoardList.do">자료요청 게시판</a> <br> 고객상담 <br> <a
			href="vipApplyForm.do"> 판매자 신청</a> <br> <a href="chargeForm.do">사은
			행사(배너 넣을 것)</a> <br>
	</div>
	<article>
		<%-- <jsp:include page="../uploadfile/"+"${pgm }"/> --%>
		<%-- <c:set var="path" value="${pageContext.request.contextPath }"></c:set>
		<jsp:include page="${path }/"></jsp:include>
		<jsp:include page="${param.pgm }"></jsp:include> --%>
		<jsp:include page="../uploadfile/fileList.jsp"></jsp:include>
	</article>
</body>
</html>