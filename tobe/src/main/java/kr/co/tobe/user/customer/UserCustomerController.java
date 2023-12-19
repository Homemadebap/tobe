package kr.co.tobe.user.customer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserCustomerController {

	@Autowired
	private UserCustomerService service;
	
	@GetMapping("/user/customer/userQna.do")
	public String userQna() {
		return "user/customer/userQna";
	}
	
	@GetMapping("/user/customer/userFaq.do")
	public String userFaq() {
		return "user/customer/userFaq";
	}
	
	@GetMapping("/user/customer/userAskForm.do")
	public String userAskForm() {
		return "user/customer/userAskForm";
	}
	
}
