<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="sessionChk.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
html body {
	text-align: center;
	font: small "Trebuchet MS", Verdana, Arial, Sans-serif;
	color: #333;
}

body, form {
	margin: 0;
	padding: 0;
}

/* Page Structure
----------------------------------------------- */
#body {
	width: 710px;
	padding: 10px 0 15px;
	margin: 0 auto;
	text-align: left;
}

/* Links
----------------------------------------------- */
a {
	text-decoration: none;
	color: black;
}

a:hover {
	color: grey;
}

/* Titles
----------------------------------------------- */
h1 {
	margin: 0 0 15px 60px;
	font-size: 220%;
	line-height: 1.2em;
	font-weight: normal;
	color: #666;
}

h1 strong {
	color: #000;
}

/* Tables
----------------------------------------------- */
table {
	background: #fff url("bg_table.jpg") repeat-x left top;
	border-width: 0;
	font-size: 100%;
	color: #333;
	width: 100%;
}

th, td {
	border-top: 1px solid #CABBA9;
	border-width: 1px 0 0 0;
	padding: 5px 10px;
	font-size: 93%;
	line-height: 1.5em;
}

th {
	background: #fff;
	padding-left: 5px;
	font-size: 100%;
	color: #664E38;
	text-align: left;
}

label:hover {
	cursor: pointer;
}

#reg table {
	width: 500px;
	margin-left: 60px;
}

#reg th {
	padding-left: 0;
}

#reg th, #reg td {
	vertical-align: top;
}

form .desc {
	width: 25%;
	color: #826C55;
	font-size: 88%;
}

form .text {
	border: 1px solid #E1D4C0;
	border-color: #CABBA9 #E1D4C0 #E1D4C0 #CABBA9;
}

#reg form .text {
	width: 150px;
}
</style>
</head>
<body id="reg">
<c:set var="id" value="${sessionScope['id']}"></c:set>
<div id="body">
<h2>다운로드 내역</h2>
		<table border="1">
			<tr>
				<th width="40px">파일 번호</th>
				<th width="200px">파일 제목</th>
				<th width="60px">포인트</th>
				<th width="60px">용량</th>
				<th width="60px">업로더</th>
				<th width="100px">다운로드 날짜</th>
				<th width="80px">다시 받기</th>
			</tr>
			<c:forEach var="download" items="${list}">
				<tr>
					<td>${download.file_num}</td>
					<td>${download.file_name}</td>
					<td>${download.file_point}pt</td>
					<td>${download.file_size/1000}KB</td>
					<td>${download.mem_id}</td>
					<td>${download.down_date}</td>
					<td><button style="font-size: 10px" onclick="redown('${download.file_num}','${id}')">다시 받기</button></td>
				</tr>
			</c:forEach>
		</table>
	<script type="text/javascript">
	function redown(file_num,id) {
		window.open("fileReSelect.up?file_num="+file_num+"&id="+id,"", "width=800 height=800");
	}
	</script>
	
</div>
</body>
</html>