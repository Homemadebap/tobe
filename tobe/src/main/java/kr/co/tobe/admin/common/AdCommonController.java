package kr.co.tobe.admin.common;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import kr.co.tobe.vo.AdminVO;
import kr.co.tobe.vo.MemberVO;

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
	
	@GetMapping("/admin/course/adCourseForm.do")
	public String adCourseForm() {
		return "admin/course/adCourseForm"; 
	}
	
	//login
	@GetMapping("/admin/common/login.do")
	public String adLogin() {
		return "admin/common/adLogin";
	}
	@PostMapping("/admin/common/adLogin.do")
	public String loginProcess(AdminVO vo, HttpSession sess, Model model) {
		AdminVO login = service.login(vo);
		if (login == null) { // 로그인실패
			model.addAttribute("msg", "아이디 비밀번호가 올바르지 않습니다.");
			model.addAttribute("cmd", "back");
			return "admin/common/userAlert";
		} else { // 로그인성공
			sess.setAttribute("loginInfo", login);
			return "redirect:/admin/common/adIndex.do";
		}
	}
	
}
