package pandora.service.meminfo;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pandora.dao.MemberDao;
import pandora.model.Member;
import pandora.service.CommandProcess;

public class UpdateForm implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		String id = (String)request.getSession().getAttribute("id");
		MemberDao md = MemberDao.getInstance();
		Member member = md.select(id);
		request.setAttribute("member", member);
		return "mem_info/updateForm";
	}

}
