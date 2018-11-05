package pandora.service.logon;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import pandora.dao.MemberDao;
import pandora.model.Member;
import pandora.service.CommandProcess;

public class LogonAction implements CommandProcess {
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		MemberDao md = MemberDao.getInstance();
		Member member  = md.select(id);
		int result = 0;
		if (member == null || member.getMem_del().equals("y")) {
			result = -1;
		} else {
			if (member.getMem_passwd().equals(password)) {
				HttpSession session = request.getSession();
				session.setAttribute("id", id);
				result = 1;
			} else result = 0;
		}
		request.setAttribute("result", result);
		request.setAttribute("id", id);
		return "logon";
	}
}
