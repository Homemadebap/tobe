package kr.co.tobe.user.common;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.co.tobe.vo.MemberVO;

@Controller
public class UserCommonController {

	@Autowired
	UserCommonService service;
	
	@GetMapping("/user/common/userIndex.do")
	public String index() {
		return "user/common/userIndex"; 
	}
	
	
	
	@GetMapping("/user/course/userCourseIndex.do")
	public String userCourseIndex() {
		return "user/course/userCourseIndex";
	}
	
	@GetMapping("/user/common/userTestSchedule.do")
	public String userTestSchedule() {
		return "user/common/userTestSchedule";
	}
	
	@GetMapping("/user/review/userReviewIndex.do")
	public String userReviewIndex() {
		return "user/review/userReviewIndex";
	}
	
	@GetMapping("/user/customer/userCustomer.do")
	public String userCustomer() {
		return "user/customer/userCustomer";
	}
	
	@GetMapping("/user/member/userMyPageMain.do")
	public String userMyPageMain(HttpSession sess, Model model) {
		MemberVO user = (MemberVO)sess.getAttribute("loginInfo");
		if(user == null) {
			return "redirect:/user/common/userIndex.do";
		}
		model.addAttribute("user", user);
		return "user/member/userMyPageMain";
	}
	
	@GetMapping("/user/common/userBasket.do")
	public String userBasket() {
		return "user/common/userBasket";
	}
	
	@GetMapping("/user/common/userCompareCourse.do")
	public String userCompareCourse() {
		return "user/common/userCompareCourse";
	}
	
	@GetMapping("/user/member/userQuit.do")
	public String quit(HttpSession sess, Model model) {
		MemberVO user = (MemberVO)sess.getAttribute("loginInfo");
		if(user == null) {
			return "redirect:/user/common/userIndex.do";
		}
		model.addAttribute("user", user);
		return "user/member/userQuit";
	}
	
	
}
