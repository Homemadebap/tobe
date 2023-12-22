package kr.co.tobe.user.pay;

import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.co.tobe.vo.MemberVO;

@Controller
public class UserPayController {

	@Autowired
	UserPayService service;
	
	@GetMapping("/user/pay/userPayCompleteDetail.do")
	public String userMyPageMain(HttpSession sess, Model model) {
		MemberVO user = (MemberVO)sess.getAttribute("loginInfo");

		
		return "user/pay/userPayCompleteDetail";
	}
	
	@GetMapping ("/user/pay/userPayDetail.do")
	public String userPayDetail() {
		return "user/pay/userPayDetail";
	}
}
