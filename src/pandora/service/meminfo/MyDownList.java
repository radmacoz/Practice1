package pandora.service.meminfo;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pandora.dao.DownloadDao;
import pandora.dao.MemberDao;
import pandora.model.Download;
import pandora.model.Member;
import pandora.service.CommandProcess;

public class MyDownList implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		
		String id = (String) request.getSession().getAttribute("id");
		
		MemberDao md = MemberDao.getInstance();
		Member member = md.select(id);
		request.setAttribute("member", member);
		
		DownloadDao dd = DownloadDao.getInstance();
		List<Download> list = dd.myDownList(id);
		request.setAttribute("list", list);
		
		return "mem_info/myDownList";
	}

}
