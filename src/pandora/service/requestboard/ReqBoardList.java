package pandora.service.requestboard;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pandora.dao.Req_BoardDao;
import pandora.model.Req_Board;
import pandora.service.CommandProcess;

public class ReqBoardList implements CommandProcess {

	@Override
		public String requestPro(HttpServletRequest request, HttpServletResponse response) {
			Req_BoardDao rb = Req_BoardDao.getInstance();
			List<Req_Board> list = rb.list();
			request.setAttribute("list", list);
		return "req_board/reqBoardList";
	}

}
