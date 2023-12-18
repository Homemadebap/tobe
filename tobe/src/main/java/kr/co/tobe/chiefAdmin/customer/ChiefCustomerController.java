package kr.co.tobe.chiefAdmin.customer;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

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
	
//	@PostMapping ("/chiefAdmin/custmoer/chiefNoticeInsert.do")
//	public String insert(NoticeVO vo, Model model, MultipartFile file, HttpServletRequest request) {
//		boolean r = service.insert(vo, file, request);
//	      if (r) { // 정상적으로 DB에 insert 
//	          model.addAttribute("cmd", "move");         
//	          model.addAttribute("msg", "공지사항 등록이 완료되었습니다.");
//	          model.addAttribute("url", "/tobe/chiefAdmin/customer/chiefNoticeForm.do");
//	       } else { // 등록안됨
//	          model.addAttribute("cmd", "back");
//	          model.addAttribute("msg", "공지사항 등록에 실패하였습니다.");    
//	       }
//		return "chiefAdmin/common/alert";
//	}
	
	@GetMapping ("/chiefAdmin/customer/chiefAskList.do")
	public String AskList() {
	return "chiefAdmin/customer/chiefAskList";
	}
	
	@GetMapping ("/chiefAdmin/customer/chiefFaqList.do")
	public String FaqList() {
	return "chiefAdmin/customer/chiefFaqList";
	}
}
