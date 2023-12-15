package kr.co.tobe.chiefAdmin.pay;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ChiefPayController {

	@Autowired
	ChiefPayService service;
	
	@GetMapping ("/chiefAdmin/pay/chiefPayIndex.do")
	public String chiefPayindex() {
	return "chiefAdmin/pay/chiefPayIndex";
	}
}
