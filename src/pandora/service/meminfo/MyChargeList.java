package pandora.service.meminfo;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pandora.dao.ChargeDao;
import pandora.model.Charge;

import pandora.service.CommandProcess;

public class MyChargeList implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		
		String id = (String) request.getSession().getAttribute("id");
		
		ChargeDao cd = ChargeDao.getInstance();
		List<Charge> list = cd.myChargeList(id);
		request.setAttribute("list", list);
		
		return "mem_info/myChargeList";
	}

}
