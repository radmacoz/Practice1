<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="fileDown.up">
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
			</tr>
			<tr>
				<th colspan="6"><img height="400" alt="파일 없음"
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
	</form>
</body>
</html>