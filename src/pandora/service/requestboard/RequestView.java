package pandora.service.requestboard;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pandora.dao.MemberDao;
import pandora.dao.Req_BoardDao;
import pandora.model.Member;
import pandora.model.Req_Board;
import pandora.service.CommandProcess;

public class RequestView implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		int board_num = Integer.parseInt(request.getParameter("board_num"));
		Req_BoardDao rb = Req_BoardDao.getInstance();
		rb.readcountUpdate(board_num);
		Req_Board req_board = rb.select(board_num);

		if((String)request.getSession().getAttribute("id")!=null) {
			String id = (String)request.getSession().getAttribute("id");
			MemberDao md = MemberDao.getInstance();
			Member member = md.select(id);
			request.setAttribute("member", member);
		}
		
		request.setAttribute("req_board", req_board);
		return "req_board/requestView";
	}
	
	
	
	/*int num = Integer.parseInt(request.getParameter("num"));
	String pageNum = request.getParameter("pageNum");
	BoardDao bd = BoardDao.getInstance();
	bd.readcountUpdate(num);
	Board board  = bd.select(num); 

	request.setAttribute("pageNum", pageNum);
	request.setAttribute("board", board);
	return "view";
	*/
}
