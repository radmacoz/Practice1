package pandora.service.requestboard;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pandora.dao.Req_BoardDao;
import pandora.service.CommandProcess;

public class RequestDeleteAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		int board_num = Integer.parseInt(request.getParameter("board_num"));
		Req_BoardDao rb = Req_BoardDao.getInstance(); 
		int result = rb.delete(board_num);
		
		request.setAttribute("result", result);
		return "req_board/requestDelete";
	}

}
