package kr.co.tobe.user.customer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import kr.co.tobe.vo.FaqVO;
import kr.co.tobe.vo.MemberVO;
import kr.co.tobe.vo.NoticeVO;
import kr.co.tobe.vo.QnaVO;

@Controller
public class UserCustomerController {

	@Autowired
	private UserCustomerService service;
	
	@GetMapping("/user/customer/userQna.do")
	public String userQna(Model model, QnaVO vo) {
		model.addAttribute("map", service.qnaList(vo));
		return "user/customer/userQna";
	}
	
	@GetMapping("/user/customer/userCustomer.do")
	public String userCustomer(Model model, NoticeVO vo) {
		model.addAttribute("map", service.noticeList(vo));
		return "user/customer/userCustomer";
	}
	
	@GetMapping("/user/customer/userFaq.do")
	public String userFaq(Model model, FaqVO vo) {
		model.addAttribute("map", service.faqList(vo));
		return "user/customer/userFaq";
	}
	//상세
	@GetMapping("/user/customer/userNoticeDetail.do")
	public String view(Model model,  NoticeVO vo) {
		model.addAttribute("vo", service.noticeDetail(vo));
		return "user/customer/userNoticeDetail";
	}
	//문의 상세
	@GetMapping("/user/customer/userQnaDetail.do")
	public String viewQnaDetail(Model model,  QnaVO vo) {
		model.addAttribute("vo", service.qnaDetail(vo));
		return "user/customer/userQnaDetail";
	}
	
	@GetMapping("/user/customer/userAskForm.do")
	public String userAskForm() {
		return "user/customer/userAskForm";
	}
	
	//강좌 문의 등록 
		@PostMapping("/user/customer/qna/insert.do")
		public String insert(Model model, HttpServletRequest request, QnaVO vo) {
			HttpSession sess = request.getSession();
			MemberVO login = (MemberVO)sess.getAttribute("loginInfo");
			vo.setMember_no(login.getMember_no());
			int r = service.qnaInsert(vo);//, request);
			if (r > 0) {
				model.addAttribute("cmd", "move");
				model.addAttribute("msg", "정상적으로 저장되었습니다.");
				model.addAttribute("url", "/tobe/user/customer/userQna.do"); //돌아갈 페이지 박모훈 완성 후 ..
			} else {
				model.addAttribute("cmd", "back");
				model.addAttribute("msg", "등록 오류");
			}
			return "user/common/userAlert";
		}
		//수정 이동 view
		@GetMapping("/user/customer/userModAskForm.do")
		public String edit(Model model, QnaVO vo) {
			model.addAttribute("vo", service.view(vo, false)); 
			
			return "user/customer/userModAskForm";
		}
		//강좌 문의 수정 
		@PostMapping("/user/customer/qna/update.do")
		public String update(Model model, HttpServletRequest request, QnaVO vo){//, MultipartFile file) {
			int r = service.qnaUpdate(vo);//, file, request);
			if (r > 0) {
				model.addAttribute("cmd", "move");
				model.addAttribute("msg", "정상적으로 수정되었습니다.");
				model.addAttribute("url", "/tobe/user/customer/userQna.do");
			} else {
				model.addAttribute("cmd", "back");
				model.addAttribute("msg", "등록 오류");
			}
			return "user/common/userAlert";
		}
		//강좌 문의 삭제 
		@GetMapping("/user/customer/qna/delete.do")
		public String delete(Model model, HttpServletRequest request, QnaVO vo) {//, MultipartFile file) {
			int r = service.qnaDelete(vo);//, request);
			if (r > 0) {
				model.addAttribute("cmd", "move");
				model.addAttribute("msg", "정상적으로 삭제되었습니다.");
				model.addAttribute("url", "/tobe/user/customer/userQna.do");
			} else {
				model.addAttribute("cmd", "back");
				model.addAttribute("msg", "등록 오류");
			}
			return "user/common/userAlert";
		}
}
