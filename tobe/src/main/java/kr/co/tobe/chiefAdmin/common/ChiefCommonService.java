package kr.co.tobe.chiefAdmin.common;

import java.util.List;
import java.util.Map;

import kr.co.tobe.vo.QnaVO;

public interface ChiefCommonService {
	
	Map<String, Object> pay_chargeTotal();
	
	Map<String, Object> count(Map<String, Object> map);
	
	List<Map<String, Object>> qna(QnaVO qvo);
}
