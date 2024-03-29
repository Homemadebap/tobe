package kr.co.tobe.chiefAdmin.common;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.co.tobe.vo.AdminVO;
import kr.co.tobe.vo.QnaVO;

@Controller
public class ChiefCommonController {

	@Autowired
	ChiefCommonService service;
	
	@GetMapping ("/chiefAdmin/common/chiefIndex.do")

	public String index(HttpSession sess, Model model,QnaVO qvo) {
		AdminVO admin = (AdminVO)sess.getAttribute("adLoginInfo"); 
		model.addAttribute("totalCount", service.totalCount());
		model.addAttribute("q", service.qna(qvo));
		return "chiefAdmin/common/chiefIndex";
	}
	
	@GetMapping ("/chiefAdmin/sales/chiefSalesIndex.do")
	public String chiefSalesIndex(Model model) {
//		model.addAttribute("pay_chargeTotal", service.pay_chargeTotal());
		return "chiefAdmin/sales/chiefSalesIndex";
	}
	
	
	
}
