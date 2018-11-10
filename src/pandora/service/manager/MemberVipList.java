package pandora.service.manager;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pandora.dao.MemberDao;
import pandora.model.Member;
import pandora.service.CommandProcess;

public class MemberVipList implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		MemberDao md = MemberDao.getInstance();
		List<Member> list = md.list2(); 
		request.setAttribute("list", list);
		
		return "super/memberVipList";
	}

}
