package pandora.service.manager;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import pandora.service.CommandProcess;

public class ManagerLogoutAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		session.invalidate();
		return "logon/managerLogout";
	}

}
