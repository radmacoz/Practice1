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

		int rowPerPage = 10;
		int pagePerBlock = 10;
		String pageNum = request.getParameter("pageNum");
		if (pageNum==null || pageNum.equals("")) {
			pageNum="1";
		}
		int currentPage = Integer.parseInt(pageNum);
		int startRow = (currentPage - 1)*rowPerPage + 1;
		int endRow = startRow + rowPerPage + 1;
		Req_BoardDao rb = Req_BoardDao.getInstance();
		List<Req_Board> list = rb.list(startRow, endRow);
		int tot = rb.total();
		int total = rb.total() - startRow+1;	
		int startPage = currentPage - (currentPage - 1)%pagePerBlock;
		int endPage = startPage + pagePerBlock -1;
		int totPage = (int)Math.ceil((double)tot/rowPerPage);
		if (endPage > totPage) endPage = totPage;

		request.setAttribute("list", list);
		request.setAttribute("rowPerPage",rowPerPage );
		request.setAttribute("pagePerBlock",pagePerBlock );
		request.setAttribute("pageNum",pageNum );
		request.setAttribute("currentPage",currentPage );
		request.setAttribute("startRow",startRow );
		request.setAttribute("endRow",endRow );
		request.setAttribute("tot",tot );
		request.setAttribute("total",total );
		request.setAttribute("startPage",startPage );
		request.setAttribute("endPage",endPage );
		request.setAttribute("totPage",totPage );
		return "req_board/reqBoardList";
	}

}
