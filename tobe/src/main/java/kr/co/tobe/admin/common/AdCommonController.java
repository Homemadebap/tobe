package kr.co.tobe.admin.common;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import kr.co.tobe.vo.AdminVO;

@Controller
public class AdCommonController {
	
	@Autowired
	AdCommonService service;
	
	@GetMapping("/admin/course/adCourseIndex.do")
	public String adCourseIndex(HttpSession sess, Model model) {
		AdminVO admin = (AdminVO)sess.getAttribute("loginInfo");
		if(admin == null) {
			return "redirect:/admin/common/adLogin.do";
		}
		
		return "admin/course/adCourseIndex"; 
	}
	
	@GetMapping("/admin/pay/adPayIndex.do")
	public String adPayIndex(HttpSession sess, Model model) {
		AdminVO admin = (AdminVO)sess.getAttribute("loginInfo");
		if(admin == null) {
			return "redirect:/admin/common/adLogin.do";
		}
		
		return "admin/pay/adPayIndex"; 
	}
	
	
	@GetMapping("/admin/customer/adQnaIndex.do")
	public String adQnaIndex(HttpSession sess, Model model) {
		AdminVO admin = (AdminVO)sess.getAttribute("loginInfo");
		if(admin == null) {
			return "redirect:/admin/common/adLogin.do";
		}
		
		return "admin/customer/adQnaIndex"; 
	}
	
	@GetMapping("/admin/course/adCourseForm.do")
	public String adCourseForm(HttpSession sess, Model model) {
		AdminVO admin = (AdminVO)sess.getAttribute("loginInfo");
		if(admin == null) {
			return "redirect:/admin/common/adLogin.do";
		}
		return "admin/course/adCourseForm"; 
	}
	
	//login
	@GetMapping("/admin/common/adLogin.do")
	public String adLogin() {
		return "admin/common/adLogin";
	}
	
	@PostMapping("/admin/common/adLogin.do")
	public String loginProcess(AdminVO vo, HttpSession sess, Model model) {
		AdminVO login = service.login(vo);
		if (login == null) { // 로그인실패
			model.addAttribute("msg", "아이디 비밀번호가 올바르지 않습니다.");
			model.addAttribute("cmd", "back");
			return "admin/common/adAlert";
		} else if(login.getAd_type()== 999){ // 총관리자로 로그인
			sess.setAttribute("loginInfo", login);
			return "redirect:/chiefAdmin/common/chiefIndex.do";
		} else if((login.getAd_type() == 1) && (login.getAd_type() == 2) && (login.getAd_type() == 3)){ // 학원관리자로 로그인
			sess.setAttribute("loginInfo", login);
			return "redirect:/admin/common/adIndex.do";
		} else {
			return "redirect:/user/common/userIndex.do";
		}
	}
	
//	@PostMapping("/admin/common/adLogin.do")
//	public String loginProcess(AdminVO vo, HttpSession sess, Model model) {
//		AdminVO login = service.login(vo);
//		if (login == null) { // 로그인실패
//			model.addAttribute("msg", "아이디 비밀번호가 올바르지 않습니다.");
//			model.addAttribute("cmd", "back");
//			return "admin/common/adAlert";
//		} else { // 로그인성공
//			sess.setAttribute("loginInfo", login);
//			return "redirect:/admin/common/adIndex.do";
//		}
//	}
	
	@GetMapping("/admin/common/adLogout.do")
	public String logout(Model model, HttpSession sess) {
		sess.invalidate();
		model.addAttribute("msg", "로그아웃되었습니다.");
		model.addAttribute("url", "/tobe/admin/common/adLogin.do");
		model.addAttribute("cmd", "move");
		return "admin/common/adAlert";
	}
	
}
