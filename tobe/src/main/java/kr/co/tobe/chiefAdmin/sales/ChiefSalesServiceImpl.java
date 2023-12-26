package kr.co.tobe.chiefAdmin.sales;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ChiefSalesServiceImpl implements ChiefSalesService {

	@Autowired
	ChiefSalesMapper mapper;
	
	@Override
	public List<Map<String, Object>> payList(Map<String, Object> map) {
		return mapper.payList(map);
	}
	
	@Override
	public List<Map<String, Object>> conEduTotal(Map<String, Object> map) {
		return mapper.conEduTotal(map);
	}
	
	@Override
	public Map<String, Object> pay_chargeTotal(Map<String, Object> map) {
		return mapper.pay_chargeTotal(map);
	};

}
