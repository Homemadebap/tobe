package kr.co.tobe.chiefAdmin.common;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ChiefCommonMapper {
	
	Map<String, Object> pay_chargeTotal();
	
}
