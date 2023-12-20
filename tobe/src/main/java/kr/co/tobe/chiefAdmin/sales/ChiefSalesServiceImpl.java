package kr.co.tobe.chiefAdmin.sales;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ChiefSalesServiceImpl implements ChiefSalesService {

	@Autowired
	ChiefSalesMapper mapper;
}
