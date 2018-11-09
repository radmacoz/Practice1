package pandora.service.file;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pandora.dao.FileUpDao;
import pandora.model.FileUp;
import pandora.service.CommandProcess;

public class FileSearch implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		
		// 검색어가 3개이므로 해쉬맵을 걸어야 함
		HashMap<String, Object> hm = new HashMap<>();
		String category = request.getParameter("cate");
		String subject = request.getParameter("subject");
		String keyword = request.getParameter("keyword");
		hm.put("category", category);
		hm.put("subject", subject);
		hm.put("keyword", keyword);
		
		FileUpDao fd = FileUpDao.getInstance();
		if (category == null || category == "")	{
			List<FileUp> list1 = fd.listSearch1(hm);
			request.setAttribute("list", list1);
		}	else	{
			List<FileUp> list2 = fd.listSearch2(hm);
			request.setAttribute("list", list2);
		}
		
		
		/*오류 검출을 위한 코드*/
		System.out.println("오류 검출 해보자");
		System.out.println(hm.get("category"));
		System.out.println(hm.get("subject"));
		System.out.println(hm.get("keyword"));
		return "fileSearch";
	}

}
