package pandora.service.requestboard;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pandora.dao.Req_BoardDao;
import pandora.model.Req_Board;
import pandora.service.CommandProcess;

public class RequestReplyAction implements CommandProcess {

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
		int board_num = Integer.parseInt(request.getParameter("board_num"));
		int board_ref = Integer.parseInt(request.getParameter("board_ref"));
		int board_re_step = Integer.parseInt(request.getParameter("board_re_step"));
		int board_re_level = Integer.parseInt(request.getParameter("board_re_level"));
		Req_BoardDao rb = Req_BoardDao.getInstance();
		int step_max = rb.maxStep(board_ref);
		rb.increaseAncestor(board_num);
		if (step_max==0) { 
				board_re_step=(step_max+1);
				board_num-=1; 
		}
		else {
			//재답글
			Req_Board req_board = new Req_Board();
			rb.numupdate(req_board);
			int result2 = rb.reSelect(req_board);
			result2 = board_num;
			board_re_level+=1;
		}//재답글끝
		Req_Board req_board = new Req_Board();
		req_board.setMem_id(writer);
		String a = "";
		for (int i = 0; i < board_re_level; i++) {
			a +="  "; 
		}//이거안된다야
		req_board.setBoard_subject(a+subject);
		req_board.setCategory(category);
		req_board.setBoard_content(content);
		
		req_board.setBoard_ref(board_ref);
		req_board.setBoard_re_step(board_re_step);
		req_board.setBoard_re_level(board_re_level);
		req_board.setBoard_num(board_num);
		int result = rb.reInsert(req_board);
		request.setAttribute("req_board", req_board);
		request.setAttribute("result", result);
		return "req_board/requestReply";
	}

}
