package pandora.service.file;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import pandora.dao.FileUpDao;
import pandora.dao.MemberDao;
import pandora.model.FileUp;
import pandora.model.Member;
import pandora.service.CommandProcess;

public class FileUpAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		// 업로드 데이터를 받아서 sql 써서 인서트 시키고 전달
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {	}
		

		if((String)request.getSession().getAttribute("id")!=null) {
			String id = (String)request.getSession().getAttribute("id");
			MemberDao md = MemberDao.getInstance();
			Member member = md.select(id);
			request.setAttribute("member", member);
		}
		
		String realFolder = "";
		int maxsize = 1024*1024*50;	// 50MB
		String encType = "utf-8"; //엔코딩타입
		MultipartRequest uploadReq = null;
		String saveFolder = "/fileSave";//파일이 업로드되는 폴더를 지정한다.
		realFolder = request.getServletContext().getRealPath(saveFolder);
				
		try {
			uploadReq = new MultipartRequest(request, realFolder, maxsize, encType, new DefaultFileRenamePolicy());
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		String file_name = uploadReq.getParameter("file_name");
		String category = uploadReq.getParameter("category");
		String mem_id = uploadReq.getParameter("mem_id");
		String file_desc = uploadReq.getParameter("file_desc");
		int file_point = Integer.parseInt(uploadReq.getParameter("file_point"));
		
		String file_upload = uploadReq.getFilesystemName("file1");
		String file_shot = uploadReq.getFilesystemName("file2");
		/*String original = uploadReq.getOriginalFileName("file");*/
		File filedata = new File(realFolder+"/"+file_upload);
		int file_size = (int)filedata.length();
		
		FileUp file = new FileUp();
		file.setFile_name(file_name);
		file.setCategory(category);
		file.setMem_id(mem_id);
		file.setFile_desc(file_desc);
		file.setFile_shot(file_shot);
		file.setFile_upload(file_upload);
		file.setFile_size(file_size);
		file.setFile_point(file_point);
		FileUpDao fd = FileUpDao.getInstance();
		int result = fd.insert(file);
		request.setAttribute("result", result);
		
		
		return "fileUpload";
		
		/*
		수정전 백업
		
		String file_name = request.getParameter("file_name");
		String category = request.getParameter("category");
		String mem_id = request.getParameter("mem_id");
		String file_desc = request.getParameter("file_desc");
		// 스샷 주소
		String file_shot = request.getParameter("file_shot");
		// 업로드 주소
		String file_upload = request.getParameter("file_upload");
		int file_size = Integer.parseInt(request.getParameter("file_size"));
		int file_point = Integer.parseInt(request.getParameter("file_point"));
		
		FileUp file = new FileUp();
		file.setFile_name(file_name);
		file.setCategory(category);
		file.setMem_id(mem_id);
		file.setFile_desc(file_desc);
		file.setFile_shot(file_shot);
		file.setFile_upload(file_upload);
		file.setFile_size(file_size);
		file.setFile_point(file_point);
		FileUpDao fd = FileUpDao.getInstance();
		int result = fd.insert(file);
		request.setAttribute("result", result);
		
		return "fileUpload";
*/	}

}
