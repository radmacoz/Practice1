package pandora.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MainAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		
		/*String pgm = request.getParameter("pgm");
		if (pgm == null) {	pgm = "introList.jsp";	}
		if (pgm == null) {	pgm = "../uploadfile/introList.jsp";	}
		request.setAttribute("pgm", pgm);
		*/
		String category = request.getParameter("category");
		request.setAttribute("category", category);
		return "pandoraMain";
	}

}
