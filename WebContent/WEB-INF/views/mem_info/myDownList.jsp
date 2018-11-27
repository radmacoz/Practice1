<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="sessionChk.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

.out {
	 width: 100%;
	 text-align: center;
 }
.in {
	 display: inline-block;
 }

article {
	width: 800px;
	height: 800px;
	float: left;
	margin-left: 5px;
	margin-top: 10px;
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

div.paging { margin-left: 50%; }
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
				<th width="80px">파일 번호</th>
				<th width="300px">파일 제목</th>
				<th width="60px">포인트</th>
				<th width="60px">용량</th>
				<th width="60px">업로더</th>
				<th width="120px">다운로드 날짜</th>
				<th width="100px">다시 받기</th>
			</tr>
			<c:if test="${fn:length(list)==0 }">
				<tr><td colspan="7" align="center">다운로드 내역이 존재하지 않습니다</td></tr>
			</c:if>
			<c:forEach var="download" items="${list}">
				<tr>
					<td>&nbsp;${download.file_num}</td>
					<td>${download.file_name}</td>
					<td>${download.file_point}pt</td>
					<td>${download.file_size/1000}KB</td>
					<td>${download.mem_id}</td>
					<td>${download.down_date}</td>
					<td><button style="font-size: 13px" onclick="redown('${download.file_num}','${id}')" class="sub_button">다시 받기</button></td>
				</tr>
			</c:forEach>
		</table>
		
		<div class="out">
			<div class="in">
				<c:if test="${startPage > pagePerBlock }">
					<a href="myDownList.do?pageNum=${startPage-1 }">이전</a>
				</c:if>
				<c:forEach var="i" begin="${startPage}" end="${endPage}">
					<a href="myDownList.do?pageNum=${i}">[${i}]</a>
				</c:forEach>
				<c:if test="${endPage < totPage }">
					<a href="myDownList.do?pageNum=${endPage+1 }">다음</a>
				</c:if>
			</div>
		</div>
		
	<script type="text/javascript">
	function redown(file_num,id) {
		window.open("fileReSelect.up?file_num="+file_num+"&id="+id,"", "width=800 height=800");
	}
	</script>
</article>
</body>
</html>