package kr.co.tobe.chiefAdmin.pay;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ChiefPayServiceImpl implements ChiefPayService {

	@Autowired
	ChiefPayMapper mapper;
}
