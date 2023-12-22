package kr.co.tobe.admin.common;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import kr.co.tobe.vo.AdminVO;
import kr.co.tobe.vo.CqnaVO;


@Mapper
public interface AdCommonMapper {
	
	//로그인
	AdminVO login(AdminVO vo);
	
	Map<String, Object> todayPayCnt(AdminVO avo);
	Map<String, Object> todayPayCancelCnt(AdminVO avo);
	Map<String, Object> thisMonthPayTotal(AdminVO avo);
	Map<String, Object> lastMonthPayTotal(AdminVO avo);
	Map<String, Object> lastMonthChargeTotal(AdminVO avo);
	Map<String, Object> thisYearPayTotal(AdminVO avo);
	List<Map<String, Object>> courseQna(AdminVO avo);

	int cqnaCount(Map<String, Object> map);
	List<CqnaVO> cqnaList(Map<String, Object> map);

}
