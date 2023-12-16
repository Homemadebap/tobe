package kr.co.tobe.user.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import kr.co.tobe.vo.MemberVO;

@Controller
public class UserMemberController {

	@Autowired
	private UserMemberService service;
	
	@GetMapping("/user/member/login.do")
	public String userLogin() {
		return "user/member/userLogin";
	}
	
	@GetMapping("/user/member/userJoinForm.do")
	public String userJoinForm() {
		return "user/member/userJoinForm";
	}
	
	@PostMapping("/user/member/userJoinForm.do")
//	@GetMapping("/user/member/userJoinForm.do")
	public String regist(MemberVO vo, Model model) {
		boolean r = service.regist(vo); 
		if (r) { 
			model.addAttribute("cmd", "move");
			model.addAttribute("msg", "회원가입되었습니다.");
			model.addAttribute("url", "/tobe/user/common/userIndex.do");
		} else {
			model.addAttribute("cmd", "back");
			model.addAttribute("msg", "회원가입실패");
		}
		return "user/common/userAlert";
	}
	
	@PostMapping("/user/member/userLogin.do")
	public String loginProcess(MemberVO vo, HttpSession sess, Model model) {
		MemberVO login = service.login(vo);
		if (login == null) { // 로그인실패
			model.addAttribute("msg", "아이디 비밀번호가 올바르지 않습니다.");
			model.addAttribute("cmd", "back");
			return "user/common/userAlert";
		} else { // 로그인성공
			sess.setAttribute("loginInfo", login);
			return "redirect:/user/common/userIndex.do";
		}
	}
	
	@GetMapping("/user/member/userLogout.do")
	public String logout(Model model, HttpSession sess) {
//		sess.removeAttribute("loginInfo");
		sess.invalidate();
		model.addAttribute("msg", "로그아웃되었습니다.");
		model.addAttribute("url", "/tobe/user/common/userIndex.do");
		model.addAttribute("cmd", "move");
		return "user/common/userAlert";
	}
	
	@GetMapping("/user/member/userModifyForm.do")
	public String edit(HttpSession sess, Model model) {
		MemberVO uv = (MemberVO)sess.getAttribute("loginInfo");
		model.addAttribute("vo", service.detail(uv));
		return "user/member/userModifyForm";
	}
	
	@PostMapping("/user/member/userModifyForm.do")
	public String update(MemberVO vo, Model model) {
		int r = service.update(vo);
		String msg = "";
		String url = "userModifyForm.do";
		if (r > 0) {
			msg = "정상적으로 수정되었습니다.";
		} else {
			msg = "수정 오류";
		}
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		model.addAttribute("cmd","move");
		return "user/common/userAlert";
	}
	
	@PostMapping("/user/member/userQuit.do")
	public String quit(MemberVO vo, Model model) {
		int r = service.quit(vo);
		String msg = "";
		String url = "/user/common/userIndex.do";
		if (r > 0) {
			msg = "회원탈퇴가 완료되었습니다.";
		} else {
			msg = "실행 오류";
		}
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		model.addAttribute("cmd","move");
		return "user/common/userAlert";
	}
	
//	@PostMapping("/user/member/userQuitForm.do")
//	public String quitForm(MemberVO vo, Model model) {
//		int r = service.quitForm(vo);
//		String msg = "";
//		String url = "/user/member/userQuitForm.do";
//		if (r > 0) {
//			msg = "회원탈퇴가 완료되었습니다.";
//		} else {
//			msg = "실행 오류";
//		}
//		model.addAttribute("msg",msg);
//		model.addAttribute("url",url);
//		model.addAttribute("cmd","move");
//		return "user/common/userAlert";
//	}

	
	@GetMapping("/user/member/userMyPage/currentCourseIndex.do")  // 마이페이지 - 현재 수강중인 강의 목록 뽑아오기
	public String currentCourseIndex(MemberVO mvo, HttpSession sess, Model model) {
		mvo = (MemberVO)sess.getAttribute("loginInfo");
		model.addAttribute("vo", service.currentCourseIndex(mvo));
		return "ajax로 처리할거라 어떻게 해야 하는지 생각해보기";
	}
	
	@GetMapping("/user/member/userMyPage/pastCourseIndex.do")  // 마이페이지 - 수강신청 내역 뽑아오기
	public String pastCourseIndex(MemberVO mvo, HttpSession sess, Model model) {
		mvo = (MemberVO)sess.getAttribute("loginInfo");
		model.addAttribute("vo", service.pastCourseIndex(mvo));
		return "ajax로 처리할거라 어떻게 해야 하는지 생각해보기";
	}
	
	@GetMapping("/user/member/userMyPage/myCourseAskIndex.do")  // 마이페이지 - 나의후기 내역 뽑아오기
	public String myCourseAskIndex(MemberVO mvo, HttpSession sess, Model model) {
		mvo = (MemberVO)sess.getAttribute("loginInfo");
		model.addAttribute("vo", service.myCourseAskIndex(mvo));
		return "ajax로 처리할거라 어떻게 해야 하는지 생각해보기";
	}
	
	@GetMapping("/user/member/userMyPage/myReviewIndex.do")  // 마이페이지 - 나의문의 내역 뽑아오기
	public String myReviewIndex(MemberVO mvo, HttpSession sess, Model model) {
		mvo = (MemberVO)sess.getAttribute("loginInfo");
		model.addAttribute("vo", service.myReviewIndex(mvo));
		return "ajax로 처리할거라 어떻게 해야 하는지 생각해보기";
	}
}
