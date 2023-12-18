package kr.co.tobe.admin.common;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdCommonController {
	
	@Autowired
	AdCommonService service;
	
	@GetMapping("/admin/common/adIndex.do")
	public String adIndex() {
		return "admin/common/adIndex"; 
	}
	
	@GetMapping("/admin/course/adCourseIndex.do")
	public String adCourseIndex() {
		return "admin/course/adCourseIndex"; 
	}
	
	@GetMapping("/admin/pay/adPayIndex.do")
	public String adPayIndex() {
		return "admin/pay/adPayIndex"; 
	}
	
	
	@GetMapping("/admin/customer/adQnaIndex.do")
	public String adQnaIndex() {
		return "admin/customer/adQnaIndex"; 
	}
}
