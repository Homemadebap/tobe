package kr.co.tobe.user.customer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class UserCustomerController {

	@Autowired
	UserCustomerService service;
}
