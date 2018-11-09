package pandora.service.file;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pandora.dao.FileUpDao;
import pandora.dao.MemberDao;
import pandora.model.FileUp;
import pandora.model.Member;
import pandora.service.CommandProcess;

public class FileSelect implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		// file num 으로부터 업로드 파일 객체 데이터 베이스 연동해서 가져옴
		// 가능하다면 새창을 띄워서 다운로드 가능하게 했으면 좋겠다
		// String id = (String)request.getSession().getAttribute("id");
		String id = request.getParameter("id");
		int file_num = Integer.parseInt(request.getParameter("file_num"));
		FileUpDao fd = FileUpDao.getInstance();
		FileUp fileup = fd.select(file_num);
		MemberDao	md = MemberDao.getInstance();
		Member member = md.select(id);
		
		request.setAttribute("file_num", file_num);
		request.setAttribute("fileup", fileup);
		request.setAttribute("member", member);
		
		return "fileSelect";
	}

}
