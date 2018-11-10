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
<c:if test="${result > 0 }">
	<script type="text/javascript">
	alert("게시글이 입력되었습니다");
	location.href="reqBoardList.do";
	</script>
</c:if>
<c:if test="${result == 0 }">
	<script type="text/javascript">
	alert("에러 발생. 다시 시도해주세요.");
	history.go(-1);
	</script>
</c:if>
</body>
</html>