package kr.co.tobe.admin.pay;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.co.tobe.vo.AdminVO;
import kr.co.tobe.vo.MemberVO;
import kr.co.tobe.vo.PayDetailVO;
import kr.co.tobe.vo.PayVO;

@Controller
public class AdPayController {

	@Autowired
	AdPayService service;

}
