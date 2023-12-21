package kr.co.tobe.chiefAdmin.sales;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.tobe.vo.AdminVO;

@Controller
public class ChiefSalesController {

	@Autowired
	ChiefSalesService service;
	
	//@ResponseBody
	@GetMapping("/chiefAdmin/sales/payList.do")
	public String payList(@RequestParam Map<String, Object> condition, Model model, HttpSession sess ) {
		AdminVO admin = (AdminVO)sess.getAttribute("loginInfo");
		
		model.addAttribute("payList", service.payList(condition));
		model.addAttribute("payTotal", service.pay_chageTotal(condition));
		return "chiefAdmin/sales/payList";
	}
	
}
