package pandora.service.logon;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pandora.dao.MemberDao;
import pandora.model.Member;
import pandora.service.CommandProcess;

public class IdChk implements CommandProcess {

	public String requestPro(HttpServletRequest request, HttpServletResponse response) {

		String id = request.getParameter("id");
		MemberDao md = MemberDao.getInstance();
		int result = 0;
		Member member = md.select(id);
		if(member != null) result = 1;
		request.setAttribute("result", result);
		request.setAttribute("id", id);
		return "idChk";
	}

}
