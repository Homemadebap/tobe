package kr.co.tobe.chiefAdmin.sales;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class ChiefSalesController {

	@Autowired
	ChiefSalesService service;
}
