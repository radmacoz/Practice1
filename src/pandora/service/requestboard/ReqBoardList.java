package pandora.service.requestboard;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pandora.dao.MemberDao;
import pandora.dao.Req_BoardDao;
import pandora.model.Member;
import pandora.model.Req_Board;
import pandora.service.CommandProcess;

public class ReqBoardList implements CommandProcess {

	@Override
		public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		
		if((String)request.getSession().getAttribute("id")!=null) {
			String id = (String)request.getSession().getAttribute("id");
			MemberDao md = MemberDao.getInstance();
			Member member = md.select(id);
			request.setAttribute("member", member);
		}
				
			Req_BoardDao rb = Req_BoardDao.getInstance();
			List<Req_Board> list = rb.list();
			request.setAttribute("list", list);
		return "req_board/reqBoardList";
	}

}
