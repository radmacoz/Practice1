package pandora.service.file;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pandora.dao.DownloadDao;
import pandora.dao.FileUpDao;
import pandora.dao.MemberDao;
import pandora.model.Download;
import pandora.model.FileUp;
import pandora.model.Member;
import pandora.service.CommandProcess;

public class FileDown implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		// 파일다운이 제대로 되는지(검색및 다운수를 늘려줌) 알려주는 변수 생성해서 보냄
		int file_num = Integer.parseInt(request.getParameter("file_num"));
		String mem_id = request.getParameter("mem_id");	// 구매자 아이디
		
		Download download = new Download();
		DownloadDao dd = DownloadDao.getInstance();
		download.setFile_num(file_num);
		download.setDown_id(mem_id);
		int result = dd.insert(download);
		
		MemberDao md = MemberDao.getInstance();
		Member member = md.select(mem_id);
		
		// 파일 다운로드시 구매자 포인트 차감 구현
		FileUpDao fd = FileUpDao.getInstance();
		FileUp fileup = fd.select(file_num);
		int down_point = fileup.getFile_point();
/*		int charge_point = Integer.parseInt(request.getParameter("charge"));*/
		member.setMem_point(down_point);
		// member객체 포인트 값을 기존에 갖고 있던 값이 아닌 다운로드 받을 파일의 포인트로 바꾸어(데이터에는 반영이 안됨 지니기만 함)
		// 별도의 변수 생성없이 가지고 가서 sql문에서 반영시키도록 한다
		int result2 = md.down(member);
		
		// 파일 다운로드시 판매자 포인트 상승 구현
		String mem_id2 = fileup.getMem_id();
		Member member2 = md.select(mem_id2);
		int up_point = down_point/2;		// 판매 수수료 50%
		member2.setMem_point(up_point);
		int result3 = md.upload(member2);

		request.setAttribute("result", result);
		request.setAttribute("result2", result2);
		request.setAttribute("result3", result3);
		
		return "fileDown";
	}

}
