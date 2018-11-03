package pandora.service.manager;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pandora.service.CommandProcess;

public class SalesSum implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		// 데이터 불러와서 충전 금액 합산하여 jsp로 보내기
		return "sales/salesSum";
	}

}
