package pandora.service.file;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pandora.dao.FileUpDao;
import pandora.dao.MemberDao;
import pandora.model.FileUp;
import pandora.model.Member;
import pandora.service.CommandProcess;

public class FileReSelect implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id");
		int file_num = Integer.parseInt(request.getParameter("file_num"));
		FileUpDao fd = FileUpDao.getInstance();
		FileUp fileup = fd.select(file_num);
		MemberDao	md = MemberDao.getInstance();
		Member member = md.select(id);
		
		request.setAttribute("file_num", file_num);
		request.setAttribute("fileup", fileup);
		request.setAttribute("member", member);
		return "fileReSelect";
	}

}
