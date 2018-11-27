<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"><title>판도라 박스에 오신 것을 환영합니다</title>
<style type="text/css">
.out {
	 width: 100%;
	 text-align: center;
 }
.in {
	 display: inline-block;
 }

	table.filelist {
	margin: 10px;
    border-collapse: collapse;
    text-align: left;
    line-height: 1.5;
}
table.filelist thead th {
    padding: 10px;
    font-weight: bold;
    text-align: center;
    vertical-align: top;
    color: #369;
    border-bottom: 3px solid #036;
}
table.filelist tbody th {
    width: 150px;
    padding: 5px;
    font-weight: bold;
    vertical-align: top;
    border-bottom: 1px solid #ccc;
    background: #f3f6f7;
}
table.filelist td {
	font-size: 13px;
    padding: 10px;
    text-align: center;
    vertical-align: top;
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
article {
	width: 700px;
	height: 730px;
	float: left;
	margin-left: 5px;
	margin-top: 10px;
	border-radius: 10px;
}

</style>
</head>
<body>

	<!-- ====================== 사이드 메뉴 시작 ====================== -->
	<jsp:include page="../logon/logonSide.jsp"></jsp:include>
	<!-- ====================== 사이드 메뉴 끝 ====================== -->
<c:set var="id" value="${sessionScope['id']}"></c:set>
<c:set var="index" value='0'></c:set>

<article>
	<table class="filelist" border="1">
		<thead>
			<tr>
				<th width="50px">순위</th>
				<th width="400px">제목</th>
				<th width="50px">분류</th>
				<th width="60px">포인트</th>
				<th width="60px">용량</th>
				<th width="80px">판매자</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="fileup" items="${list6}">
				
				<tr><%-- <c:forEach var="i" begin="1" end="15"><td>${i}</td></c:forEach> --%>
					<c:set var="index" value="${index+1 }"></c:set>
					<c:if test="${index<4 }">
					<td style="color: red; font-weight: bold;">Top${index }</td>
					</c:if>
					<c:if test="${index>=4 }">
					<td>Top${index }</td>
					</c:if>
					<th><button class="sub_button"
							onclick="chk('${fileup.file_num}','${id}')">${fileup.file_name}</button></th>
					<td>${fileup.category }</td>
					<td>${fileup.file_point }pt</td>
					<td>${fileup.file_size/1000 }KB</td>
					<td>${fileup.mem_id }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</article>

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

</body>
</html>