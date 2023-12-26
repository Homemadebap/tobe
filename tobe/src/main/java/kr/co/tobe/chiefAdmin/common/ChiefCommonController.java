package kr.co.tobe.chiefAdmin.common;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.co.tobe.vo.AdminVO;

@Controller
public class ChiefCommonController {

	@Autowired
	ChiefCommonService service;
	
	@GetMapping ("/chiefAdmin/common/chiefIndex.do")

	public String index(HttpSession sess, Model model) {
		AdminVO admin = (AdminVO)sess.getAttribute("adLoginInfo"); 
		return "chiefAdmin/common/chiefIndex";
	}
	
	@GetMapping ("/chiefAdmin/sales/chiefSalesIndex.do")
	public String chiefSalesIndex(Model model) {
//		model.addAttribute("pay_chargeTotal", service.pay_chargeTotal());
		return "chiefAdmin/sales/chiefSalesIndex";
	}
	
}
