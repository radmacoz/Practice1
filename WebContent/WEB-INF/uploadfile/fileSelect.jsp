<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
 	function down(name, memPoint, filePoint)	{
		if (memPoint < filePoint)	{
			alert("잔여 포인트가 부족합니다. 충전하세요.");
			return false;
		}
		else	{
			alert("다운이 진행됩니다");
		/* window.open("fileTest/A02.png", '_blank'); */
 			window.open("fileSave/"+name, '_blank');
		}
	}
</script>

<!--	function down(file) {
		window.open("fileSelect.up?file_upload="+file,"", "width=200 height=300");
	} -->
</head>
<body>
	<%-- <form action="fileDown.up" name="frm" onsubmit="down('${fileup.file_upload }')"> --%>
	<form action="fileDown.up" name="frm"
		onsubmit="return down('${fileup.file_upload }',${member.mem_point },${fileup.file_point })">
		<input type="hidden" name="mem_id" value="${sessionScope['id']}">
		<input type="hidden" name="file_num" value="${fileup.file_num }">
		<table border="1">
			<caption>파일 등록 정보</caption>
			<tr>
				<th colspan="6">${fileup.file_name }</th>
			</tr>
			<tr>
				<th>포인트</th>
				<td>${fileup.file_point }point</td>
				<th>용량</th>
				<td>${fileup.file_size/1000 }KB</td>
				<th>등록자</th>
				<td>${fileup.mem_id }</td>
			</tr>
			<tr>
				<th>파일/폴더명</th>
				<td colspan="5">${fileup.file_upload }</td>
			</tr>
			<tr>
				<td colspan="6" align="center"><input type="submit"
					value="내려받기"></td>
				<!-- 				<td colspan="6" align="center"><a	href="fileTest/A02.png">
				<input type="submit" value="내려받기"></a></td> -->
			</tr>
			<tr>
				<th colspan="6"><img width="300" alt="파일 없음"
					src="fileSave/${fileup.file_shot }"></th>
			</tr>
			<tr>
				<th colspan="6"><pre>${fileup.file_desc }</pre></th>
			</tr>
			<tr>
				<td colspan="6" align="center"><input type="submit"
					value="내려받기"></td>
			</tr>
		</table>
		<p>
	</form>
</body>
</html>