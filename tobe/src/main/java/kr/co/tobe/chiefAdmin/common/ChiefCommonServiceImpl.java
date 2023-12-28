package kr.co.tobe.chiefAdmin.common;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.tobe.vo.QnaVO;

@Service
public class ChiefCommonServiceImpl implements ChiefCommonService {

	@Autowired
	ChiefCommonMapper mapper;
	
	@Override
	public Map<String, Object> pay_chargeTotal() {
		return mapper.pay_chargeTotal();
	};
	
	@Override 
	public List<Map<String, Object>> qna(QnaVO qvo) {
		return mapper.qna(qvo);
	}

	@Override
	public Map<String, Object> count(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return null;
	}
}	
