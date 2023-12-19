package kr.co.tobe.admin.customer;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.co.tobe.vo.AdminVO;
import kr.co.tobe.vo.MemberVO;

@Controller
public class AdCustomerController {

	@Autowired
	AdCustomerService service;
	
	@GetMapping("/admin/common/adIndex.do")
	public String adIndex(HttpSession sess, Model model) {
		AdminVO admin = (AdminVO)sess.getAttribute("loginInfo");
//		if(admin == null) {
//			return "redirect:/user/member/userLogin.do";
//		}
		
		model.addAttribute("admin", admin);
//		model.addAttribute("", service.)
		
		
		
		return "admin/common/adIndex"; 
		
	}

}
