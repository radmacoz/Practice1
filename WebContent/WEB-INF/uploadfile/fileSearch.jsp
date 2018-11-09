<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function chk(file_num,id) {
		if (id==null || id=="")	{
			alert("로그인이 필요한 서비스입니다");
			location.href="logonForm.lo";
			return;
		}
		window.open("fileSelect.up?file_num="+file_num+"&id="+id,"", "width=800 height=800");
	}

</script>
</head>
<body>
<c:set var="id" value="${sessionScope['id']}"></c:set>
<table border="1"><caption>파일 목록</caption>
	<tr><th width="250px">제목</th><th>분류</th><th>포인트</th>
		<th>용량</th><th>판매자</th></tr>
	 
<c:forEach var="fileup" items="${list}">
<%-- <c:set var="file_num" value="${fileup.file_num}"></c:set> --%>
	<tr><td><button onclick="chk('${fileup.file_num}','${id}')">${fileup.file_name}</button></td><td>${fileup.category }</td>
		<td>${fileup.file_point }</td><td>${fileup.file_size }</td><td>${fileup.mem_id }</td></tr>
</c:forEach>

<%-- <c:forEach var="fileup" items="${list}">
	<tr><td><a href="fileSelect.up?file_num=${fileup.file_num }">${fileup.file_name }</a></td><td>${fileup.category }</td>
		<td>${fileup.file_point }</td><td>${fileup.file_size }</td><td>${fileup.mem_id }</td></tr>
</c:forEach> --%>
</table>

</body>
</html>