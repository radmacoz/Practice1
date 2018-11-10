<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="pandora.model.*, pandora.dao.*"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>
<%	
	Req_BoardDao rb = Req_BoardDao.getInstance();
//	for (int i = 1; i < 235 ; i++) {
		Req_Board req_board = new Req_Board();
		req_board.setMem_id("아이디디");
		req_board.setBoard_content("내용");
		req_board.setCategory("분류");
		req_board.setBoard_subject("제목암호는 123");
		rb.insert(req_board);
//	}
%>
입력성공
</body>
</html>