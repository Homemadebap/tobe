package kr.co.tobe.user.pay;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class UserPayController {

	@Autowired
	UserPayService service;
}
