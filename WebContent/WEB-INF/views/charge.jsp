<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#dframe	{
		width: 500px;
		float: right;
	}
</style>
</head>
<body>
	<c:set var="id" value="${sessionScope['id']}"></c:set>
	<div id="dframe">
	<c:if test="${result1+result2== 2 }">
		<table>
			<tr>
				<th>${sessionScope['id']}님 충전 감사합니다.</th>
			</tr>
			<tr>
				<th>즐거운 판도라 이용 되시길 바랍니다.</th>
			</tr>
		</table>
		<a href="main.do">메인으로</a>
	</c:if>
	<c:if test="${result1==0 }">
		<script type="text/javascript">
			alert("결제 내역이 제대로 처리되지 않았습니다");
			history.go(-1);
		</script>
	</c:if>
	<c:if test="${result2==0 }">
		<script type="text/javascript">
			alert("포인트가 정상적으로 올라가지 않았습니다");
			history.go(-1);
		</script>
	</c:if>
	</div>

</body>
</html>