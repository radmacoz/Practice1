package pandora.service.manager;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pandora.dao.MemberDao;
import pandora.model.Member;
import pandora.service.CommandProcess;

public class VipAccept implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		
		String id = request.getParameter("mem_id");
		MemberDao md = MemberDao.getInstance();
		Member member = md.select(id);
		int result = md.vipAccept(member);
		
		List<Member> list = md.list2(); 
		request.setAttribute("list", list);
		return "super/memberVipList";
	}

}
