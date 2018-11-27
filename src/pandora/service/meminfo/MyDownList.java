package pandora.service.meminfo;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pandora.dao.ChargeDao;
import pandora.dao.DownloadDao;
import pandora.dao.MemberDao;
import pandora.model.Charge;
import pandora.model.Download;
import pandora.model.Member;
import pandora.service.CommandProcess;

public class MyDownList implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		
		String id = (String) request.getSession().getAttribute("id");
		
		int rowPerPage = 12;
		int pagePerBlock = 5;
		String pageNum = request.getParameter("pageNum");
		if (pageNum==null || pageNum.equals("")) {
			pageNum="1";
		}
		int currentPage = Integer.parseInt(pageNum);
		int startRow = (currentPage - 1)*rowPerPage + 1;
		int endRow = startRow + rowPerPage + 1;
		
		DownloadDao dld = DownloadDao.getInstance();
		int tot = dld.total(id);
		int total = dld.total(id) - startRow+1;	
		int startPage = currentPage - (currentPage - 1)%pagePerBlock;
		int endPage = startPage + pagePerBlock -1;
		int totPage = (int)Math.ceil((double)tot/rowPerPage);
		if (endPage > totPage) endPage = totPage;
		
		MemberDao md = MemberDao.getInstance();
		Member member = md.select(id);
		request.setAttribute("member", member);
		
		DownloadDao dd = DownloadDao.getInstance();
		List<Download> list = dd.myDownList(startRow, endRow, id);
		
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
		
		return "mem_info/myDownList";
	}

}
