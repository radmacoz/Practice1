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
	for (int i=1; i<=4; i++)	{
		FileUp file = new FileUp();
		
		file.setFile_name("유틸자료"+i);
		file.setCategory("util");
		file.setMem_id("a1a");
		file.setFile_desc("자료에 대한 설명"+1);
		file.setFile_shot("스샷주소"+i);
		file.setFile_upload("유틸파일명"+i);
		file.setFile_size(300000+3000*i);
		file.setFile_point(500-40*i);
		FileUpDao fd = FileUpDao.getInstance();
		int result = fd.insert(file);
	}
	
%>

</body>
</html>