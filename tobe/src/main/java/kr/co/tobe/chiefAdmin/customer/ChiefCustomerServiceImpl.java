package kr.co.tobe.chiefAdmin.customer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ChiefCustomerServiceImpl implements ChiefCustomerService {
	
	@Autowired
	ChiefCustomerMapper mapper;
}
