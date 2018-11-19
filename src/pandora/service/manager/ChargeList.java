package pandora.service.manager;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pandora.dao.ChargeDao;
import pandora.model.Charge;
import pandora.service.CommandProcess;

public class ChargeList implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		
		ChargeDao cd = ChargeDao.getInstance();
		List<Charge> list = cd.chargeList();
		
		request.setAttribute("list", list);
		
		return "sales/chargeList";
	}

}
