package kr.co.tobe.chiefAdmin.common;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import kr.co.tobe.vo.QnaVO;

@Mapper
public interface ChiefCommonMapper {
	
	Map<String, Object> pay_chargeTotal();
	
	int totalCount();
	
	List<Map<String, Object>> qna(QnaVO qvo);
}
