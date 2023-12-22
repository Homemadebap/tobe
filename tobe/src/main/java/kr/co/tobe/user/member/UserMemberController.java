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
	
	@GetMapping("/user/member/userLogin.do")
	public String userLogin() {
		return "user/member/userLogin";
	}
	
	@GetMapping("/user/member/userJoinForm.do")
	public String userJoinForm() {
		return "user/member/userJoinForm";
	}
	 
//	아이디 비밀번호 찾기
	//@PostMapping("user/member/userFindMember.do")
	@GetMapping("user/member/userFindMember.do")
	public String findMember(MemberVO vo, HttpSession sess, Model model) {
		return "user/member/userFindMember";
	}
	@PostMapping("user/member/userFindMember.do")
	public String userFindMember(MemberVO vo, HttpSession sess, Model model) {
		MemberVO findId = service.findId(vo);
		if (findId == null) {
			model.addAttribute("msg", "조회 결과가 없습니다.");
			model.addAttribute("cmd", "back");
			return "user/common/userAlert";
		} else { 
			sess.setAttribute("checkInfo", findId);
			return "redirect:user/member/userFindMember2";
		}
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
	
	@PostMapping("/user/member/userModifyForm.do")
	public String userModifyForm(HttpSession sess, MemberVO mvo, Model model) {
		MemberVO user = (MemberVO)sess.getAttribute("loginInfo");
		MemberVO pwdCheck = service.pwdCheck(mvo);
		if(user == null) {
			return "redirect:/user/common/userIndex.do";
		}
		
		if (pwdCheck == null) { // 비밀번호 확인 실패
			model.addAttribute("msg", "비밀번호가 올바르지 않습니다.");
			model.addAttribute("cmd", "back");
			return "user/common/userAlert";
		} else { // 비밀번호확인 성공
			model.addAttribute("user", user);
			return "user/member/userModifyForm";
		}
	}
//	@GetMapping("/user/member/userModifyForm.do")
//	public String edit (HttpSession sess, Model model) {
//		MemberVO mv = (MemberVO)sess.getAttribute("loginInfo");
//		model.addAttribute("vo", service.detail(mv));
//		return "user/member/userModifyForm";
//	}
	
	@PostMapping("/user/member/userQuitForm.do")
	public String quitForm(HttpSession sess, MemberVO mvo, Model model) {
		MemberVO user = (MemberVO)sess.getAttribute("loginInfo");
		MemberVO pwdCheck = service.pwdCheck(mvo);
		if(user == null) {
			return "redirect:/user/common/userIndex.do";
		}
		
		if (pwdCheck == null) { // 비밀번호 확인 실패
			model.addAttribute("msg", "비밀번호가 올바르지 않습니다.");
			model.addAttribute("cmd", "back");
			return "user/common/userAlert";
		} else { // 비밀번호확인 성공
			model.addAttribute("user", user);
			return "user/member/userQuitForm";
		}
	}

	@PostMapping("/user/member/userModify.do")
	public String userModify(MemberVO vo, Model model) {
		int r = service.update(vo);
		String msg = "";
		String url = "userModify.do";
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
	public String quit(MemberVO mvo, Model model, HttpSession sess) {
		mvo = (MemberVO)sess.getAttribute("loginInfo");
		System.out.println(mvo.getMember_no());
		int r = service.quit(mvo);
		String msg = "";
		String url = "/tobe/user/common/userIndex.do";
		if (r > 0) {
			sess.invalidate();
			msg = "회원탈퇴가 완료되었습니다.";
		} else {
			msg = "실행 오류. 회원탈퇴가 정상적으로 이루어지지 않았습니다.";
		}
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		model.addAttribute("cmd","move");
		return "user/common/userAlert";
	}
	

}
