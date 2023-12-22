package kr.co.tobe.chiefAdmin.common;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ChiefCommonServiceImpl implements ChiefCommonService {

	@Autowired
	ChiefCommonMapper mapper;
	
	@Override
	public Map<String, Object> pay_chargeTotal() {
		return mapper.pay_chargeTotal();
	};
}
