<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
<style type="text/css">

.out {
	 width: 100%;
	 text-align: center;
 }
.in {
	 display: inline-block;
 }

table.filesearch {
	margin: 10px;
	border-collapse: collapse;
	text-align: left;
	line-height: 1.5;
}

table.filesearch thead th {
	padding: 10px;
	font-weight: bold;
	text-align: center;
	vertical-align: top;
	color: #369;
	border-bottom: 3px solid #036;
}

table.filesearch tbody th {
	width: 150px;
	padding: 5px;
	font-weight: bold;
	vertical-align: top;
	border-bottom: 1px solid #ccc;
	background: #f3f6f7;
}

table.filesearch td {
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
</style>

</head>
<body>
	<c:set var="id" value="${sessionScope['id']}"></c:set>
	<table class="filesearch" border="1">
		<thead>
			<tr>
				<th width="350px">제목</th>
				<th width="50px">분류</th>
				<th width="60px">포인트</th>
				<th width="60px">용량</th>
				<th width="80px">판매자</th>
			</tr>
		</thead>
		<tbody>
			<c:if test="${fn:length(list)==0 }">
				<tr><td colspan="5">검색조건에 맞는 자료가 존재하지 않습니다</td></tr>
			</c:if>
			<c:forEach var="fileup" items="${list}">
				<tr>
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
	<div class="out">
		<div class="in">
			<c:if test="${ startPage > pagePerBlock }">
				<input type="button" onclick="s2('${category }','${subject }','${keyword }',${startPage-1})" value="이전">
			</c:if>
			<c:forEach var="i" begin="${startPage}" end="${endPage}">
				<input type="button" onclick="s1('${category }','${subject }','${keyword }',${i})" value="${i}">
			</c:forEach>
			<c:if test="${endPage<totPage}">
				<input type="button" onclick="s3('${category }','${subject }','${keyword }',${endPage+1})" value="다음">
			</c:if>
		</div>
	</div>
</body>
</html>