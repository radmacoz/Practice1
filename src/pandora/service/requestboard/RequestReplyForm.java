package pandora.service.requestboard;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pandora.model.Req_Board;
import pandora.service.CommandProcess;

public class RequestReplyForm implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		int board_num = Integer.parseInt(request.getParameter("board_num"));
		int board_ref = Integer.parseInt(request.getParameter("board_ref"));
		int board_re_step = Integer.parseInt(request.getParameter("board_re_step"));
		int board_re_level = Integer.parseInt(request.getParameter("board_re_level"));
		Req_Board req_board = new Req_Board();
		req_board.setBoard_num(board_num);
		req_board.setBoard_ref(board_ref);
		req_board.setBoard_re_step(board_re_step);
		req_board.setBoard_re_level(board_re_level);
		request.setAttribute("req_board", req_board);
		return "req_board/requestReplyForm";
	}

}
