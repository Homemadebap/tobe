package kr.co.tobe.user.pay;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class UserPayController {

	@Autowired
	UserPayService service;
	
	@GetMapping("/user/pay/userPayCompleteDetail.do")
	public String userMyPageMain(@RequestParam("detail_no") int detail_no, Model model) {
		
		model.addAttribute("pdvo", service.payDetailIndex(detail_no));

		
		return "user/pay/userPayCompleteDetail";
	}
	
	@GetMapping ("/user/pay/userPayDetail.do")
	public String userPayDetail() {
		return "user/pay/userPayDetail";
	}
}
