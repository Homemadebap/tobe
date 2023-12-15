package kr.co.tobe.chiefAdmin.customer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ChiefCustomerController {

	@Autowired
	ChiefCustomerService service;
	
	@GetMapping ("/chiefAdmin/customer/chiefCustomerIndex.do")
	public String index() {
	return "chiefAdmin/customer/chiefCustomerIndex";
	}
}
