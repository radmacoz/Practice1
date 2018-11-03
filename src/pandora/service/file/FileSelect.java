package pandora.service.file;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pandora.service.CommandProcess;

public class FileSelect implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		// file num 으로부터 업로드 파일 객체 데이터 베이스 연동해서 가져와야 함
		// 가능하다면 새창을 띄워서 다운로드 가능하게 했으면 좋겠다
		return "fileSelect";
	}

}
