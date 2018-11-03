package pandora.service.meminfo;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pandora.service.CommandProcess;

public class MyPage implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		// 로그인된 아이디를 이용하여 member로부터 객체를 생성하여 정보를 뿌린다
		return "mem_info/myPage";
	}

}
