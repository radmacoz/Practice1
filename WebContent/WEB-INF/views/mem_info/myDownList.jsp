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


article {
	width: 650px;
	height: 800px;
	float: left;
	margin-left: 5px;
	margin-top: 0px;
	border-radius: 10px;
}

table.myDownList {
    border-collapse: collapse;
    text-align: left;
    line-height: 1.5;
    border-left: 1px solid #ccc;
    border-top: 1px solid #ccc;
  	margin : 10px 10px;
  	font-size: 13px;
}
table.myDownList th {
    /* width: 147px; */
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    color: #153d73;
    border-right: 1px solid #ccc;
    border-bottom: 3px solid #369;

}
table.myDownList td {
    /* width: 349px; */
    padding: 10px;
    vertical-align: top;
    border-right: 1px solid #ccc;
    border-bottom: 1px solid #ccc;
}

button.sub_button {
	background-color: white;
	color: black;
	cursor: pointer;
	font-size: 14px;
	font-weight: bold;
	border-style: hidden;
	border-radius: 10px;
}
button.sub_button:hover {
	text-decoration: underline;
	background-color: #BDBDBD;
}

</style>
</head>
<body>

	<!-- ====================== 사이드 메뉴 시작 ====================== -->
	<jsp:include page="../../logon/logonSide.jsp"></jsp:include>
	<!-- ====================== 사이드 메뉴 끝 ====================== -->

<c:set var="id" value="${sessionScope['id']}"></c:set>
<article>
		<table border="1" class="myDownList">
			<tr><td colspan="7"><font size="4" style="font-weight: bold">다운로드 내역</font></td>
			<tr>
				<th width="40px">파일 번호</th>
				<th width="200px">파일 제목</th>
				<th width="60px">포인트</th>
				<th width="60px">용량</th>
				<th width="60px">업로더</th>
				<th width="120px">다운로드 날짜</th>
				<th width="100px">다시 받기</th>
			</tr>
			<c:forEach var="download" items="${list}">
				<tr>
					<td>${download.file_num}</td>
					<td>${download.file_name}</td>
					<td>${download.file_point}pt</td>
					<td>${download.file_size/1000}KB</td>
					<td>${download.mem_id}</td>
					<td>${download.down_date}</td>
					<td><button style="font-size: 13px" onclick="redown('${download.file_num}','${id}')" class="sub_button">다시 받기</button></td>
				</tr>
			</c:forEach>
		</table>
	<script type="text/javascript">
	function redown(file_num,id) {
		window.open("fileReSelect.up?file_num="+file_num+"&id="+id,"", "width=800 height=800");
	}
	</script>
</article>
</body>
</html>