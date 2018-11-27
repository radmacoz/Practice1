<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="pandora.model.*, pandora.dao.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	FileUpDao md = FileUpDao.getInstance();
	for (int i=1; i<=100; i++)	{
		FileUp file = new FileUp();
		
		file.setFile_name("왕좌의 게임(Game of Thrones)얼음과 불의 노래"+i);
		file.setCategory("도서");
		file.setMem_id("aa");
		file.setFile_desc("자료에 대한 설명"+i);
		file.setFile_shot("스샷주소"+i);
		file.setFile_upload("이미지파일명"+i);
		file.setFile_size(3000+3000*i);
		file.setFile_point(200+10*i);
		FileUpDao fd = FileUpDao.getInstance();
		int result = fd.insert(file);
	}
	
%>

</body>
</html>