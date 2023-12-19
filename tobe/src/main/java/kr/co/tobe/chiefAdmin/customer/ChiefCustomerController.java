package kr.co.tobe.chiefAdmin.customer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import kr.co.tobe.vo.FaqVO;
import kr.co.tobe.vo.NoticeVO;

@Controller
public class ChiefCustomerController {

	@Autowired
	ChiefCustomerService service;
	
	@GetMapping ("/chiefAdmin/customer/chiefCustomerIndex.do")
	public String index() {
	return "chiefAdmin/customer/chiefCustomerIndex";
	}
	
	@GetMapping ("/chiefAdmin/customer/chiefNoticeDetail.do")
	public String Detail() {
	return "chiefAdmin/customer/chiefNoticeDetail";
	}
	
	@GetMapping ("/chiefAdmin/customer/chiefNoticeForm.do")
	public String Notice() {
	return "chiefAdmin/customer/chiefNoticeForm";
	}
	
	@PostMapping ("/chiefAdmin/customer/chiefNoticeInsert.do")
	public String insert(NoticeVO vo, Model model) {
		boolean r = service.insert(vo);
	      if (r) { // 정상적으로 DB에 insert 
	          model.addAttribute("cmd", "move");         
	          model.addAttribute("msg", "공지사항 등록이 완료되었습니다.");
	          model.addAttribute("url", "/tobe/chiefAdmin/customer/chiefNoticeForm.do");
	       } else { // 등록안됨
	          model.addAttribute("cmd", "back");
	          model.addAttribute("msg", "공지사항 등록에 실패하였습니다.");    
	       }
		return "chiefAdmin/common/alert";
	}
	
	@GetMapping ("/chiefAdmin/customer/chiefAskList.do")
	public String AskList() {
	return "chiefAdmin/customer/chiefAskList";
	}
	
	@GetMapping ("/chiefAdmin/customer/chiefReplyForm.do")
	public String chiefReply() {
	return "chiefAdmin/customer/chiefReplyForm";
	}
	
	@GetMapping ("/chiefAdmin/customer/chiefFaqList.do")
	public String FaqList() {
	return "chiefAdmin/customer/chiefFaqList";
	}
	
	@GetMapping ("/chiefAdmin/customer/chiefFaqForm.do")
	public String FaqForm() {
	return "chiefAdmin/customer/chiefFaqForm";
	}
	
	@PostMapping ("/chiefAdmin/customer/chiefFaqInsert.do")
	public String insert(FaqVO vo, Model model) {
		boolean r = service.faqinsert(vo);
	      if (r) { // 정상적으로 DB에 insert 
	          model.addAttribute("cmd", "move");         
	          model.addAttribute("msg", "FAQ 등록이 완료되었습니다.");
	          model.addAttribute("url", "/tobe/chiefAdmin/customer/chiefFaqForm.do");
	       } else { // 등록안됨
	          model.addAttribute("cmd", "back");
	          model.addAttribute("msg", "FAQ 등록에 실패하였습니다.");    
	       }
		return "chiefAdmin/common/alert";
	}
}
