package kr.co.tobe.admin.customer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class AdCustomerController {

	@Autowired
	AdCustomerService service;
}
