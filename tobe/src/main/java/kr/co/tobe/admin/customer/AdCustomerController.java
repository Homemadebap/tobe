package kr.co.tobe.admin.customer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.tobe.vo.CqnaVO;
import kr.co.tobe.vo.MemberVO;

@Controller
public class AdCustomerController {

	@Autowired
	AdCustomerService service;
	
//	@RequestMapping
	@PostMapping("/admin/customer/reply.do")
	public String insert(Model model, CqnaVO vo ) {
		System.out.println("등러왔다ㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏ");
		int r = service.cQnaReply(vo);//, request);
		if (r > 0) {
			model.addAttribute("cmd", "move");
			model.addAttribute("msg", "정상적으로 저장되었습니다.");
			model.addAttribute("url", "/tobe/admin/customer/adQnaIndex.do"); //돌아갈 페이지 박모훈 완성 후 ..
		} else {
			model.addAttribute("cmd", "back");
			model.addAttribute("msg", "등록 오류");
		}
		return "admin/common/adAlert";
	}
	
	@PostMapping("/admin/customer/edit.do")
	public String edit(Model model, CqnaVO vo ) {
		System.out.println("등러왔다ㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏ");
		int r = service.cQnaReply(vo);//, request);
		if (r > 0) {
			model.addAttribute("cmd", "move");
			model.addAttribute("msg", "정상적으로 저장되었습니다.");
			model.addAttribute("url", "/tobe/admin/customer/adQnaIndex.do"); //돌아갈 페이지 박모훈 완성 후 ..
		} else {
			model.addAttribute("cmd", "back");
			model.addAttribute("msg", "등록 오류");
		}
		return "admin/common/adAlert";
	}


}
