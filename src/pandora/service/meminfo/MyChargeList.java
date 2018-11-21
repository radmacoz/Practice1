package pandora.service.meminfo;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pandora.dao.ChargeDao;
import pandora.dao.MemberDao;
import pandora.model.Charge;
import pandora.model.Member;
import pandora.service.CommandProcess;

public class MyChargeList implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		
		String id = (String) request.getSession().getAttribute("id");
		
		ChargeDao cd = ChargeDao.getInstance();
		List<Charge> list = cd.myChargeList(id);
		request.setAttribute("list", list);

		MemberDao md = MemberDao.getInstance();
		Member member = md.select(id);
		request.setAttribute("member", member);
		
		return "mem_info/myChargeList";
	}

}
