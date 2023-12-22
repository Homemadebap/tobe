package kr.co.tobe.admin.customer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import kr.co.tobe.vo.CqnaVO;
import kr.co.tobe.vo.MemberVO;

@Controller
public class AdCustomerController {

	@Autowired
	AdCustomerService service;
	
	@GetMapping("/tobe/admin/customer/reply.do")
	public String insert(Model model, int no) {
		int r = service.cQnaReply(no);//, request);
		if (r > 0) {
			model.addAttribute("cmd", "move");
			model.addAttribute("msg", "정상적으로 저장되었습니다.");
			model.addAttribute("url", "/tobe/user/course/userCourseDetail.do"); //돌아갈 페이지 박모훈 완성 후 ..
		} else {
			model.addAttribute("cmd", "back");
			model.addAttribute("msg", "등록 오류");
		}
		return "user/common/userAlert";
	}

}
