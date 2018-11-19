package pandora.service;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pandora.dao.ChargeDao;
import pandora.dao.MemberDao;
import pandora.model.Charge;
import pandora.model.Member;

public class ChargeAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		try{request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {	}
		if((String)request.getSession().getAttribute("id")!=null) {
			String id = (String)request.getSession().getAttribute("id");
		
			/*String id = request.getParameter("id");*/
			
			int charge_point = Integer.parseInt(request.getParameter("charge"));
			String acc_number = request.getParameter("acc_number");
			
			Charge charge = new Charge();
			
			
			charge.setMem_id(id);
			charge.setCharge_point(charge_point);
			charge.setCharge_account(acc_number);
			
			ChargeDao cd = ChargeDao.getInstance();
			int result1 = cd.insert(charge);
			request.setAttribute("result1", result1);
			
			Member member = new Member();
			
			member.setMem_id(id);
			member.setMem_point(charge_point);
			
			MemberDao md = MemberDao.getInstance();
			int result2 = md.charge(member);
			request.setAttribute("result2", result2);
		}
		return "charge";
	}

}
