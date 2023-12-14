package kr.co.tobe.chiefAdmin.customer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class ChiefCustomerController {

	@Autowired
	ChiefCustomerService service;
}
