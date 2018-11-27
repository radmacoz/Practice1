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

		// paging 을 위한 변수
		int rowPerPage = 15;
		int pagePerBlock = 10;
		String pageNum = request.getParameter("pageNum");
		if (pageNum==null || pageNum.equals("")) {
			pageNum = "1";}
		int currentPage = Integer.parseInt(pageNum);
		int startRow = (currentPage - 1)*rowPerPage + 1;
		int endRow  = startRow + rowPerPage - 1;


		// 해쉬맵을 통한 변수 전달
		HashMap<String, Object> hm = new HashMap<>();
		String category = request.getParameter("cate");
		String subject = request.getParameter("subject");
		String keyword = request.getParameter("keyword");
		hm.put("category", category);
		hm.put("subject", subject);
		hm.put("keyword", keyword);
		hm.put("startRow", startRow);
		hm.put("endRow", endRow);
		
		// 파일리스트 객체 생성
		FileUpDao fd = FileUpDao.getInstance();
		if (category == null || category == "")	{	// 검색시 카테고리가 없는 경우(전체 선택 시)
			List<FileUp> list1 = fd.listSearch1(hm);
			request.setAttribute("list", list1);
			
			int tot = fd.totalSearch(hm);
			int startPage = currentPage - (currentPage -1)% pagePerBlock;
			int endPage = startPage + pagePerBlock -1;
			int totPage = (int)Math.ceil((double)tot/rowPerPage);
			if (endPage>totPage) endPage = totPage;
			
			request.setAttribute("rowPerPage", rowPerPage);
			request.setAttribute("pagePerBlock", pagePerBlock);
			request.setAttribute("pageNum", pageNum);
			request.setAttribute("currentPage", currentPage);
			request.setAttribute("startRow", startRow);
			request.setAttribute("endRow", endRow);
			request.setAttribute("tot", tot);
			request.setAttribute("startPage", startPage);
			request.setAttribute("endPage", endPage);
			request.setAttribute("totPage", totPage);
			request.setAttribute("subject", subject);
			request.setAttribute("keyword", keyword);
			
		}	else	{	// 검색시 카테고리가 있는 경우
			List<FileUp> list2 = fd.listSearch2(hm);
			request.setAttribute("list", list2);
			
			int tot = fd.totalSearch2(hm);
			int startPage = currentPage - (currentPage -1)% pagePerBlock;
			int endPage = startPage + pagePerBlock -1;
			int totPage = (int)Math.ceil((double)tot/rowPerPage);
			if (endPage>totPage) endPage = totPage;		
			
			request.setAttribute("rowPerPage", rowPerPage);
			request.setAttribute("pagePerBlock", pagePerBlock);
			request.setAttribute("pageNum", pageNum);
			request.setAttribute("currentPage", currentPage);
			request.setAttribute("startRow", startRow);
			request.setAttribute("endRow", endRow);
			request.setAttribute("tot", tot);
			request.setAttribute("startPage", startPage);
			request.setAttribute("endPage", endPage);
			request.setAttribute("totPage", totPage);
			request.setAttribute("category", category); // category를 보내야 함
			request.setAttribute("subject", subject);
			request.setAttribute("keyword", keyword);
		}
		
		/*오류 검출을 위한 출력 메시지 코드*/
		/*System.out.println("오류 검출 해보자");
		System.out.println(hm.get("category"));
		System.out.println(hm.get("subject"));
		System.out.println(hm.get("keyword"));*/
		return "fileSearch";
	}

}
