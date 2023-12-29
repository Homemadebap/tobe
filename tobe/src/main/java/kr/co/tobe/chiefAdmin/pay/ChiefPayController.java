package kr.co.tobe.chiefAdmin.pay;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.co.tobe.vo.AdminVO;

@Controller
public class ChiefPayController {

	@Autowired
	ChiefPayService service;
	
	@GetMapping ("/chiefAdmin/pay/chiefPayIndex.do")
	public String chiefPayindex(HttpSession sess, Model model) {
		AdminVO admin = (AdminVO)sess.getAttribute("adLoginInfo");
		if(admin == null) {
			return "redirect:/admin/common/adLogin.do";
		}
		model.addAttribute("admin", admin);
		model.addAttribute("list", service.getlist());
	return "chiefAdmin/pay/chiefPayIndex";
	}
}
