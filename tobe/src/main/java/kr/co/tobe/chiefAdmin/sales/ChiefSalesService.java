package kr.co.tobe.chiefAdmin.sales;

import java.util.List;
import java.util.Map;

public interface ChiefSalesService {
	
	List<Map<String, Object>> payList(Map<String, Object> map);
	List<Map<String, Object>> conEduTotal(Map<String, Object> map);
	Map<String, Object> pay_chargeTotal(Map<String, Object> map);
}
