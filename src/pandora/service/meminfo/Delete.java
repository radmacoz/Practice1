package pandora.service.meminfo;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import pandora.dao.MemberDao;
import pandora.service.CommandProcess;

public class Delete implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();	// 탈퇴시킨놈이 깽판못치게끔 invalidate() 시킨다
		String id = (String) request.getSession().getAttribute("id");
		MemberDao md = MemberDao.getInstance();
		int result = md.delete(id);
		if(result>0)
			session.invalidate();
		request.setAttribute("result", result);
		return "mem_info/delete";
	}

}
