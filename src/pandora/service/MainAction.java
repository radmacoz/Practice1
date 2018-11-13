package pandora.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pandora.dao.MemberDao;
import pandora.model.Member;

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
		
	/*	String cate = request.getParameter("cate");
		String subject = request.getParameter("subject");
		String keyword = request.getParameter("keyword");
		request.setAttribute("cate", cate);
		request.setAttribute("subject", subject);
		request.setAttribute("keyword", keyword);*/
		
		if((String)request.getSession().getAttribute("id")!=null) {
			String id = (String)request.getSession().getAttribute("id");
			MemberDao md = MemberDao.getInstance();
			Member member = md.select(id);
			request.setAttribute("member", member);
		}
		
		return "pandoraMain";
	}

}
