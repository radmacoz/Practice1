package pandora.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pandora.dao.FileUpDao;
import pandora.dao.MemberDao;
import pandora.model.FileUp;
import pandora.model.Member;

public class MainTopAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		
		if((String)request.getSession().getAttribute("id")!=null) {
			String id = (String)request.getSession().getAttribute("id");
			MemberDao md = MemberDao.getInstance();
			Member member = md.select(id);
			request.setAttribute("member", member);
		}
		
		// 파일리스트를 받아올 fd 생성
		FileUpDao fd = FileUpDao.getInstance();
		List<FileUp> list6 = fd.list6();	
		
		request.setAttribute("list6", list6);
			
		return "mainTop";
	}

}
