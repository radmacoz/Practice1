package pandora.service.file;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pandora.dao.FileUpDao;
import pandora.model.FileUp;
import pandora.service.CommandProcess;

public class FileList implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		FileUpDao fd = FileUpDao.getInstance();
		List<FileUp> list = fd.list();
		request.setAttribute("list", list);
/*		System.out.println("갯수 : "+list.size());  에러 검출을 위한 출력 메시지*/
		return "fileList";
	}

}
