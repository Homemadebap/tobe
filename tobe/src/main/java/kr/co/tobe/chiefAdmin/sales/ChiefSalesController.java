package kr.co.tobe.chiefAdmin.sales;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ChiefSalesController {

	@Autowired
	ChiefSalesService service;

	@GetMapping("/chiefAdmin/sales/payList.do")
	public String payList(@RequestParam Map<String, Object> condition, Model model) {
		model.addAttribute("payList", service.payList(condition));
		model.addAttribute("conTotal", service.conTotal(condition));
		model.addAttribute("condition", condition);
		
		return "chiefAdmin/sales/chiefSalesIndex";
	}
	
}
