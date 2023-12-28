package kr.co.tobe.chiefAdmin.customer;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.tobe.vo.FaqVO;
import kr.co.tobe.vo.NoticeVO;
import kr.co.tobe.vo.QnaVO;

@Controller
public class ChiefCustomerController {

	@Autowired
	ChiefCustomerService service;
	
	@GetMapping ("/chiefAdmin/customer/chiefCustomerIndex.do")
	public String index(Model model, NoticeVO vo) {
		Map<String, Object> NoticeList = service.noticeList(vo);
		model.addAttribute("map", NoticeList);
	return "chiefAdmin/customer/chiefCustomerIndex";
	}
	
	@GetMapping ("/chiefAdmin/customer/chiefNoticeDetail.do")
	public String Detail(Model model, @RequestParam("noticeNo") int noticeNo) {
		NoticeVO notice = service.getNoticeDetail(noticeNo);
	        model.addAttribute("notice", notice);
	return "chiefAdmin/customer/chiefNoticeDetail";
	}
	
	@GetMapping ("/chiefAdmin/customer/chiefNoticeForm.do")
	public String Notice() {
	return "chiefAdmin/customer/chiefNoticeForm";
	}
	
	@GetMapping ("/chiefAdmin/customer/chiefQnaList.do")
		public String QnaList(Model model, QnaVO vo) {
		List<QnaVO> QnaList = service.getqnalist(vo);
		model.addAttribute("list", QnaList);
		return "chiefAdmin/customer/chiefQnaList";
	}
	@GetMapping ("/chiefAdmin/customer/chiefQnaDetail.do")
	public String QnaDtail(Model model, @RequestParam("qnaNo") int qnaNo) {
		QnaVO qna = service.getQnaDetail(qnaNo);
		model.addAttribute("qna", qna);
		return "chiefAdmin/customer/chiefQnaDetail";
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
	
	@GetMapping ("/chiefAdmin/customer/chiefReplyForm.do")
	public String chiefReply() {
	return "chiefAdmin/customer/chiefReplyForm";
	}
	
	@GetMapping ("/chiefAdmin/customer/chiefFaqList.do")
	public String FaqList(Model model, FaqVO vo) {	
		List<FaqVO> FaqList = service.getfaqlist(vo);
		model.addAttribute("list", FaqList);
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
	
	@PostMapping("/chiefAdmin/customer/reply.do")
	public String insert(Model model, QnaVO vo ) {
		System.out.println("등러왔다ㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏ");
		int r = service.QnaReply(vo);//, request);
		if (r > 0) {
			model.addAttribute("cmd", "move");
			model.addAttribute("msg", "정상적으로 저장되었습니다.");
			model.addAttribute("url", "/tobe/chiefAdmin/customer/chiefQnaList.do"); //돌아갈 페이지 박모훈 완성 후 ..
		} else {
			model.addAttribute("cmd", "back");
			model.addAttribute("msg", "등록 오류");
		}
		return "chiefAdmin/common/alert";
	}
	
	@PostMapping("/chiefAdmin/customer/edit.do")
	public String edit(Model model, QnaVO vo ) {
		System.out.println("등러왔다ㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏ");
		int r = service.QnaReply(vo);//, request);
		if (r > 0) {
			model.addAttribute("cmd", "move");
			model.addAttribute("msg", "정상적으로 저장되었습니다.");
			model.addAttribute("url", "/tobe/chiefAdmin/customer/chiefQnaList.do"); //돌아갈 페이지 박모훈 완성 후 ..
		} else {
			model.addAttribute("cmd", "back");
			model.addAttribute("msg", "등록 오류");
		}
		return "chiefAdmin/common/alert";
	}
}
