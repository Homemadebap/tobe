package kr.co.tobe.chiefAdmin.sales;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ChiefSalesMapper {
	
	List<Map<String, String>> payList(Map<String, String> map);
}
