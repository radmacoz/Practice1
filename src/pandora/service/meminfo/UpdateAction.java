package pandora.service.meminfo;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pandora.dao.MemberDao;
import pandora.model.Member;
import pandora.service.CommandProcess;

public class UpdateAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {e.getMessage();}
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String tel = request.getParameter("tel");
		String birth = request.getParameter("birth");
		
		Member member = new Member();
		member.setMem_id(id);
		member.setMem_passwd(password);
		member.setMem_name(name);
		member.setMem_email(email);
		member.setMem_addr(address);
		member.setMem_tel(tel);
		member.setMem_birth(birth);
		
		MemberDao md = MemberDao.getInstance();
		int result = md.update(member);
		request.setAttribute("result", result);
		return "mem_info/update";
	}

}
