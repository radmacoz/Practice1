package pandora.service.requestboard;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pandora.dao.Req_BoardDao;
import pandora.model.Req_Board;
import pandora.service.CommandProcess;

public class RequestAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			System.out.println(e.getMessage());
		}
		String writer = request.getParameter("writer");
		String subject = request.getParameter("subject");
		String category = request.getParameter("category");
		String content = request.getParameter("content");
		Req_Board req_board = new Req_Board();
		req_board.setMem_id(writer);
		req_board.setBoard_subject(subject);
		req_board.setCategory(category);
		req_board.setBoard_content(content);
		Req_BoardDao rb = Req_BoardDao.getInstance();
		int result = rb.insert(req_board);
		request.setAttribute("result", result);
		return "req_board/requestInsert";
	}

}
