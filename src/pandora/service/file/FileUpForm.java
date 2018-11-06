package pandora.service.file;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pandora.service.CommandProcess;

public class FileUpForm implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		// 로그인 정보(판매자 아이디 정보) 가지고   업로드 파일 폼 jsp로 보낸다
		return "fileUpForm";
	}

}
