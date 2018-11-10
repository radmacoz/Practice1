package pandora.service.meminfo;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pandora.dao.MemberDao;
import pandora.model.Member;
import pandora.service.CommandProcess;

public class VipApply implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		
		MemberDao md = MemberDao.getInstance();
		String id = (String) request.getSession().getAttribute("id");	// session으로부터 id 받아오기
		Member member = md.select(id);
		int result = md.vipApp(member);
		request.setAttribute("result", result);
		
		return "mem_info/vipApply";
	}

}
