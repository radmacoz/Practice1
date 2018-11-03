package pandora.service.manager;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import pandora.dao.ManagerDao;
import pandora.service.CommandProcess;

public class ManagerLoginAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id");
		String passwd = request.getParameter("password");
		ManagerDao md = ManagerDao.getInstance();
		int check = md.managerCheck(id, passwd);
		if (check == 1)	{
			HttpSession session = request.getSession();
			session.setAttribute("id", id);
		}
		request.setAttribute("check", check);
		return "logon/managerLogin";
	}

}
