package kr.co.tobe.user.pay;

import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.co.tobe.vo.MemberVO;

@Controller
public class UserPayController {

	@Autowired
	UserPayService service;
	
	@GetMapping("/user/pay/userPayCompleteDetail.do")
	public String userMyPageMain(HttpSession sess, Model model) {
		MemberVO user = (MemberVO)sess.getAttribute("loginInfo");
		if(user == null) {
			return "redirect:/user/common/userIndex.do";
		}
		
//		model.addAttribute("user", user); // 사용자 정보 넘기기
//		model.addAttribute("cci", service.currentCourseIndex(user)); // 현재수강중인강의에 들어갈 정보
//		model.addAttribute("pci", service.pastCourseIndex(user)); // 수강신청내역에 들어갈 정보
//		model.addAttribute("mcai", service.myCourseAskIndex(user)); // 나의문의에 들어갈 정보
//		model.addAttribute("ai", service.askIndex(user)); // 나의문의에 들어갈 정보
//		model.addAttribute("mri", service.myReviewIndex(user)); // 나의후기에 들어갈 정보

		
		return "user/pay/userPayCompleteDetail";
	}
	
	@GetMapping ("/user/pay/userPayDetail.do")
	public String userPayDetail() {
		return "user/pay/userPayDetail";
	}
}
