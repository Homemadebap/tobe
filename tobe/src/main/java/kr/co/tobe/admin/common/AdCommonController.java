package kr.co.tobe.admin.common;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdCommonController {
	
	@Autowired
	AdCommonService service;
	
	@GetMapping("/admin/common/adIndex.do")
	public String index() {
		return "admin/common/adIndex"; 
	}
	
}
