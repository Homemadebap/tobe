package kr.co.tobe.user.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.tobe.util.SendMail;
import kr.co.tobe.vo.MemberVO;

@Controller
public class UserMemberController {

	@Autowired
	private UserMemberService service;
	
	@Autowired
	private SendMail sendEmail;
	
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
	@GetMapping("/user/member/userFindMember.do")
	public String findMember() {
		return "user/member/userFindMember";
	}
	
	@PostMapping("/user/member/userFindMember.do")
	public String userFindMember(MemberVO vo, HttpSession sess, Model model) {
		MemberVO findId = service.findId(vo);
		if (findId == null) {
			model.addAttribute("msg", "등록된 정보가 없습니다.");
			model.addAttribute("cmd", "back");
			return "user/common/userAlert";
		} else { 
			model.addAttribute("user", findId);
			return "user/member/userFindMemberNext";
		}
		
	}
	
	@GetMapping("/user/member/userFindMemberNext.do")
	public String findMemberNext() {
		return "user/member/userFindMemberNext";
	}
	
	@PostMapping("/user/member/userFindPwdNext.do")
	public String userFindPwd(MemberVO vo, HttpSession sess, Model model) {
		MemberVO findPwd = service.findPwd(vo); 
			model.addAttribute("user", findPwd);
			sendEmail.init();
//			return "user/member/userFindPwdNext";
			if (findPwd == null) {
				model.addAttribute("msg", "등록된 정보가 없습니다.");
				model.addAttribute("cmd", "back");
				return "user/common/userAlert";
			} else { 
				model.addAttribute("user", findPwd);			
							
//				Random random = new Random();
//				int checkNum = random.nextInt(888888)+111111;
				
				String pw="";
				for (int i=0; i<12; i++) {
						pw +=(char) ((Math.random()*26)+97);
				}
				
				vo.setPwd(pw);
				service.updatePw(vo);
				
				String content = "TOBE 임시 비밀번호입니다." + "<br><br>" + "임시 번호는" + pw + "입니다.";				
				
				sendEmail.sendMail(findPwd.getEmail(), "TOBE 임시 비밀번호 발급", content);				
				
				return "user/member/userFindPwdNext";
			}
		}
	
//	@GetMapping("/user/member/userFindPwdNext.do")
//	public String findPwdNext() {
//		return "user/member/userFindPwdNext";
//	}
//	@PostMapping ("/user/member/userFindMemberNext.do")
//	public String userFindMemberNext(HttpSession sess, MemberVO vo, Model model) {
//		MemberVO findId = service.findId(vo);
//		model.addAttribute("user", findId);
//		return "user/member/userFindMemberNext";
//	}
	

	
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
	
	//약관동의
	@GetMapping("/user/member/userJoinPolicy.do")
	public String userJoinPolicy() {
		return "user/member/userJoinPolicy";
	}
	
	//아이디 중복확인
	@ResponseBody
	@GetMapping("/user/idCheck.do")
	public String idCheck(@RequestParam String id) {
		boolean r = service.dupId (id);
		return String.valueOf(r);
	}
}
