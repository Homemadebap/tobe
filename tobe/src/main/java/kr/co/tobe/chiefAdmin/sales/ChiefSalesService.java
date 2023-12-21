package kr.co.tobe.chiefAdmin.sales;

import java.util.List;
import java.util.Map;

public interface ChiefSalesService {
	
	List<Map<String, Object>> payList(Map<String, Object> map);
	List<Map<String, Object>> conTotal(Map<String, Object> map);
	
}
