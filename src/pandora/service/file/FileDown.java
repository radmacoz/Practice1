package pandora.service.file;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pandora.dao.DownloadDao;
import pandora.model.Download;
import pandora.service.CommandProcess;

public class FileDown implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		// 파일다운이 제대로 되는지(검색및 다운수를 늘려줌) 알려주는 변수 생성해서 보냄
		int file_num = Integer.parseInt(request.getParameter("file_num"));
		String mem_id = request.getParameter("mem_id");
		
		Download download = new Download();
		DownloadDao dd = DownloadDao.getInstance();
		download.setFile_num(file_num);
		download.setMem_id(mem_id);
		int result = dd.insert(download);
		
		request.setAttribute("result", result);
		return "fileDown";
	}

}
