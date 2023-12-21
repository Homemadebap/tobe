package kr.co.tobe.chiefAdmin.sales;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ChiefSalesMapper {
	
	List<Map<String, Object>> payList(Map<String, Object> map);
	List<Map<String, Object>> pay_chageTotal(Map<String, Object> map);
}
