<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function chk() {
		/* var str = "분류 선택\n";
		for (var i=0; i<frm.category.length; i++)	{
			if (frm.category[i].checked)	{
				str+=frm.category[i].value+" ";
				break;
			}
		} */
		// 체크된 것이 하나기 때문에 for문 필요없음
		if (!frm.category.value)	{			
			alert("분류를 선택하세요");
			return false;
		}
	}
</script>

</head>
<body>
	<form action="fileUpload.up" method="post" name="frm"
		onsubmit="return chk()" enctype="multipart/form-data">
		<input type="hidden" name="mem_id" value="a1a">
		<!-- id를 표현식으로 수정할 것 -->
		<table border="1">
			<caption>판도라 박스 업로드</caption>
			<tr>
				<th>파일 제목</th>
				<td><input type="text" name="file_name" required="required"
					autofocus="autofocus">
			</tr>
			<tr>
				<th>카테고리</th>
				<td><label for="c1">도서</label> <input type="radio"
					name="category" id="c1" value="도서"> <label for="c2">이미지</label>
					<input type="radio" name="category" id="c2" value="이미지"> <label
					for="c3">동영상</label> <input type="radio" name="category" id="c3"
					value="동영상"> <label for="c4">음악</label> <input type="radio"
					name="category" id="c4" value="음악"> <label for="c5">교육</label>
					<input type="radio" name="category" id="c5" value="교육"> <label
					for="c6">유틸</label> <input type="radio" name="category" id="c6"
					value="유틸"> <label for="c7">기타</label> <input type="radio"
					name="category" id="c7" value="기타"></td>
			</tr>
			<tr>
				<th>파일 설명</th>
				<td><textarea name="file_desc" rows="8" cols="50"
						required="required"></textarea></td>
			</tr>
			<tr>
				<th>파일</th>
				<td><input type="file" name="file1" required="required"></td>
			</tr>
			<tr>
				<th>파일 스샷첨부(옵션)</th>
				<td><input type="file" name="file2"></td>
			</tr>
			<!-- 	<tr>
				<th>실제 파일 주소</th>
				<td><input type="text" name="file_upload" required="required"></td>
			</tr>
			<tr>
				<th>파일 용량</th>
				<td><input type="number" name="file_size" required="required"></td>
			</tr> -->
			<tr>
				<th>파일 포인트</th>
				<td><input type="number" name="file_point" required="required"></td>
			</tr>
			<tr>
				<th colspan="2"><input type="submit" value="확인"></th>
			</tr>

		</table>
	</form>

</body>
</html>