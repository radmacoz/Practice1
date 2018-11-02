package pandora.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MainAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		
		String category = request.getParameter("category");
		request.setAttribute("category", category);
		return "pandoraMain";
	}

}
