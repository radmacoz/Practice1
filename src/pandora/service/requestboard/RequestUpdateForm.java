package pandora.service.requestboard;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pandora.dao.Req_BoardDao;
import pandora.model.Req_Board;
import pandora.service.CommandProcess;

public class RequestUpdateForm implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		int board_num = Integer.parseInt(request.getParameter("board_num"));
		Req_BoardDao rb = Req_BoardDao.getInstance();
		Req_Board req_board = rb.select(board_num);
		request.setAttribute("req_board", req_board);
		return "req_board/requestUpdateForm";
	}

}
