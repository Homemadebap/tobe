package kr.co.tobe.chiefAdmin.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import kr.co.tobe.vo.MemberVO;

@Controller
public class ChiefMemberController {

	@Autowired
	ChiefMemberService service;
	
	@GetMapping ("/chiefAdmin/member/chiefMemberIndex.do")
	public String cheifMemberIndex(Model model, MemberVO vo) {
		model.addAttribute("map", service.cmemberList(vo));		
		return "chiefAdmin/member/chiefMemberIndex"; 
	}
	
	@PostMapping ("/chiefAdmin/member/chiefMemberIndex.do")
	public String cheifMemberindex(MemberVO vo, Model model) {
		int r = service.update(vo);
		String msg="";
		String url="chiefMemberIndex.do";
		if (r > 0) {
			msg = "정상적으로 수정되었습니다.";
		} else {
			msg = "수정사항이 없습니다";
		}
		
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		model.addAttribute("cmd","move");
		return "chiefAdmin/common/chiefAlert";
	}
}
	

