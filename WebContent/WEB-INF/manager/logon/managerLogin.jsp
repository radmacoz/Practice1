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

<c:if test="${check>0 }">
	<script type="text/javascript">
		alert("로그인 성공");
		location.href="mainManager.ma";
	</script>
</c:if>
<c:if test="${check<0 }">
	<script type="text/javascript">
		alert("없는 아이디입니다. 다시 확인해주세요");
		history.go(-1);
	</script>
</c:if>
<c:if test="${check==0 }">
	<script type="text/javascript">
		alert("비밀번호가 맞지 않습니다. 다시 확인해주세요");
		history.go(-1);
	</script>
</c:if>
</body>
</html>