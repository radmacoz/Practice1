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
		// paging 을 위한 변수
		int rowPerPage = 15;
		int pagePerBlock = 10;
		String pageNum = request.getParameter("pageNum");
		if (pageNum==null || pageNum.equals("")) {
			pageNum = "1";}
		int currentPage = Integer.parseInt(pageNum);
		int startRow = (currentPage - 1)*rowPerPage + 1;
		int endRow  = startRow + rowPerPage - 1;
		
		// 파일리스트를 받아올 fd 생성
		FileUpDao fd = FileUpDao.getInstance();
		String category = request.getParameter("category");
		if (category == null || category == "")	{
			List<FileUp> list = fd.list(startRow, endRow);	
			
			int tot = fd.total();
			int total = fd.total() - startRow + 1;
			int startPage = currentPage - (currentPage -1)% pagePerBlock;
			int endPage = startPage + pagePerBlock -1;
			int totPage = (int)Math.ceil((double)tot/rowPerPage);
			if (endPage>totPage) endPage = totPage;
			
			request.setAttribute("list", list);
			request.setAttribute("rowPerPage", rowPerPage);
			request.setAttribute("pagePerBlock", pagePerBlock);
			request.setAttribute("pageNum", pageNum);
			request.setAttribute("currentPage", currentPage);
			request.setAttribute("startRow", startRow);
			request.setAttribute("endRow", endRow);
			request.setAttribute("tot", tot);
			request.setAttribute("total", total);
			request.setAttribute("startPage", startPage);
			request.setAttribute("endPage", endPage);
			request.setAttribute("totPage", totPage);
			
		}	else	{
			List<FileUp> list2 = fd.list2(category, startRow, endRow);
			
			int totCategory = fd.total(category);
			int totalCategory = fd.total(category) - startRow + 1;
			int startPage = currentPage - (currentPage -1)% pagePerBlock;
			int endPage = startPage + pagePerBlock -1;
			int totPage = (int)Math.ceil((double)totCategory/rowPerPage);
			if (endPage>totPage) endPage = totPage;
			
			request.setAttribute("list", list2);
			request.setAttribute("rowPerPage", rowPerPage);
			request.setAttribute("pagePerBlock", pagePerBlock);
			request.setAttribute("pageNum", pageNum);
			request.setAttribute("currentPage", currentPage);
			request.setAttribute("startRow", startRow);
			request.setAttribute("endRow", endRow);
			request.setAttribute("tot", totCategory);
			request.setAttribute("total", totalCategory);
			request.setAttribute("startPage", startPage);
			request.setAttribute("endPage", endPage);
			request.setAttribute("totPage", totPage);
			request.setAttribute("category", category);
		}
/*		System.out.println("갯수 : "+list.size());  에러 검출을 위한 출력 메시지*/
		return "fileList";
	}

}
