package pandora.service.file;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pandora.dao.FileUpDao;
import pandora.model.FileUp;
import pandora.service.CommandProcess;

public class FileUpAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		// 업로드 데이터를 받아서 sql 써서 인서트 시키고 전달
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {	}
		String file_name = request.getParameter("file_name");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
		String address = request.getParameter("address");
		FileUp file = new FileUp();
		file.setMem_id(file_name);
		FileUpDao fd = FileUpDao.getInstance();
		int result = fd.insert(file);
		request.setAttribute("result", result);
		
		
		return "fileUpload";
	}

}
