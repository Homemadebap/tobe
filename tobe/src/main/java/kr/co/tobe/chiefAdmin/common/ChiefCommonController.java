package kr.co.tobe.chiefAdmin.common;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ChiefCommonController {

	@Autowired
	ChiefCommonService service;
	
	@GetMapping ("/chiefAdmin/common/chiefIndex.do")
	public String index() {
	return "chiefAdmin/common/chiefIndex";
}
}
