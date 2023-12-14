package kr.co.tobe.chiefAdmin.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ChiefMemberController {

	@Autowired
	ChiefMemberService service;
	
	@GetMapping ("/chiefAdmin/member/chiefMemberIndex.do")
	public String index() {
		return "chiefAdmin/member/chiefMemberIndex";
	}
}
