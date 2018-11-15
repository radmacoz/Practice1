package pandora.service.file;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pandora.service.CommandProcess;

public class FileReDown implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		// 다시받기는 download 내역을 추가할 필요도, 포인트를 변동시킬 필요도 없음
		return "fileReDown";
	}

}
