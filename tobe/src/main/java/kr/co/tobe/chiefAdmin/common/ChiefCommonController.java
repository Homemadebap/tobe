package kr.co.tobe.chiefAdmin.common;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ChiefCommonController {

	@Autowired
	ChiefCommonService service;
	
	@GetMapping ("/chiefAdmin/common/chiefIndex.do")
	public String index(Model model) {
		return "chiefAdmin/common/chiefIndex";
	}
	
	@GetMapping ("/chiefAdmin/sales/chiefSalesIndex.do")
	public String chiefSalesIndex(Model model) {
		model.addAttribute("pay_chargeTotal", service.pay_chargeTotal());
		return "chiefAdmin/sales/chiefSalesIndex";
	}
	
}
